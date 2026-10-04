---
title: "Weeks 2-3: Sphero Mastery"
description: "Measured navigation, loops, and honest debugging with a paper alternative"
version: "2.0"
date: 2026-10-04
---

# Weeks 2-3: Sphero Mastery

## LESSON AT A GLANCE

| Field | Teacher reference |
|---|---|
| Grade / unit / title | Grades 5-6 / Computing A / Sphero Mastery |
| Time | Two meetings of 45 minutes; 90 minutes total |
| Domains | C, T, M; engineering redesign is supporting practice |
| Big idea | A repeatable algorithm still needs testing against the real world. |
| Student objective | I can predict a route, run three trials, and explain one evidence-based correction. |
| Why | Programmers and technicians must distinguish intended instructions from observed results. |
| Catholic connection | Respect people sharing space and report unsuccessful trials honestly; human worth is not a robot score. See [verified teaching sources](../../Review/Grades_5-6_Review.md#verified-sources). |
| Local standards | CST-T2: individually trace the loop and correct one instruction; CST-M1: measure and record three endpoint errors; CST-C2: identify a safety/access decision that respects others. These are local, not official benchmarks. |
| Official benchmarks | VERIFICATION REQUIRED by the school's standards owner. |
| Technology | Recommended: primary paper route works without devices. Optional BOLT path requires one tested robot/tablet pair per team. Paper work does **not** demonstrate device programming or operation. |
| Difficulty / prerequisites | Moderate. Count to 4, measure centimeters, follow sequence; no trigonometry or previous rotation required. |
| Prep / cleanup | First kit: 25 minutes; repeat paper setup: 10; device pairing/charging adds time outside class. Cleanup: 4 minutes each meeting, included below. |

## BEFORE CLASS

1. Make teams of at most three: 4/5/7/9 teams for 10/15/20/25 students. Rotate planner, operator, and recorder; two-person teams share the recorder role.
2. Rule a 5-by-5 grid on each team sheet. Each square represents 20 cm. Mark start (1,1), target (3,1), then target (3,3); label columns and rows 1-5.
3. Prepare a paper token and command key: `MOVE one square`, `TURN right 90 degrees`, `REPEAT n times`. Face the token toward increasing column numbers.
4. For devices, pre-test BOLT/Sphero Edu compatibility and available roll/heading blocks. Aim the robot; software heading zero is relative to its aimed direction, **not automatically geographic north**. Keep compass, matrix feedback, functions, and polygon extensions for students who finish the core.
5. Set floor lanes away from exits: 1 m square per active robot, observer line 50 cm outside. If room cannot accommodate all teams, run three lanes in three 4-minute rounds for nine teams. Other teams trace code at tables.

## MATERIALS

Personal quantities are per meeting unless marked reusable. School supplies everything.

| Supply | Per student / team / class / teacher | 10 | 15 | 20 | 25 |
|---|---|---:|---:|---:|---:|
| Pencil; journal, reusable | 1 each/student | 10 | 15 | 20 | 25 |
| Grid and trial sheet | 2 sheets/team, reused in meeting 2 | 8 | 10 | 14 | 18 |
| Paper token; ruler, reusable | 1 each/team | 4 | 5 | 7 | 9 |
| Command slips cut from one sheet | 1 sheet/team | 4 | 5 | 7 | 9 |
| Masking tape, optional device lanes | 4 m/team for both meetings | 16 m | 20 m | 28 m | 36 m |
| BOLT + compatible tablet, optional | 1 pair/team; no loan assumed | 4 | 5 | 7 | 9 |
| Timer; scissors for slips | 1 each/teacher | 1 | 1 | 1 | 1 |

No devices? Omit tape and robot rows entirely. No projector, internet, account, or take-home device needed for the paper path.

## VOCABULARY

**Algorithm:** ordered instructions. **Loop:** instructions repeated a set number of times. **Heading:** direction in an agreed frame. **Calibration:** testing how a setting behaves. **Debug:** find and correct an instruction or setup error.

## TEACHER BACKGROUND

Paper tokens use discrete square steps. Robot speed and duration do not directly specify a reliable distance: friction, aim, battery state, and floor surface matter. An autonomous program runs without steering during the test; it does not make moral choices.

**Common misconception:** repeating code guarantees an exact route. It guarantees repeated instructions, not identical physical conditions.

**If a student asks, "Does turning 90 always mean north?"** Answer: No. North is geographic; the app uses a frame established by aiming/calibration. In our paper model, a right turn changes facing relative to the token.

## EXACT LESSON SEQUENCE

### Meeting 1 - loops and calibration

1. **0-5 (5 min):** Show an inaccurate route. Ask what the program intended and what evidence would help. Frame honesty and shared-space dignity.
2. **5-12 (7 min):** Model a square: `REPEAT 4 {MOVE 1; TURN right 90}`. Everyone traces facing after each instruction. On devices use four aimed headings 0, 90, 180, 270; do not assume a relative-turn block.
3. **12-20 (8 min):** Teams trace the square twice, changing operator. Device teams instead calibrate one straight 20 cm move, speed at most 20 on the app's 0-100 scale, short duration at most 1 second; adult approves settings.
4. **20-32 (12 min):** Run three square trials. Record trial, expected endpoint, actual endpoint, and distance from start in cm (paper path should return exactly; insert a missed turn in one trace to debug). Run devices in lane rounds if needed.
5. **32-38 (6 min):** Choose one correction; compare before/after without changing several values at once.
6. **38-41 (3 min):** Each student independently writes or dictates the repeat count, final facing, and one error with evidence.
7. **41-45 (4 min):** Stop robots, return kits, keep data sheets for meeting 2.

### Meeting 2 - two-waypoint route

1. **0-5 (5 min):** Retrieve the individual exit from meeting 1; correct a loop misconception together.
2. **5-12 (7 min):** Read the two-waypoint challenge. Paper: reach (3,1), then (3,3). Device: two 40 cm legs at a right angle, not geographic compass navigation.
3. **12-20 (8 min):** Each student first sketches a route; team selects one and names its repeated subroutine. Grade 5 uses two `REPEAT 2 MOVE` segments; Grade 6 explains why factoring repeated movement is useful.
4. **20-32 (12 min):** Trace/run three trials, rotating operator. Measure endpoint error; keep all results, including collisions or skipped instructions.
5. **32-38 (6 min):** Correct one instruction or calibration value and retest once. Optional matrix display reports START/END only after core tests.
6. **38-41 (3 min):** Each student submits a six-command-equivalent route, predicts one changed command's effect, and names a respectful shared-space decision.
7. **41-45 (4 min):** Clean up and stop all power.

## QUESTIONS TO ASK STUDENTS

- What direction is the token facing now, and what instruction changed it?
- What evidence distinguishes bad aim from a bad repeat count?
- Why must a failed trial stay in the record?
- Who loses access if only the most confident student operates?

## WHAT SUCCESS LOOKS LIKE

Each student correctly traces all four loop turns, records three measurements with cm units, and explains one correction using a specific trial. Grade 5: compare largest/smallest error. Grade 6: calculate mean error from three trials and explain why that is not a guarantee.

Keep individual exits and team raw tables. Device achievement is recorded separately: student edited blocks and operated a real robot under supervision. Do not award that evidence for tracing paper commands.

## IF THINGS GO WRONG

- Connection/aim fails: use the supplied grid immediately; mark shifted objective **algorithm tracing, not robot operation**.
- Drift persists: re-aim on the same floor, lower speed, change duration only, keep failed data.
- Too little floor space: use three lane rounds; no racing or improvised crowded courses.
- Finished early: create a parameterized paper subroutine or tested app custom block; no unverified compass claims.

## SAFETY

Adult inspects robots, charging leads, and lane boundaries. No deliberate collisions, throwing, shaking, racing, or water. Keep speeds at or below 20, use Stop before retrieval, and keep hands out while moving. Adult handles charging; a BOLT has an internal rechargeable battery, not student-replaceable "backup batteries."

## SUPPORT / CHALLENGE - GRADES 5 AND 6

Grade 5 support: numbered command cards and a facing arrow; dictate the exit. Grade 5 challenge: predict a missing turn. Grade 6 support: use the same route before averaging. Grade 6 challenge: compare two routes' command count and endpoint errors, defending a tradeoff. Seated paper tracing, high-contrast grids, and alternate operators preserve access without lowering reasoning.

## INDOOR FALLBACK

The complete paper investigation runs at desks in any season; the device option is indoors only.

## CLEANUP

Count rulers and tokens, store slips with the grid, stop/unpair robots, remove lane tape, and have the adult return devices to approved charging storage.

## FAMILY NEWSLETTER

**What we explored:** loops and navigation. **What students did:** predicted routes, recorded three trials, and debugged a correction. **What they learned:** instructions and real results can differ. **Catholic connection:** truthful evidence and equitable roles. **Ask your child:** "Which instruction did you change, and why?" No routine homework; optional family conversation needs no device.
