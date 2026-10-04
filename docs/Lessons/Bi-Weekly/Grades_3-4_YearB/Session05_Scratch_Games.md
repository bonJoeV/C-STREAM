---
title: "Session 5: Scratch Games"
description: "A complete novice three-point game and actual boundary/reset tests"
version: "3.0"
date: 2026-10-04
local_standards: [CST-C2, CST-T1, CST-T2, CST-M3]
technology: Required
prep_minutes: 20
cleanup_minutes: 5
materials: [Compatible computers, Plain paper, Pencils, Plastic counters]
---

# Session 5: Scratch Games

## Lesson at a glance

Grades 3-4; Bi-Weekly B; Computing; **one 40-minute meeting**.
**Objective:** create/run a three-point game, predict four inputs and verify
restart. **Why:** simple executable rules expose boundary bugs before complex
game choices. Catholic/CST-C2 accessible rules/turns; CST-T1 observed operation;
CST-T2 condition/debug; CST-M3 counts 0-3. Official alignment **VERIFICATION
REQUIRED**. Technology **Required**; novice, no Year A assumed.
Prep 20 after Scratch 3 works; installation extra; cleanup 5.

## Before class and exact supplies

Guest/offline Scratch; one sprite/Score variable for all sprites.
Preflight full starter/four clicks/four space taps/reset/save `.sb3`/reopen.
Leave working sample/save location; missing preflight -> paper/report.
Teams <=3 (4/5/7/9): computer/three counters. Each pupil paper/pencil.
Teacher board/timer/demo from kit. No bought starter or public account.

| Allocation | 10 | 15 | 20 | 25 |
|---|---:|---:|---:|---:|
| Computers (1/team) | 4 | 5 | 7 | 9 |
| Counters (3/team) | 12 | 15 | 21 | 27 |
| Paper; pencils (1/pupil each) | 10 | 15 | 20 | 25 |

## Complete starter, vocabulary and background

Four stacks on target:

```text
when green flag clicked
set [Score] to (0)
say [Click or tap space. Three ends scoring; flag restarts.]

when this sprite clicked
broadcast [point] and wait

when [space] key pressed
broadcast [point] and wait

when I receive [point]
if <(Score) < (3)> then
  change [Score] by (1)
end
if <(Score) = (3)> then
  say [Three reached. Flag restarts.]
end
```

Input = action; variable = stored score; condition = test; boundary = limit.
Distinct taps, not simultaneous inputs/held keys. Trace **0,1,2,3,3; reset 0**.
**Misconception:** `<=3` also stops at 3. **If asked "Why no catching?"**
Continuous contact needs additional guarding; this discrete game is complete
within today's period.

## SAFETY/privacy

Dry seated devices, desk counters, no public accounts/media/passwords.
Stop/report damaged gear. Game score not a person's value. Indoor primary.

## Meeting 1: exactly 40 minutes

1. **0-4:** "What should the fourth input do?" Inclusive play purpose.
2. **4-10:** Demo Score creation/stacks/Stop and counter trace.
3. **10-21:** Every pupil edits/runs three-minute turn, peers trace/record.
4. **21-29:** Four clicks/reset then four space taps/reset; compare actual/
   predicted, fix guard/reset mismatch and repeat.
5. **29-35:** Each child gives trace/guard/restart reason and access rule; roster
   separately logs actual edit/run/stop.
6. **35-40:** Stop/save/reopen, count counters/return devices, file dated traces.

## Success/access/troubleshooting

Meets: boundary/reset trace, observed operation, explanation of correction or
verified correct result. Grade 3/support: copied stacks/counter trace/scribing.
Grade 4/challenge: compare `<3`/`<=3` on paper before restoring correct guard.
Score jumps: check duplicate receive stacks, distinct inputs. No device:
same timed paper event/score trace, CT/math only, **Scratch operation not
observed**. Half computers permit two work-window turn waves; fewer requires
rescheduled operation. Early finish: clearer rules, no new game-type overload.

**Family:** We made a bounded game and tested restart. Ask, "Why did the fourth
input stay three?" Optional: explain the rule without coding at home.
