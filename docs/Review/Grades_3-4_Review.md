# Grades 3-4 C-STREAM review

**Review date:** October 4, 2026. **Original band-review scope:** the four Grades 3-4 lesson directories, their READMEs, this review and [the lesson audit](Grades_3-4_Audit.csv). The subsequent bounded OLP Snap Circuits integration updates three lessons in this band, one Grades 5-6 lesson and directly related shared records; it does not certify other lessons, school equipment or official standards. No commits.

## 1. Evidence, baseline and limits

All **71 lessons and 4 READMEs** were read in full, after reading the bounded requirements in the review request. Before significant lesson edits, all 75 original files were copied into this session's persistent baseline folder and a **71-row baseline CSV** was created, checked and separately frozen there. The published CSV retains each original **status and priority**; `revision`, rationale, evidence, supplies and technology describe the subsequent work. A baseline P0 row therefore does **not** mean its original blocker is still active.

Baseline judgments: **59 KEEP + IMPROVE, 12 REBUILD**, no KEEP/REPLACE/REMOVE. Priorities: **34 P0, 21 P1, 16 P2**, no P3. Existing objectives and activities usually have value, but no lesson met every requested usability/evidence condition as originally written. The 12 REBUILD judgments include Choice Labs and bi-weekly Scratch Games, which received containment/targeted fixes, **not** full rebuilds.

### Integration contract

The [standards traceability guide](Standards_Traceability.md) documents combined-map generation and validation; the repository-root PowerShell command is `.\scripts\Build-CurriculumMaps.ps1 -ValidateOnly` (parent integration only, not executed by this band review). Its contract declares **19 named CSV fields**, matching the exact published header and the clarified integration contract. No extra column was added. Every declared field is nonblank. `meetings` is a positive integer; **`minutes` is the integer native period per meeting: 40 on every Grades 3-4 row**. Compute represented contact time as `meetings * minutes`, not by summing `minutes` alone. The 15 multi-meeting rows were reconciled from their former total-minute representation; the frozen historical baseline is unchanged. Status/priority remain baseline judgments; `revision` tracks lesson-text changes, not CSV schema reconciliation.

Original result: 10 rebuilt, 49 improved and 12 byte-unchanged lessons. After the bounded Snap Circuits follow-up, the current audit records **11 rebuilt, 48 improved, 12 byte-unchanged lessons**, plus four corrected READMEs. Rebuilds represent **19 complete 40-minute meeting sequences** across four alternative tracks. The unchanged files retain useful work but are **not substitute-certified**. The audit explicitly records their missing quantities, thresholds or pacing. Prep/cleanup values are estimates, not measured times; first kit inspection, missing manufacturer instructions/approval, software installation, loan acquisition and charging are additional advance work.

The document check detected no additional unmitigated P0 instruction in the permitted pathways after corrections/exclusions; **this is not formal closure of the 34 baseline P0 rows**. There are **27 remaining P1 lesson packages** listed below, including continuing preparation/evidence needs in some baseline P0 rows. Counts overlap and must not be added as separate sets of lessons. Unverified historical/standards claims remain **VERIFICATION REQUIRED** and withheld from fact-card use; incompatible or unverified equipment triggers the named model/fallback, with missing operation evidence recorded. No safety certification, field validation or classroom outcome is claimed.

### Explicit unchanged-lesson and operational holds

The following **12 lesson files are byte-unchanged**, all originally KEEP + IMPROVE/P2. Their audit entries are not approvals:

| Track / exact lesson reference | Remaining hold |
|---|---|
| Weekly A [Welcome](../Lessons/Grades_3-4_YearA/Week01_Welcome_to_CSTREAM.md) | Exit measures excitement; source cards and individual competency check missing |
| Weekly A [Giving Through Making](../Lessons/Grades_3-4_YearA/Week12_Giving_Through_Making.md) | Five gift options without scalable kits or a specific function test |
| Weekly A [Fall Celebration](../Lessons/Grades_3-4_YearA/Week13_Fall_Celebration.md) | Four unspecified stations; device/transition/cleanup plan not complete |
| Weekly A [SMART Goals](../Lessons/Grades_3-4_YearA/Week18_SMART_Goals.md) | Tracking plan without scheduled in-class follow-up evidence |
| Weekly A [Expo](../Lessons/Grades_3-4_YearA/Week34_STREAM_Expo.md) | Twenty-five two-minute serial presentations cannot fit; certificate is not mastery evidence |
| Weekly B [Welcome Scientists](../Lessons/Grades_3-4_YearB/Week01_Welcome_Scientists.md) | Novice prerequisite check and individual assessment threshold missing |
| Weekly B [Architectural Marvels](../Lessons/Grades_3-4_YearB/Week07-09_Architectural_Marvels.md) | Vague stability test, subjective beauty criterion, scalable kit/cleanup still needed |
| Weekly B [New Year Goals](../Lessons/Grades_3-4_YearB/Week18_New_Year_Goals.md) | Four goals overfilled; five-project target and follow-through need revision |
| Bi-Weekly A [Engineering Design](../Lessons/Bi-Weekly/Grades_3-4_YearA/Session01_Engineering_Design.md) | Cleanup and individual test/revision threshold missing |
| Bi-Weekly A [Lenten Engineering](../Lessons/Bi-Weekly/Grades_3-4_YearA/Session11_Lenten_Engineering.md) | Plan/prototype is not completed service or evidence of effectiveness |
| Bi-Weekly A [Easter Tech](../Lessons/Bi-Weekly/Grades_3-4_YearA/Session13_Easter_Tech.md) | Digital workflow/privacy and individual evidence not fully specified |
| Bi-Weekly B [Thanksgiving Design](../Lessons/Bi-Weekly/Grades_3-4_YearB/Session06_Thanksgiving_Design.md) | Functional criteria, exact supplies and repeated user test missing |

There are **7 None-labeled rebuilt references**: four ordinary low-tech lessons (Bridge, Flight, Weather and Plants) and three circuit lessons with a Snap primary route and separate protected-AA alternative. "None" means **no digital/programmable device**, not no electrical materials. There are **4 Required-primary rebuilds** (Sphero, Game Design, Dash and Ozobot). Those four plus the three circuits retain **7 operational holds** until actual equipment/software/model/chart or electrical kit preflight is verified. Paper/model directions do not release real-device or real-circuit objectives. The four ordinary low-tech references still need local supply/space checks and classroom trials. **0 lessons are classroom-certified by this review.** External official alignment remains VERIFICATION REQUIRED for **all 71 rows**, independently of the local task-code mapping.

## 2. Actual scope, not nominal calendar labels

| Alternative track | Lesson files | Represented meetings | Minutes | Calendar issue | Revision counts: rebuilt / improved / unchanged |
|---|---:|---:|---:|---|---:|
| [Weekly A](../Lessons/Grades_3-4_YearA/README.md) | 20 | **32** | **1,280** | Week 17 winter break; Week 32 spring/Easter break; nominal labels reach 34 | 3 / 12 / 5 |
| [Weekly B](../Lessons/Grades_3-4_YearB/README.md) | 17 | **33** | **1,320** | Marine Science includes Week 17; Week 32 absent | 3 / 11 / 3 |
| [Bi-Weekly A](../Lessons/Bi-Weekly/Grades_3-4_YearA/README.md) | 17 | **17** | **680** | One meeting per session, not every weekly objective compressed | 3 / 11 / 3 |
| [Bi-Weekly B](../Lessons/Bi-Weekly/Grades_3-4_YearB/README.md) | 17 | **17** | **680** | One meeting per session; no assumed Year A attendance | 2 / 14 / 1 |

The audit spans **99 represented meetings / 3,960 minutes**, but those are alternatives, **not one pupil's annual schedule**. Two weekly rotations total 65 represented meetings; two bi-weekly rotations total 34. The principal must reconcile actual school closures and movable liturgical dates. Neither weekly list guarantees 34 instructional periods.

Scope selections in the CSV: **38 CORE, 29 RECOMMENDED, 4 OPTIONAL** lesson files across the alternatives. Optional celebrations are first to shorten if meetings are lost; protect fair investigations, repeat tests, circuits, explicit coding prerequisites and individual evidence. Do not call missing meetings new lessons or count home tracking as delivered instruction.

## 3. Philosophy and standards situation

For this band, hands-on C-STREAM means reason and faith supporting honest inquiry; tools used responsibly; designs serving people; resources stewarded; purposeful sketches/art communicating ideas; and age-appropriate measurement reasoning. Prayer alone is not a demonstrated Catholic competency. Failure is information about a design, not a failure of a child or evidence of weak faith.

### Source register: what was and was not verified

| Source / category | Retrieval finding and classroom consequence |
|---|---|
| [MDE science](https://education.mn.gov/MDE/dse/stds/sci/) / official state standards | Direct retrieval returned browser verification, not standards text. Candidate 2019 edition and its implementation status for the school's 2026-27 year are **VERIFICATION REQUIRED** against the actual current MDE document. No benchmark numbers claimed. |
| [MDE mathematics](https://education.mn.gov/MDE/dse/stds/Math/) / official state standards | Direct retrieval here was blocked. The parent integration's documented source record subsequently confirmed **2022 mathematics full implementation in 2027-28**. School adoption and lesson-to-benchmark alignment remain **VERIFICATION REQUIRED**; that confirmation does not certify this band's crosswalk. Do not confuse adoption with implementation. This review deliberately avoids decimals/ratios/means as Grade 3 core expectations. |
| [MDE arts](https://education.mn.gov/MDE/dse/stds/arts/) / official state standards | Retrieval blocked. Candidate 2018 edition/current implementation is **VERIFICATION REQUIRED**. Purposeful observation, critique and revision are mapped locally, not to invented state numbers. |
| [MDE standards entry point](https://education.mn.gov/MDE/dse/stds/) and [CS reference page](https://education.mn.gov/MDE/dse/stds/comsci/) | Content retrieval not available. Treat CS as algorithms, data, debugging and impacts across subjects, not merely device use. **VERIFICATION REQUIRED:** current integration guidance. A search-generated assertion of standalone 2024 CS standards was **not accepted or cited as fact**. Confirm ELA/social-studies versions too before any official crosswalk. |
| [Archdiocesan Office for the Mission of Catholic Education](https://www.archspm.org/offices/mission-of-catholic-education/) / official guidance | Retrieved fragment concerned parent education, not detailed C-STREAM benchmarks. No complete publicly verified C-STREAM standard set or current Roadmap requirements were established. **VERIFICATION REQUIRED** with school/OMCE; lack of retrieval is not proof that guidance does not exist. |
| [Fides et Ratio](https://www.vatican.va/content/john-paul-ii/en/encyclicals/documents/hf_jp-ii_enc_14091998_fides-et-ratio.html) / Church teaching | Verified opening on faith/reason; used as a paraphrased teaching connection. It does not establish a scientific result or erase historical conflicts. |
| [Laudato Si'](https://www.vatican.va/content/francesco/en/encyclicals/documents/papa-francesco_20150524_enciclica-laudato-si.html) / Church teaching | Creation-care opening verified. Approximate marine quotations and mismatched paragraph attribution removed; no new source numbers invented. Exact excerpt selection beyond retrieved material remains **VERIFICATION REQUIRED**. |
| [Vatican canonization homily, September 7, 2025](https://www.vatican.va/content/leo-xiv/en/homilies/2025/documents/20250907-omelia-frassati-acutis.html) | Verified proclamation of Carlo Acutis/Frassati as saints; updated obsolete Blessed titles. No pupil biography or invented quotation inferred from this. |
| [NASA Glenn: Incorrect Airfoil Theory](https://www1.grc.nasa.gov/beginners-guide-to-aeronautics/foilw1/) | Verified flat/symmetric wings can generate lift and equal-transit explanation is false. Glider lessons separate hand launch from forces after release; distance alone does not measure lift. |
| [Monarch Joint Venture life cycle](https://www.monarchjointventure.org/monarch-biology/life-cycle) / specialist science | Retrieved living immature/adult stages. Pupae are living; frogs do not have the insect pupa pattern. Species-specific timing/cards remain **VERIFICATION REQUIRED**, not a guarantee of classroom growth. |
| [Wonder Workshop Blockly](https://www.makewonder.com/en/apps/blockly/), [Ozobot color-code resources](https://ozobot.com/create/color-codes/), [Makey Makey instructions](https://www.makeymakey.com/pages/how-to) / manufacturer | Blockly's concepts verified. Ozobot page did not expose a usable code chart; no replacement colors invented. Makey Makey landing text is not a model safety manual. **VERIFICATION REQUIRED:** actual model/app labels, chart, calibration, connection method and kit contents before teaching the device path. |
| [USCCB corporal works of mercy](https://www.usccb.org/beliefs-and-teachings/how-we-teach/new-evangelization/jubilee-of-mercy/the-corporal-works-of-mercy) / catechetical source | Retrieval returned 403. Missing drink-for-thirsty item corrected; exact wording/source quotation remains **VERIFICATION REQUIRED**. No invented CCC paragraph supplied. |
| CSTA / NGSS / ISTE / national frameworks | The parent integration's documented source record subsequently confirmed **CSTA 2026, published July 2026**. Full-document review and exact Grades 3-4 alignment were not completed here; they remain **VERIFICATION REQUIRED**. NGSS/ISTE editions were not verified here. No official standard IDs or compliance assertions inferred from local codes. |
| Other retained biography, Scripture, liturgical, statistical and price claims | **VERIFICATION REQUIRED:** exact Bible translation/verse numbering, historical firsts, source-card authors/pages, patronage, current CSW theme, scientist faith/motivation, vendor prices and equipment availability. Readme gates apply even to byte-unchanged lessons. |

Search summaries were discovery aids, not evidence. Several suggested URLs failed or redirected; only retrieved content above is described as verified. Do not manufacture an Archdiocesan requirement, current source number or direct quote to fill the gap.

### Local standards contract

These are the user's **local program standards, not official Minnesota, Archdiocesan, CSTA or Church standard numbers**:

| Domain | Local codes |
|---|---|
| Catholic | **CST-C1:** faith/reason and honest evidence; **CST-C2:** dignity/service/inclusive ethics; **CST-C3:** stewardship of resources/work |
| Science | **CST-S1:** observations/questions/evidence; **CST-S2:** investigations/testing/variables; **CST-S3:** physical/life/Earth systems/models |
| Technology | **CST-T1:** tools/input-output/troubleshooting; **CST-T2:** algorithms/loops/conditions/debugging; **CST-T3:** data/citizenship/technology impacts |
| Engineering | **CST-E1:** problems/criteria/constraints; **CST-E2:** build/test/redesign; **CST-E3:** tradeoffs/communicate solutions |
| Art | **CST-A1:** observational sketches/models; **CST-A2:** purposeful pattern/form/design; **CST-A3:** artistic communication/critique/revise |
| Math | **CST-M1:** count/compare/measure; **CST-M2:** data/pattern representation; **CST-M3:** grade-appropriate quantities/operations/reasoning |

The CSV assigns **2-5 actual task-demonstrated codes per lesson**, not all domains. This is an activity/evidence crosswalk, not a claim that every child masters each code. For unchanged lessons it describes the existing task opportunity; the evidence field identifies missing individual thresholds. Device-dependent T1 evidence is unavailable when only a paper fallback runs.

## 4. Grade 3 and Grade 4 progression

Year A/B rotates **contexts**, not grade levels or ability. New Grade 3 and new-to-school Grade 4 pupils may start in B; Grade 4 may revisit A. Incoming skills below are checks, not assumptions about unreviewed Grades 1-2. Outgoing expectations are proposed handoff goals, not a review of Grades 5-6.

| Competency | Grade 3 supported expectation | Grade 4 extension within either rotation | Next handoff, not certified |
|---|---|---|---|
| Evidence / C1, S1 | Separate observation, prediction and supplied practice data | Explain uncertainty/model limits and cite a source for a factual claim | Justify conclusions with multiple evidence sources |
| Fair investigation / S2 | Change one feature; name two kept-same conditions | Repeat trials; explain variation/confounded comparisons | Design comparative tests with documented controls |
| Systems / S3 | Label living stages, a return circuit path, flight forces or weather tool | Compare two models and explain where each is limited | Use models without treating metaphor as a mechanism |
| Tools / T1 | Start/stop safely; identify an input/output if actually operated | Diagnose one fault, test a correction and report missing evidence | Independent model-specific troubleshooting |
| Algorithms / T2 | Trace a sequence, a small repeat and counts 0-3 | Explain condition boundaries/reset/broadcast and a debug strategy | Decompose larger problems; no premature syntax burden |
| Ethics/data / C2, T3 | Choose a respectful message and avoid private identifying media | Explain an accessibility/privacy tradeoff and source limits | Defend technology decisions affecting others |
| Design / E1-E3 | State a simple criterion, test and change a model | Compare outcomes under equal constraints; communicate a tradeoff | Defend a design using performance, resources and user evidence |
| Art / A1-A3 | Labeled observation sketch or readable purposeful design | Peer-critique/revise message, form or model | Visual communication that supports a defensible explanation |
| Math / M1-M3 | Whole-number counts/lengths, addition/subtraction within task range | Trial ranges, labeled data graphs and whole-number changes | Ratios/percentages only after classroom prerequisites, not forced early |
| Stewardship / C3 | Count reusable supplies back, distinguish model from real service | Compare material/cleanup needs and propose a sustainable routine | Document tradeoffs without invented savings |

### Rotation prerequisites and gaps

- **Weekly A:** welcome -> explicit Sphero sequence/loop introduction -> fair-test practice -> constrained structures -> community design -> bridge retest. Gratitude coding formerly demanded broadcasts before formal Scratch; novice path added, complete starter still P1. Later Scratch variables/conditions should follow a skills check, not attendance. Choice Labs needs two safe, prepared choices rather than six unspecified disciplines.
- **Weekly B:** welcome -> flight trials -> plane redesign -> architecture -> marine systems -> novice game rules/code -> sustainable systems -> weather evidence. Game Design no longer assumes a completed Year A. Sustainable City still promises resource calculations without a complete budget; marine source cards remain a gap.
- **Bi-Weekly A:** paper design -> Dash L-route -> bridges/habitats -> Scratch intro -> animation. Do not assess advanced broadcasts before intro mastery. Light circuit and plant evidence fit one meeting; real plant growth is optional adult-managed follow-up, not concealed extra instruction.
- **Bi-Weekly B:** user interview -> verified Ozobot command -> stable towers/food webs -> short Scratch starter. No Year A prerequisite for circuits. Rocks/life cycles/machines add physical and biological models; Makey Makey needs a verified dry input path. The bi-weekly mini-game remains too ambitious for novices without prepared starter files.

**Duplicates worth keeping:** A/B goals, gifts, circles and portfolios can revisit skills with new evidence. **Duplicates to constrain:** weekly A bridges after KEVA bridge work must specifically compare equal-paper redesigns; five-mission robotics and repeated celebration stations consume scarce meetings without deeper evidence. Marine/land care is not automatically new learning just because tags differ.

**Remaining gaps:** longitudinal **observed** life/weather data in the bi-weekly schedule; Grade 4 quantitative tradeoffs in cities; enough mathematics in bi-weekly B; ready-to-use sourced history/diet/zone cards; consistent individual evidence in retained lessons. Indoor simulated datasets fix access and immediate reasoning, **not** the longitudinal observation gap. No assertion of a complete K-6 progression is made.

## 5. Meaningful domain balance

**Counting method:** one lesson-file credit for a domain only when pupils have a scheduled task/evidence aligned to at least one local code in that domain. Count once even if multiple codes in the same domain. Use the CSV's task-derived mapping, not frontmatter tags, acronym descriptions, teacher talk, prayer alone, craft decoration, or the word "All." A deliberately partial crosswalk does not capture every incidental activity.

Counts are **mapped meaningful opportunities**, not assessed pupil proficiency or equal contact time. Multi-meeting files still count once; dividing them into all-domain meeting credits would falsely inflate exposure. Elective Choice Labs contributes only its common stewardship/communication evidence, not every station. Where a hardware prerequisite is absent, discount the device-specific credit for the delivered pathway.

| Track | C | S | T | E | A | M | Denominator |
|---|---:|---:|---:|---:|---:|---:|---:|
| Weekly A | 15 | 6 | 5 | 9 | 6 | 7 | 20 lesson files |
| Weekly B | 11 | 6 | 3 | 8 | 10 | 8 | 17 lesson files |
| Bi-Weekly A | 10 | 5 | 10 | 5 | 8 | 5 | 17 lesson files |
| Bi-Weekly B | 11 | 5 | 7 | 7 | 11 | **2** | 17 lesson files |
| Audit total, not one year's timetable | 47 | 22 | 25 | 29 | 35 | 22 | 71 |

Weekly A leans engineering; bi-weekly A has technology/source/media work in 10/17 files, not necessarily ten robotics meetings. Bi-weekly B's mathematics is genuinely weak in the selected demonstrated mapping (**2/17**), despite many generic Math tags. Add explicit length/data comparisons inside future tower, rock and robot revisions rather than buying more screens. Art credits require a labeled model or purposeful communication, not attractive decoration. Science credits are too sparse to treat C-STREAM as replacing the classroom science curriculum.

## 6. Eleven complete targeted rebuilds

| Track / lesson | Highest-value change |
|---|---|
| Weekly A [Sphero, Weeks 2-3](../Lessons/Grades_3-4_YearA/Week02-03_Sphero_Advanced.md) | Two explicit meetings; absolute headings, repeat semantics, measured drift, safe slots and honest CT fallback |
| Weekly A [Bridge, Week 10](../Lessons/Grades_3-4_YearA/Week10_Bridge_Engineering.md) | Native 40 minutes; equal one-sheet designs, 15 cm span, 20-counter cap, Grade 3 subtraction not efficiency ratios |
| Weekly A [Snap Circuits, Weeks 26-27](../Lessons/Grades_3-4_YearA/Week26-27_Little_Bits_Circuits.md) | Two switched-light/design meetings; eight reported individual kits, manufacturer/power gates, two-wave access and individual test/revision evidence |
| Weekly B [Flight, Weeks 2-3](../Lessons/Grades_3-4_YearB/Week02-03_Flight_Fundamentals.md) | Correct released-glider forces, blunt paper folds, six trials, no false Blessed title/mean requirement |
| Weekly B [Game Design, Weeks 19-22](../Lessons/Grades_3-4_YearB/Week19-22_Game_Design.md) | Four novice meetings, complete bounded-score starter, discrete events, keyboard access, boundary/reset tests |
| Weekly B [Weather, Weeks 29-31](../Lessons/Grades_3-4_YearB/Week29-31_Weather_Station.md) | Three indoor meetings; safe cup/strip tools, source labels, supplied simulated table, no glass/pins/latex or daily homework |
| Bi-Weekly A [Dash, Session 2](../Lessons/Bi-Weekly/Grades_3-4_YearA/Session02_Dash_Code.md) | One Blockly L-route, low-speed measured test, no false line sensing, operation log |
| Bi-Weekly A [Light & Circuits, Session 7](../Lessons/Bi-Weekly/Grades_3-4_YearA/Session07_Light_Circuits.md) | Approved Snap switched-light project, individual two-cycle test/repair and Advent message; separate protected-AA alternative; paper gift only |
| Bi-Weekly A [Plants, Session 12](../Lessons/Bi-Weekly/Grades_3-4_YearA/Session12_Plants_Growth.md) | Living embryo, one-variable plan, within-meeting evidence; dry setup when no adult caretaker |
| Bi-Weekly B [Ozobot, Session 2](../Lessons/Bi-Weekly/Grades_3-4_YearB/Session02_Ozobot_Coding.md) | No invented color table; model-matched chart/pretest gate and paper CT path |
| Bi-Weekly B [Christmas Circuits, Session 7](../Lessons/Bi-Weekly/Grades_3-4_YearB/Session07_Christmas_Circuits.md) | One switched light/repair and Nativity message; resistor-only blinking myth and unsupported topology removed |

All eleven include at-a-glance fields, before-class tasks, per-pupil/team/class/adult supplies at 10/15/20/25, vocabulary/background/misconception/answer, numbered timed meetings, actual questions, individual evidence, troubleshooting, visible safety, lower/upper grade support/challenge, indoor path, cleanup and optional family snippet. Snap battery type/count is explicitly a matching-project preflight field, not an invented numeric allocation. No boilerplate quick card was added to all 71.

The other **48 improvements** retain existing lesson bodies. Main correction families: living metamorphosis versus death; finite pi; false saint/quote/sole-discovery claims; drinking-water/model limits; current versus energy; sensor compatibility; safe load/drop/tool/weather boundaries; privacy and optional home work. See `revision=improved` in the CSV for the complete changed-lesson inventory and honest remaining needs.

## 7. Signature projects and scored examples

**Grade 3 signature: Neighbor Access Bridge.** In Weekly A use rebuilt Week 10 after structural practice; in B use the repeated-flight investigation as that rotation's signature, retaining the same predict/test/change/explain evidence philosophy. Bi-weekly A's bridge is a useful context but still needs its P1 kit; do not substitute its current sheet for the rebuilt lesson silently. Every child records two results and a kept-same condition. Display failed and improved designs, not only winners.

**Grade 4 signature: Weather Evidence for Neighbors.** Weekly B's three-meeting weather unit ends with labeled data/graph and an accessible severe-weather message. Simulated practice is labeled; an actual-weather extension needs named source/time/location. In A, the bridge/robot projects extend to repeated measurements and model limits. In bi-weekly B, Christmas Circuits offers a safe repair-and-message signature without assuming prior circuits. These are rotation-specific alternatives, not extra compulsory meetings.

### Document-quality scoring, not classroom certification

Six dimensions, each 0-3: **accuracy/development; meaningful Catholic ethics; standards-to-individual evidence; timed substitute clarity; practical cost/scalability; safety/error handling**. 0 absent/unusable, 1 substantial gap, 2 usable with teacher repair, 3 explicit and coherent. Total /18 locates priorities; a high document score does not verify kit availability or classroom timing.

| Lesson / version | Scores in dimension order | Total | Interpretation |
|---|---|---:|---|
| Bridge baseline | 1 / 2 / 1 / 1 / 1 / 1 | 7 | Ratio expectation, little redesign, no capped load/cleanup |
| Bridge rebuilt | 3 / 3 / 3 / 3 / 2 / 3 | 17 | Complete desk-ready plan; retrieving 26 books/counters still depends on stocked room |
| Weather baseline | 1 / 2 / 1 / 1 / 1 / 0 | 6 | Pins/glass/latex, four tools and assumed daily observations |
| Weather rebuilt | 3 / 3 / 3 / 3 / 2 / 3 | 17 | Safe explicit unit; cup suitability and actual instrument access still checked locally |
| Choice Labs after containment | 2 / 2 / 1 / 1 / 1 / 2 | 9 | Dangerous unspecified paths disabled, but still needs full station kits/objectives |
| Bi-weekly Scratch Games after improvement | 2 / 2 / 2 / 1 / 1 / 2 | 10 | Correct bounded starter reference; full novice pacing/supplies still needed |

### Illustrative pupil evidence, not fabricated observations

- **Grade 3 bridge, score 1/4:** "Mine is best because it is blue." No load evidence, arithmetic or fair-test condition.
- **Grade 3 bridge, score 3/4:** "We held 6, then 11 counters: 5 more. We folded the paper differently and kept the gap and counter placement the same." Meets the objective even if another team's load is larger.
- **Grade 4 bridge, score 4/4:** "Both held all 20, so we cannot know their maximum or say one is stronger. Repeat the same capped test or redesign the criterion safely." Recognizes a censored result.
- **Grade 4 weather, score 4/4:** "Practice rain sums to 12 mm; Thursday is 6 mm. These are simulated values, not our town's observations. Five days cannot establish climate or guarantee tomorrow." Correct scope/source.
- **Robot paper route, CT score 3/4:** correct trace and debug reason; **real device operation = not observed** if the child only traced/watched. Never convert this into a robotics mastery certificate.

## 8. Materials, reusable kits and planning costs

### Quantity convention

Non-circuit rebuilds retain **ceil(N/2) team kits: 5/8/10/13** for 10/15/20/25 pupils. The default odd-enrollment trio means **5/7/10/12 active teams**, leaving an unused team kit at 15/25. The three selected circuit lessons instead use balanced teams up to three: **4/5/7/9 teams**, with **4/5/7/5 hardware stations** and two waves at 25 pupils. This is an explicit grouping/timing change, not permission to change other lessons' issue lists.

**Exact 25-pupil examples:** Bridge: 26 books, 28 full paper sheets including two reserves, 5.2 m tape, 260 identical plastic counters, 13 cups/trays/rulers plus spare ruler, 25 half-sheet slips/pencils. Weather: 13 cups/trays/rulers/strips/handles, 39 team paper sheets, 2.6 m tape, 75 evidence half-sheets, one room thermometer and at most 500 mL water. Plants: 52 seeds, 26 cups/towels/labels, 13 rulers, 26 recording sheets, 25 half-slips; at most 65 mL water for budgeted moist cups only if care assigned.

The selected circuit lessons share the **eight reported individual Snap kits**:
five stations/two waves at 25, with three unissued kits available for checked
reserves. See the [classroom guide](../Resources/Snap_Circuits_Classroom_Guide.md)
for matching-manual, age, holder/protection and battery preflight; no assumed
two-AA or LED allocation. The separate protected-AA route uses its own specified
holders/modules/leads and wave allocation; never attach Snap parts to that supply.
The original fourteen-kit pricing allowance below is a historical protected-AA
planning estimate, not a required additional purchase for the new Snap route.

### Starter stock for up to 25 pupils

**Planning allowances in USD, not researched vendor quotes; tax/shipping excluded. VERIFICATION REQUIRED before purchase.** Stock supports the ten rebuilds' ordinary supplies, not a claim that every retained lesson is fully costed. Counts can be reduced using existing school stock; family donations are never required.

| Item | Quantity | Unit allowance | Total | Reuse/storage/safety and plausible lesson use |
|---|---:|---:|---:|---|
| Letter paper | 2 reams, 1,000 sheets | $6/ream | $12.00 | Consumable; dry shelf; ten rebuilds plus retained planning tasks |
| Masking/floor-safe tape | 2 rolls, at least 50 m each | $4 | $8.00 | Consumable; check surface permission; structures/routes/models |
| Rulers | 14 | $1 | $14.00 | Reusable bin; blunt edges; eight or more measurement/model tasks |
| Identical plastic counters | 300 | $0.05 | $15.00 | Reusable counted tubs; small parts away from younger children; bridge/score/load tasks |
| Shallow trays | 14 | $1.50 | $21.00 | Reusable stack; dry/water/robot tests; seven rebuilds |
| Straight-sided plastic cups | 30 | $0.12 | $3.60 | Reusable when clean; no glass/cut edges; bridge/plant/weather |
| Markers | 52 | $0.30 | $15.60 | Reusable if capped; four colors for budgeted Ozobot teams; many communication tasks |
| Pencils | 25 | $0.20 | $5.00 | Reusable; all individual evidence |
| Centimeter measuring tapes | 2 | $4 | $8.00 | Reusable; flight/structures |
| Classroom thermometer | 1 | $8 | $8.00 | Reusable, non-glass/non-mercury; weather tool practice; not automatically outdoor data |
| Paper towels | 1 roll | $2 | $2.00 | Consumable; plant setup/spills |
| Untreated bean seeds | 60 | $0.05 | $3.00 | Consumable; allergy check; plant inquiry only |
| Labels | 100 | $0.03 | $3.00 | Consumable; kits/plant conditions |
| Teacher scissors | 2 | $2 | $4.00 | Reusable adult tool storage; cutting tape/strips |
| Storage bins | 3 | $5 | $15.00 | Reusable; labeled dry general/circuit/observation kits |
| Tissue paper | 1 pack | $2 | $2.00 | Consumable; strip/light art |
| Cardstock | 100 sheets | $0.08 | $8.00 | Consumable; messages/scene models |
| Glue sticks | 10 | $0.75 | $7.50 | Reusable until consumed; paper models, no hot glue |
| Acrylic mirrors | 3 | $2 | $6.00 | Reusable; optional retained light stations, no glass |
| Flashlights | 3 | $3 | $9.00 | Reusable; teacher replaces batteries, no eye beams; light/reflection models |
| **Starter subtotal** | | | **$169.70** | Plus stock books/blocks, cardboard, water, board/timer |

Books/blocks: 26 existing stable classroom books or equivalent low supports, **$0 only if already available**. Clean cardboard comes from school stock; if unavailable the teacher supplies paper alternatives, not a compulsory family collection. The ten rebuilds budget approximately **431 full ordinary team/demo sheets + 475 individual half-sheets**, about **669 full sheets** after rounding, plus 13 cardstock sheets; the 1,000-sheet stock covers that documented set, not every worksheet in all 71 lessons.

Circuit allowance per kit: holder **$2**, two AA cells **$1 total**, module **$2.50**, switch **$1**, three leads **$1.50 total** = **$8**. Fourteen shared kits = **$112**, giving **$281.70 starter plus circuit stock**, before contingency. Hardware reusable except cell replacement; store off, dry, counted and closed. First assembly/testing is advance work, not a twenty-minute surprise substitute task.

### Budget tiers, not compulsory spending

- **About $250:** $169.70 general stock + 20% contingency = **$203.64**, using school books/board/timer. Excellent low-tech work is possible; electrical/robot operation remains missing without kits/loans.
- **About $500:** starter + fourteen shared circuits = $281.70; +20% = **$338.04**. Funds remain for verified observation/source cards and replenishment; not automatically enough for commercial modular kits.
- **About $1,000:** above stock + one robot family, two units budgeted at **$200 each** = $681.70; +20% = **$818.04**, **assuming existing compatible tablets**. Choose verified loan/purchase, not every brand.
- **About $2,500:** general/circuit stock + two each of Sphero/Dash/Ozobot at an allowance of $200/unit = **$1,481.70**; +20% = **$1,778.04**, with existing compatible devices. Unspent money can support verified science kits. Thirteen new computers at an illustrative $220 each would add **$2,860**, so do not advertise the enhanced tier as including a new computer lab.

Loan availability, actual prices, device models and stock condition remain unverified. Little Bits, Makey Makey, KEVA quantities and every retained station kit require school inventory/quotation; no false complete-program total supplied.

Suggested bins: **Structures/measurement** (rulers, counters, low supports, cups, trays); **Observation/weather/plant** (cup/ruler tools, thermometer, seeds/labels, dry source cards); **Circuits** (numbered verified kits, inventory sheet, screwdriver adult-only). Keep robot/device pairs labeled by model outside wet-material storage.

## 9. Technology plan and substitute readiness

CSV primary digital/programmable-technology labels: **45 None, 9 Optional, 17 Required**, no Recommended. "None" means no digital/programmable device; it does not waive actual material requirements. The three rebuilt circuit lessons require preflight-approved Snap kits or the separate verified protected-AA equipment for real assembly/testing. Required digital/programmable technology does not imply mandatory home access. Circuit technology is not computer science automatically; an on/off paper model does not demonstrate conductivity or circuit mastery. Paper narrative art is not programming just because it has a sequence.

- **Unnecessary devices removed:** Pi comparison, ordinary observation, gift/structure design, safe weather/plant planning. Purposeful art need not be digital.
- **Devices add distinct evidence:** executing Scratch events/conditions; Bluetooth/app block edits; physical robot calibration; optical code sensing; Makey Makey keyboard input.
- **Fallback labels:** sequence/loop/condition/debug traces may show CT. Only observed edit/run/stop/measurement shows the relevant real-device outcome. Paper electrical paths show system reasoning, not actual current or circuit mastery. Missing/inoperative digital equipment **or mandatory electrical materials** leaves the corresponding operational objective **not observed**, regardless of the technology label; report this explicitly to the regular teacher.
- **Routine preflight:** loan/model/source chart secured, charged, paired, manufacturer instructions tested, no pupil account/private-data exposure, dry safe area, kit inventory and stop method. A substitute without this preflight chooses the explicit low-tech path; no twenty-minute charger/software miracle assumed.

### Documented desk simulations, not field trials

| Simulation | Conditions, procedure and result |
|---|---|
| **Grade 3 substitute arrives 20 minutes before Bridge** | Stocked room assumed: 26 low books, counted counters, paper/rulers/tape/trays. Budget 4 min read plan, 4 gather, 5 count trays, 3 position/check gaps, 2 rehearse load/exit, 2 board/timer = **20 min**. No printing, login, ratios or unseen worksheet. Run the numbered 0-40 schedule; example 6 then 11 yields **5 more**. **Desk result: coherent**, with a fail gate if supports/counters absent; use ten-counter cap consistently or shared trays, not improvised heavy loads. Not a measured classroom prep time. |
| **No digital devices** | Bridge/flight/weather/plants retain primary reasoning objectives; all three rebuilt circuits need no screens/software, **but approved electrical kits remain mandatory for operation**. Sphero/Dash/Ozobot and Scratch use timed paper routes/traces; expected square repeat = **8 rolls**, L route turns once, score fourth input stays **3** then restart **0**. **Desk result: CT evidence retained, actual programmable-device operation not observed.** If electrical kits are missing, circuit paper models show reasoning only, not circuit mastery. Other retained workflows remain incomplete; consult the 27 P1 list. |
| **Minnesota January, -10 degrees F** | No outdoor period required. Weather uses window observations and **simulated** 6/8/7/10/9 C, 0/4/0/6/2 mm data; total rain **12 mm**, warmest Thursday, temperature range **4 C**. Plants uses dry seed observation/plan and labeled 0/4/9 mm practice values, not promised sprouting. Flight uses approved indoor lane or 1 m short model. **Desk result: core tasks work indoors; no actual outdoor/weather/growth data falsely credited.** |
| **25 pupils** | Non-circuit issue lists retain their pair/trio budget: Bridge needs 26 books/260 counters; weather 13 trays. The selected Snap circuits use **nine teams, five stations, two 12-minute hardware waves** and three possible reserve kits. Two robot areas with at most seven one-minute rounds retain their original bounds. **Desk result: document timing/quantity arithmetic fits**, contingent on actual space, approved stock, adult checks and observed pupil-turn completion; no classroom throughput trial. |
| **Limited budget** | $203.64 general stock allowance plus contingency supports low-tech/model reasoning. Real electrical work needs the additional approved circuits; real robotics/coding requires functioning equipment or loans. **Desk result: no necessity to buy all robot brands; no claim of operational mastery without them.** |
| **Parent asks what is learned** | "Your child predicts, tests one change, compares honest data and explains a revision; Grade 4 adds repeated-test/model-limit reasoning. Faith guides service, stewardship and truthfulness. Models and real device evidence are distinguished." Refer to a child's slip rather than a fun-project photograph. |
| **Kindergarten non-reader** | **Out of scope.** No review or readiness claim for Kindergarten; Grade 3 oral/motor support cannot be treated as a Kindergarten audit. |

The local check verifies **all 17 rebuilt timing chains reach exactly 40 minutes**, CSV coverage/metadata, four-track representation, scales and original external URL retention. Arithmetic/trace simulations are document/model checks, **not Scratch runtime, robot or electrical bench tests**. No physical kit or live classroom was available in this session.

**Recorded local check outcome:** PASS: 75 owned Markdown files; exactly 71 unique CSV rows with the required header/enums and 2-5 codes; frozen baseline status/priority preservation; 59 changed versus 12 byte-unchanged lessons; ten rebuilds across all four tracks; 17 contiguous 40-minute sequences; **40 supply-scale arithmetic checks**; original external URL retention; all owned/review local links resolve; 27 pending P1 packages agree with the report; score/weather/bridge/plant/repeat and budget desk models agree. Owned-directory `git diff --check` passed. Editor diagnostics reported no errors for the review/CSV, not a Markdown pedagogical certification. Validator and machine-readable results are retained in session artifacts; unrelated worktree changes were excluded from checks and not reverted.

## 10. Copy-ready unit newsletter snippets

Use only snippets for work actually delivered. If a device path was replaced, say "paper model," not "we programmed robots." Each row names the audit units covered; repeated names across tracks share a snippet, but evidence remains rotation-specific. **No routine homework. All optional home suggestions require no purchase, device, private disclosure or assessment.**

| Unit(s) covered | What we explored/did/learned and Catholic connection | Ask your child | Optional home |
|---|---|---|---|
| Foundations | We practiced observations or user questions and agreed on safe, respectful collaboration. Catholic learning includes honest inquiry and dignity. | What makes a helpful question? | Notice one everyday tool. |
| Computing; Computing art | We traced/programmed sequences, repeats or conditions and tested a correction; purposeful messages need clear timing. Responsible tool use includes everyone. | What repeated, and how did you debug it? | Trace three paper directions. |
| Inquiry | We changed one feature, kept others the same and recorded trials. Honest evidence matters more than a correct prediction. | What stayed the same? | Discuss a question without experimenting. |
| Structures | We tested a span/standing model, measured or counted, and changed a design. Engineering can improve people's access and use resources carefully. | Which test informed a change? | Notice a structure in a picture. |
| Service design | We considered a user's stated need and made a model or plan. Respecting dignity means not assuming what others need; actual delivery needs adult approval. | Who is the design for, and what evidence supports it? | Thank a helper if comfortable. |
| Gratitude; Gratitude data; Gratitude communication; Gratitude design | We made a respectful thank-you message or graphed voluntary/practice categories. Gratitude is not ranked by counts; thoughtful communication can serve others. | What does your message or graph show? | Share an optional thanks. |
| Portfolio | We chose evidence of a skill, not only a favorite decoration, and explained growth. Stewardship includes using our gifts well. | Which artifact shows a change in your thinking? | Tell someone about that artifact. |
| Light | We compared transmitted/reflected light and purposeful art. Advent light imagery is a religious symbol, not a science result about Jesus. | What did light do in your test? | Notice a safe light source. |
| Astronomy | We compared a desk model and a religious narrative, labeling what each can support. Faith and reason need truthful claims. | Which claim could the model test? | Look at a sky picture. |
| Reflection | We planned a measurable classroom goal and a tracker. Growth and stewardship concern effort and choices, not a promise of perfect outcomes. | How will you notice progress? | Talk about a small goal. |
| Choice inquiry | We selected prepared safe work and documented a question or design. Caring for time/materials and communicating evidence matter more than doing every station. | What evidence did you keep? | Explain one design choice. |
| Faith and evidence | We used approved sources or a verified teaching text to distinguish fact, reflection and uncertainty. Faith and reason do not license invented biography. | What source supports your claim? | Discuss why sources matter. |
| Circuits | We traced/tested an open and closed path or used a clearly labeled paper model, then made a message. Our Catholic connection was hopeful, respectful communication. | Where was the gap, and what did the test show? | Notice a switch without opening anything. |
| Mathematics | We compared around/across circle lengths and purposeful patterns. Pi is finite; accurate mathematics can inspire wonder without proving theology. | How did three diameters compare with around? | Notice a circle. |
| Stewardship; Stewardship design | We observed clean samples or designed labeled resource-system models. Creation care means honest limits, user needs and wise resource use, not invented savings. | What is a model, and what would need a real test? | Discuss one resource-saving habit. |
| Life science; Life inquiry; Life systems | We observed/planned growth or labeled living stages and food relationships. Care for life includes distinguishing biology from Easter metaphor. | Which stages are alive? | Notice a plant or animal in a picture. |
| Flight | We modeled forces and compared repeated whole-length trials after one change. Truthful tests and patient teamwork put our gifts to good use. | What changed between trials? | Explain force arrows with hands. |
| Applied design; Easter design | We chose one safe paper-model challenge and explained its criterion/test. Faith celebration and design can coexist without unsafe drops or claims that metamorphosis is death. | What counted as success in your model? | Describe the model, no building required. |
| Weather; Weather data | We read a tool, labeled observed versus simulated data and compared a graph. Caring for weather-affected neighbors includes safe, accessible messages. | Where did your data come from? | Discuss an adult's safe-weather plan. |
| Community data | We graphed one voluntary class survey with clear units/categories. Appreciation and privacy both respect our community. | What do two bars tell you? | Explain a graph verbally. |
| Communication art; Faith communication | We planned a three-part story/message and revised it for an audience. Sharing hope requires care, truthfulness and privacy. | What revision made it clearer? | Tell a short story if comfortable. |
| Earth systems | We observed blunt rock samples/images and used tentative, supported classifications. Wonder at creation includes admitting uncertainty. | Which property did you actually observe? | Notice a rock image, no collecting required. |
| Machines | We identified load/effort or mechanisms in a model/picture. Tools change force/distance/direction, not create energy; dignified work uses them safely. | What tradeoff does the tool make? | Identify a safe household tool by sight. |
| Interactive tools | We traced input -> keyboard event -> output using a verified dry tool or paper model. Technology should include people and protect privacy. | Did you operate the tool or model its rules? | Sketch an input/output idea. |

## 11. Remaining priorities and stop point

**P0:** corrected or explicitly disabled/gated the detected unsafe/inaccurate required paths. Continue to obey all gates; missing a verified chart/module/source means do not teach that unsupported claim or hardware outcome. No blanket readiness certification.

**P1: 27 lesson packages**, counted once each, even if several issues remain:

| Track | Remaining packages and next bounded task |
|---|---|
| Weekly A: **7** | [KEVA](../Lessons/Grades_3-4_YearA/Week05-06_KEVA_Challenges.md): affordable quantity/pacing kit; [Community Helpers](../Lessons/Grades_3-4_YearA/Week07-09_Community_Helpers.md): one specified scenario/test kit; [Coding Gratitude](../Lessons/Grades_3-4_YearA/Week11_Coding_Gratitude.md): complete novice starter; [Choice Labs](../Lessons/Grades_3-4_YearA/Week19-22_Choice_Labs.md): full two-station rebuild; [Catholic Schools Week](../Lessons/Grades_3-4_YearA/Week23_Catholic_Schools_Week.md): verified profile cards; [Scratch](../Lessons/Grades_3-4_YearA/Week24-25_Scratch_Programming.md): executable novice starter and boundary tests; [Snap Circuits](../Lessons/Grades_3-4_YearA/Week26-27_Little_Bits_Circuits.md): physical kit/manual/power approval and classroom timing trial; scaling and individual document checks now supplied |
| Weekly B: **5** | [Paper Airplane](../Lessons/Grades_3-4_YearB/Week04-06_Paper_Airplane.md): one-category finals quantity/pacing; [Gratitude](../Lessons/Grades_3-4_YearB/Week11_Thanksgiving_Gratitude.md): realistic aggregation/individual graph check; [Marine](../Lessons/Grades_3-4_YearB/Week14-17_Marine_Science.md): source-checked cards/safe cleanup kit; [Catholic Schools](../Lessons/Grades_3-4_YearB/Week23_Catholic_Schools.md): survey kit/current facts; [Sustainable City](../Lessons/Grades_3-4_YearB/Week24-27_Sustainable_City.md): whole-number resource budget/individual tradeoff evidence |
| Bi-Weekly A: **7** | [Bridge](../Lessons/Bi-Weekly/Grades_3-4_YearA/Session03_Bridge_Engineering.md): affordable kit/retest timing; [Scratch Intro](../Lessons/Bi-Weekly/Grades_3-4_YearA/Session05_Scratch_Intro.md): local starter/scaling; [Animation](../Lessons/Bi-Weekly/Grades_3-4_YearA/Session08_Scratch_Animation.md): minimal working starter; [Scientists](../Lessons/Bi-Weekly/Grades_3-4_YearA/Session09_Catholic_Scientists.md): verified cards; [Dash Challenge](../Lessons/Bi-Weekly/Grades_3-4_YearA/Session14_Dash_Challenge.md): one model-verified mission kit; [Little Bits](../Lessons/Bi-Weekly/Grades_3-4_YearA/Session16_Little_Bits.md): exact modules/quantities; [Exhibition](../Lessons/Bi-Weekly/Grades_3-4_YearA/Session17_Exhibition.md): individual artifact rubric |
| Bi-Weekly B: **8** | [Tower](../Lessons/Bi-Weekly/Grades_3-4_YearB/Session03_Tower_Challenge.md): capped kit/pacing; [Scratch Games](../Lessons/Bi-Weekly/Grades_3-4_YearB/Session05_Scratch_Games.md): full novice forty-minute rebuild; [Digital Stories](../Lessons/Bi-Weekly/Grades_3-4_YearB/Session08_Digital_Stories.md): one attainable private workflow; [Faith/Science](../Lessons/Bi-Weekly/Grades_3-4_YearB/Session09_Faith_Science.md): verified cards; [Geology](../Lessons/Bi-Weekly/Grades_3-4_YearB/Session10_Geology_Rocks.md): safe source/quantity kit; [Ozobot Challenge](../Lessons/Bi-Weekly/Grades_3-4_YearB/Session14_Ozobot_Challenge.md): one verified mission; [Makey Makey](../Lessons/Bi-Weekly/Grades_3-4_YearB/Session16_Makey_Makey.md): documented dry connection/quantities; [Celebration](../Lessons/Bi-Weekly/Grades_3-4_YearB/Session17_Celebration.md): individual artifact rubric |

P2: finish scalable kits/individual thresholds in retained introductory, gift, light and celebration plans; strengthen observed longitudinal data and math in bi-weekly B; set in-class goal follow-up. P3: optional guest experts/digital publishing only after privacy, compatibility and core delivery are secure.

**Original band-review stop point:** full audit, ten substantive rebuilds and explicit remaining lists. The bounded Snap follow-up adds one rebuild and updates two existing circuit rebuilds plus their related shared records. No commits, equipment purchases or classroom certification; unrelated lesson work remains untouched.
