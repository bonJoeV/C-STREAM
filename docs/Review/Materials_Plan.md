---
title: "Materials and equipment plan"
description: "October 2026 core budgets, normalized inventory and capacity-25 kits"
---

# Materials and equipment plan

**Planning estimates dated October 2026, USD; NOT vendor quotations.**
Supplier price, protection, ingredients, availability and school stock are
**VERIFICATION REQUIRED**. Do not order an unspecified product solely because
its name appears here.

## What these budgets cover

The [normalized inventory CSV](./Materials_Inventory.csv) distinguishes required
starter materials, high-value additions and optional legacy devices. The first
three packages serve **one cohort of up to 25 students** through a modest
17-meeting low-tech core. Reusable equipment can serve grades K-6 sequentially,
not seven classes simultaneously. The enhanced package adds consumable
allocations for **seven sequential 25-student cohorts** and optional standalone
robots. Different schedules or heavier consumable use need a revised annual
allocation. None of these packages claims coverage of **all 251 legacy lesson
documents**, specialty kits, every commercial curriculum or a full replacement
of primary science/math/arts instruction.

**Existing inventory assumptions, not verified holdings:** school provides
25 pencils, 25 blunt scissors, shared crayons/markers, board/chalk or whiteboard,
18 stable books/support blocks for bridge stations, a teacher timer, access to
handwashing and normal table-cleaning supplies. No device, printer, app license,
family donation, commercial kit or loan is assumed. If these basics are missing,
price them before approval or run safe pre-cut/oral alternatives; the ceiling
does not magically supply them.

### OLP holdings and circuit use

The separate [reported holdings record](#reported-olp-holdings) includes eight
individual Snap Circuits kits. The
[classroom guide](../Resources/Snap_Circuits_Classroom_Guide.md) supplies
model-specific preflight gates and a two-wave plan for 25 pupils.
These selected lesson pathways do not alter the generic nine-kit core or its
PACK/LED/LEAD purchasing BOM. Ownership is not proof of safe equivalence.

### A genuine low-tech core, not teacher demonstrations

This operations core is a purchasing/use-case model, **not a competing pacing
guide**. Teachers use the shared scope and band lessons to select meetings.
Grade-appropriate variants use the same reusable stock with increasing evidence.

| Core use case | Starter materials | Individual learning, not merely a group craft |
|---|---|---|
| Observation and scientific questions | Paper, pencil, familiar classroom object | K points/tells a detail; older pupils distinguish observation from inference |
| Sorting/data/measurement | Cards, rulers, cups | Each child sorts/counts/compares; older pupils record units and explain data |
| Structures and paper bridges | Paper, sticks, tape, supports | Each child predicts, tests, explains one observed result and a redesign |
| Algorithm/debugging | Large paper arrow cards and desk grid | Each child follows, edits or explains a sequence; not claimed as software mastery |
| Arts/design | Paper/cardstock, existing crayons, cards | Observational drawing, composition and visual communication with a stated artistic choice |
| Music/sound | Hand/body percussion, cards, dry cups | Each child composes/repeats a short rhythmic phrase; safe volume and silent pattern route |
| Habitat/stewardship models | Paper, cups, cardstock | Each child explains a need or evidence-based resource choice; no outdoor prerequisite |
| Closed-path electricity | Nine protected AA packs, modules and leads | Grades 1-6 take turns completing/opening paths and explaining the output; K observes enclosed light with adult handling |

A possible 17-meeting consumption model is observation 2, structures 4,
measurement/data 2, algorithms 3, arts/music 3, habitat/stewardship 1, circuits 2.
This explains inventory use estimates; it is not verified legacy coverage or a
mandate to use the same complexity in every grade. Paper stock allows up to
20 sheets per pupil; issue no more than 1 m tape per team per build, retain
arrow cards, reuse dry cups/sticks and keep models in school.

## Scaling and stock interpretation

| Students | Teams <=3 | Pairs if needed | Circuit packs/modules | Leads (4/team) | Circuit AA cells (2 fitted + 2 spare/team) |
|---:|---:|---:|---:|---:|---:|
| 10 | 4 | 5 | 4 | 16 | 16 |
| 15 | 5 | 8 | 5 | 20 | 20 |
| 20 | 7 | 10 | 7 | 28 | 28 |
| 25 | 9 | 13 | 9 | 36 | 36 |

Nine complete team kits give 27 places at 25 enrollment (eight teams of three,
one of one). Rotate builder/tester/reporter and individual turns. K may use
pairs for non-electrical tasks; buy/issue 13 trays or share nine trays with
separate work areas. No K child handles the electrical parts. A teacher demo is
not a replacement for the individual hands-on core in other domains.
Keep students seated for desk tests; route supplies, not nine roaming teams.

CSV quantities are **stock planning quantities**, not one lesson's consumption.
Check a lesson's actual issue list and test loads. Alias matching prevents
buying "popsicle sticks" again as "wooden sticks." Per-unit costs use the stated
unit: paper sheets, tape rolls of 10 m, block packs of 20, seeds packets of 50.
Round supplier packs upward and re-cost. Stock status is NOT VERIFIED, not zero.

## CSV integration contract

The current inventory has **74 item rows and 24 columns**, in this exact order:

```csv
item_id,normalized_name,aliases,unit,unit_cost_estimate_usd,estimate_date,tier,grades,purpose,quantity_10,quantity_15,quantity_20,quantity_25,quantity_basis,reuse,annual_replacement_estimate,storage,safety,battery_needs,verified_lesson_use_count,estimated_core_meeting_uses,use_count_basis,school_stock_status,supplier_status
```

- **Primary key:** `item_id`, unique text. `normalized_name` is the canonical
  name; `aliases` is a pipe-separated text list, not additional purchase rows.
- **Decimal USD:** `unit_cost_estimate_usd`, nonnegative decimal for the stated
  `unit`. Preserve fractional-cent values such as STICK = 0.012; multiply by
  quantity before rounding an extended price. `estimate_date` is `YYYY-MM`
  text, currently `2026-10`; prices are estimates, not supplier quotations.
- **Integer quantities:** `quantity_10`, `quantity_15`, `quantity_20`,
  `quantity_25`, nonnegative stock planning quantities in the stated unit.
  `quantity_basis` explains the scaling and cohort assumptions. These fields
  are neither observed holdings nor per-lesson consumption nor seven-class totals.
- **Integer evidence counts:** `verified_lesson_use_count` and
  `estimated_core_meeting_uses`, nonnegative and kept separate. Current verified
  counts are zero because validated lesson-path/item specifications have not
  been reconciled; zero does not claim that an item is unused.
- **Text metadata:** `tier`, `grades`, `purpose`, `reuse`,
  `annual_replacement_estimate`, `storage`, `safety`, `battery_needs`,
  `use_count_basis`, `school_stock_status`, `supplier_status`.
  Grades/replacement/battery fields contain ranges and restrictions; they are
  not machine-normalized grade arrays or numeric annual purchase quantities.
  Do not parse "K-6; adult only" as unrestricted child access.
- **Verification:** `school_stock_status` is currently `NOT VERIFIED`;
  `supplier_status` is `VERIFICATION REQUIRED` with specification notes.
  Rows labeled `Tier 1 assumed school stock` are conditional existing-stock
  assumptions, not purchases included in the bills below.

The autonomous pass added twenty named physical/prepared resources and
unambiguous aliases. The original 37-row purchase configurations are unchanged;
do not sum all catalog rows as a purchase order. A prepared paper resource's zero
**additional item-purchase** price excludes the separately priced paper/cards
and teacher preparation. Water/ice entries retain facility/preparation checks,
not a claim of free or verified resources. Generic tape, glue, chemicals or
unspecified kit names are not silently treated as compatible products.

**Budget join:** Select the 37 purchase rows from the configuration table below
by `item_id`; use that column's purchased quantity, not every inventory row's
`quantity_25`. A zero in a budget column means "not purchased in this package,"
not "school has none." Goods subtotal = sum of selected quantity x CSV unit
estimate. First-year total = goods x 1.08 + shipping + durable reserve.
Year-two total = (recurring consumables + durable reserve) x 1.08 + shipping.
In year one the durable reserve is unspent contingency, not another immediate
taxable purchase; year two models replacement purchases plus their tax reserve.

**Time/cost basis:** The possible 17-meeting consumption model is a modest core
allocation, not the annual planner's slot count or evidence of 34/41 meetings.
First-year equipment capacity is one class of 25 at a time. Recurring figures
are annual estimates **only for the stated cohort/consumption basis**: one
cohort in the first three configurations, seven sequential cohorts enhanced.
A longer selected schedule, additional classes, simultaneous equipment use or
heavier consumption must be costed separately. Do not multiply reusable kits
by meetings; do multiply consumable allocations when the cohort/use basis grows.

## Four bills of materials

All quantities below are **purchased totals**, not incremental quantities to
add to the previous column. Each cell costs quantity x CSV unit estimate.
Existing inventory above is not included as a fictitious purchase.

| ID / unit | Cost/unit | $250 | $500 | $1,000 | $2,500 |
|---|---:|---:|---:|---:|---:|
| PAPER / sheet | 0.01 | 500 | 500 | 1000 | 4000 |
| CARD / sheet | 0.05 | 100 | 100 | 100 | 700 |
| INDEX / card | 0.02 | 400 | 400 | 400 | 2800 |
| STICK / stick | 0.012 | 500 | 500 | 1000 | 4000 |
| TAPE / 10 m roll | 2.00 | 6 | 6 | 12 | 48 |
| CUP / cup | 0.05 | 100 | 100 | 200 | 800 |
| STRING / m | 0.04 | 100 | 100 | 100 | 700 |
| FOIL / m | 0.40 | 10 | 10 | 10 | 70 |
| TRAY / tray | 1.00 | 9 | 9 | 9 | 9 |
| BIN / bin | 4.00 | 4 | 4 | 8 | 8 |
| RULER / ruler | 1.00 | 9 | 9 | 9 | 9 |
| PACK / protected pack | 6.00 | 9 | 9 | 9 | 9 |
| LED / current-limited module | 2.00 | 9 | 9 | 9 | 9 |
| LEAD / insulated lead | 0.50 | 36 | 36 | 36 | 36 |
| AA / cell | 0.50 | 36 | 54 | 54 | 270 |
| LABEL / sheet | 3.00 | 1 | 1 | 1 | 1 |
| MAGNIFIER / lens | 2.00 | 0 | 9 | 9 | 9 |
| TIMER / timer | 3.00 | 0 | 9 | 9 | 9 |
| THERM / thermometer | 4.00 | 0 | 9 | 9 | 9 |
| MEASURECUP / cup | 2.00 | 0 | 9 | 9 | 9 |
| FLASH / flashlight | 3.00 | 0 | 9 | 9 | 9 |
| BLOCK / pack of 20 large blocks | 4.00 | 0 | 9 | 9 | 9 |
| BALANCE / class balance | 15.00 | 0 | 1 | 1 | 1 |
| TAPEMEASURE / soft tape | 2.00 | 0 | 9 | 9 | 9 |
| SEED / packet of 50 | 2.50 | 0 | 1 | 1 | 7 |
| SOIL / L | 1.50 | 0 | 5 | 5 | 35 |
| POT / plant cup | 0.20 | 0 | 25 | 25 | 175 |
| PULLEY / pulley | 3.00 | 0 | 0 | 9 | 9 |
| MIRROR / mirror | 2.00 | 0 | 0 | 9 | 9 |
| CLAY / wheat-free tub | 2.00 | 0 | 0 | 9 | 9 |
| SPRING / scale | 4.00 | 0 | 0 | 9 | 9 |
| FERRITE / encapsulated magnet | 4.00 | 0 | 0 | 9 | 9 |
| MUSIC / instrument with mallet | 8.00 | 0 | 0 | 9 | 9 |
| DIGITALBALANCE / scale | 7.00 | 0 | 0 | 9 | 0 |
| PENCILSET / 12-color set | 3.00 | 0 | 0 | 9 | 9 |
| ROBOT / standalone floor robot | 100.00 | 0 | 0 | 0 | 9 |
| CHARGING / compatible lot for 9 | 40.00 | 0 | 0 | 0 | 1 |

The enhanced package omits the nine digital balances (retains the classroom
balance) to protect consumables for all seven cohorts. Robots must execute
stored student sequences without a host; **VERIFICATION REQUIRED** for product,
price, age rating and rechargeable-battery access. If unavailable, do not
substitute app-controlled robots without costing hosts/licenses. Buy the
low-tech subset and leave the optional robotics money unspent.

### Arithmetic and ceilings

| Package ceiling | Goods subtotal | Tax reserve (8% of goods) | Shipping reserve | Annual durable-replacement reserve | First-year total | Unspent below ceiling |
|---:|---:|---:|---:|---:|---:|---:|
| $250 | $194.00 | $15.52 | $10.00 | $10.00 | **$229.52** | $20.48 |
| $500 | $413.00 | $33.04 | $15.00 | $15.00 | **$476.04** | $23.96 |
| $1,000 | $754.00 | $60.32 | $20.00 | $20.00 | **$854.32** | $145.68 |
| $2,500 | $2,123.00 | $169.84 | $35.00 | $40.00 | **$2,367.84** | $132.16 |

Total = goods + tax reserve + shipping + durable replacement reserve.
Tax is a conservative **planning assumption**, not a verified local rate or
claim of tax exemption. No dollars are forced to reach a ceiling. Supplier
quotes/pack sizes may exceed reserves: re-cost, prioritize the core and seek
approval before ordering. Enhanced first-year arithmetic:
$754 - $63 digital balances + $900 robots + $40 charging + $294 six core
consumable allocations + $90 six planting allocations + $108 extra cells
= $2,123 goods.

### Annual consumables and year-two replacement

Consumables are already in first-year goods, not an extra hidden charge.
One basic cohort allocation: paper $5 + cardstock $5 + cards $8 + sticks $6 +
tape $12 + cups $5 + string $4 + foil $4 = **$49**.
Circuit stock is $18 cells (initial $9 + one replacement $9); higher packages
also include $9 initial flashlight cells. Battery runtime is unverified; budget
allocations are estimates, not promised endurance.

| Configuration | Estimated recurring consumables | Calculation / cohort basis | Durable reserve | 8% reserve on recurring goods + durable reserve | Shipping | Estimated year-two total |
|---|---:|---|---:|---:|---:|---:|
| Starter | $58 | $49 + $9 circuit cells; one cohort | $10 | $5.44 | $10 | $83.44 |
| $500 | $82 | $58 + $9 flashlight cells + $15 planting; one cohort | $15 | $7.76 | $15 | $119.76 |
| $1,000 | $128 | $82 + $18 shared clay + $28 extra paper/sticks/tape/cups; one cohort | $20 | $11.84 | $20 | $179.84 |
| Enhanced | $620 | $371 dry consumables + $105 planting + $126 cells + $18 shared clay; seven sequential cohorts | $40 | $52.80 | $35 | $747.80 |

Timer/digital-scale procurement must specify non-button-cell power and initial
power in the estimate. Subsequent batteries/repairs draw from the durable reserve;
if a verified lifecycle exceeds it, revise the budget, not safety protection.
Consumables and instructional minutes must be multiplied for additional cohorts
in the first three packages. School-owned scissors/markers/pencils also need
normal school replenishment outside these conditional starter estimates.

## Reusable kits: contents, capacity and issue checks

Label each bin with **ID, contents/count, maximum capacity, age restrictions,
prep test, issue/return checklist, restock threshold and actual storage location**.
Place a printed lesson/handoff on the lid or a handwritten equivalent.
Keep electrical/magnetic items in teacher-controlled storage.

| Kit and tier | Exact contents for capacity 25 | Teacher prep/test and cautions | Replenishment/return |
|---|---|---|---|
| CORE-STRUCTURES / starter | 9 trays; per tray 20 sticks, 6 dry cups, 1 ruler, 10 index cards, 2 paper sheets, 1 m tape allowance; 18 stable supports supplied by school; 1 class instruction/roster card | Seat 9 teams. Check supports do not slide, compare flat/folded paper using the same gap and equal counted card loads. For the rebuilt bridge lesson use its exact span and load instructions, not an invented substitute test. No throwing, standing on chairs or unsealed small K test loads. | Issue 180 sticks, 54 cups, 90 cards, 18 sheets, 9 m tape; retain reusable parts. Record actual consumption; restock paper/cards/tape before next build. Kit does not include coins unless a lesson specifically issues them under adult control. |
| CORE-UNPLUGGED / starter | From existing INDEX stock: 9 envelopes, each containing 12 large drawn arrow/stop cards and one 4x4 grid drawn on paper; 25 response slips; 1 teacher model grid | Follow a 3-step sequence with a large paper pointer, insert one incorrect turn and debug. Desk-only route avoids collision. Preparation of new cards is a one-time 15-minute task, not hidden substitute work. | Retain 108 arrow cards and 9 grids. Replace worn cards from inventory; 25 slips per meeting only if writing is useful. Oral evidence works. |
| CORE-CIRCUITS / starter | 9 covered protected switched 2-AA packs; 9 integrated current-limited 3-V LED modules; 36 insulated clip leads (4/team); 18 fitted + 18 spare AA cells; 9 drawn closed/open path cards; teacher roster and counted parts card | Teacher verifies manufacturer-compatible pack/module with current protection BEFORE purchase/use. Switch off; inspect; fit matched cells; connect module using 2 leads; switch on for visible light then open path. Any warmth, leak, damaged insulation or short: disconnect, OUT OF SERVICE, report. K adult handles parts only. | Count 9/9/36, switch off/disconnect, protect terminals; remove cells for long storage. Spare cells replace matched pairs. Do not bypass protection or substitute button cells/bare LEDs. |
| OBSERVE-MEASURE / $500+ | 9 magnifiers, 9 rulers, 9 thermometers, 9 graduated cups, 9 soft tapes, 9 timers; 1 plastic balance class station; 9 trays shared sequentially | Check ruler markings and thermometer baseline; practice 100 mL room-temperature measure. Balance stays level. Class station has individual turns and seated prediction task. No sun viewing, glass or hot water. | Dry wet items before returning; no cross-use with electronics. Record breakage and verify non-button-cell timer specification. |
| ART-LIGHT-SOUND / $500 light; $1,000 full | 9 enclosed AA flashlights + 18 cells; 9 nonbreakable mirrors; 9 metallophones with 9 mallets; 9 pencil sets; paper/cards from stock | Light-shadow check on desk; model one visual composition and a 4-beat sound/silence phrase. Ask for the artistic decision, not decoration. Screen sensory needs and keep volume conversational; silent gesture/card alternative. | Count mirrors/mallets; off flashlights; matched replacement cells; wipe/dry approved surfaces. Body percussion requires no purchase at starter tier. |
| LIFE / $500+ | Per cohort 25 plant cups, 50 untreated seeds, 5 L medium; trays shared for prep; labels from school paper | Teacher checks seed treatment/allergy, portions 0.2 L/cup, prepares drainage and a stable indoor growing location. Photograph is not necessary; model drawing/measurement. | Annual $15/cohort; wash hands, contain spills, dispose of moldy material by school procedure. Growth needs several observations, not instant lesson results. |
| OPTIONAL-ROBOT / enhanced | 9 self-contained stored-program robots; compatible charging lot; 9 desk/floor grid plans; 9 bounded floor test spaces or sequential supervised station; 25 evidence records | Teacher confirms product executes stored commands, charges/tests each and runs then changes a 3-command sequence. Do not attempt first-time setup with a substitute. Movement/charging age limits verified. | Return count 9; charge only approved power; follow manufacturer storage. No projectile accessories. Device failure defers execution evidence. |

Envelopes, grid drawings and labels can be made from purchased paper; preparation
must be scheduled before substitutes arrive. Trays, rulers and bins are shared
between kits **sequentially**, not counted as extra owned stock. The first four
starter bins are STRUCTURES, UNPLUGGED/ART, MEASURE, CIRCUITS; $1,000+ adds
OBSERVE, WET-SCIENCE, ART-SOUND and SIMPLE-MACHINES/MAGNETS with separate
teacher-controlled magnetic compartment. Confirm real shelf space; do not invent
closet locations.

## Safety and donation screening

No button cells, latex balloons or projectile activities in the operational
core. No neodymium magnets in K; no loose high-strength magnets at any core
station. Teacher controls AA cells, circuit clips, small test loads and enclosed
magnets. Do not purchase electrical parts lacking verifiable protection.
Stop unsafe equipment and report to the responsible school adult. Suspected
battery/magnet ingestion needs urgent emergency escalation.

Optional clean dry cardboard from school/store/family sources can reduce use;
school provides purchased paper/cardstock if none is donated. Reject food-soiled
containers, chemical packaging, sharp metal/glass, mold, unknown batteries,
loose magnets, latex and dangerous tools. Donating or fundraising never gates
participation or grades.

## Reported OLP holdings

[Download the reported holding](Reported_Holdings.csv).
OLP reports **8 individual Snap Circuits STEM Classroom Activity Kits, item
OHM-135**, on October 4, 2026. The user confirmed eight individual student
activity kits, not eight six-kit classroom packs.
This preserves the reported quantity; no physical count or manufacturer
age/power inspection was performed. Verify completeness, condition, storage,
current manual, batteries/power and school permission before use.
K permits only a preflighted **adult-operated optional demonstration**; no
student-circuit objective or kit-loan dependency is added.

Reported stock is not a per-class allocation, vendor quote or purchase bill.
Eight kits do not establish nine complete stations for 25 pupils in groups
<=3, nor thirteen pair-based kits. Use the exact lesson's capacity/turn plan
or keep its named low-tech route; do not count watching as operation.

### Selected Snap Circuits lesson pathways

The [classroom guide](../Resources/Snap_Circuits_Classroom_Guide.md) releases
hardware only after matching-model instructions, age, battery-access/protection
and school approval checks. Four existing lessons now use a documented switched
light; the original protected-AA equipment remains a **separate** alternative.

| Track / lesson | Current use |
|---|---|
| Grades 3-4 Weekly A [Weeks 26-27](../Lessons/Grades_3-4_YearA/Week26-27_Little_Bits_Circuits.md) | Build/test/repair, then test and revise a classroom label |
| Grades 3-4 Bi-Weekly A [Light & Circuits](../Lessons/Bi-Weekly/Grades_3-4_YearA/Session07_Light_Circuits.md) | Open/closed tests, repair evidence and Advent message |
| Grades 3-4 Bi-Weekly B [Christmas Circuits](../Lessons/Bi-Weekly/Grades_3-4_YearB/Session07_Christmas_Circuits.md) | Reuse the same equipment with a paper Nativity message beside the grid |
| Grades 5-6 Weekly A [Weeks 26-27](../Lessons/Grades_5-6_YearA/Week26-27_Little_Bits.md) | Two-state tests repeated twice and accessible indicator/label test-retest |

At 10/15/20 pupils use 4/5/7 stations in one wave. At 25 use **nine teams,
five stations and two waves**, with three reported kits left available for
checked reserves. No group exceeds three. Templates and the generic core are
not substitutes for these exact allocations. Hardware is reused across
alternative schedules/rotations, not simultaneously promised to four classes.
Physical turns and paper reasoning are logged separately; class trials remain
unverified.

No kit purchase price or replacement price was supplied, so no zero-cost
purchase row was invented in the priced inventory. The Snap material term in
the generated usage/reconciliation maps refers to the separate holding above;
its unresolved catalog/specification status is **not a claim that OLP owns none**.
Battery quantities come from the verified project setup card, not an assumed
two-AA count. Shared purchasing totals remain unchanged.

## Legacy inventory reconciliation and remaining checks

The final October 4 integration of the four band audits contains 251 records.
The [material-usage index](Material_Usage.csv) exposes each lesson's terms,
exact canonical/alias name matches and unresolved reconciliation questions.
Name matching does not verify specifications, quantities, ownership or safety:

| Audit | Records | None | Optional | Recommended | Required | Immediate purchasing/kit question |
|---|---:|---:|---:|---:|---:|---|
| [Kindergarten](./Kindergarten_Audit.csv) | 37 | 28 | 9 | 0 | 0 | Some references budget 13 kits for 12 active pair/trio teams at 25, 260 blocks or 13 magnifiers: nine team trays/180 blocks do not automatically cover those issue lists. Oral/desk-grid core avoids device dependence. |
| [Grades 1-2](./Grades_1-2_Audit.csv) | 74 | 54 | 5 | 5 | 10 | Confirm real robots/hosts and optional magnifier stock; audited bridge/light quantities and power must be checked against core kit specifications. |
| [Grades 3-4](./Grades_3-4_Audit.csv) | 71 | 45 | 9 | 0 | 17 | Rebuilt bridge quantities remain separate. Three Snap circuit pathways require checked electrical kits but no digital devices; 25 pupils use five stations in two waves. Other proprietary/device lessons are not included in starter equipment. |
| [Grades 5-6](./Grades_5-6_Audit.csv) | 69 | 22 | 26 | 10 | 11 | Protected AA circuits need physical materials, not digital devices. Verify programmable equipment and specialty supplies; inert paper replaces the forensic powder/identity activity. |
| **Integrated total** | **251** | **149** | **49** | **15** | **38** | Document records, not meetings, holdings or classroom certification. |

The audit's bare technology enum supplies the primary-path label. These are
current record classifications, not independent classroom certification.
All 37 K primary-material term lists now match catalog names. Other bands
retain documented readiness/term/specification work. The index currently has
1,203 term occurrences: 727 exact name matches and 476 unresolved occurrences.
Names and code labels do not establish specifications or observed holdings.
The [237-term reconciliation queue](Material_Reconciliation_Backlog.csv)
groups those 476 occurrences by source lesson and reason. It is not a purchase
list; record formats, software/access, ambiguous adhesives and safety-critical
parts remain distinct.
The audits document recurring paper/tape/wood/ruler/observation needs across
grades and real-device requirements beyond the low-tech core. They do not prove
per-unit quantities, safe compatibility, available loans or actual stock.

Join on actual lesson path, normalize material aliases, retain schedule/rotation,
and validate lesson-level quantities/safety before changing a verified use count.
Do not count alternate weekly/bi-weekly versions as extra meetings or purchase
both sets of annual consumables automatically.

**Current CSV use counts:** verified lesson-use counts are 0 (not verified, NOT
a claim of no use) pending validated path-to-item/specification reconciliation;
nonzero counts are explicitly ESTIMATED core
meeting uses. They are not measurements or claims that all grade-band lessons
were read by this workstream. Optional HOST/DASH/SPHERO/MODULAR/INPUT rows
identify inventory questions, not covered purchases or guaranteed loans.

Before final purchasing: physically count stock and condition; verify electrical
ratings, ingredients and battery types; confirm tax/shipping/pack quantities,
school-approved procurement/cleaning/storage and actual planned lessons.
Use [Technology Plan](./Technology_Plan.md),
[inventory checklist](../Resources/Materials_Inventory_Checklist.md) and
[materials template](../Templates/Materials_List_Template.md).

## Operations validation record - October 4, 2026

The first pass parsed all **37 purchase rows** against the original **48-item inventory**,
recomputed each extended cost/subtotal, 8% reserve, shipping, durable reserve,
ceiling/headroom and year-two totals. All four corrected budgets pass.
Checks also confirmed 4/5/7/9 team-kit scaling for 10/15/20/25 students,
four leads/fitted-plus-spare cells per circuit team, required CSV fields,
October 2026 estimate dates and explicit unverified-stock/source statuses.
Internal file links and the fixed local-code contract passed across 44 scoped
Markdown files; native template/fallback timing totals and seven K-6 newsletter
example shapes passed. Edited-file whitespace checks passed.

These are document/arithmetic checks, not supplier quotes, measured battery
endurance, actual stock counts, classroom trials or full legacy coverage.
The [seven desk simulations](./Substitute_Readiness.md) retain those limits.

The autonomous follow-up expands the catalog to 68 rows, preserves all four
original purchase totals, and resolves K primary-term names without assigning
actual school stock or verified specification-use counts. The reported
eight-kit holding remains a separate, uninspected record.
