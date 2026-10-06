[CmdletBinding()]
param(
    [string]$RepositoryRoot = (Split-Path -Parent $PSScriptRoot),
    [switch]$ValidateOnly
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$root = [System.IO.Path]::GetFullPath($RepositoryRoot)
$docsRoot = Join-Path $root 'docs'
$reviewRoot = Join-Path $docsRoot 'Review'
$lessonMapPath = Join-Path $reviewRoot 'Lesson_Map.csv'
$artifactInventoryPath = Join-Path $reviewRoot 'Curriculum_Artifact_Inventory.csv'
$teacherAuditPath = Join-Path $reviewRoot 'Teacher_Artifact_Audit.csv'
$procurementPath = Join-Path $reviewRoot 'Procurement_Register.csv'

if (-not (Test-Path -LiteralPath $lessonMapPath -PathType Leaf)) {
    throw "Missing generated lesson map: $lessonMapPath"
}

$lessonMap = @(Import-Csv -LiteralPath $lessonMapPath)
$lessonByPath = @{}
foreach ($lesson in $lessonMap) {
    $lessonByPath[$lesson.lesson_path] = $lesson
}

function Get-RelativePath {
    param([string]$Path)
    return $Path.Substring($root.Length + 1).Replace('\', '/')
}

function Get-ArtifactType {
    param([string]$RelativePath)
    switch -Regex ($RelativePath) {
        '^docs/Lessons/.+/(Week|Session)\d.*\.md$' { return 'lesson plan' }
        '^docs/Lessons/.+/README\.md$' { return 'grade/track overview' }
        '^docs/Review/.+\.csv$' { return 'review data' }
        '^docs/Review/' { return 'review deliverable' }
        '^docs/Templates/' { return 'teacher template' }
        '^docs/Student_Resources/' { return 'student resource' }
        '^docs/Rubrics/' { return 'assessment/rubric' }
        '^docs/Resources/' { return 'teacher resource' }
        '^docs/Lessons/' { return 'lesson navigation' }
        '^scripts/' { return 'validation/generation script' }
        '^\.github/' { return 'publishing automation' }
        '^docs/(assets|stylesheets|overrides)/' { return 'publishing support' }
        '^review\.md$' { return 'execution brief' }
        default { return 'program support' }
    }
}

$candidateFiles = @(
    Get-ChildItem -LiteralPath $docsRoot -Recurse -File -Force
    Get-ChildItem -LiteralPath (Join-Path $root 'scripts') -Recurse -File -Force
    Get-ChildItem -LiteralPath (Join-Path $root '.github') -Recurse -File -Force
    foreach ($name in @('.gitignore', 'mkdocs.yml', 'README.md', 'requirements.txt', 'review.md')) {
        $path = Join-Path $root $name
        if (Test-Path -LiteralPath $path -PathType Leaf) { Get-Item -LiteralPath $path -Force }
    }
) | Sort-Object FullName -Unique

$artifactRows = foreach ($file in $candidateFiles) {
    $relative = Get-RelativePath $file.FullName
    $lesson = $lessonByPath[$relative.Substring(5)]
    $type = Get-ArtifactType $relative
    $isGeneratedReviewData = $relative -in @(
        'docs/Review/Curriculum_Artifact_Inventory.csv',
        'docs/Review/Teacher_Artifact_Audit.csv',
        'docs/Review/Procurement_Register.csv'
    )
    $decision = if ($relative -match '^docs/(assets|stylesheets|overrides)/' -or
        $relative -match '^\.github/' -or $relative -eq '.gitignore' -or
        $relative -eq 'requirements.txt') {
        'EXCLUDE FROM CURRICULUM REVIEW'
    } else {
        'INCLUDE'
    }
    $rationale = if ($decision -eq 'INCLUDE') {
        if ($isGeneratedReviewData) {
            'Generated operational evidence; validate from its source script.'
        } elseif ($type -eq 'lesson plan') {
            'Primary teachable curriculum document.'
        } else {
            'Authoritative curriculum, review, planning, or validation support.'
        }
    } else {
        'Publishing or repository infrastructure; discovered and reconciled but not instructional content.'
    }
    [pscustomobject][ordered]@{
        path = $relative
        grade = if ($null -ne $lesson) { $lesson.grade_band } else { 'Program' }
        unit = if ($null -ne $lesson) { $lesson.unit } else { 'Not applicable' }
        lesson = if ($null -ne $lesson) { $lesson.title } else { 'Not applicable' }
        type = $type
        inclusion_decision = $decision
        rationale = $rationale
        audit_status = if ($type -eq 'lesson plan') {
            "$($lesson.status); revision $($lesson.revision)"
        } elseif ($decision -eq 'INCLUDE') {
            'REVIEWED FOR ROLE'
        } else {
            'RECONCILED EXCLUSION'
        }
        resulting_action = if ($type -eq 'lesson plan') {
            'Retain; use lesson audit and teacher-artifact release status.'
        } elseif ($isGeneratedReviewData) {
            'Regenerate with scripts/Build-OperationalAudit.ps1.'
        } elseif ($decision -eq 'INCLUDE') {
            'Retain and maintain with the curriculum.'
        } else {
            'Retain for repository operation; do not count as curriculum coverage.'
        }
    }
}

function Get-EvidenceStatus {
    param(
        [string]$Text,
        [string]$Pattern,
        [string]$PresentLabel = 'PRESENT IN LESSON'
    )
    if ($Text -match $Pattern) { return $PresentLabel }
    return 'MISSING OR NOT EXPLICIT'
}

function Get-LocalArtifactLinks {
    param(
        [string]$Text,
        [string]$LessonPath
    )
    $lessonDirectory = Split-Path -Parent (Join-Path $docsRoot ($LessonPath.Replace('/', '\')))
    $links = @()
    foreach ($match in [regex]::Matches($Text, '(?<!\!)\[[^\]]+\]\(([^)]+)\)')) {
        $target = $match.Groups[1].Value.Trim()
        if ($target -match '^(?i)(https?|mailto|tel):' -or $target.StartsWith('#')) {
            continue
        }
        $target = ($target -split '#', 2)[0].Trim()
        if ([string]::IsNullOrWhiteSpace($target)) {
            continue
        }
        $resolved = if ($target.StartsWith('/')) {
            Join-Path $root $target.TrimStart('/')
        } else {
            Join-Path $lessonDirectory ($target.Replace('/', '\'))
        }
        $links += [pscustomobject]@{
            target = $target
            exists = Test-Path -LiteralPath $resolved -PathType Leaf
        }
    }
    return @($links)
}

$readinessSections = [ordered]@{
    preparation = '(?im)(^##\s+Before class|preparation and follow-up artifacts|teacher preparation)'
    supplies = '(?im)(^##\s+(Exact supplies|Exact supplies and class-size allocation|Supplies|Before class / supplies)|kit and label text|student material)'
    safety = '(?im)(^##\s+(SAFETY|SAFETY / support / challenge)|safety.*classification)'
    sequence = '(?im)(^##\s+(Numbered lesson sequence|Numbered sequence|Numbered steps|Timed numbered sequence|Exact numbered sequence|Exact sequence|Four exact \d+-minute meetings|Meeting \d|Week \d|Session \d)|timed sequence|timed steps|lesson sequence|lesson flow|meeting plan|timed plan)'
    evidence_and_success = '(?im)(^##\s+(What success looks like|Individual evidence and success|Evidence and success|Questions / success|Questions to ask)|evidence / answer guidance|evidence and answer guidance|expected evidence)'
    fallback_and_support = '(?im)(^##\s+(Troubleshooting|If things go wrong|Support and challenge|SAFETY / support / challenge)|reteach|unfinished work)'
    family_or_cleanup = '(?im)(^##\s+(Family snippet|Family copy|Optional family snippet|Cleanup / family|Cleanup|Family newsletter)|cleanup / reset|cleanup/reset|family copy|\*\*Family:|family communication|what we explored|ask your child|no homework|family purchases|take-home)'
}

$teacherRows = foreach ($lesson in $lessonMap) {
    $lessonPath = Join-Path $docsRoot $lesson.lesson_path.Replace('/', '\')
    $text = Get-Content -LiteralPath $lessonPath -Raw
    $lessonLinks = @(Get-LocalArtifactLinks -Text $text -LessonPath $lesson.lesson_path)
    $linkedArtifactText = foreach ($link in $lessonLinks | Where-Object {
        $_.exists -and $_.target -match '(?i)(artifact|student|teacher|assessment|material|card|sheet)'
    }) {
        $resolved = if ($link.target.StartsWith('/')) {
            Join-Path $root $link.target.TrimStart('/')
        } else {
            $lessonDirectory = Split-Path -Parent $lessonPath
            Join-Path $lessonDirectory (($link.target -split '#', 2)[0].Replace('/', '\'))
        }
        Get-Content -LiteralPath $resolved -Raw
    }
    if ($linkedArtifactText) {
        $text = "$text`n$($linkedArtifactText -join "`n")"
    }
    $buildLesson = $text -match '(?i)\b(build|prototype|structure|bridge|tower|model|circuit|machine)\b'
    $chemicalLesson = $text -match '(?i)\b(adhesive|glue|paint|cleaner|spray|solvent|mixture|chemical)\b'
    $deviceLesson = $lesson.technology -ne 'None'

    $statuses = [ordered]@{
        printable_student_materials = Get-EvidenceStatus $text '(?i)(student (material|sheet|slip|card|page)|half-sheet|evidence slip|no printing (needed|required)|blank paper|journal)'
        answer_key_or_expected_evidence = Get-EvidenceStatus $text '(?i)(success looks|success:|meets expectation|expected evidence|answer sought|teacher records|evidence and answer guidance|evidence and success|evidence)'
        worked_example_if_build = if (-not $buildLesson) { 'NOT APPLICABLE - NO BUILD DETECTED' } else {
            Get-EvidenceStatus $text '(?i)(worked example|model the (fair test|complete|first)|demonstrate (the|one)|example:)'
        }
        finished_example_if_build = if (-not $buildLesson) { 'NOT APPLICABLE - NO BUILD DETECTED' } else {
            Get-EvidenceStatus $text '(?i)(finished example|completed example|completed model/record|sample (result|prototype|model)|teacher-built model)'
        }
        visual_example_if_helpful = Get-EvidenceStatus $text '(?i)(visual example|draw .*board|sketch|diagram|picture card|model drawing|visual steps)'
        board_or_chart_setup = Get-EvidenceStatus $text '(?i)(board:|board setup|write .*board|draw .*board|post .*objective|chart setup)'
        expected_discussion_responses = Get-EvidenceStatus $text '(?i)(answer sought|expected response|likely response|acceptable response|listen for|discussion|ask,|ask ")'
        kit_contents_list = Get-EvidenceStatus $text '(?i)(kit contents|per student|per team|whole class|teacher only|exact supplies|exact materials|kit and label text)'
        kit_label_text = Get-EvidenceStatus $text '(?i)(kit label|kit contents and label|label text|label:)'
        cleanup_instructions = Get-EvidenceStatus $text '(?i)(cleanup|clean up|clear tables|return .*ruler|recycle|wipe .*tray)'
        kit_reset_instructions = Get-EvidenceStatus $text '(?i)(reset|recharge|count .*return|dry .*return|disconnect .*return|repair|replace)'
        unfinished_work_directions = Get-EvidenceStatus $text '(?i)unfinished'
        common_misconceptions = Get-EvidenceStatus $text '(?i)misconception'
        annotated_exemplar = Get-EvidenceStatus $text '(?i)(annotated exemplar|annotated example|visual/annotated exemplar|completed example.*annotation|sample response.*why)'
        common_error_interpretation = Get-EvidenceStatus $text '(?i)(common error|error interpretation|misconception.*means|if most students|listen for)'
        reteaching_option = Get-EvidenceStatus $text '(?i)(reteach|next-meeting check|follow-up check|model again)'
        safety_risk_classification = Get-EvidenceStatus $text '(?i)(severity.*(low|moderate|serious|severe).*(likelihood|unlikely|possible|likely|frequent)|safety.*risk.*classification|safety classification|low-risk|moderate-risk|serious-risk|severe-risk)'
        adult_supervision_ratio = Get-EvidenceStatus $text '(?i)(adult supervision(\s+ratio)?|adult ratio|supervision:|supervises every team|one adult (for|per)|1:\d+)'
        sds_product_gate = if (-not $chemicalLesson) { 'NOT APPLICABLE - NO CHEMICAL TERM DETECTED' } else {
            Get-EvidenceStatus $text '(?i)(Safety Data Sheet|SDS)'
        }
        external_service_compliance = if (-not $deviceLesson) { 'NOT APPLICABLE - TECHNOLOGY NONE' } else {
            Get-EvidenceStatus $text '(?i)(device compliance|devices?/external[-/ ]service compliance|external[-/ ]service compliance|student accounts?.*personal data|terms.of.service|keyboard accessibility|switch accessibility|advertising.*minimum age)'
        }
        print_accessibility_check = Get-EvidenceStatus $text '(?i)(print/accessibility check|black-and-white|color alone|print.*(actual scale|100%)|type size|response space)'
    }
    $requiredArtifacts = @($statuses.GetEnumerator() |
        Where-Object Value -notmatch '^NOT APPLICABLE' | ForEach-Object Key)
    $notApplicableArtifacts = @($statuses.GetEnumerator() |
        Where-Object Value -match '^NOT APPLICABLE' | ForEach-Object Key)
    $missing = @($statuses.GetEnumerator() |
        Where-Object Value -eq 'MISSING OR NOT EXPLICIT' | ForEach-Object Key)
    $missingSections = @($readinessSections.GetEnumerator() |
        Where-Object { $text -notmatch $_.Value } | ForEach-Object Key)
    $localLinks = $lessonLinks
    $invalidLinks = @($lessonLinks | Where-Object { -not $_.exists } | ForEach-Object target)
    $artifactHoldReasons = @()
    if ($missing.Count -gt 0) { $artifactHoldReasons += 'required artifacts' }
    if ($missingSections.Count -gt 0) { $artifactHoldReasons += 'readiness sections' }
    if ($invalidLinks.Count -gt 0) { $artifactHoldReasons += 'broken artifact links' }
    [pscustomobject][ordered]@{
        lesson_path = $lesson.lesson_path
        grade_band = $lesson.grade_band
        schedule = $lesson.schedule
        rotation = $lesson.rotation
        unit = $lesson.unit
        lesson_title = $lesson.title
        printable_student_materials = $statuses.printable_student_materials
        answer_key_or_expected_evidence = $statuses.answer_key_or_expected_evidence
        worked_example_if_build = $statuses.worked_example_if_build
        finished_example_if_build = $statuses.finished_example_if_build
        visual_example_if_helpful = $statuses.visual_example_if_helpful
        board_or_chart_setup = $statuses.board_or_chart_setup
        expected_discussion_responses = $statuses.expected_discussion_responses
        kit_contents_list = $statuses.kit_contents_list
        kit_label_text = $statuses.kit_label_text
        cleanup_instructions = $statuses.cleanup_instructions
        kit_reset_instructions = $statuses.kit_reset_instructions
        unfinished_work_directions = $statuses.unfinished_work_directions
        common_misconceptions = $statuses.common_misconceptions
        annotated_exemplar = $statuses.annotated_exemplar
        common_error_interpretation = $statuses.common_error_interpretation
        reteaching_option = $statuses.reteaching_option
        safety_risk_classification = $statuses.safety_risk_classification
        adult_supervision_ratio = $statuses.adult_supervision_ratio
        sds_product_gate = $statuses.sds_product_gate
        external_service_compliance = $statuses.external_service_compliance
        print_accessibility_check = $statuses.print_accessibility_check
        required_artifact_count = $requiredArtifacts.Count
        not_applicable_artifact_count = $notApplicableArtifacts.Count
        missing_required_artifact_count = $missing.Count
        required_artifacts = if ($requiredArtifacts.Count -eq 0) { 'None' } else { $requiredArtifacts -join '|' }
        not_applicable_artifacts = if ($notApplicableArtifacts.Count -eq 0) { 'None' } else { $notApplicableArtifacts -join '|' }
        missing_readiness_sections = if ($missingSections.Count -eq 0) { 'None' } else { $missingSections -join '|' }
        linked_artifact_paths = if ($localLinks.Count -eq 0) { 'None' } else { ($localLinks.target -join '|') }
        invalid_artifact_links = if ($invalidLinks.Count -eq 0) { 'None' } else { $invalidLinks -join '|' }
        release_status = if ($artifactHoldReasons.Count -eq 0) {
            'DOCUMENT ARTIFACT CHECK COMPLETE - LOCAL RELEASE STILL REQUIRED'
        } else {
            "HOLD - $($artifactHoldReasons -join ', ')"
        }
        missing_artifacts = if ($missing.Count -eq 0) { 'None detected' } else { $missing -join '|' }
        audit_method = 'Text-presence and local-link screen only; a teacher must verify correctness, usability and physical kit state.'
    }
}

$materialsPath = Join-Path $reviewRoot 'Materials_Inventory.csv'
$materials = @(Import-Csv -LiteralPath $materialsPath)
$procurementRows = foreach ($item in $materials) {
    $classification = switch -Regex ($item.reuse) {
        '^Consumable' { 'consumable' }
        'wear|replacement' { 'reusable but likely to wear out' }
        default {
            if ($item.tier -match 'Tier 3') { 'optional enrichment' } else { 'durable' }
        }
    }
    [pscustomobject][ordered]@{
        item_id = $item.item_id
        vendor_neutral_specification = "$($item.normalized_name); purpose: $($item.purpose); safety/power: $($item.safety); $($item.battery_needs)"
        example_item_or_vendor = 'No vendor endorsed; equivalent product allowed after school review.'
        price_estimate_usd = $item.unit_cost_estimate_usd
        price_recorded = $item.estimate_date
        material_class = $classification
        expected_replacement_cycle = $item.annual_replacement_estimate
        estimated_annual_recurring_cost = 'VERIFICATION REQUIRED after schedule, stock count, pack size, loss, and wear are known.'
        typical_lead_time = 'VERIFICATION REQUIRED with selected supplier before annual ordering.'
        batteries_required = $item.battery_needs
        charging_required = if ($item.battery_needs -match '(?i)recharge|charger|charging') { 'Yes - verify exact charger and capacity.' } else { 'No charging identified; verify selected equivalent.' }
        adult_setup_maintenance_calibration = "$($item.storage); $($item.safety)"
        substitution_rule = 'Match learning purpose, safety/age guidance, durability, working size/capacity, kit compatibility, and reasonable total cost; pretest before release.'
        annual_rebudget = if ($classification -eq 'consumable' -or $classification -eq 'reusable but likely to wear out') { 'YES' } else { 'Inspect annually; budget only for verified loss, damage, or planned expansion.' }
        verification_status = $item.supplier_status
    }
}

function Compare-CsvContent {
    param([string]$Path, [object[]]$Rows)
    if (-not (Test-Path -LiteralPath $Path -PathType Leaf)) { return $false }
    $actual = @(Import-Csv -LiteralPath $Path)
    $expected = @($Rows)
    if ($actual.Count -ne $expected.Count) { return $false }
    if ($expected.Count -eq 0) { return $true }
    $columns = @($expected[0].PSObject.Properties.Name)
    $expectedCounts = [System.Collections.Generic.Dictionary[string, int]]::new(
        [System.StringComparer]::Ordinal
    )
    foreach ($row in $expected) {
        $key = ($columns | ForEach-Object { [string]$row.$_ }) -join "`0"
        if ($expectedCounts.ContainsKey($key)) {
            $expectedCounts[$key]++
        } else {
            $expectedCounts[$key] = 1
        }
    }
    foreach ($row in $actual) {
        $key = ($columns | ForEach-Object { [string]$row.$_ }) -join "`0"
        if (-not $expectedCounts.ContainsKey($key) -or $expectedCounts[$key] -eq 0) {
            return $false
        }
        $expectedCounts[$key]--
    }
    return @($expectedCounts.Values | Where-Object { $_ -ne 0 }).Count -eq 0
}

$outputs = [ordered]@{
    $artifactInventoryPath = @($artifactRows)
    $teacherAuditPath = @($teacherRows)
    $procurementPath = @($procurementRows)
}

function Assert-GeneratedOutputFresh {
    param(
        [string]$OutputPath,
        [string[]]$SourcePaths
    )
    if (-not (Test-Path -LiteralPath $OutputPath -PathType Leaf)) {
        throw "Missing generated operational audit: $OutputPath"
    }
    $outputTime = (Get-Item -LiteralPath $OutputPath).LastWriteTimeUtc
    $newerSource = @($SourcePaths | Where-Object {
        (Test-Path -LiteralPath $_ -PathType Leaf) -and
        ((Get-Item -LiteralPath $_).LastWriteTimeUtc -gt $outputTime)
    })
    if ($newerSource.Count -gt 0) {
        throw "Stale generated operational audit: $OutputPath (newer source: $($newerSource[0]))"
    }
}

if ($ValidateOnly) {
    foreach ($output in $outputs.GetEnumerator()) {
        if (-not (Compare-CsvContent -Path $output.Key -Rows $output.Value)) {
            throw "Stale or missing operational audit: $($output.Key)"
        }
    }
    $lessonSources = @($lessonMap | ForEach-Object {
        Join-Path $docsRoot $_.lesson_path.Replace('/', '\')
    })
    Assert-GeneratedOutputFresh -OutputPath $artifactInventoryPath -SourcePaths @($lessonMapPath, $PSCommandPath)
    Assert-GeneratedOutputFresh -OutputPath $teacherAuditPath -SourcePaths @($lessonMapPath, $PSCommandPath) + $lessonSources
    Assert-GeneratedOutputFresh -OutputPath $procurementPath -SourcePaths @($materialsPath, $PSCommandPath)
} else {
    foreach ($output in $outputs.GetEnumerator()) {
        $output.Value | Export-Csv -LiteralPath $output.Key -NoTypeInformation
    }
}

$included = @($artifactRows | Where-Object inclusion_decision -eq 'INCLUDE').Count
$excluded = $artifactRows.Count - $included
$heldLessons = @($teacherRows | Where-Object release_status -like 'HOLD*').Count
$requiredArtifactTotal = ($teacherRows | Measure-Object -Property required_artifact_count -Sum).Sum
$notApplicableArtifactTotal = ($teacherRows | Measure-Object -Property not_applicable_artifact_count -Sum).Sum
$missingRequiredTotal = ($teacherRows | Measure-Object -Property missing_required_artifact_count -Sum).Sum
$sectionFailureCount = @($teacherRows | Where-Object missing_readiness_sections -ne 'None').Count
$brokenLinkLessonCount = @($teacherRows | Where-Object invalid_artifact_links -ne 'None').Count
Write-Output "Operational audit complete: $($artifactRows.Count) artifacts ($included included, $excluded excluded); $($teacherRows.Count) lessons ($heldLessons held); required checks $requiredArtifactTotal, not applicable $notApplicableArtifactTotal, missing required $missingRequiredTotal, section failures $sectionFailureCount, broken-link lessons $brokenLinkLessonCount; $($procurementRows.Count) procurement rows."
