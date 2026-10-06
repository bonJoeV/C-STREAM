[CmdletBinding()]
param(
    [string]$RepositoryRoot = (Split-Path -Parent $PSScriptRoot)
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$root = [System.IO.Path]::GetFullPath($RepositoryRoot)
$reviewRoot = Join-Path $root 'docs\Review'

& (Join-Path $root 'scripts\Build-OperationalAudit.ps1') -RepositoryRoot $root -ValidateOnly

$fixtureRoot = Join-Path ([System.IO.Path]::GetTempPath()) (
    'cstream-operational-tests-' + [guid]::NewGuid().ToString('N')
)
[System.IO.Directory]::CreateDirectory($fixtureRoot) | Out-Null
foreach ($name in @('docs', 'scripts', '.github', '.gitignore', 'mkdocs.yml',
    'README.md', 'requirements.txt', 'review.md')) {
    Copy-Item -LiteralPath (Join-Path $root $name) -Destination $fixtureRoot -Recurse -Force
}
$fixtureScript = Join-Path $fixtureRoot 'scripts\Build-OperationalAudit.ps1'
$fixtureReview = Join-Path $fixtureRoot 'docs\Review'
$outputNames = @('Curriculum_Artifact_Inventory.csv', 'Teacher_Artifact_Audit.csv',
    'Procurement_Register.csv')
foreach ($name in $outputNames) {
    (Get-Item -LiteralPath (Join-Path $fixtureReview $name)).LastWriteTimeUtc = [datetime]::UtcNow.AddDays(-1)
}
& $fixtureScript -RepositoryRoot $fixtureRoot -ValidateOnly | Out-Null

foreach ($name in $outputNames) {
    $path = Join-Path $fixtureReview $name
    $original = [System.IO.File]::ReadAllBytes($path)
    $fixtureRows = @(Import-Csv -LiteralPath $path)
    $column = $fixtureRows[0].PSObject.Properties.Name | Select-Object -First 1
    $fixtureRows[0].$column = 'INVALID TEST VALUE'
    $fixtureRows | Export-Csv -LiteralPath $path -NoTypeInformation
    $rejected = $false
    try {
        & $fixtureScript -RepositoryRoot $fixtureRoot -ValidateOnly | Out-Null
    } catch {
        if ($_.Exception.Message -cne "Stale or missing operational audit: $path") {
            throw
        }
        $rejected = $true
    } finally {
        [System.IO.File]::WriteAllBytes($path, $original)
    }
    if (-not $rejected) { throw "Altered operational audit was accepted: $name" }

    $backupPath = Join-Path $fixtureRoot $name
    Move-Item -LiteralPath $path -Destination $backupPath
    $rejected = $false
    $inventoryPath = Join-Path $fixtureReview 'Curriculum_Artifact_Inventory.csv'
    try {
        & $fixtureScript -RepositoryRoot $fixtureRoot -ValidateOnly | Out-Null
    } catch {
        if ($_.Exception.Message -cne "Stale or missing operational audit: $inventoryPath") {
            throw
        }
        $rejected = $true
    } finally {
        Move-Item -LiteralPath $backupPath -Destination $path
    }
    if (-not $rejected) { throw "Missing operational audit was accepted: $name" }
}
Write-Output 'PASS: checkout timestamps ignored; altered and missing content rejected for all three operational audits.'

$auditPath = Join-Path $reviewRoot 'Teacher_Artifact_Audit.csv'
$rows = @(Import-Csv -LiteralPath $auditPath)
if ($rows.Count -ne 251) {
    throw "Expected 251 teacher-artifact rows; found $($rows.Count)."
}

$held = @($rows | Where-Object release_status -like 'HOLD*')
$missing = @($rows | Where-Object { [int]$_.missing_required_artifact_count -gt 0 })
$missingSections = @($rows | Where-Object missing_readiness_sections -ne 'None')
$brokenLinks = @($rows | Where-Object invalid_artifact_links -ne 'None')
if ($held.Count -gt 0 -or $missing.Count -gt 0 -or
    $missingSections.Count -gt 0 -or $brokenLinks.Count -gt 0) {
    throw (("Operational readiness failed: {0} held, {1} missing-artifact rows, " +
        "{2} missing-section rows, {3} broken-link rows.") -f
        $held.Count, $missing.Count, $missingSections.Count, $brokenLinks.Count)
}

$releasePath = Join-Path $reviewRoot 'Teacher_Release_Record.csv'
$releaseRows = @(Import-Csv -LiteralPath $releasePath)
$releaseHeader = @(
    'lesson_path', 'schedule', 'rotation', 'grade_band', 'date', 'enrollment',
    'native_minutes', 'selected_pathway', 'objective_and_evidence_threshold',
    'kit_location', 'kit_checked_by', 'kit_check_date',
    'safety_access_policy_checks', 'pretest_result', 'named_fallback',
    'evidence_deferred', 'pilot_prep_minutes', 'pilot_teaching_minutes',
    'pilot_cleanup_minutes', 'individual_evidence_summary',
    'defect_and_next_revision', 'teacher_approver', 'release_status'
)
if ($releaseRows.Count -ne 1 -or
    (($releaseRows[0].PSObject.Properties.Name -join ',') -cne ($releaseHeader -join ',')) -or
    $releaseRows[0].release_status -cne 'HOLD') {
    throw 'Teacher release record must remain a one-row HOLD template with the controlled schema.'
}

$servicePath = Join-Path $reviewRoot 'External_Service_Approval_Register.csv'
$services = @(Import-Csv -LiteralPath $servicePath)
$serviceHeader = @(
    'service_id', 'service_or_platform', 'official_url', 'lesson_use',
    'account_owner', 'minimum_age_and_consent', 'personal_data_collected',
    'advertising_tracking_sharing', 'terms_version_and_review_date',
    'offline_capability', 'keyboard_accessibility', 'switch_accessibility',
    'captions_audio_alternative', 'supported_device_version',
    'teacher_setup_login_burden', 'school_approver_and_date',
    'objective_equivalent_fallback', 'execution_evidence_deferred',
    'approval_status'
)
if ($services.Count -eq 0 -or
    (($services[0].PSObject.Properties.Name -join ',') -cne ($serviceHeader -join ','))) {
    throw 'External service approval register has an invalid schema.'
}
$serviceIds = @($services.service_id)
foreach ($requiredId in @(
    'SCRATCH', 'SCRATCHJR', 'APPINVENTOR', 'TINKERCAD', 'CODEORG', 'OZOBOT',
    'DASHAPP', 'SPHEROAPP', 'MUSICLAB', 'IMPRESS', 'SCRATCHMUSIC'
)) {
    if ($serviceIds -cnotcontains $requiredId) {
        throw "External service approval register is missing $requiredId."
    }
}
foreach ($service in $services) {
    foreach ($field in $serviceHeader) {
        if ([string]::IsNullOrWhiteSpace($service.$field)) {
            throw "Missing external-service field '$field' for $($service.service_id)."
        }
    }
    if ($service.approval_status -notin @('HOLD', 'APPROVED', 'REJECTED')) {
        throw "Invalid external-service approval status for $($service.service_id)."
    }
    if ($service.approval_status -eq 'APPROVED' -and
        ($service.school_approver_and_date -match 'VERIFICATION REQUIRED' -or
         $service.terms_version_and_review_date -match 'VERIFICATION REQUIRED')) {
        throw "Service $($service.service_id) cannot be APPROVED with unresolved terms/approval."
    }
}

$sdsPath = Join-Path $reviewRoot 'Safety_Data_Sheet_Register.csv'
$sdsRows = @(Import-Csv -LiteralPath $sdsPath)
$sdsHeader = @(
    'product_id', 'exact_product_and_manufacturer', 'lesson_paths',
    'sds_revision_date', 'sds_url_or_repository_location', 'reviewed_by',
    'review_date', 'storage_and_disposal', 'approval_status'
)
if ($sdsRows.Count -eq 0 -or
    (($sdsRows[0].PSObject.Properties.Name -join ',') -cne ($sdsHeader -join ','))) {
    throw 'Safety Data Sheet register has an invalid schema.'
}
foreach ($requiredId in @('GLUE', 'TAPE', 'FLOORTAPE')) {
    if ($sdsRows.product_id -cnotcontains $requiredId) {
        throw "Safety Data Sheet register is missing $requiredId."
    }
}
foreach ($product in $sdsRows) {
    foreach ($field in $sdsHeader) {
        if ([string]::IsNullOrWhiteSpace($product.$field)) {
            throw "Missing SDS-register field '$field' for $($product.product_id)."
        }
    }
    if ($product.approval_status -notin @('HOLD', 'APPROVED', 'REJECTED')) {
        throw "Invalid SDS approval status for $($product.product_id)."
    }
    if ($product.approval_status -eq 'APPROVED' -and
        ($product.exact_product_and_manufacturer -match 'VERIFICATION REQUIRED' -or
         $product.sds_revision_date -match 'VERIFICATION REQUIRED' -or
         $product.sds_url_or_repository_location -match 'VERIFICATION REQUIRED')) {
        throw "Product $($product.product_id) cannot be APPROVED without an exact current SDS."
    }
}

Write-Output ("PASS: 251 repository artifact rows complete; release template held; " +
    "$($services.Count) external services and $($sdsRows.Count) SDS-control rows validated.")
Write-Output 'This test does not approve services/products, inspect kits, or replace teacher review and classroom pilots.'
