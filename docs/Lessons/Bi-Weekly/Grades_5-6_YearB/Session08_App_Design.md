---
title: "Session 8: App Design"
description: "An executable one-screen conditional supply app with privacy and user tests"
version: "3.0"
date: 2026-10-04
---

# Session 8: App Design

## LESSON AT A GLANCE

| Field | Reference |
|---|---|
| Grade / schedule / rotation / unit | 5-6 / Bi-Weekly / B / Computing |
| Time | 1 meeting of 45 minutes; one screen, not a multiscreen/storage app |
| Objective / why / big idea | I can run a conditional input/button/output app, debug a branch and justify a no-private-data/access choice. App behavior must match user expectations. |
| Domains / Catholic connection | T, C; dignity guides useful, minimal-data design, no biography or Internet-patron claim. |
| Local standards | CST-T2: conditional trace/debug; CST-T3: privacy; CST-C2: access. Official benchmarks VERIFICATION REQUIRED. |
| Technology Requirement | Required for actual App Inventor programming; paper fallback records interface/algorithm simulation only. |
| Difficulty / entry | Developing; Designer/Blocks and nested conditions modeled, no Year A prerequisite. |
| Prep / cleanup | Moderate packet first 20 min/repeat 10; school/IT setup >30 min possible before class; cleanup 4 min. |

## BEFORE CLASS / MATERIALS

Check contact/accommodations. IT verifies current age/privacy policy, approved
individual school-managed access, save and tested Companion/emulator.
No shared passwords or personal/home accounts. Seat 4/5/7/9 teams, each
rotates editor/operator/tester; pretest exact starter. Fictional user wants
supply location without names or surveillance. Locations are invented.
The short input `tape` refers specifically to masking tape, not electrical
insulation or an unspecified adhesive.

| Item | Allocation | 10 | 15 | 20 | 25 |
|---|---|---:|---:|---:|---:|
| Paper trace; pencil | 1 each/student | 10 | 15 | 20 | 25 |
| Computer plus tested Companion device/emulator, simultaneous route | 1 working setup/team | 4 | 5 | 7 | 9 |
| Computer plus tested Companion device/emulator, shared route instead | 3/class alternative | 3 | 3 | 3 | 3 |
| Paper screen/event/test sheets | 3/team | 12 | 15 | 21 | 27 |
| Board; clock; roster | 1 each/teacher | 1 | 1 | 1 | 1 |

Paper consumable; equipment reusable; software/access is not physical material.

### Shared-route kit and turn plan

Choose one setup row. A shared setup includes the computer and tested
Companion/emulator connection; demo uses that issued setup, not a new kit.
With three approved setups, preload the exact components/blocks below and a
turn copy with tape incorrectly routed to A. Keep 4/5/7/9 balanced groups <=3:
two trios/two pairs, five trios, six trios/one pair, seven trios/two pairs.
Teams 1-3 use **11-19**, 4-6 **19-27**, 7-9 **27-35**; 10/15 use the last
window for retests. Each pupil has up to two minutes to correct tape's branch,
run all six keyed cases and record actual outputs; allow two minutes/team
for approved individual-account transition/reset/checking. Waiting pupils
independently trace ruler/crayon/Ruler and plan accessible controls.
IT pretests this exact access/turn workflow; no shared passwords. Every pupil
edits and runs, with assistance/NE separate; watching never proves operation.
One/two setups serve that many teams per window; book remaining checks later
and retain paper reasoning, not app-execution claims. Defer overruns rather
than rush accessibility, privacy or setup. Shared work modifies a provided
one-screen app, not an independently built app from blank.

## VOCABULARY / TEACHER BACKGROUND

**Interface:** visible controls. **Event:** trigger. **Condition:** test.
**Data minimization:** only necessary input.
**Common misconception:** tool needs a user's identity.
**If asked, "Can we store their choices?"** Not this unit; no database.
Designer: TitleLabel "Kit helper"; ChoiceBox hint "Type ruler or tape";
FindButton "Find"; ClearButton "Clear"; ResultLabel "Choose a supply".

```text
when FindButton.Click
  if ChoiceBox.Text = "ruler"
    set ResultLabel.Text to "Rulers: tray A"
  else if ChoiceBox.Text = "tape"
    set ResultLabel.Text to "Tape: tray B"
  else
    set ResultLabel.Text to "Type ruler or tape"
when ClearButton.Click
  set ChoiceBox.Text to ""
  set ResultLabel.Text to "Choose a supply"
```

Key: ruler -> A, tape -> B, empty/crayon/Ruler -> fallback (case-sensitive);
Clear resets input/output. Six cases, not claimed spelling normalization.
Criterion: correct cases, user finds Find/Clear unaided, labels not color-only.

## EXACT LESSON SEQUENCE

1. **0-4 (4 min):** Ask "What does this user need, not need?"
2. **4-11 (7 min):** Model components/nested branches and case-sensitive key.
3. **11-25 (14 min):** Teams assemble exact screen/blocks and execute; each pupil edits/runs a branch. Shared teams begin the stated waves; waiting pupils trace specified inputs.
4. **25-35 (10 min):** Run six cases; intentional tape -> A bug on copy, fix/retest. Finish shared waves; peer finds controls and suggests readable-label improvement.
5. **35-41 (6 min):** Individual ruler/crayon/Ruler trace, branch correction, privacy boundary and access reason; collect actual outputs.
6. **41-45 (4 min):** Save school-only, disconnect/close setup, retain traces and tidy.

## QUESTIONS TO ASK STUDENTS / WHAT SUCCESS LOOKS LIKE

"Why does Ruler differ? Which case finds wrong branch? Why no name?"
Each has three correct independent traces, corrected case, six-case team record,
observed device turn and privacy/access explanation.
1 unsupported; 2 prompted; 3 independent; 4 boundary/test limit; NE for unrun app.

## IF THINGS GO WRONG / SAFETY

No connection/approval -> paper operator follows exact rules, programming
deferred. Wrong output -> check component names/branch nesting.
No cameras/GPS/microphone/texting, private input, TinyDB/cloud, public upload,
home accounts or patient claims. Stop/report unsafe device/data handling.

## SUPPORT / CHALLENGE / INDOOR FALLBACK

Grade 5/support: component checklist, branch arrows and scribed trace.
Grade 6/challenge: justify strict-case instructions versus deliberately coded
case handling, not silently claim it works. Indoor one-screen lesson.

## CLEANUP / FAMILY NEWSLETTER

Record actual/paper and missing turns, save evidence, return equipment.
**Explored:** conditional apps. **Did:** tested supply inputs/reset.
**Learned:** cases/privacy/access. **Catholic connection:** dignity in design.
**Ask:** "What happened with an unknown input?" No routine homework.

**Previous:** [Advent Coding](./Session07_Advent_Coding.md)
**Next:** [Science and Faith](./Session09_Science_Faith.md)
## Teacher artifact pack (release checklist)

- **Adult ratio:** 1 adult:25 pupils for paper interface tracing; use 1 adult:3 pupils at each active App Inventor/Companion setup, with IT-managed access.
- **Student material (print or no-print):** Give a one-screen sketch and six-row test table for `ruler, tape, empty, crayon, Ruler, Clear`, with expected/actual result, tape-branch fix, privacy choice, and access change. Board-copy components/rows when no printer is available.
- **Exact evidence/answers:** `ruler -> Rulers: tray A`; `tape -> Tape: tray B`; empty/crayon/`Ruler` -> fallback because matching is case-sensitive; Clear blanks input and restores “Choose a supply.” No name, database, or location sensing is needed.
- **Worked example / Finished example:** Work `Ruler`: strict comparison fails, so fallback is correct. Finished app evidence includes all six observed cases, corrected tape-to-A bug, retest, readable Find/Clear labels, and pupil's own edit/run; otherwise mark **paper interface/algorithm—app execution N/A**.
- **Board setup:** Draw TitleLabel, ChoiceBox, FindButton, ClearButton, ResultLabel and **INPUT | EXPECTED BRANCH | ACTUAL | FIX/RETEST | DATA NOT NEEDED**.
- **Discussion/misconceptions:** Ask “Why does Ruler differ?” (case); “Which test catches wrong tape branch?” (`tape`); “Why no name?” (not needed); “Can choices be stored?” (not in this unit). Correct assumptions of automatic spelling normalization or required identity.
- **Kit contents / Kit label:** Each pupil: trace/pencil; each team: three paper screen/event/test sheets and one approved App Inventor computer+Companion/emulator setup or shared turn. Kit label: **G5-6 YB S08 KIT HELPER—RULER A/TAPE B—NO STORAGE**. Reset ChoiceBox blank/ResultLabel default, use fresh school-managed copies, disconnect/close, and return equipment.
- **Unfinished work:** Record last completed case and whether paper/device; preserve school-side project/trace and schedule only missing cases. Do not use home accounts or claim an unrun app.
- **Annotated exemplar / Common error interpretation / reteach:** Box six outcomes, circle corrected tape branch, underline no-private-data rationale. Tape -> A identifies branch content/order; `Ruler` -> fallback is expected, not a bug. Reteach with branch arrows for ruler/tape/else and rerun ruler/tape/unknown/Clear.
- **Safety risk classification—severity/likelihood/ratio/SDS:** Severity **moderate** (account/privacy exposure), likelihood **unlikely** with IT-approved managed access. One adult monitors class and directly observes teams of at most three/individual edits; IT controls login/Companion setup. SDS **not applicable** to paper and intact devices; no hardware opening or chemicals.
- **Print/accessibility check / Devices/external-service compliance:** Use 14-point high-contrast labels, non-color-only controls, large tap targets, keyboard/scribed alternatives, and seated turns. The actual hardware/service is a school computer running **MIT App Inventor** with its approved Companion tablet or emulator. If it is unavailable, the pupil's component build, branch edit, six observed cases, Clear run, tape-branch fix, and retest evidence are deferred; paper tracing is interface/algorithm evidence only and never app runtime/device evidence. Use no shared password, personal/home account, TinyDB/cloud, camera, GPS, microphone, texting, upload, or private input.
