[CmdletBinding()]
param(
    [string]$RepositoryRoot = (Split-Path -Parent $PSScriptRoot),
    [ValidateSet('K', '1-2', '3-4', '5-6')]
    [string[]]$GradeBands = @('K', '1-2', '3-4', '5-6')
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
$docsRoot = [System.IO.Path]::GetFullPath((Join-Path $RepositoryRoot 'docs'))
$mapPath = Join-Path $docsRoot 'Review\Lesson_Map.csv'
$baselinePath = Join-Path $docsRoot 'Review\Lesson_Baseline.csv'
$allRows = @(Import-Csv -LiteralPath $mapPath)
$rows = @($allRows | Where-Object { $GradeBands -contains $_.grade_band })
if ($rows.Count -eq 0) { throw 'No lesson references selected.' }
$baseline = @(Import-Csv -LiteralPath $baselinePath)
$keys = @('lesson_path', 'status', 'priority', 'meetings', 'minutes')
$original = @($baseline | Sort-Object lesson_path | Select-Object $keys | ConvertTo-Csv -NoTypeInformation)
$current = @($allRows | Sort-Object lesson_path | Select-Object $keys | ConvertTo-Csv -NoTypeInformation)
if ($original.Count -ne $current.Count -or
    @(Compare-Object $original $current).Count -gt 0) {
    throw 'Baseline dispositions, priorities, paths or native meeting allocations changed.'
}
$totalMeetings = 0
$totalIntervals = 0
$localLinks = 0
foreach ($row in $rows) {
    $filePath = [System.IO.Path]::GetFullPath((Join-Path $docsRoot (
        $row.lesson_path.Replace([char]'/', [System.IO.Path]::DirectorySeparatorChar)
    )))
    if (-not $filePath.StartsWith($docsRoot + [System.IO.Path]::DirectorySeparatorChar,
        [System.StringComparison]::OrdinalIgnoreCase)) {
        throw "Lesson path escapes documentation root: $($row.lesson_path)"
    }
    $text = Get-Content -LiteralPath $filePath -Raw
    if ($row.revision -cne 'rebuilt' -or $row.evidence -match '(?i)audit.only|not implemented') {
        throw "Unfinished reference package: $($row.lesson_path)"
    }
    $requirements = [ordered]@{
        overview = 'lesson at a glance|lesson overview|LESSON AT A GLANCE'
        preparation = 'before class|beforeclass'
        supplies = 'materials|supplies'
        background = 'background'
        vocabulary = 'vocabulary'
        safety = '\bSAFETY\b'
        support = '\bsupport\b'
        challenge = '\bchallenge\b'
        individual_evidence = '\bindividual\b|\beach child\b|\beach student\b|\bevery child\b'
        troubleshooting = 'troubleshoot|if things go wrong|fallback'
        family = '\bfamily\b|newsletter'
        indoor = 'indoor'
    }
    foreach ($requirement in $requirements.GetEnumerator()) {
        if ($text -notmatch $requirement.Value) {
            throw "Missing $($requirement.Key) in $($row.lesson_path)"
        }
    }
    foreach ($code in $row.local_standards.Split('|')) {
        if ($text -notmatch ([regex]::Escape($code) + '\b')) {
            throw "Audit code $code absent from lesson text: $($row.lesson_path)"
        }
    }
    foreach ($size in @(10, 15, 20, 25)) {
        if ($text -notmatch "(?<!\d)$size(?!\d)") {
            throw "Missing $size-pupil supply allocation in $($row.lesson_path)"
        }
    }
    $intervals = [regex]::Matches($text,
        '(?m)^\d+\.\s+\*\*(\d+)\s*(?:-|\p{Pd})\s*(\d+)')
    $meetingCount = 0
    $end = 0
    foreach ($interval in $intervals) {
        $start = [int]$interval.Groups[1].Value
        $next = [int]$interval.Groups[2].Value
        if ($start -eq 0) {
            if ($meetingCount -gt 0 -and $end -ne [int]$row.minutes) {
                throw "Incomplete native meeting in $($row.lesson_path)"
            }
            $meetingCount++
            $end = 0
        }
        if ($start -ne $end -or $next -le $start -or $next -gt [int]$row.minutes) {
            throw "Timing gap, overlap or overflow in $($row.lesson_path)"
        }
        $end = $next
    }
    if ($meetingCount -ne [int]$row.meetings -or $end -ne [int]$row.minutes) {
        throw "Wrong native meeting count or duration in $($row.lesson_path)"
    }
    foreach ($link in [regex]::Matches($text, '\]\(([^)\r\n]+)\)')) {
        $target = $link.Groups[1].Value.Trim('<', '>').Split('#')[0]
        if ($target.Length -eq 0 -or $target -match '^(https?:|mailto:|/)' -or
            $target -match '\s+"') { continue }
        $resolved = [System.IO.Path]::GetFullPath((Join-Path (Split-Path -Parent $filePath) (
            $target.Replace([char]'/', [System.IO.Path]::DirectorySeparatorChar)
        )))
        if (-not (Test-Path -LiteralPath $resolved)) {
            throw "Missing relative target '$target' in $($row.lesson_path)"
        }
        $localLinks++
    }
    $totalMeetings += $meetingCount
    $totalIntervals += $intervals.Count
}
Write-Output "PASS: $($rows.Count) revised lesson pathways, $totalMeetings contiguous native meetings, $totalIntervals intervals and $localLinks relative links."
Write-Output 'Teacher-artifact and local release status are validated separately; this test does not certify classroom readiness.'
Write-Output 'These checks do not certify actual material condition, local approvals, accommodations or classroom mastery.'
