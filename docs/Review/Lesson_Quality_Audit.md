---
title: "Lesson quality audit"
description: "Complete lesson records, quality criteria and teaching-release gates"
---

# Lesson quality audit

The baseline contains **251 lesson documents**. Multi-week documents represent
more than one meeting; the audit is a document-level review, not a count of 251
activities to teach in one school year.

| Band | Baseline documents | Review and scored examples | Complete baseline/revision records |
|---|---:|---|---|
| K | 37 | [Kindergarten review](Kindergarten_Review.md) | [CSV](Kindergarten_Audit.csv) |
| 1-2 | 74 | [Grades 1-2 review](Grades_1-2_Review.md) | [CSV](Grades_1-2_Audit.csv) |
| 3-4 | 71 | [Grades 3-4 review](Grades_3-4_Review.md) | [CSV](Grades_3-4_Audit.csv) |
| 5-6 | 69 | [Grades 5-6 review](Grades_5-6_Review.md) | [CSV](Grades_5-6_Audit.csv) |

[Combined lesson map](Lesson_Map.csv) includes skills/local standards,
assessment evidence, materials, technology, preparation, cleanup, scope,
baseline disposition and revision state. Follow `lesson_path` relative to the
documentation root to read the actual teacher instructions.

## Dispositions

| Baseline status | Meaning |
|---|---|
| KEEP | Strong enough as written for its intended context; still check local inventory and students. |
| KEEP + IMPROVE | Valuable concept; identified instructions, evidence or classroom support need improvement. |
| REBUILD | Keep the learning objective; rebuild weak, unsafe or impractical lesson design. |
| REPLACE | Another activity better meets the objective under the school's constraints. |
| REMOVE | Documented duplication, developmental mismatch, safety, cost or insufficient learning value warrants retirement. |

No activity is removed merely because a reviewer prefers a different project.
P0/P1/P2/P3 indicate **baseline priority**, not proof that a problem remains
after a revision. `unchanged`, `improved` and `rebuilt` identify the subsequent
work; consult the band review for release conditions.

## Quality score

Score each applicable dimension from **0 to 3**:

- **0:** absent, inaccurate or unsafe.
- **1:** named, but insufficient instructions or evidence.
- **2:** teachable with a clearly identified remaining support/check.
- **3:** explicit, developmentally appropriate and independently usable.

| Dimension | Evidence needed for a strong score |
|---|---|
| Academic rigor | Correct explanation and a testable, observable learning target. |
| Age appropriateness | Prerequisites and response mode fit each grade, including nonreaders. |
| Catholic integration | Truth, dignity, stewardship or service changes students' thinking/actions; not only a prayer. |
| Standards alignment | Claimed local competencies connect to actual student work; official claims pass the source gate. |
| Hands-on learning | Students manipulate, observe, measure or construct, not merely watch. |
| Engagement | Meaningful choices and a comprehensible problem, not entertainment alone. |
| Substitute friendliness | No hidden kit, content knowledge, account or classroom-location assumptions. |
| Instruction clarity | Numbered steps and realistic times include assessment and cleanup. |
| Low-tech access | Technology category is explicit; a fallback states any objective change honestly. |
| Cost efficiency | Quantities and reusable/consumable distinctions support an affordable pathway. |
| Preparation | Specific steps and honest first-use/repeat-use time estimates. |
| Assessment | Individual evidence measures the objective, not attendance, handwriting or decoration. |
| Differentiation | Practical support/challenge and access alternatives preserve the objective. |
| Safety | Specific hazards, adult-only steps, stop rules and local-policy checks. |
| Scalability | Quantities, roles and testing logistics work for 10/15/20/25 students. |
| Family communication | Plain-language learning, Catholic connection and an answerable child question. |
| Progression | Prior skill, grade-specific expectation and next step are explicit. |

For a numeric summary, report `earned / (3 x applicable dimensions)` together
with the scored dimensions and rationale. Do not average unscored dimensions
as zeros or compare summaries using different denominators. Scores are
editorial judgments, not measured student outcomes.

**Safety, accuracy and access are gates, not averageable weaknesses.** A high
engagement score cannot offset an unresolved unsafe procedure. Classroom
piloting and individual mastery checks remain necessary.

## Evidence and limits

Band reviewers inspect the lesson text rather than treating front-matter
tags as evidence. Domain exposure counts may overlap: one measured bridge
test can support engineering and mathematics. An exposure count is not a
percentage of instructional minutes or a finding of subject-standard mastery.
The band reviews state their counting assumptions and unresolved issues.

See the [implementation plan](Implementation_Plan.md) for teaching-release
gates and the [traceability guide](Standards_Traceability.md) for official
benchmark verification.
