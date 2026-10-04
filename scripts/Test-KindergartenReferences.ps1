[CmdletBinding()]
param(
    [string]$RepositoryRoot = (Split-Path -Parent $PSScriptRoot),
    [string]$BeforeAudit
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
$docsRoot = Join-Path $RepositoryRoot 'docs'
$rows = @(Import-Csv -LiteralPath (Join-Path $docsRoot 'Review\Kindergarten_Audit.csv'))
if ($rows.Count -ne 37) { throw 'Incomplete Kindergarten audit.' }
$sizes = @(10, 15, 20, 25)
$kits = @(5, 8, 10, 13)
$documents = 0
$meetings = 0
$quantityChecks = 0
foreach ($row in $rows) {
    if ($row.grade_band -cne 'K' -or $row.rotation -cne 'Single' -or
        $row.lesson_path -cnotmatch '^Lessons/(?:Bi-Weekly/)?Kindergarten/(?:Week|Session)\d[^/\\]*\.md$') {
        throw "Invalid Kindergarten reference path: $($row.lesson_path)"
    }
    $body = Get-Content -LiteralPath (Join-Path $docsRoot (
        $row.lesson_path.Replace([char]'/', [System.IO.Path]::DirectorySeparatorChar)
    )) -Raw
    if ($row.revision -ne 'rebuilt' -or [int]$row.minutes -ne 25 -or
        $row.evidence -match '(?i)audit.only|not implemented') {
        throw "Incomplete reference/evidence record: $($row.lesson_path)"
    }
    $front = [regex]::Match($body, '\A---\r?\n(?<metadata>[\s\S]*?)\r?\n---')
    if (-not $front.Success) { throw "Missing front matter: $($row.lesson_path)" }
    if ($front.Groups['metadata'].Value -notmatch '(?m)^version: "3\.0"\r?$') { continue }
    $documents++
    foreach ($required in @(
        'Lesson at a glance', 'Before class', 'Vocabulary', 'SAFETY', 'Success',
        'Support', 'Challenge', 'Family', 'Official alignment'
    )) {
        if ($body -notmatch [regex]::Escape($required)) {
            throw "Missing '$required' in $($row.lesson_path)"
        }
    }
    if ($body -notmatch 'troubleshooting|if things go wrong') {
        throw "Missing troubleshooting guidance in $($row.lesson_path)"
    }
    $steps = [regex]::Matches($body, '(?m)^[1-5]\. \*\*(\d+)-(\d+):')
    if ($steps.Count -ne ([int]$row.meetings * 5)) {
        throw "Expected five timed steps per meeting in $($row.lesson_path)"
    }
    foreach ($meeting in 0..([int]$row.meetings - 1)) {
        $previousEnd = 0
        $total = 0
        foreach ($step in $steps[($meeting * 5)..($meeting * 5 + 4)]) {
            $start = [int]$step.Groups[1].Value
            $end = [int]$step.Groups[2].Value
            if ($start -ne $previousEnd -or $end -le $start) {
                throw "Noncontiguous timing in $($row.lesson_path)"
            }
            $total += $end - $start
            $previousEnd = $end
        }
        if ($total -ne 25 -or $previousEnd -ne 25) {
            throw "Meeting does not total exactly 25 minutes in $($row.lesson_path)"
        }
        $meetings++
    }
    $checkedRows = 0
    foreach ($line in ($body -split '\r?\n')) {
        if ($line -notmatch '^\|.*\|$') { continue }
        $cells = @($line.Trim('|').Split('|') | ForEach-Object { $_.Trim() })
        if ($cells.Count -ne 5 -or $cells[0] -notmatch '^(Kit\b|Student\b|Teacher\b|\d{2}:)') { continue }
        if (($cells[1..4] -join ',') -eq ($sizes -join ',')) { continue }
        $numbers = foreach ($cell in $cells[1..4]) {
            ,@([regex]::Matches($cell, '\d+') | ForEach-Object { [int]$_.Value })
        }
        if ($numbers[0].Count -eq 0 -or
            @($numbers | Where-Object { $_.Count -ne $numbers[0].Count }).Count -gt 0) {
            throw "Malformed quantitative row in $($row.lesson_path): $line"
        }
        foreach ($component in 0..($numbers[0].Count - 1)) {
            $basis = if ($cells[0] -match '^Student') { $sizes } else { $kits }
            foreach ($i in 0..3) {
                $expected = if ($cells[0] -match '^Teacher') {
                    $numbers[0][$component]
                } else {
                    $numbers[0][$component] * $basis[$i] / $basis[0]
                }
                if ($numbers[$i][$component] -ne $expected) {
                    throw "Incorrect $($sizes[$i])-pupil quantity in $($row.lesson_path): $line"
                }
                $quantityChecks++
            }
        }
        $checkedRows++
    }
    if ($checkedRows -eq 0) { throw "No scalable supply rows in $($row.lesson_path)" }
}
if ($documents -ne 29 -or $meetings -ne 37) {
    throw "Expected 29 autonomous references / 37 timed meetings; found $documents / $meetings"
}
if ($BeforeAudit) {
    $before = @(Import-Csv -LiteralPath $BeforeAudit)
    $keys = @('lesson_path', 'status', 'priority', 'meetings', 'minutes')
    $baseline = @($before | Sort-Object lesson_path | Select-Object $keys | ConvertTo-Csv -NoTypeInformation)
    $current = @($rows | Sort-Object lesson_path | Select-Object $keys | ConvertTo-Csv -NoTypeInformation)
    if (@(Compare-Object $baseline $current).Count -gt 0) {
        throw 'Original baseline judgments, lesson paths or meeting counts changed.'
    }
}
Write-Output "PASS: all 37 K records are document-complete; $documents autonomous references, $meetings exact 25-minute meetings and $quantityChecks class-size checks."
Write-Output 'School safety/equipment/source approval and classroom outcomes remain unverified.'
