# Grades 3-4 C-STREAM review: repository completion

> **Release terminology (October 5, 2026):** "complete package/reference" below
> means a revised lesson pathway. The expanded
> [teacher-artifact audit](Teacher_Artifact_Readiness.md) separately controls
> classroom/substitute release and currently holds every lesson.

**Review date: October 4, 2026.** This follow-up owns only the four Grades 3-4
lesson directories, their four indexes, [the band audit](Grades_3-4_Audit.csv)
and this review. The parent-authorized arts follow-up also adds
[the band's external alignment CSV](Grades_3-4_External_Alignment.csv).
Shared resources, materials/standards databases, maps,
navigation and other grade bands were read where needed, not edited.
No commits, nested agents, purchases, classroom trials or school certification.

## 1. Closure and frozen baseline

The request, current review, audit and **all 60 remaining lesson texts** were
read before lesson edits. All 71 lesson files, the audit, review and request
were copied to scoped session artifacts; immutable audit keys were separately
frozen. The four indexes were copied before their updates. The shared Snap guide
was also copied for a read-only hash check.

| Measure | Before this follow-up | Current repository result |
|---|---:|---:|
| Lesson packages | 71 | 71 |
| Rebuilt | 11 | **71** |
| Improved but incomplete | 48 | **0** |
| Byte-unchanged incomplete packages | 12 | **0** |
| Newly completed packages | 0 | **60** |
| Meetings in those 60 packages | 80 | **80 explicit 40-minute sequences** |
| Existing rebuilt references preserved | 11 | **11 teaching payloads preserved; 9 byte-identical and 2 section-heading clarifications** |
| Represented meetings, all alternatives | 99 | **99 / 3,960 minutes** |
| Repository-resolvable lesson packages left | 60 | **0** |

**Baseline judgments remain unchanged:** 59 KEEP + IMPROVE and 12 REBUILD;
34 P0, 21 P1 and 16 P2. They describe the frozen first-pass condition, not a
current readiness finding. Path, band, schedule, rotation, unit, title,
meeting count, status, priority and scope are preserved. Every `minutes`
value remains the integer **40 per meeting**, never a unit-total string.
The exact CSV contract remains:

```text
lesson_path,grade_band,schedule,rotation,unit,title,meetings,minutes,status,priority,rationale,local_standards,evidence,materials,technology,prep,cleanup,scope,revision
```

Revision changed to `rebuilt` only after the full new bodies passed package,
timeline and quantity checks. The audit's task codes, evidence thresholds,
atomic pipe-separated materials and current technology describe the delivered
references. Metadata synchronization is mechanical bookkeeping, not a lesson
generator; the 60 lesson bodies were manually rebuilt.

The previous **27-package P1 follow-up list is closed for repository work**.
It overlapped baseline priorities and included Snap physical preflight, which
cannot be performed by editing prose. Its 26 incomplete lesson bodies now have
complete kits/workflows/individual checks; the already-rebuilt Snap package
retains its local physical gate. The other 34 incomplete packages, including
all 12 formerly unchanged lessons, were completed too. Counts are not added as
independent sets.

## 2. Actual scope and calendar

| Alternative track | Files | Meetings | Minutes | New packages / preserved references |
|---|---:|---:|---:|---:|
| [Weekly A](../Lessons/Grades_3-4_YearA/README.md) | 20 | 32 | 1,280 | 17 / 3 |
| [Weekly B](../Lessons/Grades_3-4_YearB/README.md) | 17 | 33 | 1,320 | 14 / 3 |
| [Bi-Weekly A](../Lessons/Bi-Weekly/Grades_3-4_YearA/README.md) | 17 | 17 | 680 | 14 / 3 |
| [Bi-Weekly B](../Lessons/Bi-Weekly/Grades_3-4_YearB/README.md) | 17 | 17 | 680 | 15 / 2 |
| Audit total, not one pupil's annual schedule | **71** | **99** | **3,960** | **60 / 11** |

Weekly A retains Week 17 winter break and Week 32 spring/Easter break.
Weekly B includes Week 17 within Marine Science, with Week 32 absent.
Original meeting counts were not compressed or inflated to nominal Week 34.
The principal still reconciles actual closures/liturgical dates. A/B means
different contexts in a combined Grade 3/4 rotation, not Grade 3=A, Grade 4=B.
Either rotation can be a novice's first year.

All new packages are self-contained references: measurable purpose/objective,
Catholic action, 2-5 unique local codes, technology and preflight, scalable
supplies, vocabulary/background/misconception/answer, numbered native meetings,
actual questions, individual evidence and cleanup, troubleshooting, visible
safety, Grade 3 support/Grade 4 challenge, indoor path and optional family copy.
Supplied safe directions replace obsolete unsafe menus; old options were not
left executable beneath a generic override or appendix.

## 3. Preserved references and Snap integration

The following eleven references retain their original teaching directions,
objectives, quantities, native intervals and model/kit gates. Nine are byte-
identical to the starting snapshot. Light & Circuits and Plants have only a
section-heading clarification for the parent's final reference-validator contract;
their full payloads match the snapshot when those two headings are restored:

- Weekly A: [Sphero](../Lessons/Grades_3-4_YearA/Week02-03_Sphero_Advanced.md),
  [Bridge](../Lessons/Grades_3-4_YearA/Week10_Bridge_Engineering.md),
  [Snap Circuits](../Lessons/Grades_3-4_YearA/Week26-27_Little_Bits_Circuits.md).
- Weekly B: [Flight](../Lessons/Grades_3-4_YearB/Week02-03_Flight_Fundamentals.md),
  [Game Design](../Lessons/Grades_3-4_YearB/Week19-22_Game_Design.md),
  [Weather](../Lessons/Grades_3-4_YearB/Week29-31_Weather_Station.md).
- Bi-Weekly A: [Dash](../Lessons/Bi-Weekly/Grades_3-4_YearA/Session02_Dash_Code.md),
  [Light & Circuits](../Lessons/Bi-Weekly/Grades_3-4_YearA/Session07_Light_Circuits.md),
  [Plants](../Lessons/Bi-Weekly/Grades_3-4_YearA/Session12_Plants_Growth.md).
- Bi-Weekly B: [Ozobot](../Lessons/Bi-Weekly/Grades_3-4_YearB/Session02_Ozobot_Coding.md),
  [Christmas Circuits](../Lessons/Bi-Weekly/Grades_3-4_YearB/Session07_Christmas_Circuits.md).

The [Snap classroom guide](../Resources/Snap_Circuits_Classroom_Guide.md) is also
hash-unchanged. Preserve the **eight reported individual kits**, not eight
six-kit packs; matching in-box manual/model/age/power conditions; station
counts **4/5/7/5**, teams **4/5/7/9**, and two waves at 25 pupils.
Battery allocation remains `stations * b`, with `b` from the actual approved
project, not guessed AA stock. The separate protected-AA route is not a Snap
conversion; parts/supplies are never mixed. Paper work does not release physical
circuit objectives. Shared holdings/prices and another band's circuit edits
were not changed.

The new bi-weekly LittleBits package specifies one matching power/button/light
module per issued station, with its own manufacturer and supply gates.
It does not replace Snap safety with an invented circuit. New Easter art needs
no illuminated circuit; older battery-option menus were removed.

## 4. Substantive completion, not relabeling

| Area | Completed teaching/evidence change |
|---|---|
| Inquiry and structures | Repeated ramp readings; affordable 20/30-plank KEVA kits; fixed load/height caps; actual same-condition redesigns and individual count/length comparisons |
| Community helpers and gifts | Specified user brief, readable word/symbol criteria, repeated peer tests, actual feedback and qualified recommendations; no untested water-filter/body-aid claims |
| SMART goals, A and B | One achievable goal, two **in-class** checked attempts and count-based next action; no four-goal overload, five-project promise or hidden required home follow-up |
| Choice Labs | Four full meetings; common shadow investigation then prepared shadow-story or four-beat rhythm choice; passports, repeated tests, material stewardship and individual demonstrations |
| Scratch | Complete novice event/loop/condition stacks, distinct inputs, fourth-input/reset tests, source/operation logs; no continuous-contact scoring bug or four-game novice menu |
| Digital gratitude/stories/Easter | Concrete private offline two/three-slide workflow, real edit/present/save preflight and turns; purposeful reader revision; no unprepared podcast/QR/video menu |
| Light and astronomy | Actual optical comparison and purposeful transmitting composition; not-to-scale views and measured model limits; spiritual light/Magi interpretation separated from science |
| Life/Earth science | Living seed/pupa and generation links; explicit frog/insect contrast; source-limited habitats, stipulated feeding models, blunt-sample geological observation and uncertain classification |
| Marine/environment/cities | Retrieved NOAA zones; honest hypothetical food relationships; controlled debris model; ten-card sorting retests; full twenty-token budget, five-destination route/width retest and individual tradeoff |
| Machines and music | Measured lever arms/qualitative effort, low lever/ramp model with transfer retest; deliberate four-beat composition and dry Makey Makey input/key/note evidence |
| Verified heritage and source learning | Agnesi connected to an individually explained twelve-object grouping diagram; Mendel/Albert connected to model-plant observation/classification and a three/three tally; Lemaitre's limited PAS facts connected to actual scale-drawing measurements |
| Lent | Small teacher-approved classroom service with actual tested handover/use; prototype-only explicitly recorded if local need/approval is absent |
| Expo/celebrations/portfolios | Parallel two-minute pupil explanations, fresh attributable reasoning/data demonstrations, dated evidence and revised captions; no 25 serial speeches or all-domain mastery certificates |

Useful themes and rotation differences remain; this is not sixty paper bridges.
New narrow pathways deliberately remove overfilled options while preserving
the useful objectives of inquiry, service, visual/musical communication,
physical/life/Earth models and software execution.

## 5. Local standards and Grade 3/4 progression

Use the fixed [local eighteen-code catalog](Local_Standards.md).
Codes are **local program competencies**, not MDE, OMCE, CSTA or Church numbers.
Every audit row has **2-5 unique `CST-[CSTEAM][1-3]` codes**.
The lesson's scheduled action/individual prompt, not a tag or prayer alone,
justifies each selected code.

| Competency | Grade 3 core/support | Grade 4 challenge |
|---|---|---|
| Inquiry | Observe, predict, name changed/kept-same conditions, record whole-number results | Repeat/compare variation, explain confounding or sample limits |
| Systems | Label parts, living stages, arrows, inputs/outputs | Explain model omissions, alternate paths or tradeoffs |
| Computing | Trace sequence/repeat/condition; actually edit/run when equipment works | Boundary/reset/debug explanation and model-versus-operation limits |
| Design | State criterion/constraint, test and change a feature | Defend revision against equal conditions and access/resource tradeoffs |
| Art/music | Labeled observation/model, purposeful layout or four-beat choice | Specific critique, revised composition and meaning/readability tradeoff |
| Math | Whole counts, cm/mm, totals/differences, labeled tables/bars | Repeated ranges, budget alternatives, measurement precision, not forced ratios |
| Catholic action | Honest reporting, fair turns, requested service, stock care | Explain inclusion/privacy/stewardship decisions and supported claim limits |

Neither grade's core requires decimal division, percentages, means or efficiency
ratios. Challenge is deeper reasoning, not unsupported secondary-school algebra.
Oral/pointing/dictated/motor-assisted evidence is valid where it preserves the
concept; neatness, speed, excitement, private faith and prayer intensity are not
competency proxies.

Participation/group products are not individual mastery. At local expected-
mastery checkpoints, two dated observations on separate occasions, including
individual demonstration and changed-context explanation, are required.
These documents plan opportunities; they do not report actual pupil outcomes.

### Heritage cards tied to the child's work

The parent-rebuilt
[Catholic scientific heritage resource](../Resources/Catholic_Scientists_Heritage.md)
is reused without editing that shared file. Its original teacher read-aloud text
is identified as classroom paraphrase, not a quotation from a historical person.
Direct source content was also checked for the facts used in these follow-ups.

- [Weekly A Catholic Schools Week](../Lessons/Grades_3-4_YearA/Week23_Catholic_Schools_Week.md)
  uses Agnesi's mathematical teaching and charitable-work card. Every child
  explains four groups of three, obtains twelve, then revises a visual/worked
  explanation using a peer's actual feedback. The classroom example is not
  falsely attributed to Agnesi's book; scholarly secondary history is labeled.
- [Bi-Weekly A Catholic Scientists](../Lessons/Bi-Weekly/Grades_3-4_YearA/Session09_Catholic_Scientists.md)
  uses Mendel and Albert cards. Each child supports a fact with its source,
  records visible model-plant details, classifies six records into three/three
  groups and corrects a deliberate wrong placement from evidence. The six
  drawings are **invented classroom models, not Mendel's data or actual plant
  growth**. Classification alone does not establish a causal inheritance claim
  or equate medieval observation with every modern scientific method.
- [Bi-Weekly B Faith & Science](../Lessons/Bi-Weekly/Grades_3-4_YearB/Session09_Faith_Science.md)
  reuses the limited Lemaitre roles card while preserving its individual four
  cm readings, annotated model and model-versus-belief distinction. No Big Bang
  priority, personal-motivation or Einstein quotation is added.

All three remain **one native 40-minute meeting**, including individual evidence
and five-minute cleanup. First preparation is estimated at 15 minutes, ten with
ready cards; read-aloud/board fallback avoids a printing/device prerequisite.
Card preparation is explicitly one ordinary sheet per team, reused as two
half-sheet cards. Heritage recall alone does not meet the revised thresholds.
Only local task codes/evidence and preparation metadata were updated where the
new inquiry/math actions require them; frozen audit identities/dispositions,
meeting counts and the four narrow external arts rows remain unchanged.

### Narrow 2018 visual-arts matches: parent source inspection

The parent directly inspected the Perpich state-agency copy of the
[2018 arts workbook](https://perpich.mn.gov/wp-content/uploads/2020/11/Minnesota-2018-K-12-Academic-Standards-in-the-Arts.xlsx),
source **MN-05**, sheet **MN2018ArtsEdStandardsVisualArts**. The shared
benchmark register records the same codes and row locations. The owned external
CSV uses the **exact fourteen-field Kindergarten external-alignment header**,
with separate grades **3** and **4**, not a combined-band grade.

| Grade / benchmark / workbook row | Existing lesson, actual task and individual evidence |
|---|---|
| 3 / 5.3.2.3.1 / 48 | [Architectural Marvels](../Lessons/Grades_3-4_YearB/Week07-09_Architectural_Marvels.md): original three-view gathering-place representation using modeled line/shape and purposeful form; the child's labeled views and window/form explanation, not a mechanical stability score |
| 3 / 5.3.2.4.1 / 50 | [Community Helpers](../Lessons/Grades_3-4_YearA/Week07-09_Community_Helpers.md): discuss actual peer comments about a purposeful sign feature; individual comment and explanation of symbol/lettering/placement choices, not generic compliments |
| 3 / 5.3.2.4.1 / 50 | [Easter Creation](../Lessons/Bi-Weekly/Grades_3-4_YearB/Session13_Easter_Creation.md): discuss a reader's comment about the child's original panel composition; individual explanation relating feedback to the visual choice |
| 4 / 5.4.2.4.1 / 63 | [Easter Creation](../Lessons/Bi-Weekly/Grades_3-4_YearB/Session13_Easter_Creation.md): actual in-process artistic revision after peer discussion; child-attributable before/after panel and explanation linking the comment to revised placement/emphasis |

These **four planned task/evidence matches span three lesson paths and three
benchmark IDs**. Their status is **SOURCE VERIFIED - SCHOOL AND MDE-COPY REVIEW
REQUIRED**: state-agency workbook inspection does not establish MDE-copy
corroboration, school adoption, external approval or actual pupil attainment.
The CSV locates the existing meeting/step evidence; it does not add activities,
objectives, meetings or local codes.

Grade 4 **5.4.2.3.1**, row **61**, is deliberately **not mapped**. Its full
creation requirement includes **both representational and nonrepresentational
art** using artistic foundations. A representational architectural sketch alone,
an optional choice, or a hypothetical abstract-art extension is insufficient.
No unrelated project was added merely to manufacture coverage. No science,
mathematics or additional official benchmark was invented.

For every match, the named artistic action and individual evidence must actually
occur. Watching a peer, a group product without child attribution, intended but
unmade revisions, message recognition alone and generic engineering changes do
not establish the external arts benchmark.

### CSTA 2026 national candidates: scope check, not a new coverage claim

The parent verified the current publisher's
[CSTA 2026 viewer](https://csteachers.org/pk12standards/view/), including
**E3-ALG-PS-01** (Grade 3, detail record **350270**) and **E4-ALG-PS-01**
(Grade 4, detail record **350271**). The former requires sequence, events,
iteration and selection; these may span multiple algorithms. The latter requires
written everyday-language representations covering all four structures across
multiple algorithms; formal pseudocode/flowcharts are not required.
These are **national framework** codes, not evidence of Minnesota adoption.

No national CS row was added to the external CSV in this follow-up:

- [Scratch Programming](../Lessons/Grades_3-4_YearA/Week24-25_Scratch_Programming.md)
  and [Game Design](../Lessons/Grades_3-4_YearB/Week19-22_Game_Design.md) provide
  sequence, events and selection, but their required scoring algorithms have
  no iteration structure. Repeating four inputs during a test is not itself
  student creation of an iterative algorithm.
- [Sphero](../Lessons/Grades_3-4_YearA/Week02-03_Sphero_Advanced.md) provides
  sequence/repeat representations, but its required route does not require
  selection. Its Grade 4 representation evidence alone does not cover all four.
- Multiple algorithms may legitimately provide combined coverage, but a full
  candidate needs a documented, individually attributable evidence set joining
  all required structures and, for Grade 4, the written everyday-language
  representations. The inspected unit records do not establish that combined
  set for each learner; generic local T2 labels cannot substitute for it.

The four visual-arts rows remain the only external matches currently declared.
This is a conservative omission, not a claim that the band lacks useful CS
practice or cannot later document combined evidence. Completed lessons,
priorities, objectives and timings were not altered merely to add standards
labels. No full CS subject coverage, state adoption or pupil attainment is claimed.

## 6. Current meaningful-domain balance

One file credit per domain when a mapped individual task occurs; multiple codes
in one domain still count once. This is **opportunity**, not contact-time share,
mastery or equal coverage. Choice Labs credits common tasks, not all hypothetical
stations. Discount unavailable physical/software evidence for the delivered path.

| Track | C | S | T | E | A | M | Files |
|---|---:|---:|---:|---:|---:|---:|---:|
| Weekly A | 20 | 8 | 5 | 9 | 10 | 11 | 20 |
| Weekly B | 17 | 6 | 3 | 8 | 11 | 12 | 17 |
| Bi-Weekly A | 17 | 6 | 10 | 5 | 8 | 9 | 17 |
| Bi-Weekly B | 17 | 6 | 7 | 8 | 12 | 8 | 17 |
| Audit total, alternatives | **71** | **26** | **25** | **30** | **41** | **40** | **71** |

Bi-weekly B math grows from the former mapped 2/17 to **8/17**, through explicit
counts, model data and length comparisons rather than generic Math tags.
Art has genuine composition/critique, including rhythm/music. Technology includes
source/data responsibility and ordinary tools, not just screen exposure.
Science spans physical, life, Earth/weather and marine systems; still not a
replacement for the school's primary science curriculum or full K-6 crosswalk.
Longitudinal actual growth/weather observation remains a local extension requiring
an adult/source/time plan; supplied simulations are not actual longitudinal data.

## 7. Current technology and material planning

Audit primary labels: **56 None, 15 Required, 0 Optional, 0 Recommended**.
The 15 Required files represent **20 of 99 meetings** across alternatives.
Required means the named real programmable/digital outcome needs its equipment,
including Ozobot without a tablet. It is not a home-device requirement.

"None" means no digital/programmable device, **not no equipment**.
Four screen-free packages require approved electrical hardware for actual
operation: the three preserved Snap references and new LittleBits.
Flashlights, rulers, safe supports, observation samples and tools remain
physical requirements in other None lessons.

The new supply tables generally use balanced teams up to three:
**4/5/7/9 at 10/15/20/25**. The eleven preserved references keep their own exact
pair/trio budgets or Snap wave rules; do not silently substitute the new
grouping arithmetic into them.

The four owned indexes now link the optional
[Grades 1-6 reference routines](../Resources/Grade_Band_Reference_Routines.md)
for preparation, balanced groups and teacher checking. This is not a replacement
for any lesson's complete supplies, specific sequence or individual threshold.
Actual named shared-test/device slots and Snap waves still govern fewer-kit
delivery; no four-person group or watching-as-operation shortcut is introduced.
Public/prepared resources and reported Snap holdings remain distinct from
priced physical inventory; the shared routines and catalogues were not edited.

Canonical audit terms are atomic pipe-separated names, with no quantity
decorations. **Physical hardware is distinct from `Access:` software/manuals and
`Prepared resource:` cards/records**, following the read-only
[resource catalogue](Lesson_Resources.csv). For example a Sphero robot, compatible
host and matching charging accessories are physical items; **Access: matching
Sphero controls** is not another robot or a priced app purchase.
Source cards, official charts, diagrams and software are access/preparation
resources, **not invented physical purchase prices**. Paper/card used to prepare
them and adult time are still real costs.
Shared procurement quantities/prices belong to the parent
[materials inventory](Materials_Inventory.csv) and [materials plan](Materials_Plan.md);
this follow-up makes no new program-total price or stock claim.

The parent-authorized material-only normalization includes the eleven preserved
references: named floor-safe robot/flight tape versus masking assembly tape,
school glue sticks where actually used, primary hardware/chargers, rulers,
safe cups/counters and teacher tools. No generic `tape`/`glue` atom remains.
Dry bridge-counter cups are indexed as paper cups; weather ruler attachment is
indexed as masking tape. These are selected audit preparation specifications,
not claims that unspecified school stock already has that material/type.
Dimensions, quantities and physical compatibility still come from each lesson.
Non-glass thermometer, clear straight-sided collector requirements and Snap's
manufacturer-selected cell type/count are not inferred from a name match.

During the arts/material phase, only `materials` changed in the audit; **all other
18 audit field values and all 71 lesson bodies remained unchanged**. Thus the eleven
teaching references, baseline keys, objectives, native meeting counts and Snap
routes remain intact. The audit now explicitly indexes existing source/software
requirements rather than silently treating compatible hardware as sufficient.

The parent resource catalogue already separates Scratch, matching robot controls
and Snap manuals from hardware. Four more explicit access names used here need
parent catalogue integration, not a guessed physical price: **Access: LibreOffice
Impress**, **Access: Scratch Music extension**, **Access: matching Makey Makey
instructions**, and **Access: matching LittleBits instructions**.
They are named by existing lesson workflows; local approved access is still
required. No shared catalogue or pricing file was edited.

Examples at 25 pupils in the **new** packages:

- KEVA A: 9 kits, 270 planks, 18 low books, 90 counters and 50 pupil sheets.
- Marine: 9 trays/spoons, 180 paper squares, **1,800 mL total clean water**
  for two fresh 100 mL tests/team, not one 900 mL allocation reused after absorption.
- Sustainable City: 9 bases, 27 cardstock sheets, 180 budget tokens,
  900 cm tape, 100 individual unit sheets; hypothetical budget 20, remainder 0.
- New Scratch/slide work: 9 computer stations for up-to-three teams; individual
  three-minute turns plus retest. Fewer stations require explicitly checked
  waves or deferred operation, not a claim that watching equals programming.
- Robot challenges: 2 stations, at most five two-minute team rounds per work
  block; start/stop/measurement and actual individual turns recorded.

No required donations, home printing, new accounts or routine homework.
Adult source/physical/software setup is advance work, not a substitute's
twenty-minute installation miracle.

## 8. Sources and remaining gates

### Retrieved sources used in the new references

| Source | Verified content used / limitation |
|---|---|
| [Fides et Ratio](https://www.vatican.va/content/john-paul-ii/en/encyclicals/documents/hf_jp-ii_enc_14091998_fides-et-ratio.html), opening | Faith/reason truth-seeking, paraphrased; not scientific proof or conflict-free history |
| [Pontifical Academy of Sciences, Georges Lemaitre](https://www.pas.va/en/academicians/deceased/lemaitre.html) | Rev. Msgr., Cosmology, academic title; no inference of motivation or sole discovery priority |
| [Masaryk University Mendel Museum](https://mendelmuseum.muni.cz/en/about-the-museum/mendel-museum) | Augustinian membership/abbacy, pea experiments and preserved work; classroom model data are not historical results or a claim about personal motivation |
| [Benedict XVI, March 24, 2010](https://www.vatican.va/content/benedict-xvi/en/audiences/2010/documents/hf_ben-xvi_aud_20100324.html) | Albert's Dominican/natural-study roles and observation/classification; explicit limits of historical methods |
| [St Andrews MacTutor, Agnesi](https://mathshistory.st-andrews.ac.uk/Biographies/Agnesi/) | Mathematical teaching text and charitable work; scholarly secondary history, no first-professor claim or inherited faith quote |
| [NOAA ocean light](https://oceanservice.noaa.gov/facts/light_travel.html) | Three light zones/five depth subdivisions; not equal physical layers or verified species diets |
| [Monarch Joint Venture life cycle](https://www.monarchjointventure.org/monarch-biology/life-cycle) | Living development, milkweed larval relationship/new generation; no universal classroom timing promise |
| [Laudato Si'](https://www.vatican.va/content/francesco/en/encyclicals/documents/papa-francesco_20150524_enciclica-laudato-si.html) | Creation-care theme paraphrased; no inherited approximate quote/paragraph pairing |
| [Makey Makey landing instructions](https://www.makeymakey.com/pages/how-to) | Discovery/access entry only; **not sufficient matching-model safety/connection manual** |

Failed/blocked biography/geology searches were not converted into citations or
facts. Unneeded inherited quotes, firsts, personal-faith claims, current titles,
voyage legends and dated CSW themes were omitted. Original teaching text and
clearly labeled hypothetical/simulated models do not masquerade as biographies,
school measurements or official standards.

### Only remaining source/local delivery gates

1. **Official external alignment:** all 71 rows remain **VERIFICATION REQUIRED**
   against applicable MDE, Archdiocesan and national documents plus school adoption.
   The four narrow arts matches above have inspected state-agency source evidence,
   but retain MDE-copy corroboration and school-review holds; they are not blanket
   official alignment or pupil-outcome claims.
   The shared [standards source register](Standards_Sources.md) owns current-source
   research. Its documented 2022 math implementation in 2027-28 and CSTA 2026
   publication do not themselves certify these lesson-to-benchmark mappings.
   No invented Archdiocesan C-STREAM standard or official benchmark is claimed.
2. **Physical stock/condition/space:** ordinary kits, safe flight lanes,
   source-labeled blunt rock samples, allergy/hygiene access, loan counts,
   manufacturer age/model/manual/power approvals and exact fitted-cell counts.
   Eight reported Snap kits are not physically inspected by this review.
3. **Local software/device preflight:** compatible approved app/host,
   charge/pair/calibration, working private local save/reopen, Music extension,
   accessibility and observed real turns. A landing-page link or document
   simulation is not hardware/software execution.
4. **Local use/consent:** approve small classroom service need/handover and
   any external display/delivery; protect private media. A rejected handover is
   recorded as prototype only, not completed service.
5. **Actual delivery evidence:** teacher records elapsed setup/class time,
   unfinished turns and individual demonstrations. No classroom outcome,
   school/pilot certification or measured cost/savings is inferred.

There is **no remaining repository lesson-outline/starter/quantity/timing task**
in this owned scope. Parent integration into shared maps/materials/navigation
remains outside this follow-up, not a reason to edit shared files here.

## 9. Verification and reviewer judgment

Session artifacts retain baseline hashes/keys, a PowerShell validator,
per-package results and machine-readable summary.
Automated checks passed:

- 71 unique rows, exact nineteen-field header, required values, native integer
  minutes, enums and 2-5 valid unique codes.
- All frozen identity/status/priority/meeting/scope fields unchanged.
- **60 new package bodies / 80 new timelines; all 99 timelines contiguous
  from 0 to 40**, with numbered evidence and cleanup windows.
- **956 class-size arithmetic cells** across 239 declared allocation rows,
  checked at 10/15/20/25. These are scalar allocation checks, not 944 observed
  classroom supply issues or a full parent procurement bill.
- Nine original rebuilt-reference hashes and the shared Snap-guide hash
  unchanged; two reference payloads are unchanged apart from the exact section
  headings described above. **187 local links** resolve (20 lesson links plus 167 review/index
  links, including the arts/resource follow-up).
- Current revision/technology/domain counts reconcile with this report.
- **35 document-model assertions** pass for score boundaries/reset, counts,
  budgets, lever arms, repeated water allocation, robot-slot capacity and the
  new heritage grouping/tally examples.
- Scoped `git diff --check` passes. Editor diagnostics reported no errors for
  the audit/review; that is not a Markdown pedagogical or classroom certification.

The arts/material follow-up additionally verified four external rows against the
read-only benchmark register, exact Kindergarten external header, individual
grade/source/edition/sheet/row locators, three existing lesson paths and explicit
school/MDE-copy holds. All 71 material fields were normalized; the other
**18 fields per row**, all local codes/evidence/objectives and **all 71 lesson
hashes** were unchanged in that phase from the completed-package snapshot. There are
**9 distinct `Access:` terms and 3 distinct `Prepared resource:` terms**, separate
from physical hardware. Editor diagnostics also reported no errors for the new
external CSV. This verifies document consistency, not external adoption or
classroom attainment.

### Parent final reference-validator contract

The unchanged reference validator (see the
[standards traceability guide](Standards_Traceability.md); repository-root command:
`.\scripts\Test-LessonReferences.ps1`) passes this band's **71 complete documents, 99 contiguous native meetings,
615 numbered intervals and 20 relative lesson links**. It checks every audit
code in the lesson text as well as overview/preparation/supplies/background/
vocabulary/safety/support/challenge/individual evidence/troubleshooting/family/
indoor markers, all four class-size allocations and frozen baseline keys.

Thirty-four new references now say **each child** explicitly in the already
scheduled individual check (35 intervals, because KEVA has two meetings).
The two existing references mentioned above use consistent troubleshooting/
indoor-fallback section names for their already-written contingency directions.
These wording clarifications add no task, objective, time, supply or circuit
instruction. All eleven original reference teaching payloads, especially
Snap's manual/stock/quantity/timing/wave plan, remain preserved.

The shared `Lesson_Map.csv` still held first-pass Grades 3-4 revisions when the
validator was run. It was **not regenerated or edited** here. The same validator
therefore used its `RepositoryRoot` interface with a local session fixture:
current owned audit copied as the input map, the band's 71 rows selected from
the shared frozen baseline, and read-only junctions to the **live** lesson/resource
files. No validator checks were bypassed or changed. Refreshing the stale shared
derived map remains parent integration work, not an unfinished owned lesson.
The audit itself remained byte-identical during those wording fixes. The later
heritage follow-up updates only its scheduled local-code/evidence/preparation
fields for the three source-learning lessons, as described above.

Review judgment also checked objective -> code -> scheduled action -> individual
prompt/threshold, grade expectations, actual questions, model/source labels,
retests, cleanup and removal of unsafe inherited options. Keyword checks alone
do not prove pedagogical quality. The small code/math traces below are
**document-model tests, not actual Scratch/device bench execution**:

| Test | Expected verified document result |
|---|---|
| Bounded score | Initial 0; four distinct inputs 1/2/3/3; restart 0; `<=3` would wrongly permit 4 |
| Loop/animation | Four 90-degree turns total 360; four repeated moves; A dialogue -> B reply -> A thanks under broadcast-and-wait |
| City budget | 4+3+3+3+2+2+3 = 20; remainder 0; extra 2 requires an explicit tradeoff |
| Ecosystem model | Five stipulated links; removing Q deletes three, leaves two; not a certain real population cascade |
| Practice charts | Gratitude 4+3+5=12, difference 2; school 6+4+3=13, difference 2; showcases 3/5 and 4/7 remain labeled simulated |
| Lever arms | Pivot 10 cm gives 10/20 cm arms; pivot 5 cm gives 5/25 cm; felt effort not calibrated force |
| Marine water | Nine teams x two fresh 100 mL tests = 1,800 mL |
| Heritage mathematics/data | Four groups of three total 12; model records A/C/E have two leaves and B/D/F three, so three records/group, six records and 15 shown leaves; not real growth or historical experimental data |

### Final desk simulations

- **Substitute, twenty minutes:** an ordinary prepared kit/reference can be
  read/gathered/rehearsed; unprepared electronics/software must use explicit
  fallback and report missing real-operation evidence. Prep estimates aren't
  measured classroom times.
- **No devices:** 56 None packages retain their primary digital-free route,
  subject to physical materials. Required packages keep timed paper reasoning/
  communication, explicitly not actual programming/sensing/conductivity.
- **Minnesota January:** all core paths are indoor; no unsafe cold outing,
  spring specimens or winter daylight is necessary.
- **25 pupils:** nine balanced teams in new low-tech kits, parallel sharing and
  fixed slots/waves instead of serial speeches or races; protected evidence/
  cleanup windows.
- **Budget:** low-tech consumables/reusable stock do substantial work; actual
  software/electrical outcomes still require approved equipment/loans.
- **Parent:** cite a child's actual record/operation log; each package has a
  copy-ready optional family snippet, not "we proved mastery" from a photograph.
- **Kindergarten non-reader:** outside this band's scope; Grade 3 access supports
  do not certify Kindergarten readiness or change another band's lessons.

**Closure:** all 60 requested packages are complete and persistent; all 11
existing references and recent Snap routes are preserved. Remaining constraints
are only the source/local delivery gates above. No substantial partial handoff.
