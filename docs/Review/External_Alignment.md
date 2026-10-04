---
title: "Source-verified external alignment candidates"
description: "Exact external identifiers tied to written student tasks and planned evidence"
---

# Source-verified external alignment candidates

[Combined candidate matrix](External_Alignment.csv) |
[Verified benchmark register](External_Benchmark_Register.csv) |
[Authority and implementation register](Standards_Sources.md)

This matrix is separate from the [local standards map](Standards_Traceability.md).
It provides exact external identifiers, individual grades, lesson tasks,
planned evidence and claim boundaries. It is **not** full subject coverage,
school/diocesan approval or proof that students mastered a benchmark.

## Sources and versions

### Minnesota arts, 2018

The state-agency [Perpich workbook](https://perpich.mn.gov/wp-content/uploads/2020/11/Minnesota-2018-K-12-Academic-Standards-in-the-Arts.xlsx)
was directly inspected, including exact Kindergarten and Grades 1-6 rows.
The workbook defines grade 0 as K and shows arts area, grade, strand, anchor
standard and benchmark in each identifier. The inspected identifiers are
listed individually in the register, not manufactured from a grade pattern.

The workbook itself identifies MDE's hosted Excel as the official version.
The source-verified state-agency copy therefore retains a **MDE-copy
corroboration and school-review** hold for formal institutional claims.
Its 2018 edition is the implemented arts reference for 2026-27.

A visual-design topic is insufficient. Proposed links require actual
child-created or child-directed art, appropriate artistic foundations and
the specific evidence the benchmark expects. A mechanical redesign alone is
not artistic revision; a picture in a lesson is not evidence of art creation.

### CSTA national computer science, 2026

The [publisher's current viewer](https://csteachers.org/pk12standards/view/)
and its ordinary public index/detail responses were inspected directly.
The exact identifiers, grade placement and clarifications are recorded in the
register. Retrieval used the same unauthenticated read operations as the
public viewer, not restricted materials or a login bypass.

Elementary grades have separate identifiers; Grade 6 uses the **6-8** band.
Do not reuse the 2017 elementary bands as 2026 grade organization.
This is a verified national framework, **not automatically adopted Minnesota
or Archdiocesan standards**.

Respect the full scope:

- Grade 2 algorithm creation includes sequence, events and repetition.
- Grade 3/4 mappings cover sequence, events, repetition and selection across
  one or more algorithms, with the appropriate written/visual representation.
- Grade 5's representation includes variables and the required structures.
- The selected middle-school correctness benchmark needs a given algorithm,
  specified inputs, expected/actual outputs and verification by trace or execution.
- Paper can evidence permitted tracing/conceptual work, but never actual
  software execution or robot/sensor operation.

Partial practice is described as partial or omitted from a full benchmark
claim. A named code, apparatus or teacher demonstration cannot supply missing
individual evidence.

## Source-specific records

- [K evidence and limits](Kindergarten_External_Alignment.md)
- [Grades 1-2 candidate data](Grades_1-2_External_Alignment.csv)
- [Grades 3-4 candidate data](Grades_3-4_External_Alignment.csv)
- [Grades 5-6 candidate data](Grades_5-6_External_Alignment.csv)

The matrix gives each grade's evidence rather than assigning both grades in a
band the same external expectation. Access supports can preserve a target;
when an alternative changes it, record the scope and deferred evidence.

## Unavailable official tables

Normal retrieval of final MDE science, mathematics, ELA and social-studies
tables did not provide readable source documents. Browser-verification HTML
is not the underlying standard, and a repealed rule or NGSS/Common Core
identifier is not a substitute. No guessed external number is published.
Use the local framework for the taught enrichment outcomes and withhold
unsupported official coverage claims pending authorized source access.

The [school release checklist](School_Release_Checklist.md) identifies the
remaining institutional/source checks without blocking documented safe local
learning simply because an unsupported external claim is withheld.

## Regeneration and verification

```powershell
.\scripts\Build-CurriculumMaps.ps1
.\scripts\Build-ExternalAlignment.ps1
.\scripts\Build-ExternalAlignment.ps1 -ValidateOnly
```

The external builder checks exact source IDs/URLs/editions, grade placement,
lesson existence/band, required scope/evidence, authority boundaries, duplicate
links and generated-matrix freshness against the source-verified register.
Editorial task/evidence review and actual classroom assessment remain separate.
