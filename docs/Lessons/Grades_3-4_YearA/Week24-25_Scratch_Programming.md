---
title: "Weeks 24-25: Scratch Programming"
description: "Variables, a bounded condition and repeated boundary/reset tests"
version: "3.0"
date: 2026-10-04
local_standards: [CST-C2, CST-T1, CST-T2, CST-M3]
technology: Required
prep_minutes: 20
cleanup_minutes: 5
materials: [Compatible computers, Plain paper, Pencils, Plastic counters]
---

# Weeks 24-25: Scratch Programming

## Lesson at a glance

Grades 3-4; Weekly A; Computing; **two 40-minute meetings**.
**Objective:** implement a score variable/condition, predict four inputs and
debug/retest restart and boundary behavior. **Why:** execution reveals whether
rules work at their limits. Catholic/CST-C2: clear accessible play rules, no
ranking people's worth by scores; CST-T1 actual operation; CST-T2 condition/
debugging; CST-M3 counts 0-3. Official alignment **VERIFICATION REQUIRED**.
Technology **Required**; novice starter provided, not dependent on Year B.
Prep 20 after Scratch 3 works; installation extra; cleanup 5 each.

## Before class and exact supplies

Guest/offline Scratch; create Score **for all sprites**, one target sprite.
Preflight full starter below, clicks and space separately, reset/local save/
reopen. Leave known-good sample and save location. Team <=3 computer and three
plastic counters; each pupil two paper sheets/pencil. Teacher board/timer/demo
uses issued device. Paper/counters available for failed preflight.

| Allocation | 10 | 15 | 20 | 25 |
|---|---:|---:|---:|---:|
| Computers (1/team) | 4 | 5 | 7 | 9 |
| Counters (3/team) | 12 | 15 | 21 | 27 |
| Paper (2/pupil) | 20 | 30 | 40 | 50 |
| Pencils (1/pupil) | 10 | 15 | 20 | 25 |

## Complete starter, vocabulary and background

Connect four stacks on the target:

```text
when green flag clicked
set [Score] to (0)
say [Click me or press space. Three points ends scoring.]

when this sprite clicked
broadcast [point] and wait

when [space] key pressed
broadcast [point] and wait

when I receive [point]
if <(Score) < (3)> then
  change [Score] by (1)
end
if <(Score) = (3)> then
  say [Three reached. Green flag restarts.]
end
```

Variable = stored value; condition = test; event = trigger; boundary = limit.
Use distinct taps, not held keys or simultaneous inputs. Expected trace:
**0,1,2,3,3; restart 0**. **Misconception:** continuous touching is one point.
**If asked "Why not a catch game?"** Continuous contact requires extra guarding;
discrete input makes this novice rule testable. Human ethics is not an if block.

## SAFETY/privacy

Dry seated devices, private local files; no accounts/media/public upload.
Counters stay on desks, away from mouthing pupils. Stop/report damaged cables.
Indoor primary; hardware stays at school.

## Meeting 1: exactly 40 minutes

1. **0-4:** "What should the fourth input do?" Explain fair, readable rules.
2. **4-10:** Demo variable creation, blocks and trace using counters.
3. **10-22:** Build starter; every pupil edits/runs for three minutes while
   peers predict/record. No ready-made file purchase.
4. **22-30:** Four distinct clicks then restart; record predicted/actual values;
   debug disconnected hat/wrong variable, rerun.
5. **30-35:** Individual trace/guard explanation; log actual edit/run separately.
6. **35-40:** Stop/save/reopen, return devices/counters, collect dated records.

## Meeting 2: exactly 40 minutes

1. **0-4:** Recall boundary/reset without assuming mastery.
2. **4-9:** Demonstrate equal single-input tests and keyboard access.
3. **9-21:** Every pupil tests four space taps and reset; each edits one rule
   message for accessibility, not the cap.
4. **21-30:** Peer plays using displayed rules, records confusion; revise message
   and repeat click/space boundary/reset tests.
5. **30-35:** Each explains original bug/correction or verified no-bug result,
   two test traces and access choice. "What stayed three?"
6. **35-40:** Stop/save, count/store, file dated evidence.

## Success/access/troubleshooting

Meets: correct trace/condition/reset plus observed edit/run and rule revision.
Grade 3/support: copied stacks, counter trace, scribing. Grade 4/challenge:
explain `<3` versus `<=3` on paper then restore/test proper guard.
Score jumps: check duplicate receive stacks, use one input at a time. Missing
device: paper event/condition/counter trace at same times; CT/math only,
**executed Scratch not observed**. Below full capacity, half stations permit
two waves of three-minute turns; otherwise reschedule operation. Early finish:
test limit again, not unsafe or unguarded catch-game expansion.

**Family:** We executed bounded scores and restart tests. Ask, "Why did the
fourth input stay three?" Optional: explain the rule without a device.
