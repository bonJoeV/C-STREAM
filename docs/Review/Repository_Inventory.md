---
title: "Repository inventory and audit method"
description: "Evidence baseline for the October 2026 C-STREAM curriculum review"
---

# Repository inventory and audit method

**Baseline inspected:** October 4, 2026. **Planning year:** 2026-27.

This inventory records the existing organization before curriculum changes.
The review preserves the weekly/bi-weekly options, combined-grade rotations,
existing URLs, and the school's 25/30/40/45-minute periods.

The current one-row-per-artifact reconciliation is generated in
[Curriculum Artifact Inventory](Curriculum_Artifact_Inventory.csv). It includes
curriculum, review, data, templates, resources, scripts and discovered publishing
support with an inclusion/exclusion rationale, audit status and resulting action.
Run `.\scripts\Build-OperationalAudit.ps1` after adding or removing an artifact;
silent files and hand-edited totals are not accepted.

`.\scripts\Build-OperationalAudit.ps1 -ValidateOnly` is the freshness gate:
it compares the generated rows with the current script output and rejects
missing or changed content, regardless of row order. File modification times
are not used because Git checkout does not preserve them. Regenerate from the
script rather than editing
`Curriculum_Artifact_Inventory.csv`, `Teacher_Artifact_Audit.csv`, or
`Procurement_Register.csv` by hand.

## Current reconciliation

| Exclusive disposition | Count |
|---|---:|
| Included curriculum/review/operations artifacts | 394 |
| Reconciled publishing/repository-support exclusions | 9 |
| **Discovered and reviewed total** | **403** |
| Duplicate rows | 0 |
| Unresolved inventory identity | 0 |

The exclusive disposition arithmetic is **394 + 9 = 403**. Separately, all 251
included lesson plans pass the expanded repository teacher-artifact check; this
is a quality state within the included set, not an extra inventory row. The
[teacher artifact audit](Teacher_Artifact_Audit.csv) records the per-lesson
evidence. School release remains a separate local gate.

## Curriculum assets

The documentation tree contains **351 Markdown documents**, including **251
lesson documents** and supporting resources. A document is not necessarily a
single class meeting: weekly filenames sometimes cover several weeks.

| Grade band | Weekly A or single track | Weekly B | Bi-weekly A or single track | Bi-weekly B |
|---|---:|---:|---:|---:|
| Kindergarten | 20 | Not applicable | 17 | Not applicable |
| Grades 1-2 | 20 | 20 | 17 | 17 |
| Grades 3-4 | 20 | 17 | 17 | 17 |
| Grades 5-6 | 20 | 15 | 17 | 17 |
| Total | 80 | 52 | 68 | 51 |

The labels "34 lessons" and "17 sessions" in existing overview pages must not be
used as file counts or evidence that every planned instructional week is covered.
Holiday weeks and multi-week units require a separate pacing check.

| Asset | Existing location | Function and review concern |
|---|---|---|
| Weekly lessons | `docs/Lessons/` grade-band directories | Activities, objectives, Catholic connections, procedures and assessments; quality must be checked individually. |
| Bi-weekly lessons | `docs/Lessons/Bi-Weekly/` | Separate condensed sequences, not extra lessons to add to the weekly year. |
| Planning | Year planner and lesson index | Calendar and navigation; nominal lesson totals and actual meetings need reconciliation. |
| Teacher resources | `docs/Resources/` | Substitute, differentiation, equipment, family, volunteer and liturgical guides. |
| Student resources | `docs/Student_Resources/` | Journals, goals, reflection and engineering-process sheets; oral/drawn alternatives matter for emerging readers. |
| Templates | `docs/Templates/` | Lesson, project and cross-curricular unit formats; inconsistent arts terminology and digital-first assumptions need correction. |
| Assessment | `docs/Rubrics/` | Faith/reason, service, project and collaboration rubrics; distinguish participation from demonstrated learning. |
| Publishing | `mkdocs.yml`, overrides and stylesheets | MkDocs Material site, print compilation and GitHub Pages workflow. |
| Generated output | `site/`, `.cache/` | Not authoritative curriculum; do not edit generated pages to change lessons. |

There were no tracked curriculum-generation scripts, automated curriculum tests,
structured lesson database, or standards/materials CSVs in the **baseline**.
Those were added by the review and are now reconciled in the current inventory.

## Initial evidence, not conclusions about every lesson

- A Kindergarten robotics unit requires charged, paired robots and iPads.
  Direction, prediction and sequencing can also be taught physically; actual
  robot-operation objectives must remain distinct from an unplugged fallback.
- A Grades 1-2 bridge session labels a papal bridge metaphor as Scripture.
  That attribution is inaccurate and needs correction, not repetition.
- A Grades 3-4 bridge lesson includes efficiency ratios without establishing
  whether those calculations fit the younger grade's prerequisites.
- A Grades 5-6 forensic session leaves sample preparation, "safe" unknown
  substances and fictional evidence unspecified. A substitute needs a complete,
  non-accusatory investigation with no unknown powders or real student profiling.
- The general substitute guide asks for a quick-reference card without proving
  that such a card exists for every activity.
- Home, planning and template pages emphasize digital art. Art also needs
  purposeful observational drawing, model design, pattern, composition and
  communication without a device.
- Materials guidance mixes classroom basics with specialty robots, loan kits
  and apps. Availability, quantities, annual consumables and minimum operating
  cost must be separated.

## Audit method and change policy

Four grade-band workstreams inspect every lesson, record baseline findings,
and make targeted improvements before publishing their audit. A separate
standards workstream verifies authoritative sources. Program integration uses
these records rather than inferring alignment from lesson titles or tags.

The internal mapping is **grade -> rotation/schedule -> unit -> lesson ->
demonstrated skills/local standards -> materials -> assessment**. Evidence
records distinguish original quality from the revision state.

Audit dispositions are **KEEP**, **KEEP + IMPROVE**, **REBUILD**, **REPLACE** and
**REMOVE**. No file is deleted merely because an alternative is preferred.
Recommendations retain useful activities and identify safety, accuracy and
substitute-readiness issues first.

Quality uses four evidence levels: **0 absent/unsafe**, **1 named but
underspecified**, **2 teachable with a specific support or remaining check**,
**3 explicit and independently usable**. Dimensions include academic rigor,
developmental fit, Catholic integration, standards evidence, hands-on engagement,
instruction/substitute clarity, low-tech access, cost/preparation, assessment,
inclusion, safety, scalability, family communication and progression.
Scores are editorial judgments, not classroom-outcome measurements.

**Verification limits:** A document review cannot certify actual school
inventory, individual accommodations, equipment condition, classroom outcomes,
diocesan approval or complete coverage of the primary subject curricula.
Unverified official benchmarks are marked **VERIFICATION REQUIRED**.
