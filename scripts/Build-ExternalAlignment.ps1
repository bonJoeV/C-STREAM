[CmdletBinding()]
param(
    [string]$RepositoryRoot = (Split-Path -Parent $PSScriptRoot),
    [switch]$ValidateOnly
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
$reviewRoot = Join-Path (Join-Path $RepositoryRoot 'docs') 'Review'
$register = @(Import-Csv -LiteralPath (Join-Path $reviewRoot 'External_Benchmark_Register.csv'))
$benchmarkLookup = @{}
foreach ($benchmark in $register) {
    if ([string]::IsNullOrWhiteSpace($benchmark.benchmark_id) -or
        $benchmarkLookup.ContainsKey($benchmark.benchmark_id)) {
        throw "Missing or duplicate external benchmark identifier: $($benchmark.benchmark_id)"
    }
    foreach ($field in $benchmark.PSObject.Properties.Name) {
        if ([string]::IsNullOrWhiteSpace($benchmark.$field)) {
            throw "Missing benchmark field '$field' in $($benchmark.benchmark_id)"
        }
    }
    $benchmarkLookup[$benchmark.benchmark_id] = $benchmark
}
$lessonLookup = @{}
foreach ($lesson in @(Import-Csv -LiteralPath (Join-Path $reviewRoot 'Lesson_Map.csv'))) {
    $lessonLookup[$lesson.lesson_path] = $lesson
}
$sourceFiles = [ordered]@{
    'Kindergarten_External_Alignment.csv' = @('K')
    'Grades_1-2_External_Alignment.csv' = @('1', '2')
    'Grades_3-4_External_Alignment.csv' = @('3', '4')
    'Grades_5-6_External_Alignment.csv' = @('5', '6')
}
$header = @('benchmark_id', 'subject', 'edition', 'grade', 'source_id', 'source_url',
    'workbook_sheet', 'workbook_row', 'lesson_path', 'student_task', 'assessment_evidence',
    'alignment_scope', 'status', 'verified_date')
$output = [System.Collections.Generic.List[object]]::new()
$keys = [System.Collections.Generic.HashSet[string]]::new([System.StringComparer]::OrdinalIgnoreCase)
foreach ($file in $sourceFiles.GetEnumerator()) {
    $path = Join-Path $reviewRoot $file.Key
    if (-not (Test-Path -LiteralPath $path -PathType Leaf)) {
        throw "Missing source-specific external candidates: $path"
    }
    $rows = @(Import-Csv -LiteralPath $path)
    if ($rows.Count -eq 0 -or ($rows[0].PSObject.Properties.Name -join ',') -cne ($header -join ',')) {
        throw "Missing rows or invalid external-candidate schema: $path"
    }
    foreach ($row in $rows) {
        foreach ($field in $header) {
            if ([string]::IsNullOrWhiteSpace($row.$field)) {
                throw "Missing external-candidate field '$field' in $($row.lesson_path)"
            }
        }
        if ($file.Value -cnotcontains $row.grade -or
            -not $benchmarkLookup.ContainsKey($row.benchmark_id) -or
            -not $lessonLookup.ContainsKey($row.lesson_path) -or
            -not $keys.Add("$($row.benchmark_id)|$($row.grade)|$($row.lesson_path)")) {
            throw "Wrong grade, unknown code/path or duplicate external candidate: $($row.benchmark_id)"
        }
        $benchmark = $benchmarkLookup[$row.benchmark_id]
        $expectedBand = if ($row.grade -eq 'K') { 'K' } elseif ([int]$row.grade -le 2) {
            '1-2'
        } elseif ([int]$row.grade -le 4) { '3-4' } else { '5-6' }
        $sourceGradeMatches = $benchmark.grade -eq $row.grade -or
            ($row.grade -eq 'K' -and $benchmark.grade -eq 'PK/K') -or
            ($row.grade -eq '6' -and $benchmark.grade -eq '6-8')
        if (-not $sourceGradeMatches -or
            $lessonLookup[$row.lesson_path].grade_band -ne $expectedBand -or
            $row.source_id -ne $benchmark.source_id -or
            $row.edition -ne $benchmark.edition -or
            $row.subject -ne $benchmark.subject -or
            $row.source_url -cne $benchmark.source_url) {
            throw "Benchmark/source/lesson grade mismatch in $($row.lesson_path)"
        }
        $expectedStatus = if ($row.source_id -eq 'MN-05') {
            'SOURCE VERIFIED - SCHOOL AND MDE-COPY REVIEW REQUIRED'
        } else {
            'SOURCE VERIFIED - NATIONAL FRAMEWORK SCHOOL REVIEW REQUIRED'
        }
        if ($row.status -cne $expectedStatus) {
            throw "External mapping omits its authority/approval boundary in $($row.lesson_path)"
        }
        if ($benchmark.source_id -eq 'MN-05') {
            $locator = [regex]::Match($benchmark.source_locator, '^(VisualArts|Music) row (\d+)$')
            $sheetName = 'MN2018ArtsEdStandards' + $locator.Groups[1].Value
            if (-not $locator.Success -or $row.workbook_sheet -cne $sheetName -or
                $row.workbook_row -cne $locator.Groups[2].Value) {
                throw "Exact worksheet/row locator mismatch for $($row.benchmark_id)"
            }
        } else {
            $locator = [regex]::Match($benchmark.source_locator, '^Published viewer record (\d+)$')
            if (-not $locator.Success -or $row.workbook_row -cne $locator.Groups[1].Value -or
                $row.workbook_sheet -notmatch 'published.*viewer|CSTA.*viewer') {
                throw "Exact publisher detail locator mismatch for $($row.benchmark_id)"
            }
        }
        if ($row.verified_date -cne $benchmark.retrieval_date) {
            throw "Source verification date differs from the inspected register for $($row.benchmark_id)"
        }
        $output.Add($row)
    }
}
$outputPath = Join-Path $reviewRoot 'External_Alignment.csv'
$sorted = @($output | Sort-Object grade, subject, benchmark_id, lesson_path)
if ($ValidateOnly) {
    if (-not (Test-Path -LiteralPath $outputPath -PathType Leaf)) {
        throw 'Missing combined external candidates; generate the matrix first.'
    }
    $expected = @($sorted | ConvertTo-Csv -NoTypeInformation)
    $actual = @(Import-Csv -LiteralPath $outputPath | ConvertTo-Csv -NoTypeInformation)
    if ($expected.Count -ne $actual.Count -or @(Compare-Object $expected $actual).Count -gt 0) {
        throw 'Stale combined external candidates; regenerate after source changes.'
    }
} else {
    $sorted | Export-Csv -LiteralPath $outputPath -NoTypeInformation -Encoding UTF8
}
Write-Output "Validated $($output.Count) exact external candidates against $($register.Count) source-verified benchmark records."
Write-Output 'Source verification is not institutional approval, complete subject coverage or actual student mastery.'
