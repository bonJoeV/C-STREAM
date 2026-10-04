---
title: "Session 7: Advent Coding"
description: "An executable click/open/reset interaction with accurate Advent content"
version: "3.0"
date: 2026-10-04
---

# Session 7: Advent Coding

## LESSON AT A GLANCE

| Field | Reference |
|---|---|
| Grade / schedule / rotation / unit | 5-6 / Bi-Weekly / B / Computing |
| Time | 1 meeting of 45 minutes |
| Objective / why / big idea | I can execute/trace a click event and reset, then revise its message for a reader. Interactive content needs predictable state and clear meaning. |
| Domains / Catholic connection | T, A, C; Advent preparation for Christ, voluntary reflection and accessible silent controls. |
| Local standards | CST-T2: event/reset trace; CST-A3: revised message; CST-C2: audience access. Official benchmarks VERIFICATION REQUIRED. |
| Technology Requirement | Required for actual Scratch programming; paper-event fallback explicitly defers execution. |
| Difficulty / entry | Introductory; teach event/state/if-else; no advanced platform prerequisite. |
| Prep / cleanup | Moderate: first 25 min/repeat 15; IT setup extra; cleanup 4 min. |

## BEFORE CLASS / MATERIALS

Check school contact/accommodations and approved Scratch/local save, no
personal/shared password/publication. Religion teacher confirms seasonal timing.
Original content: "Advent prepares us to welcome Christ; offer a kind turn today."
Not a direct Scripture quote or official weekly theme. Seat 4/5/7/9 teams;
pretest starter, rotate all pupils through an edit/run.

| Item | Allocation | 10 | 15 | 20 | 25 |
|---|---|---:|---:|---:|---:|
| Paper trace/message sheets | 2/student | 20 | 30 | 40 | 50 |
| Pencil | 1/student | 10 | 15 | 20 | 25 |
| Computer with approved Scratch, simultaneous route | 1/team | 4 | 5 | 7 | 9 |
| Computer with approved Scratch, shared route instead | 3/class alternative | 3 | 3 | 3 | 3 |
| Paper event/content sheet | 1/team | 4 | 5 | 7 | 9 |
| Board; clock; roster | 1 each/teacher | 1 | 1 | 1 | 1 |

Paper consumable; devices reusable; no Sphero/stock music/images.

### Shared-route kit and turn plan

Select one computer row; no extra demo device or stock is assumed. With three
approved setups, preload the exact Door starter below and make fresh turn
copies. Keep 4/5/7/9 balanced groups <=3: two trios/two pairs, five trios,
six trios/one pair, seven trios/two pairs. Teams 1-3 use **11-19**,
4-6 **19-27**, 7-9 **27-35**; 10/15 use the last window for retests.
Each pupil has up to two minutes to restore the missing `opened=0` reset on
a bug copy, run flag/click/click/flag, record state/output and choose readable
message wording; two minutes/team allow reset/checking. Waiting pupils trace
the four states and prepare original/revised message panels.
Pretest the access/turn workflow. Each pupil edits and runs; watching is not
operation. Record assistance/NE and defer overlong accessibility checks.
One/two setups serve that many teams per window; others keep paper evidence
and book later execution, never form groups of four.
Shared-route work edits a provided interaction, not a complete calendar.

## VOCABULARY / TEACHER BACKGROUND

**Event:** trigger. **State:** current value. **Reset:** starting value.
**Revision:** reasoned change. **Common misconception:** clicking always changes
state. **If asked, "Is this the whole Advent calendar?"** No; one bounded
interaction, not four complete weeks.
One sprite named Door, variable `opened`, original rectangle costume:

```text
when green flag clicked
set [opened] to (0)
say [Click for an Advent invitation]

when this sprite clicked
if <(opened) = (0)> then
  set [opened] to (1)
  say [Advent prepares us to welcome Christ; offer a kind turn today.]
else
  say [Already opened; green flag starts again]
```

Key flag/click/click/flag -> 0/1/1/0; output invitation on first click,
already opened on second. A single brief original sentence needs no quotation.
No personal prayer tracking or mandatory spiritual action.

## EXACT LESSON SEQUENCE

1. **0-4 (4 min):** Ask "What should second click do?" Connect access/Advent purpose.
2. **4-11 (7 min):** Model state, condition and starter/key.
3. **11-25 (14 min):** Teams assemble/run, each pupil edits or executes event; record expected/actual state/output. Shared teams begin the stated waves; waiting pupils trace states.
4. **25-35 (10 min):** Run four-event tests; intentional missing reset bug, fix/retest. Finish shared waves; peer reads message and asks a question, then revise wording/contrast keeping meaning.
5. **35-41 (6 min):** Individual trace/reset explanation, before/after message and audience access choice.
6. **41-45 (4 min):** Save school-only, stop/close devices, save traces and tidy.

## QUESTIONS TO ASK STUDENTS / WHAT SUCCESS LOOKS LIKE

"What value is tested? Why is second click different? What helped the reader?"
Each has 0/1/1/0 trace, corrected/reset test, purposeful message revision and
access reason. 1 unsupported; 2 prompted; 3 independent; 4 alternate-sequence
prediction; NE for unobserved runtime.

## IF THINGS GO WRONG / SAFETY

No approved device -> paper Door/state cards execute same rules, record algorithm
only. Wrong repeated output -> inspect condition/reset. No public media,
private prayers, accounts, copied art/music, flashing light or moving robots.
Stop/report unsafe data/device use.

## SUPPORT / CHALLENGE / INDOOR FALLBACK

Grade 5/support: large blocks/state cards, oral/scribed trace.
Grade 6/challenge: explain already-open behavior and revision tradeoff.
Indoor seated class; no family device/Advent event needed.

## CLEANUP / FAMILY NEWSLETTER

Record actual versus paper, save original/revised message and report missing turns.
**Explored:** events/state. **Did:** tested click/open/reset.
**Learned:** predictable interaction. **Catholic connection:** Advent and kindness.
**Ask:** "What happened on second click?" No routine homework.

**Previous:** [Gratitude Design](./Session06_Gratitude_Design.md)
**Next:** [App Design](./Session08_App_Design.md)
