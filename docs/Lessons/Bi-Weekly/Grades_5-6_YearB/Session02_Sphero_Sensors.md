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
