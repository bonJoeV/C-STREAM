---
title: "Grades 5-6 curriculum review"
description: "Complete four-track audit, targeted revisions, readiness limits, and implementation priorities"
---

# Grades 5-6 curriculum review

**Reviewed:** October 4, 2026. **Planning context:** 2026-27, a small Catholic
school in Minnesota. **Scope:** Grades 5-6 only. This is a document audit and
targeted implementation, not diocesan approval, official benchmark certification,
a classroom trial, or a review of the other grades.

## Executive findings

All **69 lessons and four READMEs** were read before major lesson changes.
The initial 69-row inventory/audit was recorded before rebuilding; baseline
findings remain in the final [audit CSV](Grades_5-6_Audit.csv) rationales.
Baseline priorities: **41 P0, 24 P1, 4 P2**. Baseline dispositions: 45
KEEP + IMPROVE and 24 REBUILD. No document warranted unconditional baseline
certification as substitute-proof. Biomimicry subsequently required a full
rebuild, but its original KEEP + IMPROVE disposition is preserved. Final CSV
`status`/`priority` remain the baseline values: **45 KEEP + IMPROVE, 24 REBUILD;
41 P0, 24 P1, 4 P2**. `revision`, rationale and the holds below record changes;
repair is not a severity downgrade or a classroom-outcome claim.

**Implemented:** 11 complete rebuilds, spanning 25 meetings; 58 retained lessons
received tightly scoped safety/accuracy, source/privacy, or individual assessment
improvements. Every lesson now identifies 2-5 fixed local CST codes and specific
individual evidence. Four READMEs now state actual pacing, prerequisites,
unconfirmed equipment availability, rotation overlap, and readiness limits.
Existing lesson filenames/paths and navigation links were retained. No commits,
shared standards/resources/navigation edits, or edits to other grades were made
by this workstream.

**Holds, separate from baseline priority:** 41 baseline P0 lessons comprise
**9 rebuilt + 32 partially improved**; 24 baseline P1 lessons comprise
**2 rebuilt + 22 partially improved**; all four baseline P2 lessons are partially
improved. The **54 partially improved P0/P1 lessons are not fully ready**,
including 14 still awaiting a full rebuild. The 11 complete documents are
conditional references, not certified lessons: inspections, approved accounts,
source verification, accommodations and classroom piloting remain outstanding.
No P0 row is automatically declared closed because a guard or exit check was
added. No lesson was removed or replaced by a new URL.

Strengths worth preserving: real design cycles, community/service purposes,
student choice, model building, data work, portfolios, and explicit Catholic
reflection. Weaknesses: repeated "advanced/mastery" claims without entry checks,
underspecified supplies/handouts, no cleanup budget, too many choices for a
substitute, compressed app/game/invention tasks, unsafe optional routes, and
group products mistaken for individual learning.

## Inventory and realistic instructional dose

| Track | Lesson files | README files | Nominal labels | Actual planned meetings | Minutes |
|---|---:|---:|---|---:|---:|
| [Weekly A](../Lessons/Grades_5-6_YearA/README.md) | 20 | 1 | 34 numbered weeks | 32 | 1,440 |
| [Weekly B](../Lessons/Grades_5-6_YearB/README.md) | 15 | 1 | 34 numbered weeks | 33 | 1,485 |
| [Bi-weekly A](../Lessons/Bi-Weekly/Grades_5-6_YearA/README.md) | 17 | 1 | 17 sessions | 17 | 765 |
| [Bi-weekly B](../Lessons/Bi-Weekly/Grades_5-6_YearB/README.md) | 17 | 1 | 17 sessions | 17 | 765 |
| Audit total, **not one child's year** | **69** | **4** | Four alternatives | **99** | **4,455** |

Counting method: explicit multi-session duration controls, not number of files.
CSV `minutes` is the **native period per meeting**, integer **45 in every row**.
Total instructional minutes per document/track are calculated as
`meetings * minutes`; the 99 meetings still total 4,455 minutes.
Weekly A omits weeks 17/32 as breaks. Weekly B has no week 32 lesson; its
five-meeting app unit includes nominal week 17, so a winter break cannot silently
count as instruction. Liturgical events and Pi Day need actual calendar dates.

Weekly A's Expo adds **60-75 minutes**, not included in the 32 meetings.
Catholic Schools Week buddy teaching and Lenten/community implementation require
separately scheduled, supervised events; an in-class proposal is not completed
service. Bi-weekly extensions must use approved follow-up time or be deferred.
At 25 students, 25 five-minute talks would take 125 minutes before questions;
paired exchanges now replace several impossible plenary promises.

Weekly A/B over two years supplies 65 planned meetings; bi-weekly A/B supplies 34.
Neither is equivalent to the other's dosage or a replacement for the primary
science, math, arts, technology, or religion curricula.

### Audit schema and interpretation

One row per existing lesson; README readiness is recorded here and in the
README, not added as extra CSV lesson rows. Paths are relative to `docs`, using
POSIX separators as data. Grade band is `5-6`; schedule/rotation, meeting count,
native period,
scope, supplies, primary-path technology, prep and cleanup are explicit.
All fields are nonblank; meetings are positive integers. Each row has 2-5
**unique** pipe-separated `CST-[CSTEAM][1-3]` codes. The exact header declared
by `scripts/Build-CurriculumMaps.ps1` has **19 columns**; that header is retained
rather than inventing a twentieth field.

`status` is the baseline audit disposition; `revision` states what happened.
Thus REBUILD/improved means **partial repair with a full rebuild still needed**,
not a finished rebuilt lesson. KEEP + IMPROVE/rebuilt is possible when a baseline
disposition later received a larger implementation, as with Biomimicry.
`priority` remains baseline severity, **not current readiness or closure**.
Do not infer approval or open/closed finding counts from `priority` alone.
`evidence` describes the now-written individual check, not observed student
results. Estimated preparation for retained lessons is not a measured stopwatch
result. "Not allocated" cleanup is a real readiness weakness, not zero minutes.
None/Optional/Recommended/Required describes digital/programmable-device needs
for the **primary path**, not every extension. Physical-circuit operation is
**None** for digital technology but still requires inspected electrical
materials; paper cannot demonstrate circuit operation.

### Unchanged-lesson transparency

Cumulative lesson-file revisions are **11 rebuilt, 58 improved, 0 unchanged**:
each lesson received at least a specific local individual-evidence check.
That does not mean all its legacy instructions, claims, kits or timing were
rewritten. Most original content in the 58 improved lessons remains retained
and is not fully readiness-certified. Their unsourced external claims remain
**VERIFICATION REQUIRED** before use.

This integration correction changes only the audit/review and session-local
validation; **all 69 lesson documents and four READMEs are unchanged during this
correction pass**. Parent owns broad synthesis, navigation and the global build.

## Grades 5 and 6 reviewed separately

Neither rotation may assume attendance in the other. A Grade 5 student may
enter Year B first; a new Grade 6 student may need introductory instruction.
Use short school-task checks, not reading speed, polished handwriting, or device
ownership, to decide supports.

| Competency | Grade 5 entry/support and expected evidence | Grade 6 entry/support and expected evidence |
|---|---|---|
| Measurement | Read cm/g, count trials; use reference scale and repeated measurements | Verify matching units; compare variability and justify method |
| Investigation | Name changed/measured factors and two controls; cite actual data | Explain confounds, uncertainty, and why a pattern may not establish cause |
| Data | Plot labeled values, compare counts/ranges with scaffold | Calculate a supported mean/ratio where taught; explain sample limits |
| Algorithms | Trace sequence, fixed loop, if/else, reset with cards | Independently debug boundary/parameter change and test both branches |
| Engineering | Compare two designs against a criterion/constraint and revise | Defend redesign using evidence, cost/resources, access, and tradeoffs |
| Systems/models | Explain labeled cell, circuit, food-web, or scale model | Identify exceptions and limitations; avoid universal/causal overclaims |
| Art/design | Observational sketch and purposeful readable layout | Revise visual hierarchy/form after user critique; explain intention |
| Catholic ethics | Honest evidence, dignity, stewardship decision tied to task | Distinguish factual/ethical claims and defend a service/access tradeoff |
| Communication | Explain one artifact with data and a limitation, orally/drawn/written | Answer an evidence question and acknowledge remaining validation needs |

**Grade 5 strengths:** concrete models, carefully supported loop/state reasoning,
measuring/testing, and service contexts. **Grade 5 gaps:** too many original
"advanced" jumps into lists, custom blocks, sensors, ratios, and medical ethics;
not all necessary fact cards or examples exist in retained lessons.

**Grade 6 strengths:** rich opportunity to defend tradeoffs, critique evidence,
apply cost arithmetic, and synthesize a portfolio. **Grade 6 gaps:** nominal
leadership/mastery has often meant presenting rather than independently tracing,
calculating, investigating, or testing. Advanced cloning/app storage and
multi-sensor autonomy need more time and prerequisites, not a difficult label.

No trigonometry is needed in the rebuilt core. Grade 6 mean/ratio work is
scaffolded, not assumed mastered. Students may dictate or draw equivalent
reasoning; support must not leave the confident partner doing all technical work.

### Entry checks and sequence

In the first meeting, ask each student to measure a 10 cm line, trace a
three-command route, explain a simple table difference, and distinguish
"observed" from "inferred." Teach a missing skill during the introduction or
using a worked example; do not add compulsory homework.

Weekly A: foundations -> calibrated navigation/experiments -> structures/service
-> optics/scale -> proposal project -> Scratch/circuits -> weather evidence ->
communication. Weekly B: foundations -> cell/DNA models -> energy/form testing
-> safe app design -> enterprise/health mockups -> environmental interpretation
-> communication. Bi-weekly A/B introduce these practices in narrower contexts;
reduce feature counts rather than pretending a 45-minute activity is mastery.

## Rotation repeats and progression

| Repeated family | Useful recurrence | What must become different |
|---|---|---|
| Design thinking/invention | Both years repeatedly empathize, define, prototype, test | A: bounded criterion/test; B: compare alternatives and defend an evidence/ethics limit |
| Robotics | A navigation; B sensor decisions | A trace/calibrate a route; B stationary threshold and uncertainty, not another race |
| Scratch/apps | A variables/loops; B interfaces/events and game design | Reset/guard tests before custom blocks, clones, storage, or extra screens |
| Structures | A bridges; B architecture/biomimicry | B must add purposeful form/access/user evidence, not only a taller tower |
| Service/seasonal making | Thanksgiving, Advent, Lent, Easter occur in both | Different user/communication constraints; no repeat craft with a new saint label |
| Environment | A weather comparison; B monitoring/action interpretation | B adds provenance, raw-data preservation, and causal limits; not duplicate spreadsheet graphs |
| Portfolio/exhibition | Annual reflection is useful | Compare actual individual evidence across attended years, not presumed mastery |

Original overview claims about Year B drones/Python and Year A dedicated
rocketry/micro:bit were unsupported by these lesson files and are corrected.
Year A/B are not perfectly disjoint nor officially proven equivalent.

## Meaningful C/S/T/E/A/M balance

Count method: after reading each lesson, count a domain **once per document**
only when the written task/individual check requires its practice. Use the
conservative local-code task map, not front-matter tags, a prayer, "all areas,"
decorating, opening a laptop, or a lesson title. Multiple codes in one domain
still count once. Coding/data citizenship can be meaningful T without a screen;
art requires observation, intentional form/layout, or critique/revision.

These are **written practice opportunities**, not student mastery or minute-by-
minute dosage. A five-meeting app unit and one meeting each count one document;
use the separate meeting table before comparing schedules. Other supporting
domains may occur but are not counted without explicit evidence. For example,
structure prayers alone are not counted C; a three-view diagram is not
automatically engineering testing.

| Track | C | S | T | E | A | M | Lesson denominator |
|---|---:|---:|---:|---:|---:|---:|---:|
| Weekly A | 16 | 9 | 5 | 11 | 7 | 8 | 20 |
| Weekly B | 15 | 5 | 4 | 9 | 8 | 6 | 15 |
| Bi-weekly A | 16 | 5 | 7 | 8 | 6 | 4 | 17 |
| Bi-weekly B | 17 | 4 | 7 | 8 | 8 | 3 | 17 |
| Total | **64** | **23** | **23** | **36** | **29** | **21** | **69** |
| Share of audited documents, overlapping | 92.8% | 33.3% | 33.3% | 52.2% | 42.0% | 30.4% | Not additive |

Engineering is prominent; mathematics is weakest in bi-weekly B and still often
incidental elsewhere. Science requires more sustained real observation/testing
than a model or research presentation alone. Arts are now clearer in biomimicry,
interfaces, diagrams, and evidence communication; retain these assessed purposes,
not decoration requirements. Catholic integration is extensive but still needs
careful distinction among doctrine, devotional symbolism, historical evidence,
and scientific explanation.

### Gaps and scope decisions

- Controlled measurement and uncertainty: rebuilt weather/rotor investigations
  establish usable examples; retained experiments need equivalent kits.
- Mathematics: add explicit measurement/data/cost evidence to architecture,
  service and inventions during next rebuild, especially bi-weekly B. Do not
  overload advanced formulas as a proxy for reasoning.
- Electricity: now three core meetings with safe AA circuits and individual
  path/state evidence. Parallel wiring, current measurement and Ohm's-law
  calculations are not certified by a colored module chain.
- Life science: cell/DNA models now accurate; no alcohol extraction, bodily
  sampling, or cultures. Prepared images do not demonstrate microscopy.
- Earth/environment: indoor weather dataset and fictional monitoring records
  avoid winter/collection hazards. These do **not** demonstrate real longitudinal
  monitoring; future adult-approved data acquisition is a genuine remaining gap.
- Computing: unplugged routes teach algorithms/interfaces; direct device
  programming requires observed edits and execution. Advanced autonomy,
  cloning, persistence, app publication, and platform fluency remain limited.
- Catholic scientists/history: prepared verified source cards still needed.
  History cannot be reduced to "always supported" or a predetermined conflict
  rebuttal. Avoid misleading HOW/WHY exclusivity and unsourced heroic quotations.
- Capstone/service: real-world implementation and sustained iteration need
  approved calendar time, safe constraints, and individual evidence.

CSV CORE is the recommended spine **once its readiness conditions are met**,
not a command to teach every current draft. RECOMMENDED supports the spine;
OPTIONAL includes extra seasonal/showcase opportunities. If time is short,
protect investigation, coding reasoning, circuits, and redesign before extra
awards, media projects, or competition features. Do not add more lesson files
to make a nominal 34; budget extra slots for prerequisites, retesting, and events.

## Actual lesson rebuilds

These are the **11 conditional document-ready reference paths** for integration.
The original simulations and individual evidence remain desk-checked, not
classroom-observed. Read each BEFORE CLASS and SAFETY section; physical circuits,
device operation, source-dependent extensions and first-kit setup are not
automatically released.

| Track | Rebuilt lesson | High-value change |
|---|---|---|
| Weekly A | [Sphero Mastery](../Lessons/Grades_5-6_YearA/Week02-03_Sphero_Mastery.md) | Full paper route, three trials, calibration/heading distinction, safe optional robot |
| Weekly A | [Snap Circuits: Accessible Indicators](../Lessons/Grades_5-6_YearA/Week26-27_Little_Bits.md) | Approved Snap switched-light route, two states repeated twice, accessible label test/retest; separate protected-AA alternative retains four states |
| Weekly A | [Environmental Science](../Lessons/Grades_5-6_YearA/Week29-31_Environmental_Science.md) | Fictional winter weather data, exact graph/mean key, causal limits and tested communication |
| Weekly B | [Biotechnology](../Lessons/Grades_5-6_YearB/Week02-04_Biotechnology.md) | Nonfood cells/DNA, exceptions, complete fictional ethics cases; no extraction |
| Weekly B | [Renewable Energy](../Lessons/Grades_5-6_YearB/Week05-07_Renewable_Energy.md) | Controlled rotor response; no heat lamps or voltage-as-efficiency claim |
| Weekly B | [Biomimicry](../Lessons/Grades_5-6_YearB/Week08-10_Biomimicry.md) | Form sketches, two controlled safe-load tests, purposeful art critique; no perfect-nature claim |
| Weekly B | [App Development](../Lessons/Grades_5-6_YearB/Week14-18_App_Development.md) | Complete one-screen starter, six tests, privacy/access, five-meeting paper/app paths |
| Bi-weekly A | [Scratch Advanced](../Lessons/Bi-Weekly/Grades_5-6_YearA/Session05_Scratch_Advanced.md) | Bounded score/guard/reset/loop model with individual 0/1/2/3/3 trace |
| Bi-weekly A | [Christmas Electronics](../Lessons/Bi-Weekly/Grades_5-6_YearA/Session07_Christmas_Electronics.md) | Protected-AA push-to-light model, daylight correction, faith-symbol distinction |
| Bi-weekly B | [Sphero Sensors](../Lessons/Bi-Weekly/Grades_5-6_YearB/Session02_Sphero_Sensors.md) | Stationary four-reading threshold rule; no shaking or directional light-following claim |
| Bi-weekly B | [Forensic Science](../Lessons/Bi-Weekly/Grades_5-6_YearB/Session04_Forensic_Science.md) | Complete fictional inert-paper packet/key, source dependence, truth and dignity; no accusations |

All 11 contain at-a-glance fields, prerequisites, before-class instructions,
exact 10/15/20/25 quantities, vocabulary, misconception and question/answer,
numbered contiguous 45-minute meetings, questions, individual success thresholds,
troubleshooting, SAFETY, grade-specific support/challenge, indoor fallback,
cleanup, and a family snippet without routine homework.

### Other P0 repairs, not disguised rebuilds

Retained lessons now cap adult load tests, prohibit laser/Sun viewing and
unreviewed chemistry, correct ramp-force/heart/blood/seed/metamorphosis errors,
remove unsafe biological sampling, preserve raw data, prohibit meter/trash
handling, limit clinical prototypes to dry nonfunctional classroom models,
remove collision/speed contests, protect spiritual/health data, and disallow
shared/home account requirements. Uncertain quotations were removed where
identified as questionable, or explicitly withheld pending verification.
Circuit extensions cannot substitute bare/button-cell supplies.

These changes do not supply missing fact cards, every team kit, or every
timed cleanup in the 58 retained plans. Do not call them completely rebuilt or
substitute-ready because they now have a local exit check.

## Quality scoring examples

Editorial scale: **0 absent/unsafe; 1 named but underspecified; 2 teachable with
specific support/remaining check; 3 explicit and independently usable under
stated conditions**. Fourteen dimensions, each 0-3, maximum 42. These are
document judgments, not measured learning gains or validated psychometrics.

Order in score vectors: rigor, developmental fit, Catholic integration, standards
traceability, hands-on activity, clarity/substitute usability, low-tech access,
cost/prep, individual assessment, inclusion, safety, scalability, family
communication, progression. Official alignment remains unverified, so local
traceability cannot receive a full official-standards certification score.

| Example | Baseline vector / total | Current vector / total | Evidence explaining change |
|---|---|---|---|
| Forensic Science | 1/2/1/0/1/0/2/0/1/1/0/0/1/1 = **11/42** | 3/3/3/2/2/3/3/3/3/3/3/3/3/2 = **39/42** | Packet/key, individual uncertainty and dignity, no dangerous personal/chemical evidence; paper comparison is not laboratory practice |
| Weekly A circuits | 2/2/1/0/2/1/0/0/1/1/0/0/1/1 = **12/42** | 3/3/3/2/3/3/1/2/3/3/3/3/3/2 = **37/42** | Exact safe kit/state table/retest; real hardware and first-kit prep remain constraints |
| Health Technology | 1/2/2/0/1/1/1/0/1/1/0/0/1/1 = **12/42** | 2/2/2/1/1/1/2/0/2/2/2/0/1/1 = **19/42** | Clinical/privacy boundaries improved; missing kit/brief/pacing means not substitute-certified |
| Passion Projects | 2/2/2/0/2/1/1/0/2/1/1/0/1/1 = **16/42** | 2/2/2/1/2/1/2/0/2/2/2/1/1/1 = **21/42** | Individual logs and feasible paired talks; wide project prep and common rubric remain weak |

Grade 5 scoring checks scaffolding and comparable evidence; Grade 6 checks
independent explanation, uncertainty, and defended tradeoffs. A technically
successful group project cannot make every student's assessment score a 3.

## Signature projects and local traceability

**Grade 5 signature: Safe Accessible Kit Indicator.** In a weekly year, use the
two-meeting electronics unit: diagram/state tests -> purposeful accessible
layout -> peer trial -> revision. In bi-weekly A, use the one-meeting
push-to-light model, not pretend the full two-meeting unit occurred. Individual
evidence: closed path, four predictions, and a respectful visual/input choice.
No safe circuit inventory means defer operation; paper reasoning is not the
same completed signature. In bi-weekly B without a circuit meeting, use the
fictional evidence puzzle as an alternative memorable investigation.

**Grade 6 signature: Evidence-Limited Common-Home Design Defense.** Weekly A:
weather graph/protocol -> accessible communication -> proposed action with
limits. Weekly B: rotor/biomimicry tests -> tradeoff defense and a new-data need.
Bi-weekly: use supplied environmental counts or ecosystem model and a bounded
design; no claim of real measured environmental impact. A cost/access/uncertainty
defense is the Grade 6 increment, not simply a more ornate model.

| Local competency group | Grade 5 evidence | Grade 6 increment | Ready examples / individual record |
|---|---|---|---|
| CST-C1/C2/C3 | Honest data, no accusations, access/resource decision | Dependent sources, ethical/factual distinction, resource tradeoff | Forensic exit; biology case; circuit access; weather action |
| CST-S1/S2/S3 | Observations, controls, labeled systems | Confounds, exceptions, model limits | Evidence log; six rotor tests; cell/DNA/circuit diagrams |
| CST-T1/T2/T3 | Input/output, fixed rules, safe data | Boundary debug, testing/privacy rationale | Sensor table; score trace; app tests and private-data exclusion |
| CST-E1/E2/E3 | Criterion/constraint, revision, supported explanation | Tradeoff/cost/uncertainty defense | Biomimicry before/after; indicator retest; individual portfolio |
| CST-A1/A2/A3 | Observational sketch, intentional layout, message | Critique-driven form/hierarchy revision | Biology labels; biomimicry panel; app interface; weather sign |
| CST-M1/M2/M3 | Count/measure, labeled graph, matching-unit arithmetic | Means/ratios with scaffold and explanation | Route errors; weather graph; cost calculation |

Use the CSV for exact **code -> grade band -> track/unit -> lesson -> evidence**
lookup across all 69, not this representative table as a substitute for the
full map. We do not edit or certify the shared K-6 standards framework.

## Materials, kits, precise planning costs

All prices below are **planning allowances, not verified October 2026 retailer
quotes**, excluding tax/shipping. Arithmetic is exact for those assumptions.
Verify availability/specifications before ordering; a low price must not
substitute an unprotected holder. School supplies materials; clean voluntary
cardboard donations are welcome but never prerequisites.

Teams of at most three: **4 / 5 / 7 / 9** for **10 / 15 / 20 / 25** students.
The rebuilt lessons give each class-size quantity; the 25-student bill below
includes a spare circuit set, unlike the nine operational teams.

### Tier 1 - 25-student paper/measurement kit

| Item | Quantity | Unit allowance | Total | Reuse/storage/safety |
|---|---:|---:|---:|---|
| Paper, 500 sheets including reused/colored substitutions | 1 pack | $5.00 | $5.00 | Consumable; dry shelf; core across all 11 rebuilds |
| Pencils | 25 | $0.20 | $5.00 | Reusable; journal bin |
| Rulers | 9 | $0.75 | $6.75 | Reusable; measure/graph/diagram kit |
| Markers | 9 | $0.50 | $4.50 | Reusable; purposeful communication, cap after use |
| Blunt scissors | 9 | $1.00 | $9.00 | Reusable; adult checks, no sharp blades |
| Journals | 25 | $0.80 | $20.00 | Per-student ongoing evidence |
| Tape, about 40 m total | 3 rolls | $2.00 | $6.00 | Consumable; confirm actual roll length |
| Storage folders/bins | 5 | $1.50 | $7.50 | Dry labeled kits |
| **Paper subtotal** | | | **$63.75** | Existing board/clock and clean cardboard assumed |

Use recycled clean cardboard, two stable books/supports/team, classroom clock,
and teacher board at $0 incremental cost **only if actually available**. School
must source substitutes otherwise. No unsafe donations, dirty food packaging,
glass, appliances, batteries, sharps, or unknown chemical containers.

### Tier 1 conditional addition - protected circuits, nine teams plus one spare

| Item | Quantity | Unit allowance | Total | Constraint |
|---|---:|---:|---:|---|
| Enclosed-contact 2-AA holder with built-in current/short-circuit protection and switch | 10 | $10.00 | $100.00 | Protection specification/vendor must be confirmed; plain holder not acceptable |
| Push switches | 10 | $2.00 | $20.00 | Reusable; adult inspected |
| Sleeved red LED + 220-ohm 1/4-watt resistor assembly | 10 | $2.00 | $20.00 | Qualified adult prepares/inspects; no student soldering |
| Insulated clip leads | 30 | $0.50 | $15.00 | Three/set; return-path and insulation checks |
| Matching AA cells | 20 | $0.50 | $10.00 | Adult insertion/storage; replace as needed, no coin cells |
| Dry trays | 9 | $1.00 | $9.00 | Reusable; used for other model tests too |
| Circuit storage bin | 1 | $5.00 | $5.00 | Disconnect supply; segregate cells/contacts |
| **Circuit subtotal** | | | **$179.00** | Three core circuit meetings across two alternatives |
| **Paper + circuits** | | | **$242.75** | Conditional on compliant inventory/specifications |

At 10 students the operating circuit kit needs 4 holders/switches/assemblies,
8 cells and 12 leads; at 15: 5/10/15; at 20: 7/14/21; at 25: 9/18/27.
The same kits serve the weekly and bi-weekly alternatives, not additive purchases.

### Tier 2 - high-value additions to the $242.75 base

| Item | Quantity x allowance | Total | Uses/storage/safety |
|---|---|---:|---|
| Safe enclosed-axle pinwheels | 9 x $2 | $18.00 | Three energy meetings; adult checks sharp/loose parts |
| Non-glass thermometers | 2 x $8 | $16.00 | Optional weather measurement; dry padded bin |
| Large soft balls | 9 x $1 | $9.00 | Retained ramp/motion lessons; catch in trays |
| Guarded fan | 1 x $25 | $25.00 | Optional controlled rotor testing; adult only |
| Scale | 1 x $15 | $15.00 | Load packet preparation/structure measurements |
| Tape measures | 2 x $5 | $10.00 | Robotics/structures/model spacing |
| Reusable sealed 10 g packets | 10 x $0.50 | $5.00 | Adult 100 g capped tests; confirm mass with scale |
| Additional printing allowance | 75 sides x $0.05 | $3.75 | Evidence/model cards; board-copy alternative |
| Low-brightness flashlights | 9 x $3 | $27.00 | Retained optics/optional sensor work; never eyes |
| **Tier 2 addition** | | **$128.75** | Avoid duplicate rulers/trays |
| **Base + Tier 2** | | **$371.50** | Supplies high-value core; does not complete all retained kits |

### Tier 3 and budget configurations

| Budget ceiling | Proposed spend | Honest capacity |
|---|---:|---|
| About $250 | $63.75 paper-only; or $242.75 including compliant circuits | Paper algorithms/models/data ready; actual circuits only if protected kits meet specifications. Rotor/weight extras can use existing stock or deferred acquisition. |
| About $500 | $371.50; optional 10% reserve $37.15 -> $408.65 | Reusable core kits and measurement additions; no need to exhaust budget |
| About $1,000 | $371.50 + one BOLT allowance $250 + approved compatible tablet $150 = **$771.50** | One demonstration/station pair, not all 25 students' independent device-operation certification |
| About $2,500 | $371.50 + five tested robot/tablet pairs at $400 = **$2,371.50** | Optional shared stations; reserve $128.50. Additional programming time needed for equitable individual device evidence. |

Nine simultaneous robot/tablet team pairs at those allowances would cost
**$3,971.50 including the base**, beyond $2,500. Do not conceal that mismatch or
assume a free loan/device fleet. The paper primary paths remain the budget core.
No purchase of specialty kits, 3D printers, drones, or microphones is required.
Platform compatibility, current device pricing, and loan dates are
**VERIFICATION REQUIRED**.

Reusable labeled kits: Algorithms/State (grid, tokens, rule cards, score cards);
Protected Circuits (holder, cells under adult control, switch, sleeved assembly,
three leads); Evidence/Models (forensic packet, cell/base cards, sketches);
Wind/Form Tests (inspected rotors, supports, tray, adult load packets);
Weather/Data (fictional table, graph rulers, optional thermometers).
Keep first-build setup separate from repeat preparation: a substitute arriving
20 minutes early needs already prepared/inspected kits, not a soldering job.

## Technology, winter, large-class, budget, and substitute simulations

These are **desk simulations of the written plans**, not live classroom trials.

| Scenario | Result and limits |
|---|---|
| No iPads/computers | All 11 rebuilt core reasoning/design paths remain teachable. App/robot/Scratch/sensor paper work does not prove real programming/measurement/operation. Circuits still require protected hardware; paper fallback shifts to reasoning. |
| No electricity/specialty devices at all | Forensic, biology, weather, algorithms/app models remain complete. Wind hand-fan route works with inspected rotors; no rotor shifts to clearly invented data analysis. Physical circuits must be deferred, not called completed. |
| Minnesota January, -10 F | No rebuilt lesson needs outdoor exposure, sun, spring specimens, parking-lot data, or nighttime stargazing. Fictional weather data is explicitly not observed climate evidence. Retained outdoor suggestions use indoor models; live monitoring still requires adult planning. |
| 25 students | Nine teams, personal evidence for 25. Forensic packets stay at tables; paired presentations avoid plenary overload. Biomimicry adult retests at about 40 s/team in six minutes; first pilot must verify that pace. Circuit adult checks fit ten-minute blocks with ready kits; stop if inspections cannot be completed safely. |
| Tight budget | $63.75 paper base provides strong reasoning/model/data lessons; $242.75 conditional circuit kit and $371.50 high-value configuration avoid expensive fleet dependency. Prices/protection availability not quoted/confirmed. No mandatory family purchases. |
| Substitute arrives 20 minutes early | Forensic/score/sensor paper kits use 10-15-minute first prep. Paper app/biology/weather/biomimicry first prep is 20 minutes. Circuit first kits need 30 minutes and qualified inspection; Sphero/rotor first kits 25. These must be prebuilt or use the stated safe fallback. The 54 partially improved baseline P0/P1 lessons are not automatically ready. |
| Parent asks what was learned | Show individual's trace, graph, model-limit explanation, design revision and Catholic ethical decision; identify real versus simulated technology. Use family snippets below, not "we did a craft" or unsupported mastery claims. |

Kindergarten/nonreader simulation from the broader request is outside this
workstream; for Grades 5-6, oral/scribed/large-symbol equivalents are available.
No certification of other grades' readability or substitute experience is made.

### Seven-simulation handoff reference paths

This preserves the seven simulations from the request without pretending to
review the other grades.

| Original simulation | Exact Grades 5-6 reference | Unresolved finding / hold |
|---|---|---|
| 1. Substitute (originally Grade 3) | [Forensic packet/key](../Lessons/Bi-Weekly/Grades_5-6_YearB/Session04_Forensic_Science.md); [score-rule starter](../Lessons/Bi-Weekly/Grades_5-6_YearA/Session05_Scratch_Advanced.md) | Grade 3 is outside ownership. For Grades 5-6 use prepared paper kits; 54 partial P0/P1 plans remain unready. No actual substitute trial. |
| 2. Kindergarten nonreader | [Grade-specific oral/visual supports in Biotechnology](../Lessons/Grades_5-6_YearB/Week02-04_Biotechnology.md) | Kindergarten is not audited here. Oral/scribed Grade 5-6 participation is not K-readiness certification. |
| 3. No devices | [paper App Development screen/events/tests](../Lessons/Grades_5-6_YearB/Week14-18_App_Development.md); [paper sensor rule](../Lessons/Bi-Weekly/Grades_5-6_YearB/Session02_Sphero_Sensors.md) | Neither demonstrates actual programming, sensor measurement or robot operation. Circuit operation cannot be completed with paper. |
| 4. Minnesota January | [indoor weather dataset and key](../Lessons/Grades_5-6_YearA/Week29-31_Environmental_Science.md) | Fictional data is not measured school weather or evidence of climate trends; live monitoring not validated. |
| 5. 25 students | [nine-team/five-station circuit waves](../Lessons/Grades_5-6_YearA/Week26-27_Little_Bits.md); [safe-load/form tests](../Lessons/Grades_5-6_YearB/Week08-10_Biomimicry.md) | Eight individual Snap kits reported; five stations/two 14-minute waves with checked reserves. Matching-model/power approval, space, adult inspection throughput and observed individual-turn completion still need school checks/piloting; load tests unchanged. |
| 6. Budget | [hand-fan rotor model](../Lessons/Grades_5-6_YearB/Week05-07_Renewable_Energy.md); materials/cost tables above | $63.75 paper, $242.75 conditional circuits, $371.50 additions are planning allowances, not vendor quotes; compatible kits/loans not confirmed. |
| 7. Parent | [individual loop/measurement evidence and family snippet](../Lessons/Grades_5-6_YearA/Week02-03_Sphero_Mastery.md); unit-family snippets below | Written success criteria are not observed achievement. State actual route/data source and show each student's work before claiming learning. |

## Family newsletter snippets by unit family

Copy the relevant snippet after the actual lesson; identify paper versus real
device route and fictional versus observed data. Optional conversation only,
**no routine homework**, purchases, accounts, interviews, or home experiments.

| Unit family in CSV | Copy-ready snippet |
|---|---|
| Foundations | **Explored:** thoughtful problem finding. **Did:** stated a school-task goal and criterion. **Learned:** evidence and listening guide design. **Catholic connection:** gifts used responsibly. **Ask:** "What would count as success?" |
| Planning | **Explored:** measurable milestones. **Did:** made a three-step timeline tied to prior work. **Learned:** plans need resources and dependencies. **Catholic connection:** stewardship of time. **Ask:** "What must happen first?" |
| Computing | **Explored:** rules, events, loops, and reset. **Did:** traced/tested a small interaction and corrected a bug. **Learned:** boundary cases matter. **Catholic connection:** honest tests and inclusive play. **Ask:** "Which test exposed the bug?" Teacher names paper or device route. |
| Investigation | **Explored:** observation versus inference. **Did:** compared data/evidence and stated a limitation. **Learned:** clues do not prove identity or cause. **Catholic connection:** truth and dignity. **Ask:** "What remained unknown?" |
| Structures | **Explored:** forces and safe model loads. **Did:** tested a classroom model within a load cap. **Learned:** demonstrated load is not ultimate breaking strength. **Catholic connection:** responsible shared work. **Ask:** "Where did the force go?" |
| Service | **Explored:** user needs and respectful design. **Did:** made a classroom proposal/mockup, not a validated aid. **Learned:** recipients need choice and consent. **Catholic connection:** dignity and mercy. **Ask:** "Which assumption did you question?" |
| Physical Science | **Explored:** light, motion, or changes in matter. **Did:** used a safe model/diagram and explained a result. **Learned:** physical descriptions and faith symbols are different. **Catholic connection:** wonder with truthful reasoning. **Ask:** "What did the model leave out?" |
| Earth and Space | **Explored:** distance scale and model limits. **Did:** represented Earth-Sun distance with consistent units. **Learned:** size markers and distances may use different scales. **Catholic connection:** wonder and humility. **Ask:** "What did one model centimeter represent?" |
| Physical Computing | **Explored:** complete paths and controlled outputs. **Did:** predicted four states and, with approved kits, tested a switch/light. **Learned:** safety and clear signals matter. **Catholic connection:** accessible design/stewardship. **Ask:** "Why did release turn the light off?" |
| Mathematics | **Explored:** circumference divided by diameter. **Did:** compared measurements of circles. **Learned:** estimates vary with method. **Catholic connection:** honest reasoning, not a required philosophy of mathematics. **Ask:** "Why wasn't your ratio exact?" |
| Environment | **Explored:** data and stewardship decisions. **Did:** graphed clearly fictional practice records and discussed controls. **Learned:** a small dataset does not prove climate trends or savings. **Catholic connection:** our common home and neighbors. **Ask:** "What further evidence would you need?" |
| Life Science | **Explored:** cells, DNA, body systems, or food webs. **Did:** labeled a model and explained an exception/limit. **Learned:** models simplify living systems. **Catholic connection:** dignity independent of health or ability. **Ask:** "Which absolute claim did you correct?" |
| Energy | **Explored:** energy sources and rotor response. **Did:** compared six controlled model trials. **Learned:** turns are not measured electrical efficiency. **Catholic connection:** resource/neighbor tradeoffs. **Ask:** "What stayed the same in your test?" |
| Design | **Explored:** nature-inspired form or an accessible interface. **Did:** sketched, tested, and revised a purposeful feature. **Learned:** looking good is not proof of function. **Catholic connection:** care and responsible creativity. **Ask:** "What changed after feedback?" |
| Data | **Explored:** fictional category counts. **Did:** made a labeled graph and comparison. **Learned:** graphs cannot measure faith or grace. **Catholic connection:** respect privacy and choice. **Ask:** "What could the graph not tell you?" |
| Research | **Explored:** trustworthy sources and Catholic learning. **Did:** checked one claim's origin and uncertainty. **Learned:** an appealing quotation still needs verification. **Catholic connection:** faith/reason and truth. **Ask:** "Where did your claim come from?" |
| Capstone | **Explored:** a bounded problem and test. **Did:** documented a proposal, trial, and revision. **Learned:** a prototype needs more validation before real use. **Catholic connection:** talents in service. **Ask:** "What evidence supported your next step?" |
| Communication | **Explored:** clear artifact explanations. **Did:** revised a caption/message after a reader question. **Learned:** explain result and limit, not just participation. **Catholic connection:** respectful sharing and stewardship. **Ask:** "Which question improved your explanation?" |

## Verified sources

Accessed October 4, 2026. Paraphrases only in rebuilt plans; no invented quotation
or official benchmark number.

| Source | What was verified / use |
|---|---|
| [John Paul II, Fides et Ratio, opening](https://www.vatican.va/content/john-paul-ii/en/encyclicals/documents/hf_jp-ii_enc_14091998_fides-et-ratio.html) | Official Catholic source on faith and reason; does not certify a simplified universal history claim |
| [Catechism, 2475-2487](https://www.vatican.va/archive/ENG0015/__P8K.HTM) | Truth, false witness, rash judgment, reputation; forensic dignity/uncertainty connection |
| [Catechism, 2402-2406](https://www.vatican.va/archive/ENG0015/__P8A.HTM) | Common stewardship, moderation, benefit to others; resource/service decisions |
| [Francis, Laudato Si'](https://www.vatican.va/content/francesco/en/encyclicals/documents/papa-francesco_20150524_enciclica-laudato-si.html) | Official encyclical identity and opening common-home/creation concern; no verbatim unverified numbered excerpts needed |
| [USCCB Catholic Social Teaching themes](https://www.usccb.org/beliefs-and-teachings/what-we-believe/catholic-social-teaching/seven-themes-of-catholic-social-teaching) | Retrieved care-for-creation section supports moral stewardship; national guidance, not local official benchmarks |
| [Leo XIV, September 7, 2025 canonization homily](https://www.vatican.va/content/leo-xiv/en/homilies/2025/documents/20250907-omelia-frassati-acutis.html) | Carlo Acutis/Pier Giorgio Frassati canonization and service; outdated Blessed labels corrected |
| [NASA Earth facts](https://science.nasa.gov/earth/facts/) | About 150 million km / 1 AU Earth-Sun average distance, about eight-minute light time; consistent distance-model arithmetic |
| [NASA solar system overview](https://science.nasa.gov/solar-system/) | Eight planets and Milky Way context; not a source for a universal galaxy star count |
| [MIT App Inventor HelloPurr](https://appinventor.mit.edu/explore/ai2/hellopurr) | Designer/components/properties, Blocks/events, tested connected device/emulator workflow; local reference app is original and simpler |

### Verification still required

- Minnesota current standards/implementation years and exact grade benchmarks:
  attempted [MDE Science](https://education.mn.gov/MDE/dse/stds/sci/) returned a
  browser-verification page, not authoritative benchmark content. Science,
  math, arts, ELA, social studies and integrated CS mappings must be verified
  by the shared standards owner. No NGSS/CSTA/ISTE number is invented here.
- Archdiocesan detailed C-STREAM requirements: attempted OMCE host could not be
  resolved and an Archdiocesan education path returned 404. This does **not**
  prove no standards exist. Obtain school/OMCE guidance from the standards owner;
  local CST codes are explicitly not official.
- NASA planetary fact-sheet page retrieved but its numeric table was not
  available in the simplified extraction. Eight-planet extension values are
  withheld pending checking; Earth-only core uses verified NASA facts.
- Full biographies, attributed saint/Church/history quotations, Scripture
  translation wording, medical/invention priority claims, current Vatican
  astronomer roles, commercial practices, scientific statistics, platform
  age/privacy requirements, device units, inventory and retailer pricing remain
  **VERIFICATION REQUIRED** where not explicitly sourced.
- Retained source-gated material must not be taught until checked. The rebuilds
  instead supply original prayers/reflections, verified paraphrase, fictional
  cases/data, and openly stated model limits.

## Remaining priorities and release conditions

**P0 stop-before-teaching conditions:** protected AA kit specification/condition
and adult inspection; approved accounts/device setup; no use of unverified
historical/medical/quotation material; no public/private-data collection or
unsafe optional substitutions. Use paper/model alternative where stated.
These are operational gates, not evidence of completed school procurement.

**Readiness queue: 54 partially improved baseline P0/P1 lessons**, specifically
**32 baseline P0 + 22 baseline P1**. This is not a new CSV priority assignment.
First rebuild the 14 unfinished REBUILD dispositions:
weekly A Experimental Design, Passion Projects, Advanced Scratch; weekly B
Environmental Monitoring; bi-weekly A Sphero Advanced, App Inventor,
Environmental Science, Life Science, Sphero Challenge, Advanced Invention;
bi-weekly B Scratch Games, App Design, Robot Olympics, Innovation Lab.
Use the CSV for their URLs and remaining reasons.

For the other 40 plans in this queue, supply exact user/fact/source cards, 10/15/20/25
kit quantities, realistic prep/cleanup, a bounded primary path and independent
success criteria. Prioritize optical/structural kits, health/service mockups,
research source verification, and exhibition logistics. Do not certify retained
readiness by mechanically appending headings.

**Piloting/refinement queue: 11 rebuilt references + 4 partially improved
baseline P2 lessons**. The rebuilds retain their original P0/P1 priorities;
they are not downgraded to P2. All need school checks appropriate to their path.
No new lesson files or expensive fleet purchases are first priorities.

## Local validation and limits

The session-local checker validates the builder's exact 19-column header,
every field nonblank, 69 unique paths covering every owned lesson filename,
enums, positive integer meetings, integer 45 minutes per meeting, baseline
status/priority preservation, 2-5 unique inline/audit codes, and 99 planned
meetings/4,455 minutes, all 11 rebuilt formats and **25 contiguous 45-minute
meeting sequences**, all **85 material rows at four class sizes (340 quantity
comparisons)**, existing local links, code fences, and worked
arithmetic/state examples. These checks and scoped whitespace checks passed;
editor diagnostics reported no errors in the review/audit and 11 rebuilds.
State simulations are **paper logic checks**,
not App Inventor/Scratch/BOLT runtime tests or electrical safety certification.
Scoped whitespace and editor diagnostics are checked without editing shared
build/navigation files.

No global site build or approval of concurrent other-grade edits is implied.
The source links, quantities, pacing constraints, remaining priorities, and
audit are persistent in these owned files; future delivery must still confirm
school stock, accommodations, safe equipment, actual student evidence, and
official alignment.
