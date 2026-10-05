---
title: "Session 2: Sphero Advanced"
description: "Finite loop and brightness condition with a stationary robot option"
version: "3.0"
date: 2026-10-04
---

# Session 2: Sphero Advanced

## LESSON AT A GLANCE

| Field | Reference |
|---|---|
| Grade / schedule / rotation / unit | 5-6 / Bi-Weekly / A / Computing |
| Time | 1 meeting of 45 minutes |
| Objective / why / big idea | I can trace a four-reading conditional loop and explain input/output. A brightness sensor supports a threshold decision, not directional navigation. |
| Domains / Catholic connection | T, C; equitable operator turns and honest limits in technology used for good. |
| Local standards | CST-T2: loop/condition trace; CST-T1: input/output/troubleshooting; CST-C2: roles/access. Official benchmarks VERIFICATION REQUIRED. |
| Technology Requirement | Recommended; paper primary teaches rule reasoning; approved stationary BOLT option gives actual execution/measurement, separately recorded. |
| Difficulty / entry | Developing; teach if/else and finite repeat; no autonomy mastery claim. |
| Prep / cleanup | Light paper first 15 min/repeat 10; device preflight 20 min extra; cleanup 4 min. |

## BEFORE CLASS / MATERIALS

Review accommodations/contact; seat 4/5/7/9 teams. Copy reading cards
12/48/30/18 and two word-output labels NEEDS LIGHT / ENOUGH LIGHT.
Rule: reading <30 -> NEEDS LIGHT; else ENOUGH LIGHT; repeat for four cards.
IT/adult optional route: approved Sphero Edu, compatible charged BOLT, stationary
tray, pretest live sensor units/range and available conditional blocks. Use
actual observed readings, not card values labelled measured. Do not promise
north headings, moving navigation, compatible app/version or loan.

| Item | Allocation | 10 | 15 | 20 | 25 |
|---|---|---:|---:|---:|---:|
| Paper trace; pencil | 1 each/student | 10 | 15 | 20 | 25 |
| Paper reading/output/rule sheets | 2/team | 8 | 10 | 14 | 18 |
| BOLT; tablet; dry tray, optional simultaneous route | 1 each/team | 4 | 5 | 7 | 9 |
| BOLT; tablet; dry tray, optional shared route instead | 3/class alternative | 3 | 3 | 3 | 3 |
| Board; clock; roster | 1 each/teacher | 1 | 1 | 1 | 1 |

Paper consumable; equipment reusable; software/access not physical material.
Optional quantities assume all teams, not the eight Snap kits or guaranteed stock.

### Optional shared-kit turn plan

Choose one hardware row, not both. With three approved working BOLT/tablet/tray
setups, teacher preloads the exact finite program below with the documented
actual threshold/units. Keep 4/5/7/9 balanced groups <=3: two trios/two pairs,
five trios, six trios/one pair, seven trios/two pairs. Teams 1-3 use **11-19**,
4-6 **19-27**, 7-9 **27-35**; 10/15 use two waves, then retest.
Each pupil has up to two minutes to change one approved LED-output block,
personally run the four-read cycle and record actual input/output; two
minutes/team allow reset/checking. Waiting pupils trace 12/48/30/18 and the
strict 30 boundary. Pretest this access/turn plan and record the actual child,
assistance or NE; watching is not operation. One/two setups serve that many
teams per window, with later hardware checks for the remainder. Never rush
access or form groups of four. Invented card values remain separate from live
readings, and a uniform live output is recorded honestly.

## VOCABULARY / TEACHER BACKGROUND

**Sensor:** input-reading tool. **Threshold:** dividing value.
**Conditional:** rule with alternatives. **Loop:** repeated instructions.
**Common misconception:** sensor knows where light is.
**If asked, "Will it seek a light?"** No; one brightness value gives no direction.
Key: 12 -> NEEDS, 48 -> ENOUGH, 30 -> ENOUGH, 18 -> NEEDS; four checks,
two each. Strict `<` versus `<=` matters at 30.
Optional finite BOLT program: repeat 4 {read ambient light; if reading<30 set
main LED blue, else green; wait 2 seconds}; stop. Pair display colors with
spoken/written words; preflight detects if actual ambient range requires
teacher-documented different threshold. No motion blocks.

## EXACT LESSON SEQUENCE

1. **0-4 (4 min):** Ask "What can one reading tell us?" Introduce fairness/limits.
2. **4-11 (7 min):** Model threshold and exact-boundary 30; show paper versus optional real run.
3. **11-25 (14 min):** Rotate operator/reader/checker; execute four paper cards; optional teams assemble/run finite program, each edits/runs or reads actual sensor once. Shared hardware teams begin their stated waves.
4. **25-35 (10 min):** Deliberate paper bug `<=30`, compare boundary, fix/retest. Finish shared waves; each device operator records four actual readings/outputs separately from card traces.
5. **35-41 (6 min):** Each student independently gives four correct outputs, loop count, input/output and an equitable role/measurement limit.
6. **41-45 (4 min):** Stop optional program, return inspected devices, save traces and tidy.

## QUESTIONS TO ASK STUDENTS / WHAT SUCCESS LOOKS LIKE

"Which branch at 30? Were readings invented or measured?"
Each has four correct card outputs, debug boundary and input/output/access
reason. 1 unsupported; 2 prompted; 3 independent; 4 uncertainty near threshold;
NE for unobserved device operation, separate from paper reasoning.

## IF THINGS GO WRONG / SAFETY

No compatible/approved robot -> complete paper core, defer hardware evidence.
Live output never changes -> inspect actual range/threshold with adult, no
shaking or chasing light. No motion, collisions, battery access, public accounts,
bright lights in eyes or private data. Stop/isolate/report warm/damaged equipment.

## SUPPORT / CHALLENGE / INDOOR FALLBACK

Grade 5/support: branch arrows, large words, scribed trace.
Grade 6/challenge: explain strict boundary and repeated-reading uncertainty.
All work stationary indoors.

## CLEANUP / FAMILY NEWSLETTER

Record paper versus real tests, return equipment/tools and report gaps.
**Explored:** sensor decisions. **Did:** traced/tested a threshold loop.
**Learned:** boundaries/limits. **Catholic connection:** fair technology roles.
**Ask:** "What happens at exactly 30?" No routine homework.

**Previous:** [Design Process](./Session01_Design_Process.md)
**Next:** [Structural Engineering](./Session03_Structural_Engineering.md)
## Teacher artifact pack (release checklist)

- **Student material and expected evidence (print/no-print):** Provide the four cards `12, 48, 30, 18`, rule `repeat 4: if reading < 30 -> NEEDS LIGHT; else -> ENOUGH LIGHT`, and columns `reading / comparison / output / card or measured`. Board-copy these for no print. Exact paper answer is `12 NEEDS, 48 ENOUGH, 30 ENOUGH, 18 NEEDS`; four checks, two per branch. Individual evidence also identifies brightness as input, word/LED as output, and explains why `<` excludes 30.
- **Worked example and finished example:** Work the boundary aloud: `30 < 30` is false, so ENOUGH LIGHT. Finished trace contains all four rows plus bug test `<=30` (incorrectly sends 30 to NEEDS), correction back to `<30`, and limit `one brightness value gives no direction`. Optional finished BOLT record lists four actual readings/outputs separately; paper values must never be labelled measured.
- **Board setup and visual example:** Draw the strict number-line boundary at 30, the finite loop counter `1 2 3 4 STOP`, and separate `CARD MODEL` and `LIVE BOLT` tables. This number line and split table are the visual example for tracing the boundary; post `stationary; no motion blocks`.
- **Questions/misconceptions:** Ask “Which branch at exactly 30?” (else/ENOUGH), “How many checks?” (four), “Can the sensor seek a light?” (no direction from one value), and “Why might live output stay one color?” (ambient readings may all fall on one side). Correct `<=` confusion and the idea that invented cards are sensor measurements.
## Exact supplies

- **Kit contents and Kit label:** Per pupil: paper trace and pencil; per team: two paper reading/output/rule sheets; optional one approved BOLT, tablet and dry tray per team **or** three shared sets; teacher board/clock/roster. **Kit label:** `G5-6 YA S02 — BRIGHTNESS <30 — STATIONARY BOLT/PAPER`. Reset by stopping the program, returning inspected charged equipment, sorting four cards and two output labels, and filing traces. **Unfinished work directions:** record the last loop iteration and route (paper/live); schedule only the missing iteration or device turn, with `NE` until observed.
- **Annotated exemplar, Common error interpretation, and reteach:** Box `30 -> NEEDS` and annotate `used <=, not the stated <`; underline the corrected comparison and circle `30 -> ENOUGH`. **Common error interpretation:** this shows a boundary-rule mismatch, not that the pupil cannot loop. Reteach with 29/30/31 cards, say each comparison, then rerun the four-card loop.

## SAFETY

- **Safety classification, Adult supervision ratio, SDS, and Print/accessibility check:** Severity **moderate** and likelihood **unlikely** for optional moving/charged equipment even though BOLT remains stationary; isolate warm/damaged gear and forbid battery access or bright light in eyes. **Adult supervision ratio:** paper work **1:25 maximum**; live station **1 adult:3 pupils actively supervised**. SDS: **not applicable**; no chemicals/products added. **Print/accessibility check:** use 14-point high-contrast cards, pair colors with NEEDS/ENOUGH words, read values aloud, allow pointing/scribing and equitable operator turns.
- **Technology/external-service compliance:** Recommended live hardware/service is a school-managed tablet running the school-approved Sphero Edu app with a Sphero BOLT. If that exact setup or its approved local policy is unavailable, defer and mark `NE` for program transfer, sensor reading, LED output, Stop, and observed BOLT execution. The four-card trace remains reasoning evidence only and must not count as runtime, sensor, or device-operation evidence. No public/personal account, upload, location or private data is permitted.
