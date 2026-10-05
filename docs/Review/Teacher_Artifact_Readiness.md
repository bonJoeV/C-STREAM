---
title: "Teacher artifact readiness"
description: "Lesson-by-lesson release audit for required physical and written supports"
---

# Teacher artifact readiness

The prior lesson revision pass produced 251 improved teaching pathways. The new
release standard requires additional artifacts, not merely narrative sections.
The generated [teacher artifact audit](Teacher_Artifact_Audit.csv) records every
lesson and checks for:

- printable or explicitly unnecessary student materials;
- answer keys or expected evidence;
- worked and finished examples for builds;
- helpful visual examples and board/chart setup;
- expected discussion responses;
- kit contents and kit-label text;
- specific cleanup/reset and unfinished-work directions; and
- common misconceptions, annotated exemplars, error interpretation and reteaching;
- safety classification, supervision and SDS controls;
- external-service compliance where technology is used; and
- a print/accessibility check.

The audit now reports `required_artifact_count`,
`not_applicable_artifact_count`, and `missing_required_artifact_count`
separately. A not-applicable result is only used for a detected non-build,
non-chemical, or no-technology condition; it is not a pass for a required
artifact. Every lesson must also expose equivalent preparation, supplies,
safety, sequence, evidence/success, fallback/support, and family/cleanup
readiness sections. Equivalent headings used by the lesson templates are
accepted.

Local Markdown links added to a lesson are recorded in
`linked_artifact_paths`. A link to a missing local file is a release hold;
external URLs and in-page anchors are not treated as artifact paths.

## Current result

All **251 lessons pass the repository artifact screen**: 5,040 required checks,
231 explicit not-applicable checks, zero missing required artifacts, zero
readiness-section failures and zero broken local artifact links. This confirms
written coverage only; it does not make a lesson classroom-ready or
substitute-ready.

The CSV is a conservative text-presence screen, not a semantic certification.
A teacher must still confirm that a detected item is correct, printable, legible,
age appropriate, and usable with the actual kit. A missing flag requires either:

1. adding the lesson-specific artifact;
2. linking a complete shared artifact that exactly fits the lesson; or
3. stating why the item is not applicable and what the teacher uses instead.

School-controlled release remains on hold until the actual inventory and kit
condition, exact product/SDS applicability, external-service approval,
individual accommodations, second-adult walkthrough, classroom pilot and
named approver record are complete.

## Release sequence

1. Start with the next scheduled **core** lesson, not all alternatives.
2. Resolve every missing CSV field in the lesson and its student/teacher files.
3. Print at actual scale; test black-and-white readability and response space.
4. Build/pretest the example when applicable and photograph or sketch it.
5. Label/count the physical kit and complete the local release record.
6. Have a second adult follow only the written materials.
7. Pilot, correct defects, and record the outcome in the
   [change log](Change_Log.md).

Run `.\scripts\Build-OperationalAudit.ps1` after revisions, followed by
`.\scripts\Build-OperationalAudit.ps1 -ValidateOnly`. Validation compares every
generated row with the script's current output and rejects a generated CSV
whose lesson map, lesson source, materials source, or audit script is newer.
The completion line reports included/excluded artifacts, held lessons,
required versus not-applicable checks, missing required checks, readiness
section failures, broken-link lessons, and procurement rows. Automated
detection may still need a human override documented in the lesson; never edit
the CSV by hand to manufacture a pass.

Run `.\scripts\Test-OperationalReadiness.ps1` for the completion gate. It
requires all 251 rows to have no repository artifact/section/link hold, validates
the controlled teacher-release template, and checks external-service and SDS
register schemas. It deliberately does not convert any school-only `HOLD` into
approval.

## Release evidence record

After the written artifact row is complete, use the
[Teacher Release Record](Teacher_Release_Record.csv) for the selected lesson.
The template requires the actual date, enrollment, pathway, counted kit,
safety/access/policy checks, pretest, fallback, timing, individual evidence,
defect correction, approver, and release status. Copy the row into a school-
controlled working record; do not publish student-identifying evidence here.

`PASS` in the artifact audit means only that the repository contains the
required written support. A lesson remains `HOLD` until the release record and
classroom pilot are complete.
