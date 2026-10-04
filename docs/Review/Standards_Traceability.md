---
title: "Standards traceability and lesson map"
description: "A reproducible local-standard to lesson and assessment index"
---

# Standards traceability and lesson map

- [Download the complete lesson map](Lesson_Map.csv).
- [Download local standards traceability](Standards_Traceability.csv).
- [Download lesson-to-material terms and reconciliation status](Material_Usage.csv).
- [Read source-verified K arts candidates](Kindergarten_External_Alignment.md).
- [Download the source-specific material reconciliation queue](Material_Reconciliation_Backlog.csv).
- [Read the local standards](Local_Standards.md), [learning progression](Learning_Progression.md)
  and [authoritative-source register](Standards_Sources.md).

## What a row means

Each traceability row connects a **local program standard -> grade band ->
schedule and rotation -> unit -> lesson -> planned assessment evidence**.
Filter the CSV by `local_standard`, `grade_band`, `rotation` and `schedule`.
For example, filter `CST-E2`, `3-4`, `A`, `Weekly` to find build/test/redesign
opportunities and the evidence a teacher should collect.

The combined-grade row does not imply identical expectations for both grades.
Use the grade-specific performance descriptions in the progression and the
support/challenge guidance in the lesson. Students may enter either rotation;
introduce required procedures and vocabulary before increasing independence.

The audit's `status` records the **baseline disposition**, while `revision`
records subsequent changes. A lesson marked `REBUILD` and `rebuilt` has been
revised; a baseline concern is not erased from the change record.
`improved` is not a substitute-readiness certification. Read the band review
and the actual lesson before scheduling.

These are **editorial alignment judgments about intended student work**.
They are not evidence that a class has mastered a standard. A general exit
check may support only part of a competency; teachers must collect the
individual performance evidence specified in the local progression.

## Material queries

Filter the material-usage CSV by `grade_band`, `schedule` and `rotation` to see
what the selected lessons name. `item_id` connects an exact canonical/alias
name to the normalized inventory. This is **text matching only**, not verified
item specifications, quantity sufficiency, ownership or safety. Unmatched and
ambiguous terms are retained visibly for reconciliation rather than assigned
an invented substitute. The inventory's verified-use count remains separate
from these textual occurrences.

The reconciliation queue groups remaining occurrences by exact term, grade
and source lesson, with an explicit follow-up reason. A suggested triage
category is not a supplier/item equivalence: software/access, record formats,
quantity phrases, ambiguous adhesives and safety-critical parts still need
their actual lesson specifications. It is a work queue, not a purchase list.

## Official standards claim gate

Every generated external-alignment field is **VERIFICATION REQUIRED**.
This is intentional, not a substitute for the source research. An official
claim needs all of the following:

1. Applicable adopted/implemented version and school year.
2. Verified exact benchmark identifier, grade and source URL/document.
3. Student action that actually practices the benchmark.
4. Specific assessment evidence for the relevant part of the benchmark.
5. Reviewer/date and any scope limitations.

A topic resemblance, Catholic quotation, tag, device, or project photograph
does not establish official alignment. This enrichment program does not
replace the school's science, mathematics, arts, ELA, social studies or
religion curricula.

## Updating and validating

The four band-audit CSVs are the source of the combined maps. From the
repository root in PowerShell:

```powershell
.\scripts\Build-CurriculumMaps.ps1
.\scripts\Build-CurriculumMaps.ps1 -ValidateOnly
mkdocs build
```

For the current K version-3.0 reference set, update lesson metadata and the
individual-evidence definitions together, then run
`.\scripts\Sync-KindergartenAudit.ps1` and
`.\scripts\Test-KindergartenReferences.ps1` before regenerating the maps.
The K validator checks 29 autonomous references/37 native meetings, class-size
arithmetic and complete audit evidence; it does not approve physical kits or
certify learning outcomes.

The script fails explicitly on missing or duplicate lessons, invalid
schema/enums, schedule/rotation mismatches, wrong period lengths, missing
evidence fields and unknown local standard codes. It also verifies that
every lesson file appears exactly once and all 18 codes exist in the catalog.
It checks inventory identifier uniqueness and nonnegative prices/quantities,
and produces a material-term index without guessing unresolved matches.
`-ValidateOnly` also rejects missing or stale generated maps; run generation
after editing the source audits or inventory and include those maps in the change.
It does not infer official alignment, substitute usability, safety,
developmental appropriateness or classroom mastery from a passing schema.
