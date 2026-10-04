[CmdletBinding()]
param(
    [string]$RepositoryRoot = (Split-Path -Parent $PSScriptRoot),
    [switch]$ValidateOnly
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$docsRoot = [System.IO.Path]::GetFullPath((Join-Path $RepositoryRoot 'docs'))
$reviewRoot = Join-Path $docsRoot 'Review'
$header = @(
    'lesson_path', 'grade_band', 'schedule', 'rotation', 'unit', 'title',
    'meetings', 'minutes', 'status', 'priority', 'rationale', 'local_standards',
    'evidence', 'materials', 'technology', 'prep', 'cleanup', 'scope', 'revision'
)
$auditFiles = [ordered]@{
    'Kindergarten_Audit.csv' = 'K'
    'Grades_1-2_Audit.csv' = '1-2'
    'Grades_3-4_Audit.csv' = '3-4'
    'Grades_5-6_Audit.csv' = '5-6'
}
$allowed = @{
    schedule = @('Weekly', 'Bi-Weekly')
    rotation = @('Single', 'A', 'B')
    status = @('KEEP', 'KEEP + IMPROVE', 'REBUILD', 'REPLACE', 'REMOVE')
    priority = @('P0', 'P1', 'P2', 'P3')
    technology = @('None', 'Optional', 'Recommended', 'Required')
    scope = @('CORE', 'RECOMMENDED', 'OPTIONAL')
    revision = @('unchanged', 'improved', 'rebuilt')
}
$periods = @{ 'K' = 25; '1-2' = 30; '3-4' = 40; '5-6' = 45 }
$lessonRows = [System.Collections.Generic.List[object]]::new()
$traceRows = [System.Collections.Generic.List[object]]::new()
$paths = [System.Collections.Generic.HashSet[string]]::new(
    [System.StringComparer]::OrdinalIgnoreCase
)

foreach ($audit in $auditFiles.GetEnumerator()) {
    $auditPath = Join-Path $reviewRoot $audit.Key
    if (-not (Test-Path -LiteralPath $auditPath -PathType Leaf)) {
        throw "Missing grade-band audit: $auditPath"
    }
    $rows = @(Import-Csv -LiteralPath $auditPath)
    if ($rows.Count -eq 0) {
        throw "Empty grade-band audit: $auditPath"
    }
    $actualHeader = @($rows[0].PSObject.Properties.Name)
    if (($actualHeader -join ',') -cne ($header -join ',')) {
        throw "Unexpected CSV header in $auditPath"
    }

    foreach ($row in $rows) {
        $label = "$($audit.Key): $($row.lesson_path)"
        foreach ($column in $header) {
            if ([string]::IsNullOrWhiteSpace($row.$column)) {
                throw "Missing '$column' in $label"
            }
        }
        if ($row.grade_band -cne $audit.Value) {
            throw "Incorrect grade band in $label"
        }
        foreach ($field in $allowed.Keys) {
            if ($allowed[$field] -cnotcontains $row.$field) {
                throw "Invalid '$field' value '$($row.$field)' in $label"
            }
        }
        if (($row.grade_band -eq 'K') -ne ($row.rotation -eq 'Single')) {
            throw "Invalid grade/rotation combination in $label"
        }
        $expectedPrefix = if ($row.schedule -eq 'Bi-Weekly') {
            'Lessons/Bi-Weekly/'
        } else {
            'Lessons/'
        }
        $expectedTrack = if ($row.grade_band -eq 'K') {
            'Kindergarten'
        } else {
            "Grades_$($row.grade_band)_Year$($row.rotation)"
        }
        $expectedStem = if ($row.schedule -eq 'Bi-Weekly') { 'Session' } else { 'Week' }
        $pathPattern = '^' + [regex]::Escape("$expectedPrefix$expectedTrack/") +
            $expectedStem + '\d[^/\\]*\.md$'
        if ($row.lesson_path -cnotmatch $pathPattern) {
            throw "Lesson path does not match its schedule, band and rotation in $label"
        }
        $lessonPath = Join-Path $docsRoot (
            $row.lesson_path.Replace([char]'/', [System.IO.Path]::DirectorySeparatorChar)
        )
        if (-not (Test-Path -LiteralPath $lessonPath -PathType Leaf)) {
            throw "Lesson file not found in $label"
        }
        if (-not $paths.Add($row.lesson_path)) {
            throw "Duplicate lesson audit in $label"
        }
        $meetings = 0
        $minutes = 0
        if (-not [int]::TryParse($row.meetings, [ref]$meetings) -or $meetings -lt 1) {
            throw "Meetings must be a positive integer in $label"
        }
        if (-not [int]::TryParse($row.minutes, [ref]$minutes) -or
            $minutes -ne $periods[$row.grade_band]) {
            throw "Minutes must equal the native class period in $label"
        }
        $codes = @($row.local_standards.Split('|') | ForEach-Object { $_.Trim() })
        $uniqueCodes = @($codes | Sort-Object -Unique)
        if ($codes.Count -lt 2 -or $codes.Count -gt 5 -or
            $uniqueCodes.Count -ne $codes.Count) {
            throw "Expected 2-5 unique local standard codes in $label"
        }
        foreach ($code in $codes) {
            if ($code -cnotmatch '^CST-[CSTEAM][1-3]$') {
                throw "Unknown local standard '$code' in $label"
            }
            $traceRows.Add([pscustomobject][ordered]@{
                local_standard = $code
                grade_band = $row.grade_band
                schedule = $row.schedule
                rotation = $row.rotation
                unit = $row.unit
                lesson_title = $row.title
                lesson_path = $row.lesson_path
                assessment_evidence = $row.evidence
                audit_status = $row.status
                revision = $row.revision
                external_alignment = 'VERIFICATION REQUIRED'
            })
        }
        $lessonRows.Add($row)
    }
}

$lessonFiles = @(Get-ChildItem -LiteralPath (Join-Path $docsRoot 'Lessons') -Recurse -File |
    Where-Object { $_.Name -match '^(Week|Session)\d.*\.md$' })
foreach ($lessonFile in $lessonFiles) {
    $relativePath = $lessonFile.FullName.Substring($docsRoot.Length + 1).Replace('\', '/')
    if (-not $paths.Contains($relativePath)) {
        throw "Lesson is missing from the grade-band audits: $relativePath"
    }
}
if ($lessonRows.Count -ne $lessonFiles.Count) {
    throw "Audit count $($lessonRows.Count) differs from lesson count $($lessonFiles.Count)"
}

$standardsPath = Join-Path $reviewRoot 'Local_Standards.md'
if (-not (Test-Path -LiteralPath $standardsPath -PathType Leaf)) {
    throw "Missing local standards catalog: $standardsPath"
}
$catalog = Get-Content -LiteralPath $standardsPath -Raw
foreach ($domain in @('C', 'S', 'T', 'E', 'A', 'M')) {
    foreach ($number in 1..3) {
        $code = "CST-$domain$number"
        if ($catalog -notmatch ([regex]::Escape($code) + '\b')) {
            throw "Local standards catalog is missing $code"
        }
    }
}

$inventoryPath = Join-Path $reviewRoot 'Materials_Inventory.csv'
if (-not (Test-Path -LiteralPath $inventoryPath -PathType Leaf)) {
    throw "Missing materials inventory: $inventoryPath"
}
$inventory = @(Import-Csv -LiteralPath $inventoryPath)
if ($inventory.Count -eq 0) {
    throw "Empty materials inventory: $inventoryPath"
}
$itemIds = [System.Collections.Generic.HashSet[string]]::new(
    [System.StringComparer]::OrdinalIgnoreCase
)
$aliases = [System.Collections.Generic.Dictionary[string, object]]::new(
    [System.StringComparer]::OrdinalIgnoreCase
)
foreach ($item in $inventory) {
    if ([string]::IsNullOrWhiteSpace($item.item_id) -or
        [string]::IsNullOrWhiteSpace($item.normalized_name) -or
        -not $itemIds.Add($item.item_id)) {
        throw "Missing or duplicate material identifier: '$($item.item_id)'"
    }
    $cost = [decimal]0
    if (-not [decimal]::TryParse($item.unit_cost_estimate_usd,
        [System.Globalization.NumberStyles]::Number,
        [System.Globalization.CultureInfo]::InvariantCulture, [ref]$cost) -or $cost -lt 0) {
        throw "Invalid material unit cost for $($item.item_id)"
    }
    foreach ($size in @(10, 15, 20, 25)) {
        $quantity = 0
        if (-not [int]::TryParse($item."quantity_$size", [ref]$quantity) -or $quantity -lt 0) {
            throw "Invalid material quantity_$size for $($item.item_id)"
        }
    }
    $names = @($item.normalized_name) + @($item.aliases.Split('|'))
    foreach ($name in $names) {
        $key = $name.Trim()
        if ([string]::IsNullOrWhiteSpace($key)) { continue }
        if (-not $aliases.ContainsKey($key)) {
            $aliases.Add($key, [System.Collections.Generic.HashSet[string]]::new(
                [System.StringComparer]::OrdinalIgnoreCase
            ))
        }
        [void]$aliases[$key].Add($item.item_id)
    }
}
$materialRows = [System.Collections.Generic.List[object]]::new()
foreach ($row in $lessonRows) {
    $terms = @($row.materials.Split('|') | ForEach-Object { $_.Trim() } | Sort-Object -Unique)
    foreach ($term in $terms) {
        if ([string]::IsNullOrWhiteSpace($term)) {
            throw "Empty material term in $($row.lesson_path)"
        }
        $ids = @()
        $match = 'UNMATCHED - RECONCILIATION REQUIRED'
        if ($aliases.ContainsKey($term)) {
            $ids = @($aliases[$term] | Sort-Object)
            $match = if ($ids.Count -eq 1) {
                'NAME MATCH ONLY - SPECIFICATION REQUIRED'
            } else {
                'AMBIGUOUS - RECONCILIATION REQUIRED'
            }
        }
        $materialRows.Add([pscustomobject][ordered]@{
            material_term = $term
            item_id = $ids -join '|'
            match_status = $match
            lesson_path = $row.lesson_path
            grade_band = $row.grade_band
            schedule = $row.schedule
            rotation = $row.rotation
            scope = $row.scope
            revision = $row.revision
        })
    }
}

$backlogRows = @(
    $materialRows | Where-Object { $_.match_status -ne 'NAME MATCH ONLY - SPECIFICATION REQUIRED' } |
    Group-Object material_term | ForEach-Object {
        $term = $_.Name
        $bucket = 'LESSON SPECIFICATION REQUIRED'
        $reason = 'Read the actual lesson and identify the exact item or prepared resource; do not invent a substitute or purchase.'
        if ($term -match '(?i)scratch|code\.org|tinkercad|\bapp\b|software|canva|garageband') {
            $bucket = 'PLATFORM OR ACCESS RESOURCE'
            $reason = 'Confirm platform or related resource and approved access; this is not automatically a physical supply or free license.'
        } elseif ($term -match '(?i)journal|portfolio|notebook|record sheet') {
            $bucket = 'DOCUMENTATION FORMAT'
            $reason = 'Confirm paper or digital evidence format and consumption; a record concept is not a verified notebook purchase.'
        } elseif ($term -match '(?i)^(tape|floor tape|glue)$') {
            $bucket = 'AMBIGUOUS MATERIAL TYPE'
            $reason = 'Specify the tape or adhesive type and safe application; masking or conductive tape and glue sticks are not interchangeable.'
        } elseif ($term -match '\d+/\d+') {
            $bucket = 'QUANTITY-DECORATED TERM'
            $reason = 'Separate exact item names from quantity expressions and confirm the allocation before matching or buying.'
        } elseif ($term -match '(?i)^optional\b') {
            $bucket = 'CONDITIONAL RESOURCE'
            $reason = 'Confirm the selected optional pathway and item specifications; do not procure automatically.'
        } elseif ($term -match '(?i)powder|chemical|battery|magnet|resistor|\bLED\b|wire|circuit') {
            $bucket = 'SAFETY OR COMPATIBILITY SPECIFICATION'
            $reason = 'Confirm the permitted activity and exact protected parts or material; no generic safety or compatibility equivalence.'
        }
        [pscustomobject][ordered]@{
            material_term = $term
            occurrences = $_.Count
            grade_bands = @($_.Group.grade_band | Sort-Object -Unique) -join '|'
            triage_bucket = $bucket
            reason = $reason
            lesson_paths = @($_.Group.lesson_path | Sort-Object -Unique) -join '|'
        }
    } | Sort-Object occurrences -Descending
)
$backlogHeader = '"material_term","occurrences","grade_bands","triage_bucket","reason","lesson_paths"'
$maps = [ordered]@{
    'Lesson_Map.csv' = @($lessonRows | Sort-Object lesson_path)
    'Standards_Traceability.csv' = @(
        $traceRows | Sort-Object local_standard, grade_band, schedule, rotation, lesson_path
    )
    'Material_Usage.csv' = @($materialRows | Sort-Object grade_band, material_term, lesson_path)
    'Material_Reconciliation_Backlog.csv' = $backlogRows
}
foreach ($map in $maps.GetEnumerator()) {
    $mapPath = Join-Path $reviewRoot $map.Key
    if ($map.Key -eq 'Material_Reconciliation_Backlog.csv' -and $map.Value.Count -eq 0) {
        if ($ValidateOnly) {
            if (-not (Test-Path -LiteralPath $mapPath -PathType Leaf) -or
                (Get-Content -LiteralPath $mapPath -TotalCount 1) -cne $backlogHeader -or
                @(Import-Csv -LiteralPath $mapPath).Count -ne 0) {
                throw "Missing or stale empty reconciliation backlog: $mapPath"
            }
        } else {
            [System.IO.File]::WriteAllText($mapPath, $backlogHeader + [Environment]::NewLine,
                [System.Text.UTF8Encoding]::new($false))
        }
        continue
    }
    if ($ValidateOnly) {
        if (-not (Test-Path -LiteralPath $mapPath -PathType Leaf)) {
            throw "Missing generated map: $mapPath. Run Build-CurriculumMaps.ps1 first."
        }
        $expectedCsv = @($map.Value | ConvertTo-Csv -NoTypeInformation)
        $actualCsv = @(Import-Csv -LiteralPath $mapPath | ConvertTo-Csv -NoTypeInformation)
        if ($expectedCsv.Count -ne $actualCsv.Count -or
            @(Compare-Object -ReferenceObject $expectedCsv -DifferenceObject $actualCsv).Count -gt 0) {
            throw "Stale generated map: $mapPath. Run Build-CurriculumMaps.ps1 again."
        }
    } else {
        $map.Value | Export-Csv -LiteralPath $mapPath -NoTypeInformation -Encoding UTF8
    }
}
Write-Output "Validated $($lessonRows.Count) lessons, $($traceRows.Count) local-standard evidence links and 18 catalog codes."
Write-Output "Validated $($inventory.Count) inventory items; indexed $($materialRows.Count) lesson/material terms with explicit reconciliation status."
Write-Output "Indexed $($backlogRows.Count) distinct unresolved material terms for source-specific follow-up."
Write-Output 'Official benchmark alignment remains VERIFICATION REQUIRED; planned evidence is not proof of student mastery.'
