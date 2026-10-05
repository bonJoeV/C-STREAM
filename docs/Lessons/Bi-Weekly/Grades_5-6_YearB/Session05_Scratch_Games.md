---
title: "Session 5: Scratch Games"
description: "An executable two-round quiz with reset, score, feedback and ethical play"
version: "3.0"
date: 2026-10-04
---

# Session 5: Scratch Games

## LESSON AT A GLANCE

| Field | Reference |
|---|---|
| Grade / schedule / rotation / unit | 5-6 / Bi-Weekly / B / Computing |
| Time | 1 meeting of 45 minutes |
| Objective / why / big idea | I can run a two-round game, trace score/condition/reset and revise welcoming feedback. Good game rules are understandable and fair. |
| Domains / Catholic connection | T, A, C; play respects users, no shame, purchases, coercive loops or public leaderboards. |
| Local standards | CST-T2: trace/debug; CST-A2: purposeful feedback; CST-C2: ethical play. Official benchmarks VERIFICATION REQUIRED. |
| Technology Requirement | Required for actual Scratch execution; paper rules fallback is algorithm/game simulation only. |
| Difficulty / entry | Introductory; teach variable, repeat, condition and event here. |
| Prep / cleanup | Moderate: first 25 min/repeat 15; IT setup extra before class; cleanup 4 min. |

## BEFORE CLASS / MATERIALS

Check contact/accommodations and school-approved Scratch editor/local save;
no personal/shared passwords/public publication. Seat 4/5/7/9 teams, rotate
operator/tracer/tester every five minutes in the simultaneous route or by
the shared turns below. Pretest exact starter with numeric
answers; no names/prayer/health inputs. Complete tests provided below.

| Item | Allocation | 10 | 15 | 20 | 25 |
|---|---|---:|---:|---:|---:|
| Paper trace; pencil | 1 each/student | 10 | 15 | 20 | 25 |
| Computer with approved Scratch, simultaneous route | 1/team | 4 | 5 | 7 | 9 |
| Computer with approved Scratch, shared route instead | 3/class alternative | 3 | 3 | 3 | 3 |
| Paper rule/test sheets | 2/team | 8 | 10 | 14 | 18 |
| Board; clock; roster | 1 each/teacher | 1 | 1 | 1 | 1 |

Paper consumable; devices reusable; software is access.

### Shared-route kit and turn plan

Choose one computer row, not both; demo uses an issued setup. With three
approved working setups, preload the exact starter below on fresh turn copies.
Keep 4/5/7/9 balanced groups <=3: two trios/two pairs; five trios; six trios/one pair;
seven trios/two pairs. Teams 1-3 use **11-19**, 4-6 **19-27**, 7-9 **27-35**;
10/15 use two waves, then retest. Each pupil gets up to two minutes to remove
and restore score reset on a copy, run 4/4 then 4/3 and 3/3, and record
actual outputs; two minutes/team cover reset/checking. Waiting pupils trace
all cases and prepare a welcoming feedback revision.
Pretest exact turn/access timing. Each pupil edits and runs; a partner's
execution is not their operation evidence. Record assistance/NE separately.
One/two setups serve that many teams per window; remaining pupils use paper
and book later execution, not larger groups or rushed accessibility.
Shared-route work modifies a provided game, not a from-scratch full game.

## VOCABULARY / TEACHER BACKGROUND

**Variable:** stored changing value. **Condition:** true/false test.
**Loop:** repeat instructions. **Feedback:** response helping player.
**Common misconception:** score proves intelligence or personal worth.
**If asked, "Can we store best players?"** No personal leaderboard/storage.
One sprite, variable `score`, complete starter:

```text
when green flag clicked
set [score] to (0)
say [Two practice rounds; type 4; restart with green flag] for (2) seconds
repeat (2)
  ask [How many quarter-note beats in one four-beat bar?] and wait
  if <(answer) = (4)> then
    change [score] by (1)
    say [Yes: four beats] for (1) seconds
  else
    say [Practice answer is 4; try next round or restart] for (1) seconds
say (join [Correct practice rounds: ] (score))
```

Key runs 4/4 -> score 0/1/2; 4/3 -> 0/1/1; 3/3 -> 0/0/0;
green flag resets. Four beats is musical meter context, not all music.
Intentional bug remove reset -> repeated runs accumulate; restore/retest.

## EXACT LESSON SEQUENCE

1. **0-4 (4 min):** Ask "What makes a practice game welcoming?"
2. **4-11 (7 min):** Model variable/reset/repeat2/condition and test key.
3. **11-25 (14 min):** Teams assemble/run starter; each edits/runs one test and records actual outputs. Shared teams begin the stated waves; waiting pupils trace score cases.
4. **25-35 (10 min):** Run three input cases/reset, diagnose reset bug in copy, fix; finish shared waves and have peers test instructions/feedback and revise purposeful wording/contrast.
5. **35-41 (6 min):** Individual correct trace/debug/retest, feedback choice and ethical play reason.
6. **41-45 (4 min):** Save school-only if approved, stop/close devices, save traces and tidy.

## QUESTIONS TO ASK STUDENTS / WHAT SUCCESS LOOKS LIKE

"How many asks? What happens after wrong answer? Why reset?"
Each has correct two-round traces, bug/retest, observed device turn and
welcoming feedback reason. 1 unsupported; 2 prompted; 3 independent;
4 predicts mixed-input boundary; NE for unrun device evidence.

## IF THINGS GO WRONG / SAFETY

No response -> inspect event/ask/condition, not random sprites. Device/access
fails -> operator follows paper rules, label programming deferred.
No public accounts, private input, chat, ranking users, payment prompts,
flashing effects or copied media. Stop/report unsafe data/device use.

## SUPPORT / CHALLENGE / INDOOR FALLBACK

Grade 5/support: block checklist, two-row trace, oral/scribed response.
Grade 6/challenge: justify feedback and bounded play versus endless loop.
Seated indoor lesson; no family account/continuation required.

## CLEANUP / FAMILY NEWSLETTER

Record actual/paper route and missing execution, return devices.
**Explored:** game rules. **Did:** tested two-round score/reset.
**Learned:** fair feedback/debugging. **Catholic connection:** respectful play.
**Ask:** "Which test found reset bug?" No routine homework.

**Previous:** [Forensic Science](./Session04_Forensic_Science.md)
**Next:** [Gratitude Design](./Session06_Gratitude_Design.md)
## Teacher artifact pack (release checklist)

- **Adult ratio:** 1 adult:25 pupils for paper tracing; use 1 adult:3 pupils at each active Scratch setup so every edit/run and account boundary is observed.
Use this pack for the exact two-round, one-sprite Scratch quiz in the lesson.

- **Student material (print or no-print):** Give each pupil a trace with rows for green flag, answer 1, answer 2, final score for `4/4`, `4/3`, and `3/3`, plus “score without reset / restored block / feedback revision.” Board-copy it when no printer is available.
- **Exact evidence/answers:** Scores are `2`, `1`, and `0`; each new green-flag run starts at 0. Removing `set score to 0` causes accumulation across runs; restoring it and rerunning all three cases is the required debug. The answer is four beats in this practice context, not proof of musical or personal worth.
- **Worked example / Finished example / Visual example:** Trace `4/3`: `0 -> 1 -> 1`, final “Correct practice rounds: 1.” Finished device evidence includes the pupil’s edit/run, three observed outputs, restored reset, and revised welcoming feedback; paper-only work is labeled **algorithm simulation—runtime N/A**. The displayed block order with the `0 -> 1 -> 1` trace is the visual example.
- **Board setup:** Display the exact block order and **INPUTS | EXPECTED SCORE PATH | ACTUAL | BUG | FIX/RETEST | WELCOMING FEEDBACK**.
- **Discussion/misconceptions:** Ask “How many asks?” (two); “Why reset?” (independent runs); “What follows a wrong answer?” (score unchanged and practice guidance); “Does score measure intelligence?” (no); “Can we store best players?” (no personal leaderboard).
- **Kit contents / Kit label:** Per pupil: trace/pencil. Per team: approved Scratch computer or scheduled shared setup and two paper rule/test sheets. Kit label: **G5-6 YB S05 SCRATCH QUIZ—2 ROUNDS—RESET SCORE**. Reset with a fresh local turn copy, green flag score 0, no identifying filenames; close/save school-only as approved and return devices.
- **Unfinished work:** Record exact missing case or unrun device turn and preserve the local copy/trace for a later scheduled check; no home account or partner run substitutes for individual evidence.
- **Annotated exemplar / Common error interpretation / reteach:** Box `0/1/1`, circle restored reset, underline revised “Practice answer is 4.” A second run starting above 0 indicates reset placement/absence; wrong mixed score suggests condition or increment placement. Reteach with score counters for two asks, then supervised `4/3` run.
- **Safety risk classification—severity/likelihood/ratio/SDS:** Severity **low** (device/privacy or sensory issue), likelihood **unlikely** with approved local access and no flashing/media. One adult monitors the class and directly observes each team of at most three/each scheduled individual edit; IT controls accounts/setup. SDS **not applicable** to paper and standard intact computers; no chemicals or hardware opening.
- **Print/accessibility check / Devices/external-service compliance:** Use 14-point high-contrast block/trace sheets, keyboard alternatives, oral/scribed traces, seated turns, and non-color feedback. The actual hardware/service is a school computer running **school-approved Scratch** with a local school-managed save. If it is unavailable, the pupil's edit/run, three observed outputs, reset restoration, and rerun evidence are deferred; paper tracing is algorithm evidence only and never Scratch runtime/device evidence. Use no personal/shared password, public publish, chat, copied media, purchase prompt, leaderboard, or private input.
