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

## Teacher artifact pack

- **Student material — two-meeting test record (print/no-print):** Fields are `Pupil/team code
  ___; dates ___`; `Score variable is for: all sprites / this sprite only`;
  `In my words, the <3 guard means ___`; then two identical tables, one
  `click test` and one `space test`, with rows `start, input 1, input 2, input
  3, input 4, green-flag restart` and columns `prediction | actual | match?
  Y/N`. Add `Bug or confusing result ___`; `block/message changed ___`;
  `why that change should help ___`; `retest trace ___`; `rule message before
  ___`; `peer confusion ___`; `accessible rule message after ___`; `Every
  pupil edit/run initials ___`; and `What stayed at three, and why? ___`.
  With no printer, pupils draw the two six-row tables on their two issued
  sheets while the teacher leaves every heading visible.
- **Expected evidence and acceptable answers:** Both distinct-input traces must
  be `0,1,2,3,3`, followed by restart `0`. Accept plain-language guard
  explanations such as `add one only while Score is less than three`. The
  fourth input remains three because the first condition is false; the flag
  resets because its event sets Score to zero. A verified-no-bug record is
  acceptable only with both actual traces and a named check. Valid message
  revisions make click and keyboard controls, the cap and restart visible.
  Do not count held keys, simultaneous click/space inputs, counter-only work or
  an unexecuted script as Scratch operation evidence.
- **Worked and finished example:** Predictions and actual click values both read
  `0 | 1 | 2 | 3 | 3 | restart 0`. Initial bug: fourth input becomes `4`.
  Annotate `<= 3 lets Score change when it already equals 3`; correction:
  restore `< 3`; retest returns `0,1,2,3,3`. Before message: `Click me.`
  Peer confusion: `I did not know Space worked or how to restart.` Finished
  message: `Click me or press Space. Score stops at 3. Green flag restarts.`
  Box the corrected guard, circle the boundary and reset observations, and
  underline the peer-feedback-linked words.
- **Visual example and Board setup:** Display the complete four-stack starter exactly as
  written above, a counter trace `0 -> 1 -> 2 -> 3 -X-> 4`, and side-by-side
  `event / condition / result` columns. Keep separate click and space test
  tables, a `one distinct input at a time` notice, and a role chart showing
  which pupil is currently editor/runner. Post local save steps and the
  approved folder; do not display pupil names or scores publicly.
- **Discussion guidance:** Ask `Why does input four not add a point?` Accept
  `<3 is false at 3`; `What is different about =3?` Accept `it controls the
  message, not the point change`; `Why test restart after the boundary?` Accept
  `to show initialization works after a completed run`; `Does a high game
  score rank a person's worth?` Accept `no, it is only program state`; and
  `Why test click and Space separately?` Accept `both promised controls need
  evidence and simultaneous events confuse the trace`. Correct the ideas that
  continuous touch is one event, changing the message repairs code logic, or
  a predicted trace can replace actual execution.
- **Kit contents. Kit label: and Cleanup/Reset:** Each station has one preflight-compatible
  computer, three plastic counters and the known-good starter/save-location
  card. Each pupil has two plain sheets and one pencil. Use the allocation table
  totals above. Label the counter pouch exactly `C-STREAM G3-4 | W24-25
  SCRATCH | STATION CODE | 3 COUNTERS`; label the paper folder `W24-25 TEST
  RECORDS`; identify computers with the school's existing asset label rather
  than adding tape. Reset by locally saving under a non-identifying team code,
  reopening once, returning Score to 0, closing Scratch without publishing,
  counting three counters, arranging cables as school policy requires and
  noting any device fault before the next team.
- **Unfinished work:** Save only to the approved local location as
  `W24-25_TeamCode_incomplete`, write the exact next action (`connect receive
  stack`, `run fourth Space input`, or `retest restart`) on the paper record,
  and place it in `TO RESUME`. Do not require an account/home device. If a pupil
  lacks an observed edit/run turn, mark `operation not yet observed` and
  schedule a school-device turn; paper simulation does not close that gap.
- **Annotated exemplar, Common error interpretation, and Reteach:** `0,1,2,3,4` points to `<=3`, a missing
  guard or a second receive stack; jumps by two suggest duplicate receive
  stacks or overlapping inputs; no change suggests a disconnected event,
  wrong broadcast name or wrong variable scope; no reset suggests the flag hat
  or `set Score to 0` is disconnected. First reproduce with one input, compare
  one stack to the starter and change one cause. Reteach with three counters:
  physically evaluate `Score < 3?`, move a counter only for true, then rebuild
  and execute the receive stack. Preserve evidence of the original result and
  append the retest rather than erasing the debugging trail.
- **Safety classification: Severity moderate; likelihood unlikely; SDS gate:**
  damaged electrical hardware is the moderate-severity case; normal use is low
  severity after preflight.
  **Adult ratio: 1:25 maximum** across no more than nine seated Scratch
  stations, with teams of three or fewer and line of sight to screens/cables;
  follow any stricter school device ratio or individual plan. Use dry hands,
  keep counters off the floor and away from mouths, and stop/report heat, odor,
  liquid, exposed wire or damaged plugs without touching the fault. No chemical
  is introduced; a leaking device battery is handled only under the school's
  manufacturer/EHS procedure.
- **Print accessibility:** Use 14-point minimum text, 18-point large print,
  heavy black table rules, written `Y/N` labels and no color-only code cues.
  Read block names and prompts aloud; allow a partner pointer, keyboard access,
  scribing or oral explanation while preserving each pupil's actual edit/run
  turn. Print one sheet at 100% to ensure six rows remain on one page; the board
  trace must be readable from the farthest station.
- **Device compliance:** Technology is **Required**. Use preapproved
  school-managed Scratch 3 offline or approved guest mode, school devices and
  local storage; no pupil account, email, name in filenames, cloud sync, gallery
  publishing, chat, media capture or external asset download. Preflight Scratch,
  input controls, save/reopen and accessibility before class. If approval or
  operation fails, use the paper/unplugged trace at the same times, but it does
  not count as executed device evidence. Record `executed Scratch not observed`;
  execution remains deferred and **not observed** until a teacher witnesses the
  pupil's Scratch run; reschedule the device evidence.