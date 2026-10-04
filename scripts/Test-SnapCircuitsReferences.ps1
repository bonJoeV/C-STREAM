[CmdletBinding()]
param(
    [string]$RepositoryRoot = (Split-Path -Parent $PSScriptRoot)
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
$docsRoot = Join-Path $RepositoryRoot 'docs'
$lessons = @(
    @{ Path = 'Lessons\Grades_3-4_YearA\Week26-27_Little_Bits_Circuits.md'; Minutes = 40; Meetings = 2; Status = 'KEEP + IMPROVE' },
    @{ Path = 'Lessons\Bi-Weekly\Grades_3-4_YearA\Session07_Light_Circuits.md'; Minutes = 40; Meetings = 1; Status = 'REBUILD' },
    @{ Path = 'Lessons\Bi-Weekly\Grades_3-4_YearB\Session07_Christmas_Circuits.md'; Minutes = 40; Meetings = 1; Status = 'REBUILD' },
    @{ Path = 'Lessons\Grades_5-6_YearA\Week26-27_Little_Bits.md'; Minutes = 45; Meetings = 2; Status = 'REBUILD' }
)
$sizes = @(10, 15, 20, 25)
$stations = @(4, 5, 7, 5)
$waves = @(1, 1, 1, 2)
$holdings = @(Import-Csv -LiteralPath (Join-Path $docsRoot 'Review\Reported_Holdings.csv') |
    Where-Object item_id -eq 'OHM-135')
if ($holdings.Count -ne 1 -or $holdings[0].reported_quantity -ne '8' -or
    $holdings[0].description -notmatch 'individual' -or
    $holdings[0].verification_status -ne 'REPORTED NOT PHYSICALLY VERIFIED') {
    throw 'Expected eight reported, uninspected individual OHM-135 activity kits.'
}
$guidePath = Join-Path $docsRoot 'Resources\Snap_Circuits_Classroom_Guide.md'
$guide = Get-Content -LiteralPath $guidePath -Raw
foreach ($required in @(
    'matching in-box manufacturer instructions', 'project/page number',
    'school requirements', 'fitted cells per station', 'OUT OF SERVICE',
    'Physical contribution and switch test', 'not a Snap conversion',
    'Kindergarten remains adult-demonstration only'
)) {
    if ($guide -notmatch [regex]::Escape($required)) {
        throw "Missing guide gate/evidence boundary: $required"
    }
}

function Test-CapacityTable {
    param([string]$Text, [string]$Label, [switch]$Guide)
    for ($i = 0; $i -lt $sizes.Count; $i++) {
        $row = [regex]::Matches($Text, "(?m)^\|\s*$($sizes[$i])\s*\|[^\r\n]+\r?$")
        if ($row.Count -ne 1) { throw "Expected one capacity row for $($sizes[$i]) in $Label" }
        $cells = @($row[0].Value.Split('|') | ForEach-Object { $_.Trim() })
        if ([int]$cells[3] -ne $stations[$i] -or [int]$cells[4] -ne $waves[$i]) {
            throw "Incorrect station/wave allocation for $($sizes[$i]) in $Label"
        }
        $teams = [int][math]::Ceiling($sizes[$i] / 3.0)
        if ($cells[2] -notmatch "^$teams(\s|$)" -or
            $teams -gt ($stations[$i] * $waves[$i]) -or $stations[$i] -gt 8) {
            throw "Invalid team/stock capacity for $($sizes[$i]) in $Label"
        }
        if ($Guide -and [int]$cells[5] -ne (8 - $stations[$i])) {
            throw "Incorrect unissued reserve count for $($sizes[$i])"
        }
    }
}

Test-CapacityTable -Text $guide -Label 'shared guide' -Guide
$auditRows = @(
    Import-Csv -LiteralPath (Join-Path $docsRoot 'Review\Grades_3-4_Audit.csv')
    Import-Csv -LiteralPath (Join-Path $docsRoot 'Review\Grades_5-6_Audit.csv')
)
$meetingCount = 0
$linkCount = 0
$checkPaths = @($guidePath)
foreach ($lesson in $lessons) {
    $path = Join-Path $docsRoot $lesson.Path
    $checkPaths += $path
    $text = Get-Content -LiteralPath $path -Raw
    foreach ($required in @('OHM-135', 'Snap_Circuits_Classroom_Guide.md', 'not yet', 'paper')) {
        if ($text -notmatch [regex]::Escape($required)) {
            throw "Missing stock/setup/evidence reference '$required' in $($lesson.Path)"
        }
    }
    Test-CapacityTable -Text $text -Label $lesson.Path
    $intervals = [regex]::Matches($text, '(?m)^\d+\.\s+\*\*(\d+)-(\d+)')
    $end = 0
    $count = 0
    foreach ($interval in $intervals) {
        $start = [int]$interval.Groups[1].Value
        $next = [int]$interval.Groups[2].Value
        if ($start -eq 0) {
            if ($count -gt 0 -and $end -ne $lesson.Minutes) {
                throw "Incomplete native meeting in $($lesson.Path)"
            }
            $count++
            $end = 0
        }
        if ($start -ne $end -or $next -le $start) {
            throw "Gap, overlap or nonpositive timing interval in $($lesson.Path)"
        }
        $end = $next
    }
    if ($count -ne $lesson.Meetings -or $end -ne $lesson.Minutes) {
        throw "Incorrect meeting count/period in $($lesson.Path)"
    }
    $hardwareMinutes = if ($lesson.Minutes -eq 40) { 12 } else { 14 }
    $hardware = @($intervals | Where-Object {
        ([int]$_.Groups[2].Value - [int]$_.Groups[1].Value) -eq $hardwareMinutes
    })
    if ($hardware.Count -ne (2 * $lesson.Meetings)) {
        throw "Missing equally sized hardware waves in $($lesson.Path)"
    }
    $auditPath = $lesson.Path.Replace('\', '/')
    $row = @($auditRows | Where-Object lesson_path -eq $auditPath)
    if ($row.Count -ne 1 -or $row[0].status -ne $lesson.Status -or
        $row[0].priority -ne 'P0' -or $row[0].technology -ne 'None' -or
        $row[0].revision -ne 'rebuilt' -or
        [int]$row[0].minutes -ne $lesson.Minutes -or
        [int]$row[0].meetings -ne $lesson.Meetings -or
        $row[0].materials -notmatch 'Snap Circuits STEM Classroom Activity Kit') {
        throw "Audit path, baseline, hardware or native-period mismatch: $auditPath"
    }
    $meetingCount += $count
}
foreach ($path in $checkPaths) {
    $text = Get-Content -LiteralPath $path -Raw
    foreach ($link in [regex]::Matches($text, '\]\(([^)\r\n]+)\)')) {
        $target = $link.Groups[1].Value.Split('#')[0]
        if ($target -match '^(https?:|mailto:)' -or $target.Length -eq 0) { continue }
        $resolved = Join-Path (Split-Path -Parent $path) $target.Replace('/', '\')
        if (-not (Test-Path -LiteralPath $resolved)) {
            throw "Missing relative link '$target' in $path"
        }
        $linkCount++
    }
}
$nav = Get-Content -LiteralPath (Join-Path $RepositoryRoot 'mkdocs.yml') -Raw
if ($nav -notmatch 'Snap Circuits Classroom Guide: Resources/Snap_Circuits_Classroom_Guide.md') {
    throw 'Missing classroom guide navigation entry.'
}
Write-Output "PASS: four lesson paths, $meetingCount contiguous native meetings, 20 capacity rows, eight individual kits, preserved baseline judgments, hardware/paper evidence gates and $linkCount relative links."
