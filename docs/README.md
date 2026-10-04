# C-STREAM Documentation

This folder contains the source files for the C-STREAM MkDocs site.

**📖 View the live documentation:** [https://bonJoeV.github.io/C-STREAM](https://bonJoeV.github.io/C-STREAM)

## Structure

- `index.md` - Homepage
- `Lessons/` - All lesson plans (Weekly & Bi-Weekly tracks)
- `Resources/` - Teacher resources and guides
- `Templates/` - Lesson plan templates
- `Rubrics/` - Assessment rubrics
- `Student_Resources/` - Student worksheets
- `Review/` - 2026-27 standards, audits, progression, materials and teaching-release guidance

## Building Locally

```powershell
pip install -r requirements.txt
.\scripts\Build-CurriculumMaps.ps1 -ValidateOnly
mkdocs serve
```

Run these commands from the repository root. After changing a band-audit CSV,
run `.\scripts\Build-CurriculumMaps.ps1` to regenerate the combined lesson and
standards-evidence maps. See [the review](Review/README.md) before treating a
legacy lesson as classroom-ready.

Then visit http://127.0.0.1:8000/C-STREAM/
