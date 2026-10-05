---
title: "Weeks 24-25: Advanced Scratch Programming"
description: "Executable custom blocks and bounded clones with explicit tests"
version: "3.0"
date: 2026-10-04
---

# Weeks 24-25: Advanced Scratch Programming

## LESSON AT A GLANCE

| Field | Reference |
|---|---|
| Grade / schedule / rotation / unit | 5-6 / Weekly / A / Computing |
| Time | 2 meetings of 45 minutes; 90 total |
| Objective / why / big idea | I can execute a parameterized custom block and three finite clones, predict their behavior and correct a tested bug. Decomposition makes code understandable. |
| Domains / Catholic connection | T, A; clear instructions and honest tests serve users; elegant code is not a measure of holiness. |
| Local standards | CST-T2: call/clone trace/debug; CST-T3: school-only data; CST-A2: purposeful feedback. Official benchmarks VERIFICATION REQUIRED. |
| Technology Requirement | Required for actual Scratch execution; paper trace fallback explicitly defers programming. |
| Difficulty / entry | Developing; teach events/repeat/custom input. Lists/broadcast systems are not squeezed into this two-meeting core. |
| Prep / cleanup | Moderate: first 30 min, repeat 15 min; IT approval/setup extra; cleanup 4 min/meeting. |

## BEFORE CLASS / MATERIALS

Check school contact/accommodations and approved offline/school Scratch access,
local save and working editor. Pretest both complete starters; Pen extension
needed only for meeting 1. Team roles operator/tracer/tester rotate, each edits
and runs. No personal/shared logins or public publishing.

| Item | Allocation for unit | 10 | 15 | 20 | 25 |
|---|---|---:|---:|---:|---:|
| Paper traces; pencil | 2 sheets and 1 pencil/student | 20;10 | 30;15 | 40;20 | 50;25 |
| Computer with approved Scratch, simultaneous route | 1/team | 4 | 5 | 7 | 9 |
| Computer with approved Scratch, shared route instead | 3/class alternative | 3 | 3 | 3 | 3 |
| Paper starter/test reference | 2/team | 8 | 10 | 14 | 18 |
| Ruler | 1/team | 4 | 5 | 7 | 9 |
| Board; clock; roster | 1 each/teacher | 1 | 1 | 1 | 1 |

Paper consumable; devices/tools reusable; software an access resource.

### Shared-route kit and turn plan

Select one computer row; no extra demo setup or purchase is assumed.
For three working approved setups, teacher preloads the complete starters
below (Pen added; clone `slot` sprite-local), making fresh turn copies.
Keep 4/5/7/9 balanced teams: two trios/two pairs, five trios, six trios/one
pair, seven trios/two pairs. In **each meeting**, teams 1-3 use **11-19**,
4-6 **19-27**, 7-9 **27-35**; 10/15 use two waves and then retest.
Each pupil gets up to two minutes plus two minutes/team for reset/checking:
meeting 1 restore repeat 3 to 4 on a bug copy, run both square sizes and check
160/320; meeting 2 change spacing 60 to 40, run three clones and compare
-80/-40/0 with -60/0/60, then restore and rerun. Every pupil edits and executes;
waiting pupils annotate call/clone traces and purposeful visual feedback.
Pretest the exact access/switch/turn workflow. Log observed/assisted/NE;
watching a partner is not operation. One/two setups serve that many teams per
window; remaining pupils keep paper evidence and book later runtime checks.
Do not enlarge groups or rush motor/access support. Shared-route evidence is
editing/running a provided starter, not independent from-scratch creation.

## VOCABULARY / TEACHER BACKGROUND

**Custom block:** named reusable instructions. **Parameter:** supplied input.
**Clone:** runtime sprite copy. **Local variable:** value private to that sprite/
clone; globals are shared. **Common misconception:** moving automatically draws.
Pen down is required. **If asked, "Are clones permanent?"** No; this starter
deletes each after its finite behavior and starts without stored personal data.

### Complete starters and keys

Meeting 1, one sprite, add Pen, make block `square (size)`:

```text
define square (size)
repeat (4)
  move (size) steps
  turn clockwise (90) degrees

when green flag clicked
erase all
pen up
go to x: (-100) y: (0)
point in direction (90)
pen down
square (40)
pen up
go to x: (20) y: (0)
pen down
square (80)
pen up
say [Two sizes, one definition]
```

Key: each call has four moves/four turns; perimeter 160/320 steps (Scratch
steps, not screen cm). Change repeat 4 to 3 in a copy -> open three sides;
fix/retest. Keep "run without screen refresh" unchecked.

Meeting 2, new one-sprite project, create variable `slot` **for this sprite only**:

```text
when green flag clicked
show
go to x: (0) y: (0)
set [slot] to (0)
repeat (3)
  change [slot] by (1)
  create clone of [myself]
  wait (0.2) seconds
hide

when I start as a clone
go to x: ((slot) * (60) - (120)) y: (0)
show
say (slot) for (2) seconds
delete this clone
```

Key: copies inherit slots 1/2/3, positions -60/0/60; all delete after their
two-second display; original hidden. A global slot can change while copies
run, so it is not the intended per-clone record. No forever-clone loop.

## EXACT LESSON SEQUENCE

### Meeting 1: function and parameter
1. **0-4 (4 min):** Ask "Can one definition draw two sizes?" Explain user clarity.
2. **4-11 (7 min):** Model Pen setup, custom input and 4x40 perimeter.
3. **11-24 (13 min):** Teams assemble/run starter; each edits size or executes call and records path. Shared teams begin the stated waves; waiting pupils annotate calls.
4. **24-35 (11 min):** Run 40/80 tests, diagnose three-side bug, restore four; finish shared waves and choose line color/contrast purposefully without color-only instruction.
5. **35-41 (6 min):** Individual call trace, 160/320 check, bug/retest and feedback-design explanation.
6. **41-45 (4 min):** Save approved local project, close devices, collect traces.

### Meeting 2: bounded clones
1. **0-4 (4 min):** Retrieve call reasoning; introduce clone copies.
2. **4-11 (7 min):** Model sprite-only variable and finite starter/key.
3. **11-24 (13 min):** Assemble/run, rotate all pupils through one edit/execution; record 1/2/3 and positions. Shared teams begin the stated waves; waiting pupils predict inherited slots.
4. **24-35 (11 min):** Repeat run; inspect deletion/reset. Change spacing 60 to 40 deliberately -> positions -80/-40/0; finish shared waves and restore or document chosen spacing with rationale.
5. **35-41 (6 min):** Each explains clone/local versus global, one test and school-only save/privacy boundary.
6. **41-45 (4 min):** Save locally if permitted, stop scripts, close devices, keep evidence.

## QUESTIONS TO ASK STUDENTS / WHAT SUCCESS LOOKS LIKE

"What changes at a call? How many clones? Which variable does each inherit?"
Each has correct call/clone traces, observed execution turn, corrected test
and purposeful visual feedback. 1 unsupported; 2 prompted; 3 independent;
4 predicts another size/spacing; NE if not executed.

## IF THINGS GO WRONG / SAFETY

No line -> Pen extension/down; overlapping clones -> local variable/positions.
No approved setups -> execute paper arrows/clone cards from same starters,
record reasoning only and defer runtime evidence. No private input, public
accounts, infinite clone creation, copied media or flashing effects.
Stop/report unsafe device/data behavior.

## SUPPORT / CHALLENGE / INDOOR FALLBACK

Grade 5/support: large block reference, one call/clone at a time, oral trace.
Grade 6/challenge: predict `square(60)` perimeter 240 and a spacing tradeoff.
Indoor seated lesson; no home coding or purchase requirement.

## CLEANUP / FAMILY NEWSLETTER

Teacher records actual versus paper operation and missing tests; return devices.
**Explored:** functions/clones. **Did:** two sizes and three finite copies.
**Learned:** parameters/local state matter. **Catholic connection:** honest,
useful work. **Ask:** "Which test found the bug?" No routine homework.

## TEACHER ARTIFACTS

Use this operational set for `square(size)` and the three finite sprite-local `slot` clones.

### Student material and evidence

- **Printable/no-print material/evidence:** Starter/test sheet plus traces: **call size | moves/turns | perimeter | observed shape | bug/fix** and **clone slot | x position | deleted? | local/global explanation**. Require individual edit/run separately from paper prediction.
- **Expected evidence, worked example, finished example, and visual example:** Display the square call trace and three numbered clone-position cards. `square(40/80)` has four moves/turns and perimeter 160/320 steps; repeat 3 leaves open triangle-like path, restore 4. Slots 1/2/3 at -60/0/60; spacing 40 deliberately produces -80/-40/0, then restore. Finished projects retain finite delete, hidden original, sprite-local slot and purposeful non-color-only feedback; paper-only trace defers execution.

### Teacher display and discussion

- **Board setup/discussion:** Post call table, 4×size perimeter, slot formula `slot×60−120`, expected positions and run roster. Parameter changes a call, not definition count; exactly three clones inherit local slots and delete. Misconceptions: move draws without pen down; Scratch steps are cm; clones persist; global slot safely preserves each value.

### Kit, closure, and continuation

- **Kit/reset/unfinished:** Exact MATERIALS; choose simultaneous 4/5/7/9 or shared three computers, never both. **Kit label:** **ADVANCED SCRATCH—W24-25—SQUARE CALL + 3 FINITE CLONES / LOCAL SLOT**. Stop scripts, locally save if approved, close/return devices, collect two traces/references/rulers. Mark last run and `runtime NE`; book missing individual edit/run.

### Interpretation and reteach

- **Annotated exemplar, common error interpretation, and reteach:** Box 160/320 and -60/0/60, underline local `slot`, circle repeat 3→4 and spacing 40→60 retests. No line indicates Pen setup, overlapping clones indicates state/position, four clones indicates loop boundary; unrun paper is access gap. Reteach one 4-turn card trace or three numbered clone cards, then execute one corrected starter.

## SAFETY / support / challenge

- **Safety classification and access:** Seated computer use is **minor severity / unlikely likelihood**. **Adult supervision ratio:** **1:25**, teams ≤3/timed turns; damaged cords or flashing/infinite clone changes stop. **Print/accessibility check:** verify ≥16 pt block text/high contrast, one call/clone step at a time, oral trace/motor support.
- **Devices/external-service compliance and deferred evidence:** Use an assigned school-managed computer with the school-approved **Scratch editor** (offline or managed local save); do not use personal/shared login, cloud/public upload, private input or copied media. Record each pupil's actual edit/run turn, square outputs and three-clone runtime results. If the computer or Scratch editor is unavailable, mark program execution, clone operation and runtime retests **deferred**; paper block/clone-card reasoning must not be counted as Scratch runtime or device evidence.
