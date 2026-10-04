---
title: "Grades 1-2 Curriculum Review"
description: "Complete four-track audit, targeted revisions, progression and remaining readiness work"
date: 2026-10-04
---

# Grades 1-2 curriculum review

**Scope:** Grades 1 and 2 only; weekly A/B and biweekly A/B. All **74 lessons and four READMEs were read** before significant content changes. No other grade, shared standards, resources, templates or navigation were edited. No commits.

**[Download the complete 74-row lesson audit CSV](./Grades_1-2_Audit.csv).**

The CSV paths are relative to `docs/`. For example, `Lessons/Grades_1-2_YearA/Week04_Wonder_Walk.md` identifies the corresponding lesson. **`minutes` is the integer native period per meeting: 30 for every row.** Total contact time is `meetings * minutes`. **Both `status` and `priority` preserve the frozen baseline decisions**; `revision` records implementation. Current readiness is separately stated in `rationale` as `READINESS HOLD`, `CONDITIONAL REFERENCE` or `READINESS REVIEW`, not encoded by downgrading baseline severity. The pre-edit CSV and 78 original documents were frozen in session artifacts before rebuilding.

**Confirmed integration contract:** the exact header has **19 columns**, with every field nonblank and no extra column. Follow the [traceability guide](Standards_Traceability.md) and run `.\scripts\Build-CurriculumMaps.ps1` from the repository root. `technology` uses the bare enums `None`, `Optional`, `Recommended`, `Required`; the lesson text explains the primary path and fallback limitations. Native periods and frozen baseline decisions are preserved. Shared map generation is handled during program integration.

## 1. Executive findings and disposition

Strong foundations already existed: recurring hands-on making, service, patterns, observation, school faith identity, oral sharing and a two-year rotation. Several units already used test/improve cycles and some had indoor alternatives. The main failure was not a lack of attractive activities; it was the gap between an activity and **an executable, safe, individually assessed lesson**.

The initial audit recorded **37 P0, 28 P1 and 9 P2** dispositions, and **those exact priorities remain in the CSV**. An earlier current-severity reassignment has been superseded to honor the integration contract. Corrections removed or bounded the detected unsafe/inaccurate directions and withheld uncertain claims behind source gates; this is **not closure of every baseline P0/P1 row or evidence of classroom outcomes**.

Current readiness is **52 HOLD rows** (29 baseline P0 + 23 baseline P1), **13 conditional rebuilt references** (8 baseline P0 + 5 baseline P1), and **9 lower-priority REVIEW rows** (baseline P2). No lesson has unconditional classroom certification. Never reinstate a prohibited original step or teach a source-gated external claim before verification. Materials, actual device access, staffing, accessibility and school-policy preflight remain mandatory; a newly discovered hazard stops the activity.

| Track | Files | Teaching meetings | Total minutes | Fully rebuilt | Targeted improvements | Readiness HOLD / reference-or-review |
|---|---:|---:|---:|---:|---:|---:|
| Weekly A | 20 | 32 | 960 | 5 | 15 | 13 / 7 |
| Weekly B | 20 | 32 | 960 | 4 | 16 | 14 / 6 |
| Biweekly A | 17 | 17 | 510 | 2 | 15 | 12 / 5 |
| Biweekly B | 17 | 17 | 510 | 2 | 15 | 13 / 4 |
| **Total inventory** | **74** | **98** | **2,940** | **13** | **61** | **52 / 22** |

The 98 meetings are inventory across **alternative schedules/rotations**, not a child's annual timetable. CSV scope is 48 CORE, 24 RECOMMENDED and 2 OPTIONAL. CORE means important to the intended sequence, **not ready as written**; baseline priority and the current rationale must both be considered.

| Track | Preserved baseline P0 / P1 / P2 | HOLD rows from baseline P0 / P1 | Conditional references | Lower-priority reviews |
|---|---:|---:|---:|---:|
| Weekly A | 8 / 10 / 2 | 6 / 7 | 5 | 2 |
| Weekly B | 12 / 6 / 2 | 9 / 5 | 4 | 2 |
| Biweekly A | 6 / 8 / 3 | 4 / 8 | 2 | 3 |
| Biweekly B | 11 / 4 / 2 | 10 / 3 | 2 | 2 |
| **Total** | **37 / 28 / 9** | **29 / 23** | **13** | **9** |

**Unchanged-lesson disclosure:** `revision=unchanged` counts **0**, because all 74 files received some edits. However, **61 are surgical-only improvements retaining substantial original content**, not complete rebuilds. Within those 61, 52 remain on HOLD and 9 need lower-priority review. Changed metadata, a source gate or a safety note does not prove that unchanged objectives, worksheets, material lists or legacy timing are classroom-ready. No blanket release is made for the nine P2 files either.

### Implemented P0 corrections

- The biweekly A bridge's purported Scripture/papal quote is removed. Its service connection is explicitly a teacher metaphor.
- Pi is finite (about 3.14); nonterminating decimals do not imply infinite magnitude. Unsafe Sphero marker mounting was removed in favor of direct circle measurement.
- Gravity is effectively unchanged over classroom ramp heights; the test measures **runout distance**, not speed or stronger gravity.
- Camel humps store fat, not water; frogs are amphibians, not reptiles; soil is not plant food or universally required for all growth.
- Snow crystals are not universally perfect six-sided flakes; a small sample cannot prove that no two ever match. Winter now includes an actual ice/water observation.
- Dormancy and metamorphosis are living processes, not biological resurrection. Saul/Paul naming, Magi number/profession/travel, Seton's first-school claim, Keller/Lemaitre overstatements, Dooley title/inventions and Stimson DNA-discovery claims were removed, qualified or withheld.
- Manual Go/Sphero driving is no longer credited as writing stored code. Robot assessment and fallback limitations are explicit; Acutis/Frassati canonization is sourced.
- Real flames, student sharp puncturing, loose/high-powered magnets and filings, latex balloon drums, shared mouth instruments, heavy tower loads, high-shelf/real assistive-device testing, lever launches and unapproved live-butterfly release were removed or explicitly prohibited.
- Unverified Scripture quotations and attributed Aquinas/Teresa sayings were removed; faith/history sections needing authoritative review are labeled **VERIFICATION REQUIRED**. Original teacher prayers are not represented as historical quotations.

## 2. Pacing: 34/17 claims versus actual contact

Both weekly folders have calendar labels 1-34 but **no lesson for 17 or 32** (break slots). Expanding inclusive filename ranges yields **32 actual meetings**, not 34 files or 34 taught classes. Each weekly sequence supplies 960 minutes: 13 fall meetings, 9 winter meetings at labels 14-23 excluding 17, and 10 spring meetings at labels 24-34 excluding 32.

Both biweekly folders contain exactly Sessions 01-17: **17 actual meetings/510 minutes**. They have 53% of weekly contact time, not 100% of weekly mastery in fewer files. The same foundational vocabulary can be introduced, but repeated device turns, data collection and redesign cannot honestly be assumed equivalent.

If a school promises **34 teaching meetings**, locally schedule two additional evidence/reteach opportunities, such as:
1. Individual sequence/debug recheck with no-device algorithm evidence recorded separately.
2. Measurement/observation recheck with the same units and a before/after explanation.

These are **proposed timetable uses, not existing lesson files or extra counted inventory**. The optional fall celebration could also become a portfolio evidence checkpoint, preserving the 32-contact count. Match Advent, Lent, Easter and Catholic Schools Week to the real calendar; numbered weeks are not verified liturgical dates. Winter lessons need indoor defaults, regardless of when holidays fall.

## 3. Grade 1 review: entry, learning and limits

**Entry:** no independent reading, Year A completion, personal tablet or prior robot experience required. Begin with safe handling, two-step oral/picture directions, noticing two visible features, equal-unit comparison and taking an actual partner turn.

**Strengths:** manipulatives, paper models, short spoken explanations and repeated building/service contexts suit emerging readers. The rebuilt nature/senses/bridge/growth lessons now assess learning through pointing, drawing or demonstration rather than sentence production.

**Expected Grade 1 evidence after taught units:**
- Observe two details and ask one oral question; distinguish a clearly living plant, fallen leaf and never-living stone with a reason.
- Count or compare equal units with aligned starts; show longer/shorter/same and one repeating AB unit.
- Identify a simple user need, show a low safe model test, and point to a change made after testing.
- Order two or three action cards, predict output and repair an obvious sequence mismatch. Actual robot start/stop is assessed **only** after an individual device turn.
- Communicate meaning through an observational sketch or intentional pattern/message; not merely fill in a coloring outline.
- Show an inclusive turn, resource-care action or honest evidence choice; prayer recital alone is not the C outcome.

**Unresolved Grade 1 work:** legacy lessons still ask for independent biography research, multiple goals, typed speech bubbles or labels without full teacher-read picture scaffolds. Surgical nonreader notes reduce barriers, but most still lack complete oral directions, pictured materials and roster pacing. Five simultaneous sensory stations or four three-minute celebration stations are not automatically suitable for a substitute.

**Signature experience:** the **Neighborhood Access Bridge**, using [biweekly A Bridge Building](../Lessons/Bi-Weekly/Grades_1-2_YearA/Session03_Bridge_Building.md): fixed gap, equal safe loads, a folded redesign and a child explaining who crossing helps. Weekly A can use [Strong Bridges](../Lessons/Grades_1-2_YearA/Week10_Strong_Bridges.md) as a measured extension after its remaining kit/assessment work. It is a tabletop model, never a bridge pupils stand on. Success is an explained comparison, not the strongest bridge or best handwriting.

## 4. Grade 2 review: progression, learning and limits

**Entry:** recheck Grade 1 foundations; do not infer mastery from last year's attendance or hardware familiarity. A new Grade 2 child may need oral/picture support too.

**Expected Grade 2 extension:**
- Separate observation, prediction, cause claim and religious/historical account; name evidence still needed.
- Measure repeatedly from the same reference with the same units; compare two or more records and explain a discrepancy.
- Explain a design criterion/constraint, change one feature after a test, and communicate a result or tradeoff.
- Assemble a short stored sequence, predict output, change one block/parameter and explain the rerun. Finite loops are extension opportunities, **not universal annual mastery**; conditions are a documented gap.
- Create ABB/AAB patterns, justify the unit, compare data displays and use grade-appropriate sums (within 20 where secure), not an unscaffolded race to 50.
- Explain purposeful visual choices and one revision after audience feedback, without equating artistic skill or physical ability with dignity.

**Strengths:** the ramp/growth comparisons and multi-meeting design arcs can develop genuine reasoning. [Ramp Races](../Lessons/Grades_1-2_YearB/Week10_Ramp_Races.md) now distinguishes measured distance from inferred speed; [Growing Things](../Lessons/Grades_1-2_YearA/Week29-31_Growing_Things.md) distinguishes dated observations from untested causes.

**Unresolved Grade 2 work:** the original combined-band lessons often change neither criterion nor evidence for Grade 2. New robots are a different context, not a higher cognitive level. General "explain" checklists lack thresholds; data graphs, arithmetic, repeated fair tests, technology citizenship and tradeoff reasoning need more consistent assessment. Biweekly B has particularly weak explicit mathematics.

**Signature experience:** the **Service Invention Fair**, using [Invention Labs](../Lessons/Grades_1-2_YearB/Week19-22_Invention_Labs.md), now bounded to safe tabletop needs/tests. A Grade 2 child should show a user-requested plan, two outcomes and one defended revision. Its **baseline priority remains P0 and current readiness is HOLD**; the remaining work is high-priority usability/assessment closure, not a fully rebuilt substitute unit. Its stronger existing four-meeting arc should be the next full rebuild rather than a new unrelated project.

## 5. A/B prerequisites and outcomes

The rotation is a **context alternation**, not Year A = Grade 1 and Year B = Grade 2, and not mandatory A-before-B. Both must admit a new Grade 1 pupil. Assess progression by grade-level evidence within either rotation.

| Track | Reintroduced prerequisites | Intended outcomes / next dependency | Limits |
|---|---|---|---|
| Weekly A | Safe tools; picture order; counting; direct observation | Sphero prediction/debug -> later Dash transfer; structures -> measured bridge; school-grown plant records -> comparison and honest uncertainty | Dash is not automatically more advanced; loops not secured for every child; source-gated biographies withheld |
| Weekly B | Same entry foundations, with no assumed Year A experience | Dash stored sequence; stable structures/habitat needs; repeated ramp measurements; invention criterion/test/revision; plant/butterfly model reasoning | Invention/habitat units retain baseline P0 and readiness HOLD; model art is not engineering simply because of title |
| Biweekly A | Two picture steps; one safe test; oral noticing | Session 03 bridge comparison; Session 04 first stored Dash sequence; Session 08 ScratchJr; Session 15 **rechecks** stored code/debug; weather/sound observations | Two separated robot contacts do not establish expertise; single weather sample is not forecasting mastery |
| Biweekly B | Same entry plus direct natural/human-made distinction | Session 03 first stored Sphero code -> Session 14 recheck; Session 05 constrained garden layout/care; adaptations/magnets/life-cycle representations; purposeful art revision | One planting session cannot demonstrate growth; two assessed math-bearing files do not establish annual arithmetic/data coverage |

For multimeeting files the native period remains 30 minutes **including cleanup**. The 13 rebuilds provide contiguous timed steps per meeting. The other files often preserve older prose timings plus new targeted overrides; teachers must reconcile them before claiming substitute readiness. Ongoing adult plant checks are workload, not silently added instructional meetings.

## 6. Meaningful C/S/T/E/A/M balance

### Explicit counting rule
1. Count a **lesson file once per domain** only where reading its actual task and assessment reveals an observable student action or artifact. Ignore tags, title, acronym definitions and equipment merely present.
2. Do not multiply a multimeeting file by every listed domain; this table is **file-level opportunity incidence**, not minute allocation, percentage of students mastered or number of assessments.
3. C requires a reason/action tied to honest evidence, dignity/service or stewardship beyond an opening prayer or generic gratitude. S requires observation/model/investigation evidence. T requires tool/input-output/algorithm evidence, not screen time alone. E requires a user/problem/criterion decision or test/revision, not every craft. A requires observation-based representation, purposeful form/pattern or communication choice/revision, not decoration. M requires an actual count/comparison/measure/pattern/data/reasoning task, not "math" in a heading.
4. The CSV's 2-5 **local codes** were mapped from those tasks, not copied from tags. Alternative routes are opportunities, not simultaneous achievements; a paper route does not receive device-operation credit. Where a source-gated biography is unavailable, use the explicitly supplied observation route and record that route.
5. Do not claim a C code for generic memory/gratitude outcomes in weekly A Weeks 01, 11, 13, 34; weekly B Weeks 11, 13, 34; and both biweekly Session 17 files. These nine exclusions are reflected in the CSV itself, preventing vague faith/celebration claims from inflating alignment. Replay input/output or saved-design communication is assessed instead where specified. Other counted C opportunities name an evidence distinction, user/recipient decision or practical stewardship/inclusion action.

| Revised assessed opportunity incidence | C | S | T | E | A | M | Files |
|---|---:|---:|---:|---:|---:|---:|---:|
| Weekly A | 12 | 6 | 4 | 8 | 11 | 8 | 20 |
| Weekly B | 12 | 10 | 3 | 8 | 12 | 9 | 20 |
| Biweekly A | 9 | 5 | 4 | 6 | 11 | 5 | 17 |
| Biweekly B | 11 | 7 | 5 | 6 | 12 | 2 | 17 |
| **Total** | **44** | **28** | **16** | **28** | **46** | **24** | **74** |

CSV C incidence is 44 after excluding the nine generic intro/gratitude claims. Domains overlap, so totals must **not** sum to 74 or be interpreted as scheduling percentages.

**Evidence examples:** paper-bridge load counts are E/M, not robot T despite the original robotics tag; plant dated measures are S/M/C, not automatically a variable-controlled experiment; the digital-art critique/revision is A with T only on the app path; the four focused workshops are E/A/M/C, **not "all areas"**; a butterfly model is S/A, not tested E; cards have purposeful A/C only unless a function criterion is tested.

**Judgment:** art/communication is frequent, but legacy assessment depth varies. Weekly A science is thinner than weekly B; biweekly B mathematics is notably underrepresented (2/17 files with explicit mapped math evidence). Tool/coding work is concentrated in a few device contacts, not absent simply because the count is low. A balanced year needs depth and transfer, not equal letter counts or more tags.

## 7. Duplicates, gaps and scope choices

### Repetition to retain with a different criterion
- Weekly A [KEVA Engineering](../Lessons/Grades_1-2_YearA/Week05-06_KEVA_Engineering.md) then [Strong Bridges](../Lessons/Grades_1-2_YearA/Week10_Strong_Bridges.md): keep as first build then one-variable load comparison; don't reteach bridge names twice without new evidence.
- Weekly A [Engineering for Others](../Lessons/Grades_1-2_YearA/Week07-09_Engineering_for_Others.md) and [Helping Hands](../Lessons/Grades_1-2_YearA/Week26-27_Helping_Hands_Design.md): differentiate first user's request from later defended criteria/tradeoff. Both now prohibit real assistive/medical use.
- Both weekly gratitude-coding lessons have near-identical speech/message goals; Year B should add an independently justified sequence/revision, not just another background.
- Gift/service/card units recur across Thanksgiving, Lent and community helping. Retain authentic recipient choice; stop labeling every card engineered. Prefer one functional organizer/holder and one purposeful art message.
- Multiple celebrations overlap. The two fall celebrations are OPTIONAL; year-end events should use saved **before/after** evidence rather than new free play and automatic mastery awards.
- Weekly A starts Sphero then introduces Dash; weekly B starts Dash; biweekly A uses Dash and biweekly B Sphero. Device contrast is a context, not proof of grade progression.

### Remaining gaps / priorities
**High-priority readiness closure before broad implementation (52 HOLD rows, not 52 baseline-P1 rows):**
1. Complete scaled supply quantities, role turns, teacher preparation and reconciled 30-minute cleanup timing in the 61 surgical-only files. The 52 HOLD rows retain **29 baseline P0 and 23 baseline P1** priorities and often combine several issues.
2. Rebuild [Invention Labs](../Lessons/Grades_1-2_YearB/Week19-22_Invention_Labs.md), [Animal Habitats](../Lessons/Grades_1-2_YearB/Week07-09_Animal_Habitats.md), [Sound Engineering](../Lessons/Bi-Weekly/Grades_1-2_YearA/Session14_Sound_Engineering.md), late robot challenges and gratitude code next; preserve their useful contexts.
3. Add explicit individual arithmetic/data and equal-unit opportunities to **biweekly B**, rather than claim its two mapped files cover the same math as weekly B. Keep within existing meetings by replacing part of decoration with a measured comparison; this integration is **not yet implemented**.
4. Conditions, consistent finite-loop evidence, technology citizenship/privacy decisions, and measured tradeoffs are weak or absent. An optional repeat demonstration is not a mastered condition/loop outcome.
5. Weather has one-point descriptions but little repeated Earth-system data or water-cycle work. Electricity/circuits are not meaningfully taught in these band folders despite weekly A's original README circuit-kit claim; do not buy kits or report coverage on that basis.
6. Supply a vetted age-appropriate biography/Scripture packet and approved app/model preflight cards. Withhold uncertain history until verified; school-approved source alternatives are provided, not invented standards.
7. Keep a per-child evidence roster across the year; a project photo/passport is group participation unless an individual action/reason is captured.

**Conditional references and lower-priority review (22 rows, not 22 baseline-P2 rows):** the 13 rebuilds retain **8 baseline P0 and 5 baseline P1** priorities and need classroom/hardware/material pilots; the **9 baseline P2** files need streamlined reflection, purposeful critique and follow-through. Their scores are documentation judgments, not tested learning gains. Baseline counts remain 37 P0 / 28 P1 / 9 P2.

**P0/P1 hold rule:** a source gate is a prohibition on teaching the unverified claim, not proof it has been researched. A safe alternative can permit the explicitly bounded activity after local preparation; it does not close every unchanged part of the original lesson. Every CSV rationale retains **VERIFICATION REQUIRED** for remaining external claims. Verified sources in the source register do not imply official benchmark alignment, approved app privacy or school-specific safety clearance.

No lesson was removed/replaced merely for preference; no files disappeared. Some primary activities changed substantially (paper circles replacing robot art; focused workshops replacing rushed rotations). These intentional shifts preserve the intended mathematics/design outcomes and avoid unsupported device/science claims.

## 8. Local standards traceability, not official alignment

The CSV applies the fixed **local program contract**, never an official Minnesota, Archdiocesan or CSTA designation:

| Domain | Local contract | Concrete trace example |
|---|---|---|
| C | CST-C1 faith/reason/honest evidence; C2 dignity/service/inclusive ethics; C3 stewardship/resources/work | [Growing Things](../Lessons/Grades_1-2_YearA/Week29-31_Growing_Things.md): C3 care decision; [Ramp Races](../Lessons/Grades_1-2_YearB/Week10_Ramp_Races.md): C1 data versus guess |
| S | CST-S1 observation/questions/evidence; S2 investigations/testing/variables; S3 physical/life/Earth systems/models | [Ramp Races](../Lessons/Grades_1-2_YearB/Week10_Ramp_Races.md): one changed condition/same car; [Wonder Walk](../Lessons/Grades_1-2_YearA/Week04_Wonder_Walk.md): two details/question/category reason |
| T | CST-T1 tools/input-output/troubleshoot; T2 algorithms/loops/conditions/debug; T3 data/citizenship/technology impacts | [Robot Friends](../Lessons/Bi-Weekly/Grades_1-2_YearA/Session04_Robot_Friends.md): individual stored Run/Stop and changed output; T3 remains a gap |
| E | CST-E1 problems/criteria/constraints; E2 build/test/redesign; E3 tradeoffs/communicate | [Bridge Building](../Lessons/Bi-Weekly/Grades_1-2_YearA/Session03_Bridge_Building.md): fixed span/equal loads/two tests; [Invention Labs](../Lessons/Grades_1-2_YearB/Week19-22_Invention_Labs.md): defended revision |
| A | CST-A1 observational sketches/models; A2 purposeful pattern/form/design; A3 artistic communication/critique/revise | [Winter Wonders](../Lessons/Grades_1-2_YearB/Week16_Winter_Wonders.md): two matching features; [Digital Art](../Lessons/Bi-Weekly/Grades_1-2_YearB/Session08_Digital_Art.md): message/feedback/revision |
| M | CST-M1 counting/comparing/measuring; M2 represent data/patterns; M3 grade-appropriate quantities/operations/reasoning | [Pi Day Circles](../Lessons/Grades_1-2_YearA/Week28_Pi_Day_Circles.md): equal-unit boundary comparison/repeating unit; [Math Games](../Lessons/Grades_1-2_YearB/Week28_Math_Games.md): acted sums within 10/20 |

Every row claims **2-5 practiced codes** with an evidence description; a code may be introduced/developing rather than mastered in all its subskills. For example, T2 sequence practice does not establish mastery of loops and conditions. Official benchmark mapping for the actual school year remains **VERIFICATION REQUIRED** and is outside this owned-band task; other agents handle shared standards. No benchmark number or Archdiocesan mandate was invented.

## 9. Rebuilt files and quality scores

The rebuilt standard includes at-glance fields, before-class steps, per-student/team/class/teacher supplies and 10/15/20/25 scaling, vocabulary/background/misconception/if-asked, numbered native 30-minute meetings, questions, individual measurable evidence, troubleshooting, visible safety, support/challenge, indoor/no-device alternatives, cleanup and optional equitable family communication. The following 13 are **document-complete conditional ready references**, not classroom-tested releases. Use their before-class checks and retain all source/technology/safety gates.

**Complete rebuild list:**
- Weekly A: [Sphero Coding](../Lessons/Grades_1-2_YearA/Week02-03_Sphero_Coding.md), [Wonder Walk](../Lessons/Grades_1-2_YearA/Week04_Wonder_Walk.md), [Exploration Stations](../Lessons/Grades_1-2_YearA/Week19-22_Exploration_Stations.md), [Pi Day Circles](../Lessons/Grades_1-2_YearA/Week28_Pi_Day_Circles.md), [Growing Things](../Lessons/Grades_1-2_YearA/Week29-31_Growing_Things.md).
- Weekly B: [Dash Adventures](../Lessons/Grades_1-2_YearB/Week02-03_Dash_Adventures.md), [Senses and Discovery](../Lessons/Grades_1-2_YearB/Week04_Senses_Discovery.md), [Ramp Races](../Lessons/Grades_1-2_YearB/Week10_Ramp_Races.md), [Winter Wonders](../Lessons/Grades_1-2_YearB/Week16_Winter_Wonders.md).
- Biweekly A: [Bridge Building](../Lessons/Bi-Weekly/Grades_1-2_YearA/Session03_Bridge_Building.md), [Robot Friends](../Lessons/Bi-Weekly/Grades_1-2_YearA/Session04_Robot_Friends.md).
- Biweekly B: [Meet Sphero](../Lessons/Bi-Weekly/Grades_1-2_YearB/Session03_Sphero_Intro.md), [Garden Engineers](../Lessons/Bi-Weekly/Grades_1-2_YearB/Session05_Garden_Engineers.md).

### Scoring rule and examples
Ten dimensions, each **0 absent/unsafe/inaccurate; 1 named but weak; 2 usable with a specified gap; 3 explicit and coherent on a desk walkthrough**: academic task, age/access, Catholic accuracy/meaning, local traceability, substitute directions, timing, materials/cost/prep, safety, individual assessment, progression. Maximum 30. A 3 is **not classroom validation**.

Vectors follow that dimension order; scoring is reviewer judgment using the read originals and revised documents, not a statistical measure.

| Example | Baseline vector / total | Current vector / total | Evidence / reason for less than 30 |
|---|---|---|---|
| Biweekly A bridge | 2/1/0/0/1/1/1/0/1/1 = **8** | 3/3/3/3/3/3/3/3/3/2 = **29** | Quote/unsafe loads gone; fixed span/two outcomes/individual reason. Annual progression and actual load pilot remain. |
| Weekly A Sphero | 2/1/1/0/1/2/1/1/1/1 = **11** | 3/3/3/3/2/3/2/3/3/2 = **27** | Stored versus manual clear; personal evidence. Model/app preflight and scarce-kit feasibility remain local constraints. |
| Weekly B ramps | 0/1/1/0/1/2/2/1/1/1 = **10** | 3/3/3/3/3/3/3/3/3/2 = **29** | Correct distance/fair-test physics; six team trials. Real surface/car variability requires pilot. |
| Biweekly B garden | 2/1/1/0/1/2/1/1/1/1 = **11** | 3/3/3/3/2/3/2/3/3/2 = **27** | Layout constraints/revision and adult care explicit; ongoing space/care workload not erased. |
| Weekly A growing | 1/1/1/0/1/2/1/1/1/1 = **10** | 3/3/3/3/2/3/2/3/3/2 = **27** | Dated evidence/no-growth truth preserved; actual seed viability and weekend care still preflight. |
| Weekly B invention (surgical only) | 2/1/0/0/1/2/1/1/1/1 = **10** | 2/2/2/1/1/2/1/3/2/2 = **18** | Safer criterion/history removal help; baseline P0 is preserved and full supply/timing/roster/grade work remains on HOLD. |

## 10. Materials, costs and technology

Prices below are **planning estimates, not live vendor quotes**, excluding tax/shipping. Verify school stock/loan terms first. No family donation, home equipment or purchase is a prerequisite. Reuse clean cardboard and school craft materials; no need for 74 separate kits.

| Starter item / purpose | Quantity for 10 / 15 / 20 / 25 pupils | Estimated unit cost / 25-pupil total | Reuse/storage/safety |
|---|---|---|---|
| Paper/cardstock for records/models/messages | 1 shared 500-sheet pack / all sizes | $6-12 / $6-12 | Consumable; dry shelf; at least all 13 rebuilds |
| Crayons/pencils | 10 / 15 / 20 / 25 sets | $0.75-1.50 / $19-38 | Reusable; class tray; nonreader evidence |
| Blunt scissors / adult precuts | 5 / 8 / 10 / 13 pairs | $1.50-3 / $20-39 | Reusable; teacher checks; precuts preserve access |
| Rulers / equal-unit strips | 4 / 5 / 7 / 9 | $1-2 / $9-18; paper strips near $0 | Reusable; measurement kit; same units |
| Tape | 2 shared rolls / all sizes | $3-5 / $6-10 | Consumable; no floor exit obstructions |
| Clean trays/catch boxes | 4 / 5 / 7 / 9 | $1-3 / $9-27; reused cardboard near $0 | Reusable; dry motion and separate wet plant kits |
| Broad equal bridge loads | 25 / 40 / 50 / 65 | Existing blocks preferred; $10-25 shared substitute kit estimate | No coins/heavy loads; count before/after; not all planks interchangeable |
| Pots/mix/untreated seeds for team growth | 4 / 5 / 7 / 9 pots plus teacher backups for weekly growth | $12-25 total starter batch | Consumable seeds/mix; trays reusable; no tasting; adult care |
| Low-power flashlights | 4 / 5 / 7 / 9, or teacher demo with fewer | $3-6 / $27-54 | Reusable; check batteries; no eye/sun beams |
| Plastic magnifiers/safety mirrors | 5 / 8 / 10 / 13 shared, or unaided observation | $2-4 / $26-52 if purchasing 13 | High-value optional additions; no glass/sun focusing |
| Large encased magnets | 4 / 5 / 7 / 9 pairs for concurrent work | Quote required; budget $20-50 for supervised shared set, not 9 guaranteed pairs | Controlled kit; no loose high-powered magnets/filings |

**Approximately $150-250** buys a low-tech consumable/tool base depending on existing stock and optional lights; this is not a guaranteed complete purchase price for every specialty lesson. Starter materials support core paper/model outcomes but **not physical robotics mastery**. A $500 classroom can improve durable trays, blocks and safe light/measurement kits after quotes; $1,000 may add/replace a few device kits, not a promised class set. A $2,500 enhanced allocation should be based on actual model/tablet quotes and turn capacity, not spent simply to reach a tier.

**Device planning:** 54 CSV primary paths are None, 5 Optional, 5 Recommended and **10 Required**. Required files contain 13 meetings (390 minutes in alternative-track inventory), not every child's yearly screen time. Robots/apps are justified when stored instructions execute on hardware or a digital character; photos, presentations and art often are not device-essential.

Teams of up to three require **4/5/7/9 kits** for 10/15/20/25 simultaneous pupils. Budget roughly **$200-400 per robot only as an unverified planning range**: nine robots could be $1,800-3,600 before tablets/chargers. Confirm quotations/model compatibility; borrowing three kits and rotating can reduce expense. One kit in a 25-pupil 30-minute class is **not enough to certify all individual robot skills**; record missing turns and schedule another opportunity.

Reusable labeled band kits: **Paper Bridges** (13 support pairs/65 broad loads for 25); **Observation** (five screened specimen trays/optional 13 magnifiers); **Motion** (nine short ramps/cars/catch boxes); **Growth** (nine pots/trays plus backups and adult log); **Patterns/Measurement** (nine shape/unit sets); **Code Cards** (nine token/arrow sets, plus confirmed device loan). Keep wet growth equipment separate from devices. Do not purchase circuit kits based solely on the old README.

Prep remains important: initial robotics is 20-30 minutes **plus manufacturer charge time**; growth requires school-day adult checks; visitors/delivery add scheduling time. Surgical lessons' estimates are not measured workloads or substitute guarantees.

## 11. Unit family communication

Use these snippets with the actual taught route, not unearned mastery language. **No routine homework.** Every extension is optional, short, no-cost and device-independent.

| Unit | Copyable family snippet |
|---|---|
| Observation / both grades | We noticed two details, sorted with evidence and asked questions. We cared for creation by observing without harming it. Ask: "What did you notice rather than guess?" Optional: discuss a plant or picture indoors. |
| Structures / Grade 1 signature | We tested paper shapes across the same gap, counted safe loads and revised. Our Catholic connection was access and helping neighbors. Ask: "What changed and how did you know it helped?" Optional: notice a bridge in a picture. |
| Coding / either rotation | We predicted ordered instructions and fixed a mismatch. Some classes ran actual stored robot code; classes without devices used tokens and did not claim robot mastery. We shared tools fairly. Ask: "Which instruction did you change?" Optional: two spoken token directions. |
| Motion / Grade 2 reasoning | We released the same car without pushing and compared stopping distances. We practiced honest records, including surprises. Ask: "What stayed the same in your test?" Optional: describe a ramp in a picture. |
| Growth / weekly or biweekly | We planted or modeled seeds and planned responsible school care. Dated observations show change; they do not prove why every plant differs. Ask: "What is an observation and what is still a prediction?" Optional: notice a familiar plant/picture; no home watering requirement. |
| Winter/light | We observed ice or light and used models to explain a selected pattern. We distinguished evidence from religious imagery while wondering at creation. Ask: "What did your model leave out?" Optional: find a matching pattern indoors. |
| Service / Grade 2 signature | We listened to a user's need, tested a safe classroom model and explained a revision. We respected recipients' choices and used gifts to serve. Ask: "What did the user ask for?" Optional: offer a kind word; no donation/purchase. |
| Art/reflection | We chose a message or pattern, listened to feedback and explained a change. Every child can contribute; artwork and certificates do not automatically prove all-domain mastery. Ask: "Why did you choose that detail?" Optional: tell a favorite learning moment. |

## 12. Substitute readiness and seven desk simulations

These are **document-based walkthroughs**, not trials with actual pupils/devices. Conditional desk findings show where to start, not measured classroom outcomes. Within this owned band, the substitute/nonreader cases use Grades 1-2; they do not claim to test the other agents' Grade 3 or Kindergarten lessons. The whole inventory does not pass simply because 13 files have complete documentation.

| Simulation | Walkthrough outcome / explicit limit |
|---|---|
| Substitute arrives 20 minutes before Grade 1 bridge | **Conditional desk reference with stocked kit:** two supports/paper/five broad loads per pair, fixed gap, exact steps and oral exit are available. No obscure biography or papal quotation required. Legacy service/invention lessons retain baseline priorities and readiness HOLD; do not hand them over as equivalent. |
| Grade 1 nonreader | **Conditional desk references:** picture sequence, pointing/oral/drawn evidence, teacher narration and no typed message required. Legacy support notes need fuller pictured directions and rehearsal; no assertion that every remaining worksheet is accessible or that the adaptation has been trialed with pupils. |
| No tablets/robots | Paper bridges, ramps, observation, winter/growth/patterns work. Token code exercises assess algorithms/debug only. **Physical robot/app mastery is not met** in the 10 Required files on fallback. Digital art works on paper for A, not digital T1. |
| Minnesota January at -10 F | Indoor specimen tables, window weather, ice trays and indoor seed/picture routes; no outdoor exposure/germination assumption. School cold/air-quality/access/supervision policy takes precedence. Live butterfly release prohibited without approved plan. |
| Enrollment rises to 25 | Rebuilds specify nine teams or thirteen pairs and exact supply scaling; nine robot kits are not assumed owned. Three supervised kits can serve three four-minute waves of three teams, with short individual actions; **one kit requires additional assessment time**. Table sharing replaces 25 long presentations; exits remain clear. |
| Limited budget | Cardboard/paper/equal-unit tools teach high-value evidence/design; $150-250 estimated base if stock allows. Optional loan/specimen/video alternatives avoid purchases. No promise of real robotics learning without equipment; safe magnets/light kits still need confirmation. |
| Parent asks what child learned | Teacher can point to two dated measures, two load counts, an ordered sequence/change or an intentional visual revision plus dignity/stewardship action. Family snippets and local codes explain progression. A memory/certificate alone cannot answer a mastery question. |

### Exact conditional ready references for the parent simulations

Paths below are relative to `docs/`; links resolve to the owned files. **Ready reference** means complete documentation for local preparation, not verified classroom outcomes.

| Simulation | Exact reference path / link | Unresolved gate |
|---|---|---|
| 1. Substitute | `Lessons/Bi-Weekly/Grades_1-2_YearA/Session03_Bridge_Building.md` - [Bridge Building](../Lessons/Bi-Weekly/Grades_1-2_YearA/Session03_Bridge_Building.md) | Preflight actual paper/span/loads and stock kit; do not teach unverified biography details. |
| 2. Nonreader | `Lessons/Grades_1-2_YearB/Week04_Senses_Discovery.md` - [Senses and Discovery](../Lessons/Grades_1-2_YearB/Week04_Senses_Discovery.md) | Confirm sensory/access choices and sealed equipment; oral/drawn response is designed, not empirically validated. |
| 3. No devices | `Lessons/Bi-Weekly/Grades_1-2_YearA/Session04_Robot_Friends.md` - [Robot Friends](../Lessons/Bi-Weekly/Grades_1-2_YearA/Session04_Robot_Friends.md) | Token route assesses algorithms only; actual robot programming/operation remains unassessed without hardware. |
| 4. Minnesota winter | `Lessons/Grades_1-2_YearB/Week16_Winter_Wonders.md` - [Winter Wonders](../Lessons/Grades_1-2_YearB/Week16_Winter_Wonders.md) | Stage ice/backup sample indoors; detailed crystal claims remain VERIFICATION REQUIRED. |
| 5. Twenty-five pupils | `Lessons/Grades_1-2_YearA/Week19-22_Exploration_Stations.md` - [Exploration Stations](../Lessons/Grades_1-2_YearA/Week19-22_Exploration_Stations.md) | Nine table kits/roster pacing require a local pilot; the robot reference separately discloses scarce-kit limits. |
| 6. Budget | `Lessons/Grades_1-2_YearA/Week28_Pi_Day_Circles.md` - [Pi Day Circles](../Lessons/Grades_1-2_YearA/Week28_Pi_Day_Circles.md) | Confirm lid/yarn/equal-unit fit; prices are estimates, not quotes; no device needed for this outcome. |
| 7. Parent learning question | `Lessons/Grades_1-2_YearA/Week29-31_Growing_Things.md` - [Growing Things](../Lessons/Grades_1-2_YearA/Week29-31_Growing_Things.md) | Adult school-day/break care and two actual dated observations needed; teacher/picture data must be labeled. |

## 13. Sources and uncertainty register

Verified readable sources during this review:
- [Catechism 153-160, including 159](https://www.vatican.va/archive/ENG0015/__PX.HTM): faith/science and human freedom. Classroom honesty links are applications, not official lesson standards.
- [Catechism 2407 and 2415-2418](https://www.vatican.va/archive/ENG0015/__P8B.HTM): dignity, solidarity, resources, creation and animal care.
- [Catechism 2637-2638](https://www.vatican.va/archive/ENG0015/__P99.HTM): thanksgiving; an exhaustive four-form prayer claim was removed.
- [Vatican September 7, 2025 canonization](https://press.vatican.va/content/salastampa/en/bollettino/pubblico/2025/09/07/250907a.html): Carlo Acutis and Pier Giorgio Frassati proclaimed saints.
- [Wonder Workshop Blockly](https://www.makewonder.com/apps/blockly/) and [app overview](https://www.makewonder.com/apps/): stored block programming versus manual-control context. Installed versions/model compatibility still need preflight.
- [CPSC magnet safety](https://www.cpsc.gov/Safety-Education/Safety-Education-Centers/Magnets): ingestion risk and immediate medical attention.
- [Pi definition and approximate value](https://www.mathsisfun.com/numbers/pi.html): circumference/diameter and about 3.14, not infinite magnitude.

**Unresolved / do not imply verified:**
- USCCB Matthew page retrieval returned 403; translation/verse numbering is checked against the school's approved Bible. References are retained but unverified quotations are not reproduced.
- Some current Vatican catechism pages returned title-only content and attempted legacy CSS links failed; the readable IntraText links above were used instead. No failed link is offered as verified evidence.
- NOAA snow-page retrieval was blocked; detailed crystal physics, selected species/germination dates and historical scientist/saint anecdotes remain **VERIFICATION REQUIRED** where marked.
- Sphero exact block labels/features vary by robot/app; [official education entry](https://edu.sphero.com/) is a teacher preflight reference, **not evidence that this school has working devices**.
- No live purchase/loan quote, Minnesota adoption year/official benchmark, Archdiocesan C-STREAM mandate, app privacy certification or kit availability was independently established in this band-only task.

**Stop point:** full owned-band audit, targeted fixes, corrected READMEs and local checks. Shared synthesis, standards, resources, templates, navigation and map generation belong to the parent/other agents. **37 P0 / 28 P1 / 9 P2 baseline decisions remain preserved; 52 readiness HOLD rows remain visible.** Neither the 13 conditional references nor the nine lower-priority reviews are asserted to have achieved classroom outcomes.

## 14. Local validation record

- Exact confirmed **19-column** CSV header with all fields nonblank, 74 unique lesson rows, four-track inventory coverage, exact enums and 2-5 **unique** local contract codes per row: **passed locally**. The parent confirmed that the earlier count of 20 was a typo; no extra field was added.
- Every `meetings` value is a positive integer; every `minutes` value is the native **per-meeting integer 30**; total time is computed by multiplication. Every `status` and `priority` matches the frozen baseline: **passed locally**, not inferred from revision.
- CSV code sets match the claimed code sets in all 13 rebuilds; each rebuilt file's numbered timing is contiguous and ends at 30 minutes for every stated meeting: **passed**.
- Native file/meeting counts, preserved baseline priorities, separate readiness counts and domain-incidence table are recomputed; 10 Required files expand to **13 meetings**, not 14.
- **187 local Markdown links** resolve, including the seven exact simulation references; retained external URLs match the frozen originals: **passed locally**. This is not an assertion that every external claim or school device was operational.
- Revision/source comparison confirms **0 wholly unchanged lessons**, **61 surgical improvements** and **13 rebuilds**. Rationale markers total **52 HOLD (29 baseline P0 + 23 baseline P1), 13 CONDITIONAL REFERENCE and 9 REVIEW**: **passed locally**. All 74 rationales retain the external-claim VERIFICATION REQUIRED gate.
- Scoped `git diff --check` found initial Markdown hard-break trailing spaces in four rebuilt navigation lines and one README line; these were corrected and the final scoped check **passed**.
- VS Code reported no diagnostics in the explicitly checked rebuilds, review, CSV, READMEs and subsequently adjusted lesson files.
- The 25-pupil wonder-walk roster timing was corrected to gather five early checks plus up to twenty exit checks; circle lid/yarn/unit-chain sizing was bounded to avoid an insufficient-material simulation.

These are persistent document/structure checks, not classroom trials, physical robot execution, live plant results or closure of unresolved baseline P0/P1 rows. The shared map builder and broad synthesis were left to the parent; no shared outputs were generated.
