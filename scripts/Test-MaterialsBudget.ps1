[CmdletBinding()]
param([string]$RepositoryRoot = (Split-Path -Parent $PSScriptRoot))

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
$reviewRoot = Join-Path (Join-Path $RepositoryRoot 'docs') 'Review'
$catalog = @(Import-Csv -LiteralPath (Join-Path $reviewRoot 'Materials_Inventory.csv'))
$configurations = @(Import-Csv -LiteralPath (Join-Path $reviewRoot 'Budget_Configurations.csv'))
$prices = @{}
foreach ($item in $catalog) {
    if ($prices.ContainsKey($item.item_id)) { throw "Duplicate budget catalog item: $($item.item_id)" }
    $cost = [decimal]0
    if (-not [decimal]::TryParse($item.unit_cost_estimate_usd,
        [System.Globalization.NumberStyles]::Number,
        [System.Globalization.CultureInfo]::InvariantCulture, [ref]$cost) -or $cost -lt 0) {
        throw "Invalid budget price for $($item.item_id)"
    }
    $prices[$item.item_id] = $cost
}
$ceilings = @(250, 500, 1000, 2500)
$goods = @{ 250 = [decimal]0; 500 = [decimal]0; 1000 = [decimal]0; 2500 = [decimal]0 }
$shipping = @{ 250 = 10; 500 = 15; 1000 = 20; 2500 = 35 }
$reserves = @{ 250 = 10; 500 = 15; 1000 = 20; 2500 = 40 }
$recurring = @{ 250 = 58; 500 = 82; 1000 = 128; 2500 = 620 }
$expectedGoods = @{ 250 = 194; 500 = 413; 1000 = 754; 2500 = 2123 }
$seen = [System.Collections.Generic.HashSet[string]]::new([System.StringComparer]::OrdinalIgnoreCase)
foreach ($row in $configurations) {
    if (-not $prices.ContainsKey($row.item_id) -or -not $seen.Add($row.item_id)) {
        throw "Unknown or duplicate purchase-row item: $($row.item_id)"
    }
    foreach ($ceiling in $ceilings) {
        $quantity = 0
        if (-not [int]::TryParse($row."quantity_$ceiling", [ref]$quantity) -or $quantity -lt 0) {
            throw "Invalid purchase allocation for $($row.item_id) / $ceiling"
        }
        $goods[$ceiling] += $quantity * $prices[$row.item_id]
    }
}
if ($configurations.Count -ne 37) { throw 'Original purchase configuration must have 37 selected item rows.' }
$plan = Get-Content -LiteralPath (Join-Path $reviewRoot 'Materials_Plan.md') -Raw
foreach ($ceiling in $ceilings) {
    if ($goods[$ceiling] -ne $expectedGoods[$ceiling]) {
        throw "Purchase cost changed for ceiling $ceiling; review the documented configuration."
    }
    $first = $goods[$ceiling] * [decimal]1.08 + $shipping[$ceiling] + $reserves[$ceiling]
    $second = ($recurring[$ceiling] + $reserves[$ceiling]) * [decimal]1.08 + $shipping[$ceiling]
    if ($first -gt $ceiling) { throw "First-year configuration exceeds $ceiling." }
    foreach ($total in @($first, $second)) {
        $formatted = $total.ToString('N2', [System.Globalization.CultureInfo]::InvariantCulture)
        if ($plan -notmatch [regex]::Escape('$' + $formatted)) {
            throw "Documented budget does not match calculated $formatted for $ceiling."
        }
    }
    Write-Output "$ceiling ceiling: first year $first; year two $second."
}
foreach ($students in @(10, 15, 20, 25)) {
    $teams = [int][math]::Ceiling($students / 3.0)
    if ($teams -gt 9 -or $teams * 3 -lt $students) { throw "Generic team capacity failed for $students." }
}
Write-Output 'PASS: 37 original purchase rows, four first-year ceilings, four annual estimates and generic team capacities.'
Write-Output 'Prices, protection, physical stock and actual consumption remain estimates or local checks; these are not vendor quotations.'
