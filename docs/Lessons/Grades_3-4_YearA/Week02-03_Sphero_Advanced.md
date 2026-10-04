---
title: "Weeks 2-3: Sphero Advanced Coding"
description: "Sequences, repeat loops and measured robot debugging with an unplugged path"
version: "2.0"
date: 2026-10-04
tags:
  - grades-3-4
  - year-a
  - robotics
  - coding
---

# Weeks 2-3: Sphero Advanced Coding

## Lesson at a glance

| Field | Teacher information |
|---|---|
| Grade / unit / title | Grades 3-4 / Computing / Sphero Advanced Coding |
| Time | **Two meetings of 40 minutes each**, including cleanup |
| Meaningful domains | Catholic responsibility, technology/computing, measurement |
| Big idea | An algorithm can be correct while a physical robot still needs calibration. |
| Student objective | "I can predict a sequence, shorten a repeated pattern, and record a debug change." |
| Why | Reliable instructions and honest testing matter in tools that affect people. |
| Catholic connection | Use tools without endangering people; give everyone a programming turn; report actual results rather than claiming perfection. |
| Local standards | **Local, not official:** CST-C2 (equitable roles/safe use); CST-T1 (operate and troubleshoot input/output); CST-T2 (sequence/loop/debug); CST-M1 (measure travel/error). |
| Technology | **Required for the primary robot pathway:** 2 charged Sphero robots and 2 compatible devices with Sphero Edu Blocks. A paper executor can demonstrate computational thinking, **not** Bluetooth operation, sensor use or physical robot programming. |
| Difficulty / prerequisites | Moderate; no prior robot experience assumed. Read arrows and count repeats. Sensor events/variables are later enrichment, not required here. |
| Prep / cleanup | 20 minutes with precharged, previously paired kits; first-time installation/pairing or charging is additional advance work. 5 minutes each meeting. |

## Before class

1. Confirm the borrowed model supports Sphero Edu Blocks. Check the school's device permissions; use locally saved programs and no pupil accounts. **VERIFICATION REQUIRED:** exact block labels/compatibility for the installed model and app version; use its manufacturer help, not a guessed sensor command.
2. Charge in advance, label robot/device pairs 1 and 2, open Blocks and test a roll at **speed 20 for 1 second**, then stop. Aim the robot's reference heading down its lane using the app's aiming control. Sphero heading values are **absolute directions**, not relative "turn another 90" instructions.
3. Tape two **1 m square** testing areas on clear floor, away from exits, with a soft cardboard boundary. Mark the robot start and heading 0. Measure the travel from the test; write that actual length on the board. Roll speed/time is not a commanded distance in centimeters.
4. Seat teams of 2 (one trio at odd enrollment). Assign half the teams to each testing area. Give numbered **one-minute** testing slots; at 25 pupils, 7 slots suffice for 13 teams across two robots. Waiting teams trace paper code at desks.
5. Board: `prediction | actual | one change | retest`. Draw a 4 by 4 paper grid. Have the school's stop procedure visible.

## Exact supplies

Tables budget ceil(students / 2) kits. A final trio gives **5/7/10/12 active teams** at 10/15/20/25 pupils; unused eighth/thirteenth team paper/ruler is spare. References to thirteen teams/seven rounds are conservative capacity limits, not required singleton grouping.

- **Per student:** 1 evidence half-sheet per meeting (2 total), pencil.
- **Per team:** 2 paper sheets per meeting, ruler, paper token, 8 hand-drawn arrow/repeat cards reusable between meetings.
- **Whole class:** 2 Sphero robots, 2 compatible devices, 2 chargers, 2 cardboard boundary sets, timer, 4 m floor-safe tape for starts/corners; board. No marker attached to robots.
- **Teacher:** pairing/charging access and manufacturer's model instructions. No student charging.

| Students | Teams | Paper sheets across two meetings | Half-sheet slips across two meetings | Rulers / tokens | Arrow/repeat cards | Robots / devices / chargers |
|---:|---:|---:|---:|---:|---:|---:|
| 10 | 5 | 20 | 20 | 5 each | 40 | 2 each |
| 15 | 8 | 32 | 30 | 8 each | 64 | 2 each |
| 20 | 10 | 40 | 40 | 10 each | 80 | 2 each |
| 25 | 13 | 52 | 50 | 13 each | 104 | 2 each |

Students draw cards on their team paper; no elaborate printed kit. Reuse rulers, cards and tokens. With **one robot**, the teacher demonstrates; log which children actually enter/run code and schedule later operation checks. Do not claim all children operated it.

## Vocabulary and background

- **Sequence:** ordered instructions.
- **Loop:** repeats enclosed instructions a specified number of times.
- **Heading:** direction measured from the robot's aimed reference.
- **Calibration:** testing and adjusting settings to match physical movement.
- **Debug:** find the difference between expected and actual behavior; change and test.

For a square, four identical rolls use headings **0, 90, 180, 270** in order. A repeat loop around four rolls repeats the *whole square*; it is not a one-roll square loop. Wheel slip, aim and flooring affect the result.

**Misconception:** "Correct code guarantees a perfect square." Physical systems vary.
**Question / answer:** "Can it see the tape?" "This lesson does not program line-following. Tape marks our boundary and starting point; we measure and adjust the code."

## SAFETY

Teacher controls pairing, chargers and speed limits. Students stay seated except scheduled operators; only one team enters each area. Roll speed stays at 20 or lower, duration at 1 second or shorter per segment. Stop immediately if a robot leaves the area; retrieve only after motion stops. No collisions as experiments, shaking/throwing, wet floors, or operation near stairs. Keep sound low.

## Meeting 1: sequence and calibration, exactly 40 minutes

1. **0-4: Purpose and prediction.** Original prayer: "God, help us use tools thoughtfully and include each classmate." Ask: "What should happen when we give the same command twice?"
2. **4-9: Model one roll.** Teacher shows paired app, aim, start and stop; run heading 0, speed 20, duration 1 second. Measure actual centimeters. "Which setting is time? Which observation is distance?"
3. **9-14: Paper rehearsal.** On the drawn grid, students trace `forward 1 square; forward 1 square; turn right; forward 1 square`. One partner reads exactly; the other moves a token. This is a paper algorithm, not Sphero's absolute-heading API.
4. **14-27: Robot slots and desk work.** Teams write a prediction, then in their slot enter **two roll blocks at heading 0, speed 20, 1 second each**, run and measure endpoint distance from start. Switch operator between entering first and second blocks. Waiting teams predict and trace another paper route. Teacher records names of actual operators; the trio's third child operates in meeting 2.
5. **27-32: One-change debug.** Choose one team result. Change duration only (for example from 1 to 0.5 seconds); predict shorter travel and retest. "What stayed the same? Did it travel exactly half as far?" Do not demand exact proportionality.
6. **32-35: Individual check.** Each child writes/draws the two-command prediction and identifies one adjustment with expected effect. Actual operators also label start/stop and record their measured travel. Mark "paper evidence only" for children without operation.
7. **35-40: Cleanup and exit.** Stop programs, teacher switches off robots and returns paired devices; peel temporary tape without damaging floor, collect tokens/cards, save slips. Ask: "Why record what actually happened, even when it missed our prediction?"

## Meeting 2: loops and a square, exactly 40 minutes

1. **0-5: Retrieve evidence.** "How did duration affect travel?" Review aiming and safe boundaries, not assumed prior expertise.
2. **5-11: Trace a square.** Teacher draws four equal segments. Model roll headings **0, 90, 180, 270**, speed 20, 0.5 seconds each. Wait for each roll to finish. Ask: "Why does heading 90 not mean turn 90 more every time?" Point to the fixed direction chart.
3. **11-16: Represent a repeat.** Teams write the four-roll sequence twice, then enclose the four commands in `repeat 2`. Count 8 rolls. Grade 3 traces once then twice; Grade 4 compares 8 written roll blocks with 4 inside a repeat, saving 4 repeated roll blocks (not all interface blocks).
4. **16-29: Program/test slots.** Teams enter four roll blocks inside a repeat block set to **1 initially**; test one square. Change repeat to 2 only if the first stays in bounds. Swap operator from meeting 1. Waiting teams trace the 8-roll paper version. **No sensor achievements are claimed.**
5. **29-33: Debug and discuss.** "Did it return near start? Which one setting would you adjust?" Teacher retests one shorter duration or re-aimed start; measure endpoint error, not a promised zero.
6. **33-35: Individual check.** Each child shows that repeating four commands twice executes 8 rolls and explains a difference between paper and physical outcomes.
7. **35-40: Cleanup.** Stop, teacher powers off and stores devices; team collects papers/rulers/tokens, restores lanes. Store tested program locally with team ID, not full pupil names.

## Unplugged / substitute / indoor path

Use the **same two 40-minute sequences** without robots: steps involving app demos become teacher-executed token demos; robot-slot time becomes paired token tracing and one-change debugging. For absolute headings draw north/east/south/west, and define a paper roll as moving one grid square in the named direction. Mark slips **CT: sequence/loop/debug**; CST-T1 device operation and real distance calibration remain **not observed**. Weather has no effect; all work is indoor.

## What success looks like

Every child predicts an ordered route, traces a two-repeat sequence as 8 commands, identifies a bug and proposes a retest. Real-device evidence additionally requires that child's observed start/stop or block edit/run and a measured result. Use scores **1** guess only; **2** correct trace with prompts; **3** independent trace and justified debug; **4** explains a physical limitation using data. Record device operation separately; collaboration is not mastery.

## Troubleshooting and differentiation

- **Pairing fails after 2 minutes:** announce paper pathway and missing device evidence; do not spend the period resetting accounts.
- **Drift:** stop; reset aim/start, shorten duration, change only one setting. Never increase speed to force success.
- **Wrong-direction square:** check absolute headings. No triangle/pentagon angle arithmetic is required.
- **Support / Grade 3:** read aloud; use 4 arrow cards and a finger/token; partner handles fine-motor input while the child directs and traces.
- **Challenge / Grade 4:** compare endpoint errors on two trials and explain why paper tracing does not test traction or Bluetooth.
- **25 pupils:** two test areas, thirteen teams, seven one-minute slots within each thirteen-minute window. No whole-class floor race.

## Family snippet

We used sequences, loops and honest debugging to predict and test routes. Robots add real input/output and calibration; paper work develops computational thinking but is not robot operation. Our Catholic connection was inclusive, responsible tool use. **Ask:** "What repeats, and what did you change after testing?" **Optional at home:** give a partner three directions using a paper token. No devices or homework.
