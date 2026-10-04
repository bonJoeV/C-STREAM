---
title: "Grades 5-6 curriculum review"
description: "Completed 69-package audit, all 58 remaining rebuilds, verified limits and school release checks"
---

# Grades 5-6 curriculum review

**Completion review:** October 4, 2026. **Planning context:** 2026-27, small
Catholic school in Minnesota. **Ownership:** the four Grades 5-6 lesson tracks
and this review/[audit CSV](Grades_5-6_Audit.csv). Other grade bands, shared
resources, materials database, standards, maps, navigation and global build
belong to the parent workstream. No commits or delegated/nested agents.

## Executive findings

The first pass contained **69 packages: 11 rebuilt references and 58 partial
improvements**. This completion pass read all 58 targets before replacing their
instructions, froze the starting files/keys in session artifacts, and rebuilt
**all 58**, not a minimum sample. Current cumulative revision counts:
**69 rebuilt, 0 improved, 0 unchanged**.

The completed cohort is **32 baseline P0 + 22 baseline P1 + 4 baseline P2**,
covering **74 meetings / 3,330 minutes**. The **11 previous references cover
25 meetings / 1,125 minutes** and were preserved at the completion handoff.
Later material/access integration keeps their teaching allocations intact;
Snap/protected-AA circuit bodies, quantities, state keys and wave plans remain
unchanged. Total: **99 meetings / 4,455 minutes** across
four alternative tracks, not one pupil's year.

Baseline findings are not erased: CSV `status` remains **45 KEEP + IMPROVE,
24 REBUILD** and `priority` remains **41 P0, 24 P1, 4 P2**. `revision=rebuilt`
records a complete teaching package, **not** school approval, a classroom
trial, a live device test, an electrical inspection, clinical validation,
diocesan certification or observed student learning.

Every new package supplies topic-specific at-a-glance objectives/why/Catholic
purpose, 2-5 practiced local codes, prerequisites, before-class actions,
10/15/20/25 supplies, vocabulary/background/misconception/if-asked answers,
contiguous numbered 45-minute meetings, individual evidence, questions,
troubleshooting, SAFETY, Grade 5 support/Grade 6 challenge, indoor contingency,
cleanup and optional family copy. Unsafe/inaccurate legacy menus were removed,
not retained under a general permission gate.

Strengths preserved: student choice, purposeful art/music, actual measurement,
life/physical/Earth science, models, data interpretation, useful technology,
service, iteration, portfolios and Catholic ethical reasoning. Broad
"advanced/mastery" labels no longer promise platform proficiency, clinical
benefit, universal history, real energy savings or community impact.

## Inventory, dosage and scope

| Track | Packages | New rebuilds | Preserved references | Meetings | Minutes |
|---|---:|---:|---:|---:|---:|
| [Weekly A](../Lessons/Grades_5-6_YearA/README.md) | 20 | 17 | 3 | 32 | 1,440 |
| [Weekly B](../Lessons/Grades_5-6_YearB/README.md) | 15 | 11 | 4 | 33 | 1,485 |
| [Bi-weekly A](../Lessons/Bi-Weekly/Grades_5-6_YearA/README.md) | 17 | 15 | 2 | 17 | 765 |
| [Bi-weekly B](../Lessons/Bi-Weekly/Grades_5-6_YearB/README.md) | 17 | 15 | 2 | 17 | 765 |
| Four alternatives | **69** | **58** | **11** | **99** | **4,455** |

Original filenames/lesson URLs, schedule/rotation/unit/title keys, meeting
counts and scope are unchanged. CSV `minutes` is native integer **45 per
meeting**, not a unit total. Weekly A omits weeks 17/32; Weekly B has no week
32 lesson. Its preserved five-meeting app unit must be booked around winter
break rather than counting a holiday as instruction. Fit liturgical events,
Catholic Schools Week and Pi Day to actual dates.

Scope remains **41 CORE, 22 RECOMMENDED, 6 OPTIONAL**. CORE is the spine under
its stated readiness conditions, not permission to ignore equipment/policy.
Weekly A/B together provide 65 meetings; bi-weekly A/B together 34. Neither
replaces primary science, mathematics, arts, religion or technology curricula.
Protect investigation, reasoning, safe circuits and redesign before adding
more exhibitions/features. Do not invent extra numbered weeks.

The [Weekly A Expo](../Lessons/Grades_5-6_YearA/Week34_STREAM_Expo.md) has one
45-minute preparation meeting and an optional **separate 60-75-minute event**.
Its welcome/orientation/viewing/recognition/close sums to 60-75, not part of
the 99. Buddy teaching/off-site service likewise requires separate booking,
adult coverage, recipient consent and review. Classroom kit handoff and peer
instruction can actually be implemented within the written lesson; outputs
still do not establish long-term outcomes.

Earlier README summaries describe first-pass partial readiness. The lesson
packages and this completion audit are the current evidence; navigation/maps/
overview integration remains parent-owned and was not edited here.

## Audit contract and traceability

The exact **19-column** header is:

```text
lesson_path,grade_band,schedule,rotation,unit,title,meetings,minutes,status,priority,rationale,local_standards,evidence,materials,technology,prep,cleanup,scope,revision
```

All 69 paths unique; all fields nonblank; grade band `5-6`; original positive
integer meetings/native 45 retained. Codes are 2-5 unique
`CST-[CSTEAM][1-3]`, matching the package's individual evidence. These are
[local program competencies](Local_Standards.md), not invented Minnesota,
Archdiocesan, CSTA, NGSS or ISTE benchmarks. Official alignment remains
**VERIFICATION REQUIRED** with the shared standards owner except for the
specific source-verified 2018 Visual Arts practice matches below. Those matches
still require MDE-copy corroboration and school review; they are not school
approval, complete subject coverage or observed mastery.

`materials` contains atomic pipe-separated physical names and exact registered
access/prepared-resource names or their declared aliases, without quantities or
"optional" decorations. Actual quantities/specifications/required versus optional
routes belong to each package's table. [Lesson Resources](Lesson_Resources.csv)
declares Scratch, MIT App Inventor, matching Sphero controls, matching Snap
manuals and dated learning records; these are access/prepared resources, **not
physical inventory purchases**. Companion/emulator and accounts remain locally
approved setup choices. `None` for digital technology never means no physical
materials: Snap/protected-AA operation needs inspected hardware.

Trace from **code -> grade band -> track/unit -> existing lesson -> objective
-> individual evidence** through the CSV and each local-standard/evidence
section. Record observed / prompted / not yet (NE) and actual route. Group
success, handwriting, neatness, confidence, prayer participation, awards and
enthusiasm do not establish individual competency. An exit check is evidence
on one occasion; end-of-grade expected mastery needs the framework's separate
dated observations and changed context, not this document's revision label.

## Source-verified individual-grade Visual Arts practice

The parent and this follow-up directly inspected the state-agency
[Perpich 2018 arts workbook](https://perpich.mn.gov/wp-content/uploads/2020/11/Minnesota-2018-K-12-Academic-Standards-in-the-Arts.xlsx),
source **MN-05**, worksheet `MN2018ArtsEdStandardsVisualArts`, on
2026-10-04. Rows **74/76** contain Grade 5 codes **5.5.2.3.1/5.5.2.4.1**;
rows **87/89** contain Grade 6 codes **5.6.2.3.1/5.6.2.4.1**. Row 87 permits
abstraction, symbolism **or** naturalism; it does not require all three.
These are verified official source entries, unlike the local CST catalog.
**MDE-copy corroboration and school review remain required.**

The [external-alignment CSV](Grades_5-6_External_Alignment.csv) contains these
four arts matches and the separately scoped national CS rows below. It uses
the exact Kindergarten external header, with individual grade **5** or **6**,
not the combined band. Each row names the actual task, individual evidence,
existing path, edition, source, sheet and row. These are complete practice
matches for the specified art route, not inferred science/math codes or
certification of every pupil's performance.

| Grade / verified code / row | Existing lesson and actual practice | Individual evidence and route limit |
|---|---|---|
| 5 / **5.5.2.3.1** / 74 | [Giving Season Making](../Lessons/Grades_5-6_YearA/Week12_Giving_Making.md): sketch two compositions; make and redesign a welcome-card art object using an original image, hierarchy and contrast. | Original/revised layout, two reader checks and the child's before/after visual-choice reason. Count only artistic redesign; a readable title or consent decision alone is insufficient. Primary paper route. |
| 6 / **5.6.2.3.1** / 87 | [Christmas Electronics](../Lessons/Bi-Weekly/Grades_5-6_YearA/Session07_Christmas_Electronics.md): create a purposeful original light-symbol artwork/label, including the supplied star/wreath representation choices, and distinguish meaning from electrical mechanism. | A peer interprets the symbol without coaching; the individual explains a visual choice and what it communicates. The child's own symbolic paper art counts, including the paper-art fallback; switch operation, a component diagram or the word "symbol" alone does not. Protected-AA operation remains a separate four-state assessment. |
| 6 / **5.6.2.4.1** / 89 | [Gratitude Design](../Lessons/Bi-Weekly/Grades_5-6_YearB/Session06_Gratitude_Design.md): create original image/text compositions; a peer interprets action/reason and asks a question; revise the visual communication and retest. | Initial/revised card, reader interpretation/question and an individual reason linking the change to intended thanks. Consent or spelling correction alone is not meaning-focused artwork revision. Primary paper route. |
| 6 / **5.6.2.4.1** / 89 | [Advent Technology](../Lessons/Grades_5-6_YearB/Week13_Advent_Technology.md): create four panels with original imagery; reflect with a peer on interpreting Pause/Share and the invitation; revise visual order/image-text meaning and retest. | Individual first/revised layout, peer interpretation and reader-backed explanation. Paper is the primary art route. Optional digital art counts only after an actual produced file and the same collaborative revision; privacy/time reasoning alone is not the arts evidence. |

**Not claimed:** although row 76's Grade 5 artist-statement benchmark is source
verified, these selected routes do not explicitly require and assess an artist
statement using art vocabulary. A generic design explanation is not promoted
to that benchmark. No science/math number, broad "art" tag, presence of a
computer or theoretical symbolism is used as alignment evidence. No lesson
body, meeting count, local-code set or Snap/protected-AA route was changed to
manufacture a match.

## Substantive changes and preserved purposes

| Family / example | Completed change and retained learning |
|---|---|
| [Experimental Design](../Lessons/Grades_5-6_YearA/Week04_Experimental_Design.md) | Six actual ramp trials, variables/two controls, repeatable distances, worked mean and limit; no chemistry/projectiles. |
| [Structural Engineering](../Lessons/Grades_5-6_YearA/Week05-06_Structural_Engineering.md) / [Bridges](../Lessons/Grades_5-6_YearA/Week10_Advanced_Bridges.md) | Low supports, adult 20/40 g comparisons, force paths, form/retest and equal-unit ratios; no destructive loading or pretend breaking strength. |
| [Optics](../Lessons/Grades_5-6_YearA/Week14-15_Optics_Light.md) | Actual reflection/refraction observations, annotated rays and bounded two-mirror periscope; no Sun/laser/glass route. |
| [Astronomy](../Lessons/Grades_5-6_YearA/Week16_Astronomy.md) / [Space Science](../Lessons/Bi-Weekly/Grades_5-6_YearB/Session10_Space_Science.md) | Verified NASA Earth-Sun fact card, consistent distance-only model and clearly fictional mission budget. No unchecked star counts/current-role/news dependencies. |
| [Passion Projects](../Lessons/Grades_5-6_YearA/Week19-22_Passion_Projects.md) | Four complete meetings, bounded science/music/coding choices, starter facts/rules, dated proposal/test/retest/defense and school-supplied kit; no unrestricted risky build or home sourcing. |
| [Social Entrepreneurship](../Lessons/Grades_5-6_YearB/Week20-23_Social_Entrepreneurship.md) | Complete fictional cost/revenue/capacity/canvas/workflow packet, fair-access alternatives and output/outcome distinction; no brand advertising, real sales or promised impact. |
| [Health Technology](../Lessons/Grades_5-6_YearB/Week25-28_Health_Technology.md) | Four dry information-interface meetings, complete fictional brief/six events, visual hierarchy, consent and usability retest; no clinical testing, bodies as patients, sensors or efficacy claims. |
| [Body Systems](../Lessons/Bi-Weekly/Grades_5-6_YearA/Session04_Body_Systems.md) / [Life Science](../Lessons/Bi-Weekly/Grades_5-6_YearA/Session12_Life_Science.md) | Accurate gas/circulation cards, blood-color limits, cell exceptions and eight-base complement; no pulse/breath assessment, extraction, samples/cultures or medical disclosure. |
| [Environmental Monitoring](../Lessons/Grades_5-6_YearB/Week29-31_Environmental_Monitoring.md) | Preserved invented raw record, verified working-copy correction, ten bars/totals/means, confounds and evidence-limited proposal; not real monitoring or causal savings. |
| [Ecosystems](../Lessons/Bi-Weekly/Grades_5-6_YearB/Session12_Ecosystems.md) | Food-to-consumer arrows, annotated form, energy/matter distinction, bounded perturbation and habitat/access area tradeoff; no wild collection or perfect-balance claim. |
| [Architecture](../Lessons/Bi-Weekly/Grades_5-6_YearB/Session03_Architecture.md) / [Energy Science](../Lessons/Bi-Weekly/Grades_5-6_YearB/Session15_Energy_Science.md) | Measured room paths/form and slow nonlaunching lever heights/energy pathways. Neither certifies real-building access nor quantitative energy efficiency. |
| [Lenten Engineering](../Lessons/Bi-Weekly/Grades_5-6_YearA/Session11_Lenten_Engineering.md) / [Mercy Engineering](../Lessons/Bi-Weekly/Grades_5-6_YearB/Session11_Mercy_Engineering.md) | Complete safe in-class kit delivery/peer-instruction implementation with accepted/deferred status; actual outputs not assumed user benefit. Outside projects remain separately approved. |
| [New Life Technology](../Lessons/Bi-Weekly/Grades_5-6_YearB/Session13_New_Life_Tech.md) / seasonal messages | Genuine visual/music composition, eight-beat rhythm checks and audience revision; safe optional digital production. Resurrection remains distinct from biology and artistic emotion is not a clinical outcome. |
| Goals / gifts / exhibitions | Measurable school-task milestones and buffers, recipient choice, specific message/reader tests and scaled paired defenses; no private spiritual/health goals or 25 plenary talks. |

### Preserved reference set

All eleven retained byte hashes match the frozen baseline:

- Weekly A: [Sphero Mastery](../Lessons/Grades_5-6_YearA/Week02-03_Sphero_Mastery.md),
  [Snap Circuits](../Lessons/Grades_5-6_YearA/Week26-27_Little_Bits.md),
  [Environmental Science](../Lessons/Grades_5-6_YearA/Week29-31_Environmental_Science.md).
- Weekly B: [Biotechnology](../Lessons/Grades_5-6_YearB/Week02-04_Biotechnology.md),
  [Renewable Energy](../Lessons/Grades_5-6_YearB/Week05-07_Renewable_Energy.md),
  [Biomimicry](../Lessons/Grades_5-6_YearB/Week08-10_Biomimicry.md),
  [App Development](../Lessons/Grades_5-6_YearB/Week14-18_App_Development.md).
- Bi-weekly A: [Scratch Advanced](../Lessons/Bi-Weekly/Grades_5-6_YearA/Session05_Scratch_Advanced.md),
  [Christmas Electronics](../Lessons/Bi-Weekly/Grades_5-6_YearA/Session07_Christmas_Electronics.md).
- Bi-weekly B: [Sphero Sensors](../Lessons/Bi-Weekly/Grades_5-6_YearB/Session02_Sphero_Sensors.md),
  [Forensic Science](../Lessons/Bi-Weekly/Grades_5-6_YearB/Session04_Forensic_Science.md).

## Grades 5 and 6: progression and remaining coverage limits

Either year may come first. Check cm/g/counts, sequence/if-else, observation
versus inference and model labels rather than assuming attendance or judging
reading speed. Teach the missing skill in the model window.

| Competency | Grade 5 support/evidence | Grade 6 increment |
|---|---|---|
| Measurement/testing | Large ruler/unit guides; actual repeated values; name changed/measured/two controls | Compare variation/confounds, equal units, explain what was not measured |
| Mathematics/data | Scaffold totals, labeled zero-based graphs, budget steps | Means/ranges/ratios with worked example; denominator, capacity and uncertainty |
| Computing | Trace event/reset/guard using large cards; each device pupil edits/runs | Exact boundaries, state/local-variable behavior, test coverage and access tradeoffs |
| Life/Earth/physical systems | Directed model labels, cell/seed exceptions and observed versus reference | Distinguish energy/matter, omissions, causal uncertainty and additional evidence |
| Engineering | Criterion/constraint, original/retest evidence, one justified change | Defend material/cost/space/access tradeoff and remaining validation |
| Art/music | Intentional visual form/sequence and four-beat composition; reader critique | Defend hierarchy/motif choices and revise without promising universal interpretation |
| Catholic ethics/service | Honest reporting, stated need, consent, resource care | Distinguish output/outcome, source type, privacy/access and unsupported inference |
| Communication | Oral/drawn/scribed result/limit and caption revision | Defensible recommendation, evidence quality and next test; not more ornate presentation |

Repetition is purposeful only when constraints/evidence advance: A route versus
B reset/sensor decision; A bridge form versus B room access; A controlled
weather comparison versus B provenance/cause limits; A basic app events versus
B conditional tests. Repeated seasonal cards/galleries should not displace
investigation or music/science/coding practice.

Coverage still supplemental: paper algorithms do not prove real programming;
models do not establish microscopy/clinical competence/real environmental
monitoring. The preserved circuits do not certify Ohm's-law/current-measurement
proficiency. Longer research, source comparison, sustained observation,
advanced autonomy, app persistence and externally validated service would
need additional approved instructional time, not missing core instructions.

### Meaningful C/S/T/E/A/M practice

Conservative method: count each domain once/package only from practiced
local-code evidence, not tags, prayer, decoration, opening a laptop or an
"all areas" title. Choice routes can contain additional genuine art/music/
science not counted in the common capstone codes. Counts are opportunities,
not mastery or equal instructional minutes.

| Track | C | S | T | E | A | M | Packages |
|---|---:|---:|---:|---:|---:|---:|---:|
| Weekly A | 16 | 9 | 5 | 11 | 7 | 9 | 20 |
| Weekly B | 15 | 5 | 4 | 9 | 8 | 6 | 15 |
| Bi-weekly A | 16 | 5 | 7 | 8 | 6 | 4 | 17 |
| Bi-weekly B | 17 | 4 | 7 | 8 | 8 | 4 | 17 |
| Total | **64** | **23** | **23** | **36** | **29** | **23** | **69** |
| Share, overlapping | 92.8% | 33.3% | 33.3% | 52.2% | 42.0% | 33.3% | Not additive |

Engineering remains prominent. Mathematics is now explicit in service costs/
habitat area as well as budgets, circles, graphs and measured models; music is
real beat/motif work, not mislabelled Mathematics. Life/Earth/physical science,
data and source inquiry retain distinct tasks. Preserve these rather than
turning the program into interchangeable paper-engineering challenges.

## Technology plan and physical gates

Current audit distribution: **51 None, 3 Optional, 9 Recommended, 6 Required**.
None/Optional/Recommended describe primary-path digital needs, not equipment-free
operation. Paper routes honestly assess local reasoning; digital production/
robot measurements/circuit operation are separately recorded.

The six Required packages now contain complete executable reference blocks:
[Gratitude Coding](../Lessons/Grades_5-6_YearA/Week11_Gratitude_Coding.md),
[Advanced Scratch](../Lessons/Grades_5-6_YearA/Week24-25_Advanced_Scratch.md),
[App Inventor](../Lessons/Bi-Weekly/Grades_5-6_YearA/Session08_App_Inventor.md),
[Scratch Games](../Lessons/Bi-Weekly/Grades_5-6_YearB/Session05_Scratch_Games.md),
[Advent Coding](../Lessons/Bi-Weekly/Grades_5-6_YearB/Session07_Advent_Coding.md),
[App Design](../Lessons/Bi-Weekly/Grades_5-6_YearB/Session08_App_Design.md).
If school-approved working setups exist, pupils assemble/edit/**actually run**
the starter and compare expected/actual tests. Paper fallback explicitly changes
to algorithm/interface reasoning and defers runtime evidence; it never quietly
certifies programming. The coding choice in Passion Projects follows the same
rule. Optional digital message routes actually produce a file when chosen.

Teacher/IT must confirm current age/privacy policy, approved school-managed
individual access, compatible editor/Companion/emulator, save and device capacity
before class. Never shared passwords, personal/home account requirements, public
uploads, private inputs, tracking, camera/GPS/microphone or cloud database in core.
At 25 pupils, nine simultaneous setups require actual stock; insufficient devices
means the specified shared route or documented deferred operation, not an
invented queue or automatically treating observers as operators.

### Executable shared-kit routes without larger groups

The six new Required programming packages, three new optional BOLT packages and
the coding choice in Passion Projects now include **ten specific three-setup
alternatives**, alongside their original one-setup/team routes. Passion Projects
uses its coding waves in meetings 2-3 while science/music continue their own
complete paths. Choose one allocation, never add both. The teacher demo
uses an issued setup; no extra device/kit or holding is assumed.

Keep the balanced distributions in the optional
[Grades 1-6 reference routines](../Resources/Grade_Band_Reference_Routines.md):
10 = two trios/two pairs; 15 = five trios; 20 = six trios/one pair;
25 = seven trios/two pairs. This guide does not replace any package's own
supplies, code/test key, native numbered steps or safety conditions.

With three actually approved/pretested setups, teams 1-3 use **11-19**, teams
4-6 **19-27**, teams 7-9 **27-35**. These windows occupy the existing combined
steps 3-4 period; the **0-11 introduction/model, 35-41 individual check and
41-45 cleanup** remain unchanged. At 10/15 pupils, two waves suffice and the
last eight minutes support retests. Three waves take **24 minutes** and cover
up to nine groups without making any group larger than three.

Every operator has up to two minutes for a **meaningful code change and actual
execution**, with two minutes/team for approved transitions, reset and checking.
The exact edits/tests are in the lesson: list index repair, square/clone
parameter changes, app reset/branch repair, game reset cases, Advent state
reset, four real sensor readings, a bounded robot endpoint/retest pair or the
Passion Projects labelled <4/<3 guard comparison.
Waiting pupils complete their own specific traces/design/data records, not
passive watching. The two-pupil robot teams use their spare third turn to
retain **three trials per condition**.

Preloading the complete printed reference, approved account switching,
surface/supervision checks and turn timing are **advance preparation** and
must be piloted on actual equipment. This shared route teaches editing/
executing a provided program, **not independent from-scratch construction**.
With only one/two safe working setups, that many teams use each window;
remaining operation checks are booked later and recorded paper-only/NE.
Do not rush accommodations, share passwords, turn a partner's action into
another child's operation evidence or claim all children executed if they did not.
The eleven preserved references, especially Snap's actual eight-kit/five-station/
two-wave plan, are unchanged by these new alternatives.

The audit now names **15 registered access references** across required/optional
Scratch, App Inventor, Sphero and Snap-manual routes. Their resource-register
status is **NOT A PHYSICAL INVENTORY PRICE**, never a fabricated device holding,
software price or approval. `journal`/`portfolio` are declared aliases for
prepared dated learning records; preparing/storing those records still needs
the counted paper/tools and teacher time.

### Snap Circuits and protected-AA references

Preserved Snap plan uses **eight reported individual OHM-135 classroom kits**,
not eight multi-kit packs or confirmed inspected inventory. At 10/15/20:
4/5/7 teams and stations; at 25: **nine teams, five stations, two 14-minute
waves**, with controlled reset/reserves and individual physical turns.
Selected manufacturer-approved slide-switch/lamp project is **two states,
tested twice**. No assumption about battery count, push button, LED resistor
or protection from the kit name. Model/manual/power/safety gates and the
[parent-owned classroom guide](../Resources/Snap_Circuits_Classroom_Guide.md)
remain unchanged; this pass did not approve the stock.

The audit's kit name resolves to the separate
[reported OHM-135 holding](Reported_Holdings.csv), not a priced generic circuit
kit. Eight is a school-reported quantity, **not physically verified**, and no
price is invented. `Access: matching Snap Circuits manual` resolves to the
manufacturer-instruction resource; it is not a generic project-diagram purchase.

The **separate protected-AA supply/push-switch/LED-resistor route retains its
four-state key**. No mixing supplies/modules, bypasses, shorts, coin cells,
mains/USB substitutions, soldering or take-home circuits. Qualified adult
inspection and isolation precede changes. Warm/damaged/leaking/smelly parts:
stop, isolate, report OUT OF SERVICE. Without safe physical kits, reasoning/
design can proceed, **electrical operation is deferred**.

For that separate route, canonical procurement names are **Protected switched
2-AA circuit pack**, **AA alkaline cell**, **Adult-prepared sleeved LED/resistor
assembly** and **Insulated clip lead**. The qualified adult must confirm the
actual holder's enclosed contacts/switch/short protection, compatible 3 V cells,
red LED/220-ohm 1/4-watt series resistor/polarity/sleeves and three-lead path.
The specific assembly is **not** silently replaced by a generic LED module;
none of these names makes it compatible with Snap modules. Reference bodies,
quantity tables, actual state keys and station/wave timings remain unchanged.

## Materials, scale, budgets and workload

### Audit-only material and resource reconciliation

All **69 audit lists**, including the 11 reference rows, now use selected
physical/resource/holding terms. Only `materials` changed in this normalization;
the other 18 audit fields are preserved. Compatible concurrent masking-tape,
hardware and ACCESS declarations were retained. Dated records use the declared
prepared-resource format, not a fictional notebook or software purchase.
Physical quantities remain those in the actual lesson tables, not a quantity
inferred from an audit name.

Exact software/manual ACCESS names are not priced physical supplies. OHM-135
is a separate reported holding with actual model/manual/preflight checks, not
a newly priced or confirmed classroom pack. Any specified physical type not yet
listed by the parent inventory owner remains a real physical requirement:
do not disguise it as a prepared resource, invent a price or substitute a
different tool solely to satisfy a name matcher.

### Adhesive type clarification

All newly rebuilt paper/cardboard kits now specify **masking tape**, not a
generic Tape/Glue item. The two new optional robot floor-lane rows specify
**Removable floor-marking tape**; an adult checks the actual product's
adhesion/removal compatibility with the school's surface. The registry's
FLOORTAPE type is not an automatic masking/painter-adhesive equivalent.
Quantities and tests are unchanged. The app's short `tape`
input is explicitly a fictional masking-tape category, not unspecified adhesive.

The audit also records masking tape for preserved reference paper/cardboard
mounting and includes the already-written masking-tape rows in Sphero Mastery
and Environmental Science. This is a procurement clarification, not a change
to the eleven reference bodies or their timing/evidence. Masking/floor-marking
tape is **not electrical insulation**, a replacement for sleeved leads,
short-circuit protection, or permission to mount anything on the Snap grid.
The Snap no-extra-mounting-tape gate and separate protected-AA specifications
remain unchanged.

New lesson tables separate per-student records, shared team tools and teacher-only
loads/optics/devices. Teams of at most three: **4/5/7/9** at **10/15/20/25**.
Consumable/reusable distinctions, cut/pour/load preparation, actual role turns
and cleanup are specified. Same kits are reused across alternative schedules;
do not sum all four tracks into a single classroom purchase order.

The new 58 packages contain **285 supply rows** checked at all four sizes:
**1,140 table cells / 1,172 numeric quantity comparisons** (compound paper/
pencil cells contain two quantities). Exact decimal scaling is checked rather
than floating-point equality. Useful quantities at 25 include:

- Ramp investigations: nine ramps/balls/trays/rulers, 18 books; six trials/team.
- Serial structure comparisons: four shared 10 g packets/class, adult 20/40 g
  cap; nine low trays; no nine sets of dangerous maximum loads.
- Optics: 18 plastic mirrors/supports, nine channels/cups/trays; **900 mL**
  adult-poured water, no water near power. One teacher graduated measuring cup
  portions it before class; transparency does not imply volume calibration.
- Class kit service: 27 kit sheets + 25 individual evidence sheets = **52**;
  nine folders/rulers/labels, accepted/deferred status recorded.
- Core standalone computing: nine working setups if all teams execute
  simultaneously, or three preloaded approved setups in the defined waves.
  Apps need tested device/emulator access; no loan/holding is guaranteed.
- Shared robot lanes: three optional setups and **6 m** removable floor-marking
  tape, instead of nine setups/**18 m** at 25 pupils. Actual space, surface,
  supervision and stopped reset/turn timing must be checked.

Preparation estimates are planning estimates, not observed stopwatch results.
Most paper packages need 10-20 minutes; first optics/structures/capstone/code
kits may need 25-30. Device approval and first electrical inspection are
additional work, not concealed inside a 20-minute substitute arrival.
Prebuild/inspect reusable kits, then use repeat preparation and actual school
location/contact. Adult serial tests budget roughly one minute/team; pilot
throughput locally and defer evidence rather than compress safety.

### Planning allowances retained from reference-kit audit

Not October 2026 retailer quotes; exclude tax/shipping; confirm stock/specs.
These are reusable starter/reference configurations, **not a claim that every
69-package physical/digital option is funded**. Parent owns master procurement.

| Configuration | Arithmetic / planned spend | Honest capacity |
|---|---|---|
| Paper/reference starter | Paper $5 + pencils $5 + rulers $6.75 + markers $4.50 + scissors $9 + journals $20 + masking tape $6 + storage $7.50 = **$63.75** | Core paper/model/data work; existing clean cardboard/books/board/clock only if truly available |
| Separate protected-AA addition | Protected holders $100 + switches $20 + sleeved assemblies $20 + insulated leads $15 + AA cells $10 + trays $9 + storage $5 = **$179** | Ten checked sets including spare; not Snap procurement or bare-holder permission |
| About $250 | $63.75 + $179 = **$242.75** | Conditional paper/circuit starter; hardware specs still verified locally |
| High-value physical additions | Pinwheels $18 + thermometers $16 + soft balls $9 + guarded fan $25 + scale $15 + tape measures $10 + sealed packets $5 + printing $3.75 + flashlights $27 = **$128.75** | Rotor/ramp/load/light reference needs, subject to stock checks |
| About $500 | $242.75 + $128.75 = **$371.50**; optional 10% reserve $37.15 -> **$408.65** | Reusable physical core, additional mirror/cup/lid/lever quantities from lesson tables still checked locally |
| About $1,000 | $371.50 + one robot $250 + one tablet $150 = **$771.50** | One station, not independent operation for 25 in one period |
| About $2,500 | $371.50 + five robot/tablet pairs at $400 = **$2,371.50** | Shared optional hardware; needs equitable extra station time |
| Nine simultaneous pairs | $371.50 + 9 x $400 = **$3,971.50** | Exceeds $2,500; do not conceal mismatch |

No family purchases/donations/home devices are prerequisites. Reuse clean paper/
cardboard, not private records, dirty packaging, appliances, unknown containers,
sharps or batteries. Kit names in lessons are labels, not invented closet
locations. All actual procurement/storage/reservation facts remain local checks.

## Quality scoring and signature experiences

Editorial 0-3 scale (absent/unsafe; named; teachable with limits; explicit under
conditions), 14 dimensions, max 42. Order: rigor, development, Catholic
integration, traceability, hands-on, clarity/substitute use, low-tech access,
cost/prep, individual evidence, inclusion, safety, scale, family, progression.
Scores are document judgments, not validated psychometrics or learning gains.

| Example | Baseline | Completed document | Reason / limit |
|---|---|---|---|
| Health Technology | 12/42 | 3/3/3/2/2/3/3/3/3/3/3/3/3/2 = **39/42** | Complete brief/starter/tests/ethics; dry interface intentionally not clinical engineering or certification |
| Passion Projects | 16/42 | 3/3/3/2/3/3/2/2/3/3/3/3/3/2 = **38/42** | Real bounded science/music/code choice and dated evidence; devices/first prep remain conditional |

**Grade 5 signature:** safe accessible indicator. Weekly A's preserved Snap
two-state/two-cycle route and label retest; bi-weekly A's protected-AA four-state
route. These are not interchangeable evidence keys. Without inspected hardware,
operation remains deferred. Bi-weekly B can use the preserved fictional forensic
packet as an alternative memorable investigation, not a real laboratory.

**Grade 6 signature:** evidence-limited common-home design defense. Use weather/
energy records, rotor/form tests or food-web/habitat choice plus resource/
access/uncertainty explanation. The grade increment is defended evidence and
tradeoffs, not a more ornate craft or assumed external impact.

## Seven desk simulations and honest boundaries

These are checks of written plans, not observed classroom/substitute outcomes.

| Original simulation | Grades 5-6 result / remaining local condition |
|---|---|
| Substitute, originally Grade 3 | Grade 3 outside ownership. Grades 5-6 now have complete packets/kits/tests/cleanup. A 20-minute arrival still requires prebuilt inspected kits for longer-prep/device/circuit routes; actual contact/location and pilot needed. |
| Kindergarten nonreader | K outside ownership; current K reference read as prior art, not edited/certified. Grades 5-6 oral/scribed/large-card/seated supports retain each child's evidence. |
| No devices | 51 None paths and paper alternatives remain usable. Six Required programming packages explicitly shift to reasoning and defer runtime. Physical circuits still need approved kits. |
| Minnesota January, -10 F | All primary paths indoors; no Sun/night/cold/unknown-water/trash exposure or weather-dependent specimen collection. |
| 25 pupils | Exact nine balanced teams, paired exchanges and three-setup programming/BOLT alternatives; no groups of four or 25 serial talks. Adult load/inspection/access/lane throughput must be piloted; preserve safety/NE if overrun. |
| Tight budget | Paper/reusable core prioritized, no family purchase. Hardware options require actual stock/specs; reference prices are allowances, not comprehensive procurement approval. |
| Parent asks what was learned | Each package supplies a copy-ready explored/did/learned/Catholic/ask block; teacher names actual/fictional, paper/device and observed/deferred evidence. No universal achievement claim. |

Every lesson has its own family copy. Use it **after actual delivery**, adjusting
tense/route to what happened. Optional conversation only; no routine homework,
home account, research, fasting, purchases, collections or family service.

## Verified sources

### Heritage cards tied to individual inquiry

The rebuilt [Catholic scientific heritage resource](../Resources/Catholic_Scientists_Heritage.md)
was read, and its Mendel card is reused by paraphrase in the two owned source
studies. [Masaryk University's Mendel Museum](https://mendelmuseum.muni.cz/en/about-the-museum/mendel-museum)
was also directly checked: Augustinian membership/abbacy, pea experiments and
preserved original objects/work are supported; private faith motives, sole
discovery or a classroom method for every historical experiment are not.

- [Catholic Scientists](../Lessons/Bi-Weekly/Grades_5-6_YearA/Session09_Catholic_Scientists.md)
  now requires each pupil to tally and compare two complete **invented model
  samples**: A **8 R / 2 W**, B **7 R / 3 W**, ten labels each. Combined
  **15 R / 5 W / 20** gives **3:1**; Grade 6 may check **75%/25%**. The
  pupil cites a museum fact, compares their counted data, revises an evidence
  poster and explains that model counts are neither Mendel's measurements nor
  proof of inheritance or faith. Source recall alone is insufficient.
- [Science and Faith](../Lessons/Bi-Weekly/Grades_5-6_YearB/Session09_Science_Faith.md)
  uses the same bounded source card while retaining each child's **actual
  ruler measurement** and observation/history/faith claim comparison. Biography
  does not replace the student's own inquiry evidence.

All data, questions and teacher keys are written into the complete packages;
no hidden handout, plant experiment, personal-trait survey or home research
is required. Times, class-size supply quantities, priorities, local-code sets
and preserved reference bodies remain unchanged. The audit retains the parent's
canonical physical names and adds only the declared prepared-card/source-text
resources, without a physical-item price. No old Pasteur/Jesuit quotations,
Mendel personal-faith claims or unsupported discovery priority is reinstated.
The other three heritage cards remain available, not forced into these lessons.

### Grade 1-2 visual-arts integration handoff

This bounded follow-up is for parent integration, **not Grade 5/6 alignment**.
The [additional alignment CSV](Grades_1-2_External_Alignment.csv) uses the exact
Kindergarten external header and individual grade values 1/2, never a band.
No Grade 1-2 lesson, its audit baseline, shared source catalog or navigation was
changed. The thirteen existing Grade 1-2 reference audit material lists already
use atomic physical names, including Masking tape where present; no unsafe
material equivalence or reference-body edit was necessary.

Direct inspection on October 4, 2026 of the
[MN-05 state-agency workbook](https://perpich.mn.gov/wp-content/uploads/2020/11/Minnesota-2018-K-12-Academic-Standards-in-the-Arts.xlsx),
edition **2018**, sheet **MN2018ArtsEdStandardsVisualArts**, confirms rows
22/24/35/37. Only the following two complete written task/evidence matches are
recorded; source verification is not observed achievement or school approval.

| Individual grade / benchmark / workbook row | Full paraphrased benchmark | Written lesson task and individual evidence |
|---|---|---|
| Grade 1 / **5.1.2.3.1** / row **22** | Identify and use symbols in creating art. | [Making Gifts](../Lessons/Grades_1-2_YearA/Week12_Making_Gifts.md): each child plans a symbol/message, creates a flat bookmark and tells a purposeful picture choice. The child identifies the symbol used in their own work; functioning as a page mark alone is insufficient. |
| Grade 2 / **5.2.2.4.1** / row **37** | Describe choices at different steps of an art-making process. | [Digital Art](../Lessons/Bi-Weekly/Grades_1-2_YearB/Session08_Digital_Art.md): intended message, drawing/tool choice, trial detail/Undo and purposeful alternative after feedback; each child explains tool input/output and justifies the artistic revision. Keep the individual before/after record; feature counts or a partner's actions alone are insufficient. |

The Grade 1 revision benchmark **5.1.2.4.1** (row 24) additionally requires
discussion of revision possibilities using artistic foundations; a revision
label/readability check alone does not establish that full evidence.
Grade 2 **5.2.2.3.1** (row 35) specifies representing **natural and constructed**
environments. A natural habitat drawing alone does not cover both, so it is
not asserted. No unrelated activity was added to force a match.

Both rows retain **SOURCE VERIFIED - SCHOOL AND MDE-COPY REVIEW REQUIRED**:
the directly inspected Perpich copy supports provenance, while corroboration
against the MDE-hosted official copy and school review remain outstanding,
as in the parent [source catalog](Standards_Sources.md). This does not certify
complete visual-arts coverage, any of the other four arts areas, or a science/
mathematics benchmark.

Current completion-pass direct checks, October 4, 2026; original paraphrases,
not copied quotations or invented official benchmark numbers:

| Source | Verified use / limit |
|---|---|
| [Fides et Ratio, opening](https://www.vatican.va/content/john-paul-ii/en/encyclicals/documents/hf_jp-ii_enc_14091998_fides-et-ratio.html) | Faith/reason and truth; not universal historical proof or exclusive HOW/WHY division |
| [Catechism 2475-2478](https://www.vatican.va/archive/ENG0015/__P8K.HTM) | Truth/reputation/rash judgment; protects evidence and people |
| [Catechism 2402-2406](https://www.vatican.va/archive/ENG0015/__P8A.HTM) | Common stewardship/resources/solidarity and benefit to others |
| [USCCB social teaching themes](https://www.usccb.org/beliefs-and-teachings/what-we-believe/catholic-social-teaching/seven-themes-of-catholic-social-teaching) | Retrieved creation-care guidance; not local official benchmark certification |
| [NASA Earth facts](https://science.nasa.gov/earth/facts/) | Approximate average 150 million km / 1 AU and eight-minute light time; hypothetical other markers explicitly invented |
| [NHGRI Mendel's Peas](https://www.genome.gov/25520230/online-education-kit-1865-mendels-peas) | Augustinian role and pea experiments; avoid date/publication-priority superlatives and universal trait claims |
| [Villanova Library Mendel holdings](https://sciencefromthestacks.library.villanova.edu/rediscovering-gregor-mendel-os) | Plant-hybridization paper/archive holdings; catalog not evidence for private motives/quotes |
| [MIT HelloPurr](https://appinventor.mit.edu/explore/ai2/hellopurr) / [UI reference](https://ai2.appinventor.mit.edu/reference/components/userinterface.html) | Designer/components, Button.Click and editable properties; confirms workflow, not school access or this project's runtime |

Preserved references also retain the first-pass source record for
[Laudato Si'](https://www.vatican.va/content/francesco/en/encyclicals/documents/papa-francesco_20150524_enciclica-laudato-si.html),
[September 7, 2025 canonization homily](https://www.vatican.va/content/leo-xiv/en/homilies/2025/documents/20250907-omelia-frassati-acutis.html)
and [NASA solar-system context](https://science.nasa.gov/solar-system/).
Those lesson documents/source choices are preserved, not newly rewritten or
claimed re-tested in this pass. Unnecessary inherited quotes/biographies/current
roles were omitted from the new 58. Generalized science fact/model cards and
fictional data are fully supplied; they are not patient/field observations.
Religion teacher confirms any optional exact Bible translation before quoting.

### Bounded national computer-science mappings

The [Grades 5-6 external-alignment CSV](Grades_5-6_External_Alignment.csv)
preserves the four existing Minnesota visual-arts rows and adds **two national
CSTA 2026 candidate matches**, both **MS-ALG-PS-03**. Source **NAT-01** is the
[publisher's current public viewer](https://csteachers.org/pk12standards/view/);
the parent directly verified its 2026 detail record and assessment boundaries.
Grade **6** is our participating grade **within CSTA's national middle-school
6-8 band**, not a newly invented single-grade national benchmark.

The full paraphrased scope is to check a **given algorithm's accuracy for
specific inputs** by tracing or running it and comparing actual/expected
results. Neither a formal correctness proof, efficiency analysis nor
optimization is required or claimed.

| Grade / national code | Existing task and individual evidence | Claim boundary |
|---|---|---|
| 6 / **MS-ALG-PS-03** | [App Design](../Lessons/Bi-Weekly/Grades_5-6_YearB/Session08_App_Design.md): provided Find/Clear rules, six test cases and an independent `ruler`/`crayon`/`Ruler` trace; retain expected/actual outputs and branch correction/retest. | Accuracy of this given algorithm for the stated cases. Paper tracing may evidence the national scope; actual app programming/operation still needs observed execution. |
| 6 / **MS-ALG-PS-03** | [Scratch Games](../Lessons/Bi-Weekly/Grades_5-6_YearB/Session05_Scratch_Games.md): supplied two-round program, `4/4`, `4/3`, `3/3` score keys, individual trace and reset-bug test/retest. | Compare the observed/traced score with the expected key and explain tested-case accuracy. No formal proof, general optimization or device execution claim from paper. |

Status is **SOURCE VERIFIED - NATIONAL FRAMEWORK SCHOOL REVIEW REQUIRED**.
Source verification and a complete written task/evidence match are not observed
student mastery, Minnesota adoption, Archdiocesan approval or complete CS
subject coverage. The schema's `workbook_sheet` identifies the **CSTA 2026 public
viewer**, and `workbook_row` holds its verified numeric publisher record
**350275**, not an Excel row. Subject, edition, source URL and locator match
the [verified benchmark register](External_Benchmark_Register.csv).

The persisted owned CSV supplies **four arts candidates plus two bounded CS
candidates**, covering both individual grades **5 and 6**. Its exact 14-column
header matches the parent integration contract. The four arts rows retain the
MN-05 status **SOURCE VERIFIED - SCHOOL AND MDE-COPY REVIEW REQUIRED** and their
actual rows **74 / 87 / 89 / 89**; the two national rows use the distinct NAT-01
status above. These are six task/evidence rows across four unique identifiers,
not additional lesson code tags. Shared register, builder, matrix and navigation
files were not changed or generated by this workstream.

No priority lesson, pacing, local CST code or preserved reference was changed
for these labels. Grade 5 **E5-ALG-PS-01** is not added merely because a lesson
names variables or loops: its visual-representation requirement plus variables
and sequence/events/iteration/selection must all be evidenced. Text starters,
an isolated control structure or a partial trace alone are insufficient.
The Grade 1-4 codes supplied by the parent are not assigned to this grade band.

## Local verification evidence

Frozen baseline contains all 69 starting lesson copies, audit/review/request
and SHA-256 keys. Session-local completion checker verifies:

- **58 changed targets / 11 preserved hashes**, all 69 paths and exact 19 fields.
- Frozen status/priority/schedule/rotation/unit/title/scope/meeting/URL keys;
  native integer 45; all revisions rebuilt; nonblank fields/enums.
- 2-5 unique inline/audit local codes, atomic physical materials, current
  technology/scope/domain totals and individual evidence boundaries.
- **74 new contiguous 45-minute timelines / 444 numbered steps**; total
  99 original meetings/4,455 minutes remains unchanged.
- **285 new supply rows / 1,140 cells / 1,172 numeric comparisons** at all four
  class sizes, including compound student-paper/pencil quantities and decimals.
- Existing local links and balanced code fences across lessons, READMEs and
  review; worked mathematics/state examples, including list guards/reset,
  functions/clones, strict thresholds, app input cases, six health transitions,
  budget/capacity, weather/energy totals, habitat fractions and rhythm beats.

Checks pass along with scoped whitespace/editor diagnostics. The final link
count is recorded in the session validation artifact because review links are
also included. Arithmetic/state checks are independent desk simulations,
**not live Scratch/App Inventor/BOLT execution, device compatibility, electrical
certification, student outcomes or global site build**. No new package/tooling
dependency, shared build edit or commit was required.

The parent lesson-reference validator also passes on the **current owned audit
and frozen owned baseline inputs**:
**69 complete documents, 99 contiguous native meetings, 619 intervals and
77 relative lesson links**. Four existing exit steps were clarified to say
"Each student independently" without changing their tasks, tests or timing.
The unmodified validator's two input paths were redirected in memory only;
validation logic and all repository scripts remained unchanged.

At this check, the parent-owned [shared map](Lesson_Map.csv) still held the
first-pass **58 improved / 11 rebuilt** rows. Direct invocation against that
stale map correctly rejects an unfinished row; it is not a failure of the
current audit/lesson bodies. No map generation, shared-map write or baseline
rewrite was performed here. Parent integration can consume the completed audit
and rerun its normal validator after its own map refresh.

## Remaining external/local release checks only

**No unfinished lesson-package rebuild remains in this owned cohort.** Baseline
priority labels remain historical severity, not a live repository repair queue.
Before teaching, school/parent workstreams still must:

1. Confirm current official Minnesota/Archdiocesan guidance/benchmarks with the
   shared standards owner; local codes are not official approval. Earlier
   inaccessible pages did not prove no standards exist.
2. Count actual inventory/locations, obtain approved loans/resources, confirm
   protected-AA specifications or matching Snap model/manual, inspect equipment
   and document adult safety contacts. Reported stock is not inspection.
3. Approve accounts/privacy/accessibility, pretest real editors/Companion/
   emulator/BOLT and arrange every pupil's observed runtime/physical turn.
4. Fit calendar/seasonal content, accommodations, safe space/staffing and
   separate public/buddy/recipient events; verify consent/media policy.
5. Pilot written timing/inspection throughput and collect actual individual
   evidence. Log deferred/NE honestly; retest rather than assert observed success.

Shared procurement/maps/navigation and other grade bands are outside this
workstream. The completed owned packages/audit/review supply their integration
inputs without editing those shared surfaces.
