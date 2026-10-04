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
$inventoryHeader = @('item_id', 'normalized_name', 'aliases', 'unit', 'unit_cost_estimate_usd',
    'estimate_date', 'tier', 'grades', 'purpose', 'quantity_10', 'quantity_15', 'quantity_20',
    'quantity_25', 'quantity_basis', 'reuse', 'annual_replacement_estimate', 'storage', 'safety',
    'battery_needs', 'verified_lesson_use_count', 'estimated_core_meeting_uses', 'use_count_basis',
    'school_stock_status', 'supplier_status')
if (($inventory[0].PSObject.Properties.Name -join ',') -cne ($inventoryHeader -join ',')) {
    throw 'Invalid materials inventory schema; expected the complete 24-field catalog.'
}
$itemIds = [System.Collections.Generic.HashSet[string]]::new(
    [System.StringComparer]::OrdinalIgnoreCase
)
$aliases = [System.Collections.Generic.Dictionary[string, object]]::new(
    [System.StringComparer]::OrdinalIgnoreCase
)
foreach ($item in $inventory) {
    foreach ($field in $inventoryHeader) {
        if ([string]::IsNullOrWhiteSpace($item.$field)) {
            throw "Missing material field '$field' for $($item.item_id)"
        }
    }
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
    foreach ($field in @('verified_lesson_use_count', 'estimated_core_meeting_uses')) {
        $count = 0
        if (-not [int]::TryParse($item.$field, [ref]$count) -or $count -lt 0) {
            throw "Invalid material evidence-count '$field' for $($item.item_id)"
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
$resourcesPath = Join-Path $reviewRoot 'Lesson_Resources.csv'
$resourceLookup = [System.Collections.Generic.Dictionary[string, object]]::new(
    [System.StringComparer]::OrdinalIgnoreCase
)
if (Test-Path -LiteralPath $resourcesPath -PathType Leaf) {
    $resourceIds = [System.Collections.Generic.HashSet[string]]::new(
        [System.StringComparer]::OrdinalIgnoreCase
    )
    foreach ($resource in @(Import-Csv -LiteralPath $resourcesPath)) {
        foreach ($field in @('resource_id', 'canonical_name', 'aliases', 'resource_kind',
            'source_url', 'acquisition', 'required_checks', 'price_status')) {
            if ([string]::IsNullOrWhiteSpace($resource.$field)) {
                throw "Missing resource field '$field' for $($resource.resource_id)"
            }
        }
        if (-not $resourceIds.Add($resource.resource_id)) {
            throw "Duplicate lesson resource: $($resource.resource_id)"
        }
        foreach ($name in @($resource.canonical_name) + @($resource.aliases.Split('|'))) {
            $name = $name.Trim()
            if ([string]::IsNullOrWhiteSpace($name) -or $aliases.ContainsKey($name) -or
                $resourceLookup.ContainsKey($name)) {
                throw "Duplicate or ambiguous lesson resource name: '$name'"
            }
            $resourceLookup.Add($name, $resource)
        }
    }
}
$holdingsPath = Join-Path $reviewRoot 'Reported_Holdings.csv'
$snapHolding = @()
if (Test-Path -LiteralPath $holdingsPath -PathType Leaf) {
    $snapHolding = @(Import-Csv -LiteralPath $holdingsPath | Where-Object item_id -eq 'OHM-135')
    if ($snapHolding.Count -gt 1) { throw 'Duplicate reported OHM-135 holding.' }
    if ($snapHolding.Count -eq 1) {
        foreach ($field in @('description', 'reported_quantity', 'verification_status')) {
            $property = $snapHolding[0].PSObject.Properties[$field]
            if ($null -eq $property -or [string]::IsNullOrWhiteSpace($property.Value)) {
                throw "Missing reported holding field '$field' for OHM-135."
            }
        }
    }
}
$snapNames = @('Snap Circuits STEM Classroom Activity Kit', 'Reported OHM-135 Snap Circuits kit',
    'Snap Circuits OHM-135', 'Snap Circuits STEM Classroom Activity Kit OHM-135')
$resolvedStatuses = @('NAME MATCH ONLY - SPECIFICATION REQUIRED',
    'DECLARED RESOURCE - LOCAL ACCESS REQUIRED', 'REPORTED HOLDING - PREFLIGHT REQUIRED')
foreach ($row in $lessonRows) {
    $terms = @($row.materials.Split('|') | ForEach-Object { $_.Trim() } | Sort-Object -Unique)
    foreach ($term in $terms) {
        if ([string]::IsNullOrWhiteSpace($term)) {
            throw "Empty material term in $($row.lesson_path)"
        }
        $ids = @()
        $match = 'UNMATCHED - RECONCILIATION REQUIRED'
        $referenceKind = 'unresolved'
        if ($aliases.ContainsKey($term)) {
            $ids = @($aliases[$term] | Sort-Object)
            $match = if ($ids.Count -eq 1) {
                'NAME MATCH ONLY - SPECIFICATION REQUIRED'
            } else {
                'AMBIGUOUS - RECONCILIATION REQUIRED'
            }
            $referenceKind = 'physical_inventory'
        } elseif ($resourceLookup.ContainsKey($term)) {
            $ids = @('RESOURCE:' + $resourceLookup[$term].resource_id)
            $match = 'DECLARED RESOURCE - LOCAL ACCESS REQUIRED'
            $referenceKind = $resourceLookup[$term].resource_kind
        } elseif ($snapNames -contains $term -and $snapHolding.Count -eq 1) {
            if ($snapHolding[0].reported_quantity -ne '8' -or
                $snapHolding[0].verification_status -ne 'REPORTED NOT PHYSICALLY VERIFIED') {
                throw 'Reported holding no longer matches the documented eight uninspected kits.'
            }
            $ids = @('STOCK:OHM-135')
            $match = 'REPORTED HOLDING - PREFLIGHT REQUIRED'
            $referenceKind = 'reported_stock'
        }
        $materialRows.Add([pscustomobject][ordered]@{
            material_term = $term
            item_id = $ids -join '|'
            match_status = $match
            reference_kind = $referenceKind
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
    $materialRows | Where-Object { $resolvedStatuses -notcontains $_.match_status } |
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
$usageSummary = @(
    $materialRows | Where-Object { $resolvedStatuses -contains $_.match_status } |
    Group-Object item_id | ForEach-Object {
        $first = $_.Group[0]
        $name = $first.item_id
        if ($first.reference_kind -eq 'physical_inventory') {
            $matchedItem = @($inventory | Where-Object item_id -eq $first.item_id)
            if ($matchedItem.Count -ne 1) { throw "Missing physical inventory summary item: $($first.item_id)" }
            $name = $matchedItem[0].normalized_name
        } elseif ($first.item_id -like 'RESOURCE:*') {
            $matchedResource = $resourceLookup.Values | Where-Object {
                ('RESOURCE:' + $_.resource_id) -eq $first.item_id
            } | Select-Object -First 1
            if ($null -eq $matchedResource) { throw "Missing declared resource summary item: $($first.item_id)" }
            $name = $matchedResource.canonical_name
        } elseif ($first.item_id -eq 'STOCK:OHM-135') {
            $name = $snapHolding[0].description
        }
        [pscustomobject][ordered]@{
            reference_id = $first.item_id
            reference_kind = $first.reference_kind
            canonical_name = $name
            grade_bands = @($_.Group.grade_band | Sort-Object -Unique) -join '|'
            planned_lesson_documents = @($_.Group.lesson_path | Sort-Object -Unique).Count
            term_occurrences = $_.Count
            lesson_paths = @($_.Group.lesson_path | Sort-Object -Unique) -join '|'
            evidence_status = 'PLANNED DOCUMENT USE - NOT OBSERVED USE OR VERIFIED STOCK'
        }
    } | Sort-Object reference_kind, canonical_name
)
$programMetrics = [ordered]@{
    lesson_documents = $lessonRows.Count
    rebuilt_documents = @($lessonRows | Where-Object revision -eq 'rebuilt').Count
    improved_documents = @($lessonRows | Where-Object revision -eq 'improved').Count
    unchanged_documents = @($lessonRows | Where-Object revision -eq 'unchanged').Count
    planned_meetings_all_alternative_tracks = [int](
        $lessonRows | ForEach-Object { [int]$_.meetings } | Measure-Object -Sum
    ).Sum
    local_standard_evidence_links = $traceRows.Count
    physical_catalog_identities = $inventory.Count
    declared_resource_identities = @($resourceLookup.Values | ForEach-Object { $_.resource_id } |
        Sort-Object -Unique).Count
    material_resource_term_occurrences = $materialRows.Count
    resolved_physical_name_occurrences = @($materialRows | Where-Object reference_kind -eq 'physical_inventory').Count
    declared_resource_occurrences = @($materialRows | Where-Object { $_.item_id -like 'RESOURCE:*' }).Count
    reported_stock_occurrences = @($materialRows | Where-Object reference_kind -eq 'reported_stock').Count
    unresolved_distinct_terms = $backlogRows.Count
    unresolved_term_occurrences = @($materialRows | Where-Object { $resolvedStatuses -notcontains $_.match_status }).Count
}
$summaryRows = foreach ($metric in $programMetrics.GetEnumerator()) {
    [pscustomobject][ordered]@{
        metric = $metric.Key
        value = $metric.Value
        evidence_type = 'DOCUMENT INVENTORY AND PLANNED USE; NOT PHYSICAL STOCK OR STUDENT MASTERY'
    }
}
$maps = [ordered]@{
    'Lesson_Map.csv' = @($lessonRows | Sort-Object lesson_path)
    'Standards_Traceability.csv' = @(
        $traceRows | Sort-Object local_standard, grade_band, schedule, rotation, lesson_path
    )
    'Material_Usage.csv' = @($materialRows | Sort-Object grade_band, material_term, lesson_path)
    'Material_Reconciliation_Backlog.csv' = $backlogRows
    'Inventory_Usage_Summary.csv' = $usageSummary
    'Program_Summary.csv' = @($summaryRows)
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
