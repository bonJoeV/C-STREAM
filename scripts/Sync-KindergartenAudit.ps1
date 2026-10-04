[CmdletBinding()]
param(
    [string]$RepositoryRoot = (Split-Path -Parent $PSScriptRoot),
    [int]$ExpectedUpdates = 29
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
$docsRoot = Join-Path $RepositoryRoot 'docs'
$auditPath = Join-Path $docsRoot 'Review\Kindergarten_Audit.csv'
$rows = @(Import-Csv -LiteralPath $auditPath)
if ($rows.Count -ne 37) { throw 'Expected the complete 37-document Kindergarten audit.' }

$evidence = @{
    'Week01_Welcome_to_CSTREAM.md' = 'Each child represents an actual detail and asks or selects one observation question.'
    'Week05-06_KEVA_Building.md' = 'Each child counts the selected blocks and compares actual ten-second tests before and after a base change.'
    'Week07-09_Engineering_Helpers.md' = 'Each child states the two-cup criterion and compares actual same-path results after one change with a plan drawing.'
    'Week10_Bridges_Connect_Us.md' = 'Each child identifies deck and supports and counts two supports and one load while comparing actual same-load tests.'
    'Week11_Coding_Thankfulness.md' = 'Each child predicts the two-command endpoint and tests a correction while explaining a respectful message; software execution is separate.'
    'Week12_Making_Gifts.md' = 'Each child identifies a recipient and purposeful visual choice and explains a revision that clarified meaning.'
    'Week13_Fall_Celebration.md' = 'Each child communicates one actual dated result or fresh demonstration with an honest limit; enjoyment is separate.'
    'Week14-15_Light_All_Around.md' = 'Each child compares a material at fixed distances and identifies flashlight input/output and an evidence-informed tissue design choice.'
    'Week16_Star_of_Wonder.md' = 'Each child counts three to five model dots and distinguishes the drawing from real light-producing stars.'
    'Week18_New_Year_Goals.md' = 'Each child records an actual or explicitly sourced sky observation and states a checkable comparison goal; predictions are separate.'
    'Week19-22_Exploration_Stations.md' = 'Each child compares a tower retest and two labeled weather records and explains a readable repeat and tested algorithm correction.'
    'Week23_Catholic_Schools_Week.md' = 'Each child links a display to actual evidence and revises the explanation and identifies hypothetical private information and an adult to ask before sharing.'
    'Week26-27_Helping_Hands.md' = 'Each child states the requested book-standing and picture-visibility criteria and compares two tests with a plan and tradeoff reason.'
    'Week33_New_Life_Engineering.md' = 'Each child orders four living-insect stages and explains a model limit without equating metamorphosis and Resurrection.'
    'Week34_Year_Celebration.md' = 'Each child communicates actual dated evidence and support needed with a next practice step; missing growth evidence is recorded.'
    'Session01_Welcome_Wonder.md' = 'Each child shows an observed detail and question through a representation and demonstrates shared-material care.'
    'Session02_Gods_World.md' = 'Each child sorts at least three pictures by a visible rule and represents the groups with a material-care action.'
    'Session03_Building_Basics.md' = 'Each child counts selected blocks and compares same-time tower tests and a common ten-centimeter reference after a base change.'
    'Session04_Colors_Light.md' = 'Each child predicts and reports an actual shadow comparison and changed or kept-same conditions with light input/output.'
    'Session05_Simple_Machines.md' = 'Each child reports roll or slide or stay and compares marked ramp rise with the same object and release point; no speed inference.'
    'Session06_Thanksgiving.md' = 'Each child explains a respectful gratitude idea and an actual communication revision after listener feedback.'
    'Session07_Advent_Light.md' = 'Each child counts chosen symbol points and explains a purposeful placement and kind message; paper is not a light source.'
    'Session09_Catholic_Schools.md' = 'Each child names a school contribution and explains a visual-message clarification and identifies hypothetical private information and an adult sharing permission.'
    'Session10_Weather_Wonder.md' = 'Each child represents and compares two actual dated or explicitly sourced sky records and distinguishes observation from prediction.'
    'Session12_Animal_Homes.md' = 'Each child identifies food and water and shelter and space with a model criterion and limitation and a care action.'
    'Session13_Easter_New_Life.md' = 'Each child orders four living stages and communicates a model limit; biology is distinct from Resurrection teaching.'
    'Session14_Sound_Music.md' = 'Each child indicates an observed vibration and communicates an intentional four-beat sound or silence phrase with accessible roles.'
    'Session15_Helping_Others.md' = 'Each child explains a respectful message choice and predicts the endpoint and tests a correction to two picture commands.'
    'Session17_Celebration.md' = 'Each child shows an actual dated result or fresh demonstration and communicates an honest next practice step without certifying grade readiness.'
}
$originalReferenceMaterials = @{
    'Week02-03_Sphero_Movement.md' = @('Plain paper', 'Shared school crayon set', 'Paper grid and token', 'Large command cards')
    'Week04_Wonder_Walk.md' = @('Plain paper', 'Shared school crayon set', 'Large observation picture cards', 'Team sorting tray')
    'Week24-25_Dash_Robot_Friends.md' = @('Plain paper', 'Shared school crayon set', 'Paper grid and token', 'Large command cards')
    'Week28_Circles_and_Pi.md' = @('Paper strips', 'Shared school crayon set', 'Large paper shapes', 'Large circular lid', 'Large classroom ball')
    'Week29-31_Growing_Things.md' = @('Transparent observation cup with lid', 'Untreated bean seeds', 'School-approved room-temperature water', 'Paper towel', 'Plain paper', 'Paper strips')
    'Session08_Winter_Science.md' = @('Reusable clear plastic cup', 'Team sorting tray', 'Teacher-prepared ice sample', 'Paper towel', 'Plain paper', 'Shared school crayon set', 'Teacher-only sample tongs')
    'Session11_Growing_Things.md' = @('Transparent observation cup with lid', 'Untreated bean seeds', 'School-approved room-temperature water', 'Paper towel', 'Plain paper', 'Shared school crayon set')
    'Session16_Water_Wonder.md' = @('Team sorting tray', 'Large wooden building blocks', 'Large smooth metal spoon', 'Aluminum foil', 'School-approved room-temperature water', 'Paper towel', 'Plain paper', 'Shared school crayon set')
}
$teacherSupplies = @{
    'Week05-06_KEVA_Building.md' = @('Metric ruler')
    'Week07-09_Engineering_Helpers.md' = @('Metric ruler')
    'Week14-15_Light_All_Around.md' = @('Metric ruler')
    'Week26-27_Helping_Hands.md' = @('Metric ruler')
    'Week29-31_Growing_Things.md' = @('Metric ruler', 'Plastic graduated measuring cup', 'Metric 5 mL measuring spoon', 'Large teacher science tray', 'School-approved marker')
    'Session11_Growing_Things.md' = @('Plastic graduated measuring cup', 'Metric 5 mL measuring spoon', 'Large teacher science tray', 'School-approved marker')
    'Session08_Winter_Science.md' = @('School-approved marker', 'Teacher ice-cube tray', 'Teacher water collection container')
    'Session16_Water_Wonder.md' = @('Plastic graduated measuring cup', 'Teacher water collection container', 'Reusable surface cleanup cloth')
}

function Read-InlineList {
    param([string]$Metadata, [string]$Key)
    $match = [regex]::Match($Metadata, "(?m)^${Key}: \[([^\r\n]*)\]\r?$")
    if (-not $match.Success) { throw "Missing supported inline metadata list: $Key" }
    $values = @($match.Groups[1].Value.Split(',') | ForEach-Object { $_.Trim() })
    if (@($values | Where-Object { [string]::IsNullOrWhiteSpace($_) }).Count -gt 0) {
        throw "Empty metadata value in $Key"
    }
    return $values
}

function Get-IndexedSupplies {
    param([string[]]$Materials, [string]$LessonName)
    $all = @($Materials) + @('Teacher timer', 'School pencil')
    if ($teacherSupplies.ContainsKey($LessonName)) { $all += $teacherSupplies[$LessonName] }
    if ($Materials -contains 'Enclosed 2-AA flashlight') { $all += 'AA alkaline cell' }
    if ($LessonName -in @(
        'Week07-09_Engineering_Helpers.md', 'Week12_Making_Gifts.md',
        'Week14-15_Light_All_Around.md', 'Week26-27_Helping_Hands.md',
        'Session05_Simple_Machines.md'
    )) { $all += 'Blunt school scissors' }
    return @($all | Sort-Object -Unique)
}

$updated = 0
$seen = [System.Collections.Generic.HashSet[string]]::new(
    [System.StringComparer]::OrdinalIgnoreCase
)
foreach ($row in $rows) {
    $pattern = if ($row.schedule -eq 'Weekly') {
        '^Lessons/Kindergarten/Week\d[^/\\]*\.md$'
    } elseif ($row.schedule -eq 'Bi-Weekly') {
        '^Lessons/Bi-Weekly/Kindergarten/Session\d[^/\\]*\.md$'
    } else {
        throw "Unexpected K schedule: $($row.schedule)"
    }
    if ($row.grade_band -cne 'K' -or $row.rotation -cne 'Single' -or
        $row.lesson_path -cnotmatch $pattern -or -not $seen.Add($row.lesson_path)) {
        throw "Invalid or duplicate Kindergarten audit path: $($row.lesson_path)"
    }
    $path = Join-Path $docsRoot (
        $row.lesson_path.Replace([char]'/', [System.IO.Path]::DirectorySeparatorChar)
    )
    $body = Get-Content -LiteralPath $path -Raw
    $front = [regex]::Match($body, '\A---\r?\n(?<metadata>[\s\S]*?)\r?\n---')
    if (-not $front.Success) { throw "Missing lesson front matter: $path" }
    $metadata = $front.Groups['metadata'].Value
    $name = Split-Path -Leaf $path
    if ($originalReferenceMaterials.ContainsKey($name)) {
        $row.materials = @(Get-IndexedSupplies $originalReferenceMaterials[$name] $name) -join '|'
        if ($row.rationale -notmatch 'Canonical primary-path supplies') {
            $row.rationale += ' Canonical primary-path supplies indexed in the autonomous pass; optional devices and specimen alternatives remain in the lesson; quantities and physical checks are not inferred from names.'
        }
    }
    if ($metadata -notmatch '(?m)^version: "3\.0"\r?$') { continue }
    if (-not $evidence.ContainsKey($name)) { throw "Missing individual evidence for $name" }
    $codes = @(Read-InlineList $metadata 'local_standards')
    if ($codes.Count -lt 2 -or $codes.Count -gt 5 -or
        @($codes | Where-Object { $_ -cnotmatch '^CST-[CSTEAM][1-3]$' }).Count -gt 0) {
        throw "Invalid local standards in $name"
    }
    $technology = [regex]::Match($metadata, '(?m)^technology: (None|Optional|Recommended|Required)\r?$')
    $prep = [regex]::Match($metadata, '(?m)^prep_minutes: (\d+)\r?$')
    $cleanup = [regex]::Match($metadata, '(?m)^cleanup_minutes: (\d+)\r?$')
    if (-not $technology.Success -or -not $prep.Success -or -not $cleanup.Success) {
        throw "Missing technology/preparation/cleanup metadata in $name"
    }
    if ($row.revision -ne 'rebuilt') {
        $row.rationale = "Initial-pass history: $($row.rationale) Autonomous closure: one complete reference sequence with exact supplies and timed individual evidence; no classroom certification. Official alignment and physical school checks remain separate."
    }
    $row.local_standards = $codes -join '|'
    $row.materials = @(Get-IndexedSupplies @(Read-InlineList $metadata 'materials') $name) -join '|'
    $row.technology = $technology.Groups[1].Value
    $row.evidence = $evidence[$name]
    $row.prep = "Estimated first preparation $($prep.Groups[1].Value) min; actual timing and prepared-kit preflight required"
    $row.cleanup = "$($cleanup.Groups[1].Value) min per meeting included"
    $scope = [regex]::Match($metadata, '(?m)^scope: (CORE|RECOMMENDED|OPTIONAL)\r?$')
    if ($scope.Success) { $row.scope = $scope.Groups[1].Value }
    $row.revision = 'rebuilt'
    $updated++
}
if ($updated -ne $ExpectedUpdates) { throw "Expected $ExpectedUpdates updates, found $updated" }
$rows | Export-Csv -LiteralPath $auditPath -NoTypeInformation -Encoding UTF8
Write-Output "Synchronized $updated complete reference records; preserved baseline status, priority, paths and meeting counts."
