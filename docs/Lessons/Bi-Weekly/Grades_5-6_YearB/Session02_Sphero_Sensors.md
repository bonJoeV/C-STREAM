---
title: "Session 2: Sphero Sensors"
description: "Stationary light-threshold reasoning with a complete paper sensor model"
version: "2.0"
date: 2026-10-04
---

# Session 2: Sphero Sensors

## LESSON AT A GLANCE

| Field | Teacher reference |
|---|---|
| Grade / unit / title | Grades 5-6 / Computing B / Sphero Sensors |
| Time | One 45-minute meeting |
| Domains | C, T, M |
| Big idea | A sensor reading becomes a response through a stated threshold and rule. |
| Student objective | I can trace four light readings through a condition, debug the boundary, and describe a limit. |
| Why | Automatic lights and monitoring tools need understandable, tested input/output behavior. |
| Catholic connection | Respect users and tell the truth about a system's capabilities; [dignity and truth sources](../../../Review/Grades_5-6_Review.md#verified-sources). Sensors cannot detect God's presence or moral worth. |
| Local standards / evidence | CST-T1: individual input/output model; CST-T2: individual conditional/loop trace; CST-M2: four-row table and comparison; CST-C2: human-impact/access safeguard. |
| Official benchmarks | VERIFICATION REQUIRED; four local program codes. |
| Technology | Recommended: primary paper simulation is complete. Optional BOLT/tablet path demonstrates actual sensor programming only when observed on a working device. Paper is not robot operation evidence. |
| Difficulty / prerequisites | Moderate; compare integers, follow if/else, repeat four times. No earlier rotation or autonomous-navigation prerequisite. |
| Prep / cleanup | Paper first 15 minutes/repeat 10; optional pairing/calibration at least 20 minutes outside class; cleanup 4 included. |

## BEFORE CLASS

1. Make 4/5/7/9 teams of at most three, rotating input reader, rule operator, checker.
2. Copy readings 12,48,45,18 and threshold 30 on cards. These are **invented model units**, not verified lux readings.
3. Optional BOLT: charge/pair with compatible Sphero Edu and pre-test current light-sensor reading and matrix/LED blocks. Confirm actual units/display; do not substitute invented readings as measured values.
4. Keep real BOLTs stationary on dry table trays. Remove all motion blocks; use light outputs only. Check dim/bright readings, set a threshold between them, and record it. If readings are indistinguishable, use paper immediately.
5. Prepare output cards "NEEDS LIGHT" and "ENOUGH LIGHT." Labels, not color alone, communicate states.

## MATERIALS

| Supply | Per student / team / class / teacher | 10 | 15 | 20 | 25 |
|---|---|---:|---:|---:|---:|
| Pencil; journal, reusable | 1 each/student | 10 | 15 | 20 | 25 |
| Individual table/exit sheet | 1/student | 10 | 15 | 20 | 25 |
| Reading/rule/output cards | 1 sheet/team | 4 | 5 | 7 | 9 |
| Marker; blunt scissors; dry tray | 1 each/team | 4 | 5 | 7 | 9 |
| Timer; large teacher trace | 1 each/teacher | 1 | 1 | 1 | 1 |
| BOLT + approved tablet, optional | 1 tested pair/team | 4 | 5 | 7 | 9 |
| Low-brightness flashlight, optional | 1/team | 4 | 5 | 7 | 9 |

## VOCABULARY

**Sensor:** measures a physical input. **Threshold:** boundary for a decision. **Condition:** rule selecting output. **Calibration:** checking readings under known conditions. **Loop:** repeated rule application. **Limitation:** what a system cannot tell us.

## TEACHER BACKGROUND / COMPLETE RULE

```text
Repeat four times:
  read next light value
  if value < threshold:
    output NEEDS LIGHT
  else:
    output ENOUGH LIGHT
  wait for next test
```

Paper key at threshold 30: 12 -> NEEDS LIGHT; 48 -> ENOUGH LIGHT; 45 -> ENOUGH LIGHT; 18 -> NEEDS LIGHT. At exactly 30 output ENOUGH LIGHT, because the condition is strictly less than. On devices students build the analogous pretested condition with light display only; calibrate their own threshold rather than assuming model units.

A brightness reading alone does not identify **direction** toward a light, detect all obstacles, or establish safety. This stationary lesson intentionally narrows the original multi-sensor navigation objective. Gyroscope, accelerometer, compass, and IR research remain optional future work after verified block support and safe plans.

**Common misconception:** "bright -> forward" makes a light-seeking navigator. It responds to brightness without knowing direction.

**If asked, "Is it thinking like a person?"** Answer: It executes a rule on input; it does not make ethical judgments or possess human dignity.

## EXACT LESSON SEQUENCE

1. **0-5 (5 min):** Introduce input/output purpose and honest capability limits.
2. **5-12 (7 min):** Model threshold 30 and exact-boundary case. Distinguish invented model values from actual readings.
3. **12-20 (8 min):** Teams assemble paper cards or stationary sensor/light blocks. Device teams record actual dim/bright values and chosen threshold; adult checks no motion blocks.
4. **20-30 (10 min):** Run four readings, rotate roles, record expected/actual outputs. Devices test dim/bright/dim/bright, preserving their own units and values.
5. **30-38 (8 min):** Deliberately reverse `<` to `>` in a copy, predict effects, test/correct. Add exact-threshold paper test 30; discuss noisy readings near a boundary.
6. **38-41 (3 min):** Each independently traces 12/48/30, explains the boundary bug, and names one limitation or human-impact safeguard.
7. **41-45 (4 min):** Stop programs, store cards/devices, collect exits.

## QUESTIONS TO ASK STUDENTS

Which value is the input? Which part is the programmer's choice? What happens at exactly 30? What evidence would be needed to claim navigation? Why should a real safety light have more testing than this classroom model?

## WHAT SUCCESS LOOKS LIKE

Each student predicts all four model outputs, explains one corrected comparison, and names a capability limit. Grade 5 uses supplied threshold. Grade 6 calculates a midpoint between two actual/model values and explains boundary uncertainty; all students may earn reasoning evidence without devices. Actual sensor/block-operation credit requires observed individual edit and run.

## IF THINGS GO WRONG

Sensor readings do not separate: record issue and use paper, not an invented success. Pairing fails: paper model within one minute. Flashlight saturates reading: lower light/distance, avoid eyes. Flickering boundary: describe uncertain inputs; do not treat it as a reliable warning system.

## SAFETY

Stationary robots only; no shaking, deliberate collisions, speeding, throwing, water, or opening internal batteries. Adult handles charging and compatibility. Never point light at eyes or cover devices tightly. No personal account/public uploads; outputs may not rank people.

## SUPPORT / CHALLENGE - GRADES 5 AND 6

Grade 5: large comparison cards, read rule aloud, oral trace. Challenge: explain exact boundary. Grade 6: same route with midpoint scaffold; challenge propose two thresholds to reduce flicker and predict results on paper without claiming implementation. Give non-color text output and seated roles.

## INDOOR FALLBACK

The four-reading paper rule is a complete indoor lesson in any season; shifted objective is algorithm/input-output reasoning, not actual sensor measurement.

## CLEANUP

Stop/close programs, adult returns devices to approved charging storage, count cards/trays, keep individual tests and actual-versus-simulated labels.

## FAMILY NEWSLETTER

**Explored:** light readings and decision thresholds. **Did:** traced/tested four inputs and corrected a condition. **Learned:** a light response is not autonomous navigation. **Catholic connection:** truthful claims and respectful technology. **Ask:** "What happens at exactly the threshold?" Teacher states paper or real-device route. No routine homework.

**Previous:** [Session 1 - Engineering Thinking](./Session01_Engineering_Thinking.md)

**Next:** [Session 3 - Architecture](./Session03_Architecture.md)
## Teacher artifact pack (release checklist)

- **Adult ratio:** 1 adult:25 pupils for paper simulation; reduce to 1 adult:3 pupils at each active BOLT/light station, with adult-only charging and pairing.
Use this pack for the threshold model and, only when available, the stationary BOLT route.

- **Student material (print or no-print):** Supply a table headed `reading | reading < 30? | expected output | actual output/route` for 12, 48, 45, 18, plus boundary 30 and “reversed comparison effect / limitation.” Board-copy the table when no printer is available; pupils may point, dictate, or use output cards.
- **Exact evidence/answers:** Paper key: 12 NEEDS LIGHT, 48 ENOUGH LIGHT, 45 ENOUGH LIGHT, 18 NEEDS LIGHT, and 30 ENOUGH LIGHT because `<30` is false. Reversing `<` to `>` swaps classifications except at 30; acceptable limits include no direction, obstacle, or moral-worth sensing. Device readings must be recorded as actual values, never relabeled model lux.
- **Worked example / Finished example / Visual example:** Work 12 aloud: `12 < 30 = true -> NEEDS LIGHT`. Finished trace lists all five keyed outputs, identifies the reversed operator bug, restores `<`, and states “brightness response is not navigation.” A device example is finished only with the pupil’s observed dim/bright values and run; otherwise mark **paper simulation—device N/A**. The visible `INPUT -> < threshold? -> OUTPUT` flow is the visual example for tracing each reading.
- **Board setup:** Draw `INPUT -> < threshold? -> OUTPUT`, post threshold 30 and the five-row key, then columns **prediction / test / correction / limit**. Keep “model units ≠ measured lux” visible.
- **Discussion/misconceptions:** Ask “What happens at 30?” (else/ENOUGH LIGHT); “Which value is programmer-chosen?” (threshold); “What would support navigation?” (direction/obstacle sensing plus safe route tests); “Does bright -> forward seek light?” (no, brightness gives no direction). Correct “sensor thinks like a person” with “it executes a rule.”
- **Kit contents / Kit label:** Per team: reading/rule/output card sheet, marker, blunt scissors, dry tray; each pupil has journal/table. Optional: one tested BOLT, approved tablet, and low-brightness flashlight per team. Kit label: **G5-6 YB S02 LIGHT THRESHOLD—12/48/45/18—STATIONARY**. Reset cards in order, stop programs, power/store devices for adult charging, and return flashlight/tray dry.
- **Unfinished work:** Record the last completed row and whether route was paper or device; store school-side and resume at that row. Never convert an unrun device test into operation evidence.
- **Annotated exemplar / Common error interpretation / reteach:** Box comparisons, underline outputs, circle restored `<`, and arrow the stated limitation. A wrong 30 usually means treating `<` as `<=`; reversed outputs indicate the deliberate `>` bug, not random failure. Reteach with large `<` and `else` cards, trace 29/30/31, then retry the five rows.
- **Safety—severity/likelihood/ratio/SDS:** Severity **moderate** (eye discomfort, moving/damaged rechargeable device); likelihood **unlikely** because robots remain stationary and light is never aimed at eyes. One adult monitors the class and directly checks each team of at most three using hardware; adult controls charging/pairing and isolates hot/damaged equipment. **SDS/product gate: HOLD — school-approved marker.** The exact marker product and manufacturer are not specified, and no exact approved marker row exists; apply the [`CONTROL-ROW` in the Safety Data Sheet Register](../../../Review/Safety_Data_Sheet_Register.csv). Do not issue or substitute the marker until the school safety lead approves the exact product and current SDS.
- **Print/accessibility check / Devices/external-service compliance:** Use 14-point high-contrast black-and-white tables and text labels rather than color alone; read values/rule aloud and allow seated card roles. The actual hardware/service is an approved tablet running **Sphero Edu paired to BOLT**. When it is unavailable, the observed sensor reading, program run, and BOLT operation evidence are deferred; paper tracing is algorithm evidence only and never runtime/device evidence. Use no personal account, public upload, or student data; pairing failure triggers the paper route within one minute.
