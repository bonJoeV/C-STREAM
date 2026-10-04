---
title: "Weeks 19-22: Game Design Studio"
description: "A complete bounded-score Scratch game with paper testing and inclusive controls"
version: "2.0"
date: 2026-10-04
tags:
  - grades-3-4
  - year-b
  - coding
  - arts
---

# Weeks 19-22: Game Design Studio

## Lesson at a glance

| Field | Teacher information |
|---|---|
| Grade / unit / title | Grades 3-4 / Computing / Game Design Studio |
| Time | **Four meetings, 40 minutes each**, including cleanup |
| Domains | Catholic dignity, computing, purposeful visual communication, whole-number reasoning |
| Big idea | A game is a rule system whose code and instructions must be tested for the people using it. |
| Student objective | "I can build or trace a three-point game, prevent extra scoring, and improve it from a user's test." |
| Why | Software designers debug behavior and make tools usable by different people. |
| Catholic connection | Respect players' dignity: clear controls, fair rules, no humiliating losing messages, privacy and accessible alternatives. St. John Bosco is a model of caring for young people; no invented quotation is needed. |
| Local standards | **Local, not official:** CST-C2 (inclusive user testing); CST-T1 (device input/output); CST-T2 (events/conditions/debugging); CST-A3 (test and revise instructions); CST-M3 (score reasoning within 0-3). |
| Technology | **Required for primary pathway:** Scratch 3 on one computer per pair, preferably offline. It enables executable event code and input/output testing. Paper trace evidence is computational thinking, **not** Scratch operation/programming. |
| Difficulty / prerequisites | Moderate; novices welcome. Meeting 1 explicitly teaches sprite, event, score and condition. No Year A prerequisite, coordinates, clones or negative-number math required. |
| Prep / cleanup | 20 minutes for first meeting once software works; 10 minutes for later meetings; initial installation is advance work. 5 minutes each meeting. |

## Before class

1. Open Scratch on compatible school computers; use guest/offline projects and local saves, not shared pupil logins. Test the two complete scripts below. No public posting, names/photos/voices or online studios without school approval.
2. Make pairs; an odd trio rotates planner, operator and tester. Prepare labeled local save folders by team ID; confirm reopen works.
3. Board: `input | score before | score after | message`. Display the scripts or read them aloud. Students copy three game-rule cards onto paper.
4. If computers/software fail, announce the paper pathway before class. Keep the same four meeting times, but mark operating evidence absent.

## Exact supplies

Tables budget ceil(students / 2) kits/devices. A final trio gives **5/7/10/12 active teams** at 10/15/20/25 pupils; unused eighth/thirteenth device is spare. Thirteen-team showcase timing is a conservative capacity bound.

- **Per student:** pencil, one evidence half-sheet each meeting (4 total).
- **Per team:** 1 Scratch-capable computer, 1 paper sheet each meeting (4 total), 1 paper token; 3 small scoring squares cut/folded from the first team sheet.
- **Whole class:** timer, board, local save storage already on computers; 1 teacher computer for demonstration (may share an available team computer).
- **Teacher:** optional display/projector, not needed if demonstrating in a small group; no purchased game assets.

| Students | Teams / team computers / tokens | Team paper across unit | Half-sheet slips across unit / pencils |
|---:|---:|---:|---:|
| 10 | 5 each | 20 sheets | 40 / 10 |
| 15 | 8 each | 32 sheets | 60 / 15 |
| 20 | 10 each | 40 sheets | 80 / 20 |
| 25 | 13 each | 52 sheets | 100 / 25 |

One device per pair is the primary plan. With fewer devices, paper-test while rotating; maintain a named operation log and schedule missed operation later. Existing devices are reused; paper is consumable.

## Vocabulary, background, misconception and question/answer

**Sprite:** programmable character/object. **Event:** trigger that starts code. **Variable:** named stored value, here Score. **Condition:** true/false check. **Broadcast:** message that starts matching receiver code. **Debug:** test and correct behavior.

The game uses one sprite called Token and a variable **Score for all sprites**. The goal is three deliberate inputs. Continuous touching inside a forever loop is not used: it can add points every program cycle. A guard prevents input number 4 from making the score 4.

**Misconception:** "A finished picture means the game works."
**If asked:** "Why did the score jump?" Answer: "Check which event adds points. We want one deliberate input to add one point, not every instant two sprites touch."

## Complete native Scratch starter

Create variable `Score` for all sprites. Rename the default sprite `Token`. Set its costume/position by dragging it on stage. Place these stacks on **Token**, using actual Events/Variables/Control/Looks blocks:

```text
when green flag clicked
set [Score] to (0)
say [Click Token or press space. Collect 3 points!]

when this sprite clicked
if <(Score) < (3)> then
  change [Score] by (1)
  if <(Score) = (3)> then
    say [Complete! Press the green flag to restart.]
  else
    say [One point collected. Keep going.]
  end
end
```

In meeting 3, add keyboard access without copying the scoring body:

```text
when this sprite clicked
broadcast [collect]

when [space] key pressed
broadcast [collect]

when I receive [collect]
if <(Score) < (3)> then
  change [Score] by (1)
  if <(Score) = (3)> then
    say [Complete! Press the green flag to restart.]
  else
    say [One point collected. Keep going.]
  end
end
```

**Replace** the earlier clicked scoring stack with the broadcast stack; leaving both adds twice per click. Keep the green-flag reset stack. No imagined "when score > 10" event. Arrow-key enrichment, if later taught, uses up `change y by 10`, **down `change y by -10`**, left `change x by -10`, right `change x by 10`; not part of this core unit.

## SAFETY and privacy

Stay at assigned desks; clean dry hands only, no liquids near devices. Teacher handles plugs/charging. Low sound, no flashing effects, no public uploads or identifying media. Save to school-controlled storage with team IDs. Paper tokens stay on desks; no student acts as a running target.

## Meeting 1: rules and traces, exactly 40 minutes

1. **0-5: User need.** Original prayer: "God, help us create fairly and include others." Ask: "What makes a game confusing or unkind?"
2. **5-12: Demonstrate goal/input/feedback.** Open Scratch, identify sprite and green flag, show Score. Teacher runs three clicks then a fourth; expected values **0,1,2,3,3**. "Why shouldn't input 4 earn point 4?"
3. **12-18: Paper model.** Partners write three rules: start at 0; input adds 1 only if below 3; at 3 show complete. Move a token on squares 0-3. Swap reader/executor.
4. **18-28: Build first stack.** Students create Score and the green-flag reset, then the clicked stack above with help. Each child takes an operator turn; waiting partners trace.
5. **28-32: Test boundary.** Try four clicks, then green flag. Record actual values, not assumed correctness.
6. **32-35: Individual evidence.** Predict score after two inputs and after four; explain "below 3." Record which children actually edited and ran code.
7. **35-40: Cleanup/save.** Save locally by team ID, reopen one file as a class check, stop projects, store slips/tokens, close computers as school practice requires.

## Meeting 2: debugging, exactly 40 minutes

1. **0-5: Retrieve/reset.** Reopen saved project; absent files are rebuilt using the short starter, not assigned as homework.
2. **5-11: Demonstrate a bug.** Teacher temporarily removes the `if Score < 3` guard in a separate demo. Four clicks produce 4. "Which rule failed?"
3. **11-17: Trace and propose fix.** Individually mark the first input where expected/actual differ; partners agree on guard location.
4. **17-28: Edit and run.** Verify each team's complete starter; test zero inputs, one, three, four, then restart. Switch operator. Record expected/actual and the fix.
5. **28-32: Explain.** "Why reset to 0? Can we keep changing decorations instead of fixing this bug?" One team demonstrates a corrected trace.
6. **32-35: Individual evidence.** Write/dictate the guard and one passed boundary test; children with paper-only work report the trace, not an executed program.
7. **35-40: Cleanup.** Save/reopen locally, stop, clear desks, collect bug records.

## Meeting 3: accessible controls and visual instructions, exactly 40 minutes

1. **0-5: Consider users.** "How could someone who finds mouse control difficult play?" Accept keyboard input and partner-assisted input as access choices.
2. **5-12: Teach broadcasts.** Teacher replaces the clicked scoring body with `broadcast collect`, adds space-key sender and matching receiver as above. Show the **old scoring stack is removed**.
3. **12-24: Implement/test.** Teams edit, swap operators halfway, test click-only and space-only runs. Holding a key may repeat inputs on some systems; demonstrate deliberate press/release and log observed behavior. No claim that all keyboards behave identically.
4. **24-29: Purposeful art.** Design clear readable instructions, contrast and a symbol plus words; color alone cannot communicate success. One partner tests whether the message makes sense.
5. **29-32: Debug double scoring.** "Did one click add 2? Which old stack remains?" Test again after removing it.
6. **32-35: Individual evidence.** Each child identifies an input, output and access improvement, and traces which broadcast starts scoring.
7. **35-40: Cleanup/save.** Save locally, stop, collect sketches and access-test notes.

## Meeting 4: user testing and showcase, exactly 40 minutes

1. **0-5: Criteria.** Game starts at 0, deliberate inputs reach 3, extra inputs stay 3, restart resets, instructions readable and respectful.
2. **5-12: Paired testing.** Neighboring teams exchange places only on teacher signal or exchange paper versions. Test all five criteria; record passed/not yet with a specific observation.
3. **12-22: Revise one feature.** Fix code or instructions from feedback, then repeat the relevant test. "What evidence shows the change helped the user?"
4. **22-29: Showcase in pairs.** Half the teams present at desks, then reverse after 3 minutes; each child explains their own contribution. No twenty-five sequential presentations.
5. **29-32: Reflect on dignity.** "Whose needs did your improvement address? What should stay private?"
6. **32-35: Individual evidence.** Trace 0,1,2,3,3 and reset to 0; explain one test-backed revision and one input/output relationship.
7. **35-40: Cleanup/archive.** Save local final and bug record, stop, return tokens/paper, collect individual evidence. No accounts or uploads required.

## What success looks like

Each child independently traces boundary behavior, identifies a condition and explains a test-based revision. **Device programming evidence additionally requires an observed edit/run by that child**; record it separately. Score **1** decoration only; **2** trace with prompts; **3** independent trace, correct condition and revision evidence; **4** level 3 plus identifies an accessibility or restart limitation and retests it.

## Unplugged, troubleshooting, differentiation and indoor alternative

**No devices:** in each meeting, replace on-screen building/testing minutes with paper script assembly, token execution, intentional bug and user-tested instruction card. Reuse the exact times. Meetings 1/2 trace score/guard; meeting 3 uses sender/receiver cards; meeting 4 tests/revises rules. Mark **CT observed; Scratch operation not observed**. A paper game is worthwhile but not an executed Scratch program.

- **Missing save:** rebuild the two short stacks; save to verified school folder. If permissions fail, report to teacher and keep paper evidence.
- **Score jumps twice:** remove the obsolete clicked stack, then retest. **Score above 3:** confirm guard encloses addition.
- **Support / Grade 3:** numbered paper blocks, oral reading, score counters 0-3; adult/partner assists typing but child predicts and explains.
- **Challenge / Grade 4:** devise a boundary test not shown, compare expected/actual, then explain why one receiver avoids duplicate scoring logic.
- **Indoor alternative:** all meetings already indoor, no winter/weather constraint.
- **25 pupils:** thirteen pairs/trio, thirteen devices primary; desk-based pair showcase fits seven minutes. A shared-device rotation requires separate missing-operation records.

## Family snippet

We designed a three-point game, tested its score boundary and restart, and revised instructions for a real user. Paper traces show computational thinking; children who used Scratch also practiced executable code. Our Catholic connection was fair, inclusive design and privacy. **Ask:** "What happens on input number four, and why?" **Optional at home:** play a three-point paper game and check its rules. The original resource **scratch.mit.edu** remains optional; offline classroom work needs no home account. No homework, devices or public sharing required.
