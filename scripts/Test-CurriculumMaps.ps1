[CmdletBinding()]
param(
    [string]$MapScript = (Join-Path $PSScriptRoot 'Build-CurriculumMaps.ps1'),
    [string]$ArtifactRoot = [System.IO.Path]::GetTempPath()
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
$fixtureRoot = Join-Path $ArtifactRoot ('cstream-map-tests-' + [guid]::NewGuid().ToString('N'))
$reviewRoot = Join-Path $fixtureRoot 'docs\Review'
[System.IO.Directory]::CreateDirectory($reviewRoot) | Out-Null
$specs = @(
    @('Kindergarten_Audit.csv', 'K', 'Weekly', 'Single', 'Lessons/Kindergarten/Week01_Test.md', 25),
    @('Grades_1-2_Audit.csv', '1-2', 'Bi-Weekly', 'B', 'Lessons/Bi-Weekly/Grades_1-2_YearB/Session01_Test.md', 30),
    @('Grades_3-4_Audit.csv', '3-4', 'Weekly', 'A', 'Lessons/Grades_3-4_YearA/Week01_Test.md', 40),
    @('Grades_5-6_Audit.csv', '5-6', 'Weekly', 'B', 'Lessons/Grades_5-6_YearB/Week01_Test.md', 45)
)
$originalRows = @{}
foreach ($spec in $specs) {
    $lessonPath = Join-Path (Join-Path $fixtureRoot 'docs') (
        $spec[4].Replace([char]'/', [System.IO.Path]::DirectorySeparatorChar)
    )
    [System.IO.Directory]::CreateDirectory((Split-Path -Parent $lessonPath)) | Out-Null
    [System.IO.File]::WriteAllText($lessonPath, '# Synthetic lesson')
    $row = [pscustomobject][ordered]@{
        lesson_path = $spec[4]; grade_band = $spec[1]; schedule = $spec[2]; rotation = $spec[3]
        unit = 'Test unit'; title = 'Test lesson'; meetings = 1; minutes = $spec[5]
        status = 'KEEP + IMPROVE'; priority = 'P1'; rationale = 'Synthetic validation fixture'
        local_standards = 'CST-C1|CST-E2|CST-M1'
        evidence = 'Each student compares two tests and explains one revision.'
        materials = 'Copy paper|Rulers'; technology = 'None'
        prep = 'Light (5-15 minutes)'; cleanup = '3 minutes'; scope = 'CORE'; revision = 'rebuilt'
    }
    $originalRows[$spec[0]] = $row
    $row | Export-Csv -LiteralPath (Join-Path $reviewRoot $spec[0]) -NoTypeInformation
}
$catalog = foreach ($domain in @('C', 'S', 'T', 'E', 'A', 'M')) {
    foreach ($number in 1..3) { "CST-$domain$number" }
}
[System.IO.File]::WriteAllText((Join-Path $reviewRoot 'Local_Standards.md'), $catalog -join "`n")
$inventory = @(
    [pscustomobject]@{
        item_id = 'PAPER'; normalized_name = 'Plain paper'; aliases = 'Copy paper'
        unit = 'sheet'; unit_cost_estimate_usd = '0.01'; estimate_date = '2026-10'
        tier = 'Tier 1'; grades = 'K-6'; purpose = 'Synthetic paper supply'
        quantity_10 = 10; quantity_15 = 15; quantity_20 = 20; quantity_25 = 25
        quantity_basis = 'One per pupil'; reuse = 'Consumable'; annual_replacement_estimate = 'Estimate only'
        storage = 'Test bin'; safety = 'Test fixture'; battery_needs = 'None'
        verified_lesson_use_count = 0; estimated_core_meeting_uses = 1; use_count_basis = 'Planned only'
        school_stock_status = 'NOT VERIFIED'; supplier_status = 'VERIFICATION REQUIRED'
    },
    [pscustomobject]@{
        item_id = 'RULER'; normalized_name = 'Metric ruler'; aliases = 'Rulers'
        unit = 'ruler'; unit_cost_estimate_usd = '1.00'; estimate_date = '2026-10'
        tier = 'Tier 1'; grades = 'K-6'; purpose = 'Synthetic measuring supply'
        quantity_10 = 4; quantity_15 = 5; quantity_20 = 7; quantity_25 = 9
        quantity_basis = 'Groups at most three'; reuse = 'Reusable'; annual_replacement_estimate = 'Estimate only'
        storage = 'Test bin'; safety = 'Test fixture'; battery_needs = 'None'
        verified_lesson_use_count = 0; estimated_core_meeting_uses = 1; use_count_basis = 'Planned only'
        school_stock_status = 'NOT VERIFIED'; supplier_status = 'VERIFICATION REQUIRED'
    }
)
$inventoryFields = @('item_id', 'normalized_name', 'aliases', 'unit', 'unit_cost_estimate_usd',
    'estimate_date', 'tier', 'grades', 'purpose', 'quantity_10', 'quantity_15', 'quantity_20',
    'quantity_25', 'quantity_basis', 'reuse', 'annual_replacement_estimate', 'storage', 'safety',
    'battery_needs', 'verified_lesson_use_count', 'estimated_core_meeting_uses', 'use_count_basis',
    'school_stock_status', 'supplier_status')
$inventory = @($inventory | Select-Object $inventoryFields)
$inventoryPath = Join-Path $reviewRoot 'Materials_Inventory.csv'
$inventory | Export-Csv -LiteralPath $inventoryPath -NoTypeInformation

function Assert-Rejected {
    param([string]$ExpectedMessage)
    $rejected = $false
    try {
        & $MapScript -RepositoryRoot $fixtureRoot -ValidateOnly | Out-Null
    } catch {
        if ($_.Exception.Message -notlike "*$ExpectedMessage*") {
            throw "Wrong rejection: $($_.Exception.Message)"
        }
        $rejected = $true
    }
    if (-not $rejected) { throw "Invalid fixture was accepted: $ExpectedMessage" }
}

& $MapScript -RepositoryRoot $fixtureRoot
& $MapScript -RepositoryRoot $fixtureRoot -ValidateOnly
$lessons = @(Import-Csv -LiteralPath (Join-Path $reviewRoot 'Lesson_Map.csv'))
$trace = @(Import-Csv -LiteralPath (Join-Path $reviewRoot 'Standards_Traceability.csv'))
$usage = @(Import-Csv -LiteralPath (Join-Path $reviewRoot 'Material_Usage.csv'))
if ($lessons.Count -ne 4 -or $trace.Count -ne 12 -or $usage.Count -ne 8 -or
    @($trace | Where-Object external_alignment -ne 'VERIFICATION REQUIRED').Count -ne 0 -or
    @($usage | Where-Object match_status -ne 'NAME MATCH ONLY - SPECIFICATION REQUIRED').Count -ne 0) {
    throw 'Happy-path shape or source/equivalence boundary is wrong.'
}
if (@(Import-Csv -LiteralPath (Join-Path $reviewRoot 'Material_Reconciliation_Backlog.csv')).Count -ne 0) {
    throw 'A fully named fixture must produce an empty backlog with a valid header.'
}

$auditPath = Join-Path $reviewRoot 'Kindergarten_Audit.csv'
$valid = $originalRows['Kindergarten_Audit.csv']
@($valid, $valid) | Export-Csv -LiteralPath $auditPath -NoTypeInformation
Assert-Rejected 'Duplicate lesson audit'
$valid | Export-Csv -LiteralPath $auditPath -NoTypeInformation
foreach ($case in @(
    @('local_standards', 'CST-C1|CST-X9', 'Unknown local standard'),
    @('minutes', '45', 'native class period'),
    @('evidence', '', "Missing 'evidence'"),
    @('rotation', 'A', 'Invalid grade/rotation'),
    @('technology', 'Sometimes', "Invalid 'technology'"),
    @('lesson_path', '../outside.md', 'does not match'),
    @('meetings', '0', 'positive integer')
)) {
    $changed = $valid.PSObject.Copy()
    $changed.($case[0]) = $case[1]
    $changed | Export-Csv -LiteralPath $auditPath -NoTypeInformation
    Assert-Rejected $case[2]
    $valid | Export-Csv -LiteralPath $auditPath -NoTypeInformation
}
$changed = $valid.PSObject.Copy()
$changed.evidence = 'New evidence requires regenerated maps.'
$changed | Export-Csv -LiteralPath $auditPath -NoTypeInformation
Assert-Rejected 'Stale generated map'
$valid | Export-Csv -LiteralPath $auditPath -NoTypeInformation
$badInventory = $inventory[0].PSObject.Copy()
$badInventory.unit_cost_estimate_usd = '-1'
@($badInventory, $inventory[1]) | Export-Csv -LiteralPath $inventoryPath -NoTypeInformation
Assert-Rejected 'Invalid material unit cost'
$inventory | Export-Csv -LiteralPath $inventoryPath -NoTypeInformation

$badInventory = $inventory[0].PSObject.Copy()
$badInventory.quantity_25 = 'nine'
@($badInventory, $inventory[1]) | Export-Csv -LiteralPath $inventoryPath -NoTypeInformation
Assert-Rejected 'Invalid material quantity_25'
$inventory | Export-Csv -LiteralPath $inventoryPath -NoTypeInformation
$badInventory = $inventory[0].PSObject.Copy()
$badInventory.safety = ''
@($badInventory, $inventory[1]) | Export-Csv -LiteralPath $inventoryPath -NoTypeInformation
Assert-Rejected "Missing material field 'safety'"
$inventory | Export-Csv -LiteralPath $inventoryPath -NoTypeInformation
$inventory | Select-Object * -ExcludeProperty supplier_status |
    Export-Csv -LiteralPath $inventoryPath -NoTypeInformation
Assert-Rejected 'Invalid materials inventory schema'
$inventory | Export-Csv -LiteralPath $inventoryPath -NoTypeInformation

$resourcesPath = Join-Path $reviewRoot 'Lesson_Resources.csv'
$resource = [pscustomobject]@{
    resource_id = 'APP'; canonical_name = 'Access: test app'; aliases = 'Test app'
    resource_kind = 'digital_platform'; source_url = 'https://example.org/'
    acquisition = 'School approved'; required_checks = 'Local access required'
    price_status = 'NOT A PHYSICAL INVENTORY PRICE'
}
$resource | Export-Csv -LiteralPath $resourcesPath -NoTypeInformation
[pscustomobject]@{
    item_id = 'OHM-135'; description = 'Reported individual activity kit'
    reported_quantity = '8'; verification_status = 'REPORTED NOT PHYSICALLY VERIFIED'
} | Export-Csv -LiteralPath (Join-Path $reviewRoot 'Reported_Holdings.csv') -NoTypeInformation
$changed = $valid.PSObject.Copy()
$changed.materials = 'Copy paper|Test app|Snap Circuits STEM Classroom Activity Kit'
$changed | Export-Csv -LiteralPath $auditPath -NoTypeInformation
& $MapScript -RepositoryRoot $fixtureRoot
& $MapScript -RepositoryRoot $fixtureRoot -ValidateOnly
$usage = @(Import-Csv -LiteralPath (Join-Path $reviewRoot 'Material_Usage.csv'))
if (@($usage | Where-Object {
    $_.item_id -eq 'RESOURCE:APP' -and $_.match_status -eq 'DECLARED RESOURCE - LOCAL ACCESS REQUIRED'
}).Count -ne 1 -or @($usage | Where-Object {
    $_.item_id -eq 'STOCK:OHM-135' -and $_.match_status -eq 'REPORTED HOLDING - PREFLIGHT REQUIRED'
}).Count -ne 1) {
    throw 'Access resources or reported stock were mislabeled as verified purchases.'
}
$duplicate = $resource.PSObject.Copy()
$duplicate.aliases = 'Copy paper'
$duplicate | Export-Csv -LiteralPath $resourcesPath -NoTypeInformation
Assert-Rejected 'Duplicate or ambiguous lesson resource name'
$resource | Export-Csv -LiteralPath $resourcesPath -NoTypeInformation
$extraPath = Join-Path $fixtureRoot 'docs\Lessons\Kindergarten\Week02_Unaudited.md'
[System.IO.File]::WriteAllText($extraPath, '# Unaudited synthetic lesson')
Assert-Rejected 'missing from the grade-band audits'
Write-Output 'PASS: physical/resource/holding output shapes, empty backlog and fifteen rejection cases.'
Write-Output "Only synthetic session/test artifacts created: $fixtureRoot"
