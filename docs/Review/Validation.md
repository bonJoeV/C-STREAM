---
title: "Final consistency checks and seven classroom simulations"
description: "Automated verification and conditional document walkthroughs, not classroom certification"
---

# Final consistency checks and seven classroom simulations

**Date:** October 4, 2026. **Evidence type:** document inspection, structured-data
checks, arithmetic and desk walkthroughs. No actual substitute-arrival trial,
classroom pilot, physical-kit inspection or student-outcome study was performed.

## Persistent outputs and automated checks

- **251 lessons:** each existing weekly/bi-weekly lesson file appears exactly
  once in the 19-field audit/combined lesson map.
- **807 local-standard evidence links:** valid codes, grade bands, schedule/
  rotation paths, nonblank evidence, native periods and positive meeting counts.
- **18 local competencies:** all catalog codes present; grade progression
  contains 126 planned performance targets and 126 instructional-stage entries.
- **74 inventory items:** unique identifiers, nonnegative decimal prices and
  integer class-size quantities. The generated index retains **1,203
  lesson/material terms**, including visible unresolved name/specification
  questions. It does not claim all legacy materials are procurement-ready.
  **727 occurrences have exact canonical/alias name matches; 476 occurrences
  require reconciliation.** Even a matched name still needs specification and
  quantity verification.
- **72 rebuilt, 167 improved, 12 unchanged lesson documents:** baseline
  disposition/priority remains separate from the revision state.
- **Regression checks:** valid synthetic map generation and ten rejection
  cases passed, including duplicate/missing lessons, invalid codes, wrong
  periods, missing evidence, invalid labels/rotations/paths/meeting counts and
  stale generated maps. Fixtures and logs remain session artifacts, not curriculum.
- **Budget checks (pre-Snap record):** independently joined 37 bill-of-material rows to the
  expanded 68-item inventory; only the original selected purchase rows are
  included. First-year totals are **$229.52 / $476.04 / $854.32 /
  $2,367.84**, below the four stated ceilings. Nine generic teams provide
  capacity 27, but pair-based reference lessons use their own larger kit counts.
- **Source checks:** implementation dates and release status are documented
  separately from exact official lesson alignment, which remains
  **VERIFICATION REQUIRED**.

## Autonomous Kindergarten follow-up

- All **37 K documents** are complete conditional references after rebuilding
  the remaining 29. The six former audit-only checks are now implemented.
- New-reference validation covers **37 native meeting sequences** and **360
  class-size quantity comparisons**, with baseline judgments/paths/meetings/
  minutes unchanged. These are document/arithmetic checks, not observed timings.
- Every K primary-material term has a catalog match; global unresolved terms
  were 501 occurrences at K closeout, down from the initial 750. The term population also
  changed as compound K lists were decomposed, so this is not a count of 249
  verified physical items.
- [The reconciliation queue](Material_Reconciliation_Backlog.csv) groups those
  originally grouped those 501 occurrences into **241 exact terms** with grade/source paths and an
  explicit follow-up reason; it is not a purchase list.
- Dated weather comparisons, requested book criteria/tradeoffs and hypothetical
  privacy/adult-help checks close concrete progression gaps without extra periods.
- [Twelve source-verified arts candidates](Kindergarten_External_Alignment.md)
  connect four exact identifiers to eleven lessons. MDE-copy corroboration and
  school review remain required; science/math identifiers were not guessed.
- The existing report of **8 OHM-135 Snap Circuits kits** is retained in a
  separate [holdings record](Reported_Holdings.csv), not treated as inspected
  stock or a purchase bill.
- `Test-KindergartenReferences.ps1` is wired into publication CI alongside map
  validation; the practical [K routines](../Resources/Kindergarten_Reference_Routines.md)
  and source-candidate page are included in site navigation.

## Bounded OLP Snap Circuits follow-up

Four existing Grades 3-6 lessons now use eight **individual** reported OHM-135
activity kits; ownership is not completed physical inspection.
[The shared guide](../Resources/Snap_Circuits_Classroom_Guide.md) requires matching
model/manual, age, battery-access/protection and school approval checks.
No guessed project number, cell allocation, sensor or push-button behavior is
substituted for the matching instructions.

The dedicated `Test-SnapCircuitsReferences.ps1` checks four retained paths,
six contiguous native meeting sequences, 20 station/capacity rows, the
eight-kit holding, baseline status/priority, physical/paper evidence boundaries,
relative links and guide navigation. At 25 pupils, nine teams use five stations
in two 12-minute (Grades 3-4) or 14-minute (Grades 5-6) waves; no group exceeds
three. These are document/arithmetic checks, not observed classroom timing or
kit safety certification. Protected-AA routes remain separate alternatives.

The current maps contain 807 local-code links and 1,203 material occurrences:
727 exact catalog name matches and 476 unresolved occurrences across 237 terms.
Snap stock is in the separate holdings record; its unresolved priced-catalog
term does not mean no school stock or authorize a zero-price purchase row.
Shared purchase totals are unchanged.

**Snap follow-up results: PASS.** Four lesson references, six contiguous native
meetings, 20 capacity rows and ten relative links passed the dedicated check;
the regenerated 251-lesson maps passed `-ValidateOnly` against the current
74-item catalog. MkDocs built successfully with only the previously recorded
README/index conflict warning. These results do not release kit preflight gates.

From the repository root:

```powershell
.\scripts\Build-CurriculumMaps.ps1
.\scripts\Build-CurriculumMaps.ps1 -ValidateOnly
.\scripts\Test-SnapCircuitsReferences.ps1
mkdocs build
git diff --check
```

Maps are committed-source candidates in the documentation tree, not merely
temporary reports. Validation checks missing/stale maps as well as source rows.
Generated site output is not edited to change curriculum.

**Publication result:** MkDocs build passed with no new missing-page/link
warnings. The sole warning also appears in the baseline build: the documentation
root `README.md` is excluded because it conflicts with `index.md`.
`git diff --check` passed. Review pages, downloads, added templates and the
Show/Try/Tell student resource are included in navigation/publication.

## Seven required simulations

| Simulation | Concrete walkthrough and improvement | Result and required local checks |
|---|---|---|
| 1. Grade 3 substitute arrives 20 minutes before class | [Bridge Engineering](../Lessons/Grades_3-4_YearA/Week10_Bridge_Engineering.md) has a 40-minute sequence, background, fair-test directions, individual evidence and cleanup. The [handoff](Substitute_Readiness.md) supplies a 20-minute prep gate. Integration corrected its mismatch with the generic nine-team kit: budget 13 kits for 12 active teams at 25, 26 books, 260 counters, 28 sheets and 5.2 m tape. | **Conditional document pass:** feasible with the prepared counted kit. Actual location, supplies, room, accommodations and pretest must be confirmed. Otherwise use the explicitly different fallback and record deferred objectives. |
| 2. Kindergarten child cannot read | [Movement/picture algorithms](../Lessons/Kindergarten/Week02-03_Sphero_Movement.md) uses modeled arrows, large paper pieces, pointing/moving and oral evidence; [Show, Try, Tell](../Student_Resources/Show_Try_Tell_Card.md) supports nonwritten responses. | **Document pass for the reference pathway:** independent reading/handwriting is not required. The teacher still checks each child's reasoning and gives the third child a full turn. |
| 3. iPads unavailable | [Technology plan](Technology_Plan.md) and actual lesson alternatives separate computational reasoning from digital execution. Current labels: 149 None, 49 Optional, 15 Recommended, 38 Required. Approved Snap/protected-AA circuit routes need no computing device but retain physical-material gates. | **Conditional program pass:** the documented low-tech core continues. Real programming, robot/sensor operation and digital-tool objectives requiring devices are deferred, not falsely awarded from paper or teacher demonstration. |
| 4. Minnesota January, -10 F | K picture grids/indoor observation, paper bridge tests, the [indoor weather reference](../Lessons/Grades_3-4_YearB/Week29-31_Weather_Station.md) and [fictional paper evidence](../Lessons/Bi-Weekly/Grades_5-6_YearB/Session04_Forensic_Science.md) require no outdoor exposure. Prepared/simulated data are labeled. | **Document pass for selected indoor pathways:** authentic outdoor measurements cannot be claimed from simulated data; move or explicitly change such objectives. Live plant care and indoor wet-work cleanup need local planning. |
| 5. Enrollment rises to 25 | Exact reference tables, roles, seated testing and individual roster sweeps replace serial queues. Generic groups <=3 need nine kits; pair-based references retain larger budgets. The selected Snap routes use nine teams/five stations/two waves within the native meeting. | **Conditional capacity pass:** arithmetic and written logistics cover 25. Use the exact selected pathway, not a universal kit count. Physical space, stock, inspection throughput and observed individual turns remain untested. |
| 6. Limited funding | [Starter plan](Materials_Plan.md) totals $229.52 with supplies, tax/shipping/contingency estimates and no required devices, specialty loans or donations. Existing school basics and one-cohort consumables are explicit. | **Conditional budget pass:** prices/specifications and stock are estimates. This is a modest low-tech core, not purchase coverage for all 251 legacy lessons or all pair-based references. Safe electrical procurement may not be improvised to preserve a price. |
| 7. Parent asks what the child learns | [Family system](Family_Communication.md), band unit snippets, [scope](Scope_and_Sequence.md), [progression](Learning_Progression.md) and [traceability](Standards_Traceability.md) connect concepts/actions, Catholic reasoning, planned evidence and next steps. The forensic reference makes truth/dignity concrete without accusing anyone. | **Document pass:** a teacher can explain a selected lesson and its progression in plain language. Describe actual evidence gathered; never imply that planned targets or group participation prove mastery. Home invitations are optional. |

## Weaknesses exposed and corrected during integration

1. Unit totals had been stored as per-meeting minutes in some audits. All rows
   now use native **25/30/40/45** minutes; `meetings * minutes` gives duration.
2. Shared substitute guidance used a nine-team kit for a pair-based bridge.
   The handoff now uses the exact conservative 13-kit supply budget.
3. Protected AA circuits were inconsistently counted as requiring digital
   technology. Labels now distinguish digital needs from required physical
   materials; electrical mastery still requires an actual safely tested circuit.
4. A Grades 1-2 bridge table needed an explicit odd-enrollment arrangement.
   A final trio and reserve kit are specified, with individual role rotation.
5. Outside-document script links in band reviews were replaced with the
   published traceability guide and an inline command.
6. The operations snapshot was stale after lesson revisions. Materials and
   technology summaries now use the integrated audit counts and generated maps.
7. Exact-name material matching exposed unresolved terms. They remain visible
   for reconciliation; no invented quantities, prices or equivalent items are
   silently supplied.

## Remaining release conditions

The band reviews record unresolved instructional/source/operational holds.
An improved file is not a full reference rebuild; a full document is not a
classroom certification. Hold unresolved P0 pathways and finish the next
scheduled P1 lesson before teaching.

Before calling the program uniformly classroom-ready, confirm actual stock,
protected electrical specifications, supplier prices, school safety/privacy/
account rules, accommodations, source-gated history/Church claims, applicable
official benchmark mapping and physical kit locations. Pilot scheduled lessons,
time preparation/cleanup, gather individual evidence on the local mastery
checkpoints and revise using those observations.

K has **zero remaining document-package holds**. Its physical/school/source
gates and classroom trials remain; the other three bands' documented readiness
queues were not silently closed by the autonomous K work.
