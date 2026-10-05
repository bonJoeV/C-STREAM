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
Teacher board/timer and demo use a school-managed computer running the same
offline Scratch 3 starter. No bought starter or public account.

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

## Teacher artifact pack (lesson-specific release checklist)

- **Student material (print/no-print):** Print a **Scratch 0–3 boundary and reset log** per pupil with `My operation turn: edited / ran / stopped`, `Input tested first: sprite click / space`, prediction row `start 0 → input 1 ____ → 2 ____ → 3 ____ → 4 ____`, actual row with the same five boxes, `Green-flag reset predicted ____; actual ____`, `Second input actual: 0 → ____ → ____ → ____ → ____; reset ____`, `Mismatch/bug found: ____`, and `Block changed or verified: ____`. No-print: pupils draw the two traces and reset boxes; paper-only work is labeled **CT trace—Scratch operation not observed**.
- **Evidence and answer guidance:** The correct predicted and observed trace for four distinct inputs is `0,1,2,3,3`; green flag returns Score to `0`, for both sprite-click and space-key event paths. Require each pupil's actual edit/run/stop roster mark, not just team success. Accept `no mismatch; <3 guard verified` as a valid evidence statement after both traces, or a named fix such as removing a duplicate receive stack/restoring `set Score to 0`. Holding a key or simultaneous inputs is not a valid controlled test.
- **Worked example and finished example:** Run the supplied four-stack starter exactly: green flag shows `0`; four separate sprite clicks record `1,2,3,3`; green flag records `0`; four separate space taps record `1,2,3,3`; final green flag records `0`. Annotate `Score < 3` as the guard and `set Score to 0` as reset. A finished sheet distinguishes prediction/actual and either records a correction plus repeat or `matched—no code change needed`; unrelated movement/touch-goal blocks are not part of this lesson.
- **Visual example and board setup:** Display the four text stacks from the lesson and connect `click OR space → broadcast point → if Score < 3, +1 → at 3, say message`. Beside them post a table `Input count 0|1|2|3|4|flag` over `Score 0|1|2|3|3|0`, circle `<3`, and list the team turn roles `operator / counter tracer / distinct-input caller`.
- **Discussion with acceptable response, and misconception:** Ask `Why test input 4?` (to test the upper boundary), `Why does <=3 fail as a guard before adding?` (at Score 3 it is still true and permits 4), `What must the flag reset?` (Score to 0; this starter has no other changing game state), and `Does animation prove the rule works?` (no, the traces do). Correct `the fourth input should win again` with the cap, and investigate score jumps by checking duplicate receive stacks and held/simultaneous inputs.
- **Kit contents, kit label, cleanup and reset:** Kit label: **S5 SCRATCH—TEAM __**. Each tray contains exactly `1 preflighted compatible computer with offline Scratch 3 and local starter, 3 plastic counters, and one save-location card`; each pupil receives `1 trace sheet/plain paper and 1 pencil`. The teacher kit holds `1 demo computer, printed four-stack map, timer and operation roster`. Reset by clicking Stop, saving only as `S5_team##_YYYYMMDD.sb3`, reopening once to verify, deleting typed pupil names, stacking three counters, closing Scratch, and returning the unplugged or school-managed charging device per local procedure.
- **Unfinished work:** Save the last runnable local file with team number/date and paperclip each pupil's trace to a status card: `build incomplete`, `click test complete`, `space test complete`, or `reset not yet observed`. If the file will not run/reopen, retain the paper block map and mark runtime evidence **not observed**; schedule the missing individual operation turn instead of inferring it from peers or a screenshot.
- **Annotated exemplar, common error and reteach:** Label `event`, `broadcast`, `single receiver`, `<3 boundary`, `score change`, and `flag reset`. Trace `0,1,2,3,4` indicates the guard is absent or inclusive; restore `<3` and repeat input 4. A `+2` jump indicates duplicate point receivers or non-distinct inputs; show the broadcast and count receiver stacks. A post-flag `3` indicates missing/wrong reset; trace from `when green flag clicked`.
- **Safety classification:** **Severity: low; likelihood: unlikely; Adult ratio: 1 adult to 12 pupils at device stations maximum.** Keep devices dry and flat, route intact power leads away from feet, use counters only on desks, and stop/report heat, damage or exposed wiring. Provide posture/vision breaks and never equate game score with personal worth. **SDS: not applicable** to normal computer, paper, pencil and plastic-counter use; damaged batteries follow the school's device emergency documentation.
- **Print/accessibility check:** Use 18-point text, a high-contrast text-block map (not screenshot-only), large trace boxes, words plus click/space symbols, and color-independent block labels. Offer switch/keyboard access, counter tracing, read-aloud prompts, oral prediction/scribing and a no-screen role; still record whose actual operation was observed.
- **Device compliance:** Use guest/offline Scratch 3 and the teacher-preflighted local starter only. No public accounts, cloud sharing, chat, downloads, external assets, personal devices or identifying filenames. The paper pathway assesses CT/math only and must not be reported as software operation. Paper/unplugged work is not executed-device evidence; until the approved device or hardware turn is witnessed, operation remains deferred/not observed.
