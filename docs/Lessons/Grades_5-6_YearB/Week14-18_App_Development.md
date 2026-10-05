---
title: "Weeks 14-18: App Development"
description: "Accessible one-screen event-driven app with a complete paper prototype route"
version: "2.0"
date: 2026-10-04
---

# Weeks 14-18: App Development

## LESSON AT A GLANCE

| Field | Teacher reference |
|---|---|
| Grade / unit / title | Grades 5-6 / Computing B / App Development |
| Time | Five instructional meetings of 45 minutes; 225 total. Schedule meetings around break, not necessarily calendar weeks 14-18. |
| Domains | C, T, A; engineering/user testing supports the project |
| Big idea | An event-driven tool should behave predictably and respect users. |
| Student objective | I can design, trace, test, and improve a one-screen classroom-help tool. |
| Why | Interface designers and ordinary users need clear labels, privacy, and reliable behavior. |
| Catholic connection | Human dignity guides inclusive labels and minimal data collection; [verified sources](../../Review/Grades_5-6_Review.md#verified-sources). No official Internet patron claim is made. |
| Local standards / evidence | CST-T2: individual event/condition trace and correction; CST-T3: individual privacy boundary; CST-A2: purposeful visual hierarchy and tested revision; CST-C2: individual accessibility decision. |
| Official benchmarks | VERIFICATION REQUIRED; four local program codes. |
| Technology | Recommended: primary paper prototype fully teaches interface/event reasoning. Optional real-app path requires school-approved App Inventor access and tested Companion/emulator. Paper evidence does **not** prove actual app programming or operation. |
| Difficulty / prerequisites | Moderate; read short labels, follow if/else, sketch a screen. No prior App Inventor or Year A required. |
| Prep / cleanup | Paper packet first 20 minutes/repeat 10; device setup may exceed 30 minutes and must be completed before the unit. Cleanup 4 minutes each meeting included. |

## BEFORE CLASS

1. Make teams of at most three (4/5/7/9), rotating designer/operator/tester. Prepare one screen template/team from the component list below.
2. Copy reference events and tests below. No downloaded templates or unspecified resource cards are needed.
3. If devices are chosen, teacher/IT verifies current platform requirements and age/privacy approval, individual school-managed access, project saving, and Companion/emulator connection. **Never share one password among children or require a personal Google account.**
4. Test the reference one-screen app ahead of class. Use no camera, microphone, location, texting, cloud database, personal entries, external links, or publishing.
5. If approval, login, connection, or sufficient devices fail, choose the primary paper path at the start and label all evidence accordingly.

## MATERIALS

| Supply | Per student / team / class / teacher | 10 | 15 | 20 | 25 |
|---|---|---:|---:|---:|---:|
| Pencil; journal, reusable | 1 each/student | 10 | 15 | 20 | 25 |
| Individual trace/exit sheets | 2/student/unit | 20 | 30 | 40 | 50 |
| Screen, event, and test sheets | 3/team/unit | 12 | 15 | 21 | 27 |
| Paper for movable labels/buttons | 1 sheet/team | 4 | 5 | 7 | 9 |
| Marker; ruler; blunt scissors | 1 each/team | 4 | 5 | 7 | 9 |
| Tape | 0.5 m/team/unit | 2 m | 2.5 m | 3.5 m | 4.5 m |
| Timer; large reference screen | 1 each/teacher | 1 | 1 | 1 | 1 |
| Approved computer + tested Companion device/emulator, optional | 1 working setup/team; no loan assumed | 4 | 5 | 7 | 9 |

School supplies all materials; no family device or account is required.

## VOCABULARY

**Interface:** what the user sees/acts on. **Event:** action triggering instructions. **Condition:** test with true/false outcomes. **State:** current values/display. **Prototype:** model to learn from. **Data minimization:** collect only what is genuinely needed.

## TEACHER BACKGROUND

A paper operator can execute events by moving labels; a real computer executes programmed blocks. Both can expose unclear design, but only a real-app run supplies programming/operation evidence. Test expected versus actual output; users should not need the creator to explain every control.

**Common misconception:** attractive screens are functioning apps.

**If asked, "Can we publish this?"** Answer: Not in this unit. School approval, privacy review, accessibility, and tested behavior must precede any publication.

### Complete reference project - classroom kit help

Fictional user: a student locating **a classroom supply**, without entering names.

Designer components: `TitleLabel` ("Kit helper"), `ChoiceBox` (text input; prompt "Type ruler or tape"), `FindButton` ("Find"), `ClearButton` ("Clear"), `ResultLabel` (initially "Choose a supply"). Arrange top-to-bottom with large labels; do not communicate through color alone.

Reference Blocks/paper events:

```text
When FindButton.Click:
  if ChoiceBox.Text = "ruler":
    set ResultLabel.Text to "Rulers: tray A"
  else if ChoiceBox.Text = "tape":
    set ResultLabel.Text to "Tape: tray B"
  else:
    set ResultLabel.Text to "Type ruler or tape"

When ClearButton.Click:
  set ChoiceBox.Text to ""
  set ResultLabel.Text to "Choose a supply"
```

Input is case-sensitive in this starter: `Ruler` takes the fallback branch. Students may improve clear instructions or deliberately add case-handling after core tests. Do not silently claim the starter handles all spellings.

| Test | Event / input | Expected result |
|---|---|---|
| 1 | Find / ruler | Rulers: tray A |
| 2 | Find / tape | Tape: tray B |
| 3 | Find / empty | Type ruler or tape |
| 4 | Find / crayon | Type ruler or tape |
| 5 | Clear after any input | Empty ChoiceBox; Choose a supply |
| 6 | Find / Ruler | Type ruler or tape in starter |

Teacher key: no data is retained or transmitted by this design. Persistent storage is not needed. Optional future TinyDB work needs a separate verified example; the former `TinyDB1.Tag` property example is removed.

## EXACT LESSON SEQUENCE

### Meeting 1 - events and first prototype

1. **0-5 (5 min):** Introduce fictional user and dignity/privacy purpose.
2. **5-12 (7 min):** Demonstrate components and Find/ruler event on board or pretested device.
3. **12-22 (10 min):** Each student sketches a screen, labels all five components, and predicts Find/tape output.
4. **22-32 (10 min):** Teams create the paper screen or real Designer layout. Device users create a new school-managed project and rename components to match the reference.
5. **32-38 (6 min):** Trace one Find event, rotating operator; discuss what is model versus actual app.
6. **38-41 (3 min):** Individual exit names trigger, condition, output.
7. **41-45 (4 min):** Save/store projects, tidy.

### Meeting 2 - user-centered visual design

1. **0-5 (5 min):** Review each student's event explanation.
2. **5-12 (7 min):** Criteria: locate Find/Clear without coaching; read labels at comfortable seated distance; no private input.
3. **12-22 (10 min):** Each student suggests two layouts and justifies a visual hierarchy (title, action, output).
4. **22-32 (10 min):** Teams select/revise layout; keep one screen and reference functionality.
5. **32-38 (6 min):** Neighboring-team user test: point to Find/Clear; record confusion and one proposed revision.
6. **38-41 (3 min):** Individual exit explains an accessible label and why student names are unnecessary.
7. **41-45 (4 min):** Save/store and clean up.

### Meeting 3 - implement and trace conditions

1. **0-5 (5 min):** Read reference events and identify three branches.
2. **5-12 (7 min):** Teacher models nested if/else blocks or paper decision cards; demonstrate empty input.
3. **12-22 (10 min):** Teams implement exactly the reference; each member handles one branch. In paper route operator changes ResultLabel according to written events.
4. **22-32 (10 min):** Execute tests 1-4; record expected/actual separately and rotate operator.
5. **32-38 (6 min):** Correct a mistaken branch and rerun affected test. Preserve failed result.
6. **38-41 (3 min):** Each independently traces crayon input and proposes a correction to an intentionally reversed ruler/tape result.
7. **41-45 (4 min):** Save/store; clean up.

### Meeting 4 - full testing and revision

1. **0-5 (5 min):** Introduce repeatable user testing, not popularity voting.
2. **5-12 (7 min):** Model Clear reset and case-sensitive test 6; explain limits.
3. **12-22 (10 min):** Teams run all six tests; each student records at least two tests personally.
4. **22-32 (10 min):** Another team tries without explanation; record label confusion and test result.
5. **32-38 (6 min):** Revise one visual label or branch and rerun the affected test, with expected behavior stated first.
6. **38-41 (3 min):** Individual exit gives before/after evidence and an honest remaining limit.
7. **41-45 (4 min):** Save/store; clean up.

### Meeting 5 - demonstrate and assess

1. **0-5 (5 min):** Review what may honestly be called programmed/operated versus simulated.
2. **5-12 (7 min):** Prepare one screen plus raw test table; no new features.
3. **12-22 (10 min):** Pair adjacent teams; each explains purpose, event trace, and design revision. Nine teams use an extra three-team group, with each member getting a brief turn.
4. **22-32 (10 min):** Teacher reviews individual evidence while teams demonstrate Find/invalid/Clear to peers. All students execute a trace; device operators are recorded separately.
5. **32-38 (6 min):** Each student completes the final three-input trace (ruler, empty, Clear) and one dignity/privacy explanation.
6. **38-41 (3 min):** Summarize one capability and one limit; no unsupported "mastered app development" claim.
7. **41-45 (4 min):** Export/save only through approved school storage; clean up.

## QUESTIONS TO ASK STUDENTS

Which event starts this branch? What happens with an empty string? Can a user identify the result without color? Which data should this tool never request? What does a paper test fail to demonstrate?

## WHAT SUCCESS LOOKS LIKE

Each student accurately traces three final cases, explains one corrected bug, cites a before/after user test, and identifies a privacy/access safeguard. Grade 5 uses the reference branches. Grade 6 defends an additional spelling/empty-input handling choice with two tests. Real programming credit additionally requires observed block editing and execution; paper route earns design/algorithm evidence only.

## IF THINGS GO WRONG

Login/connection fails: switch to supplied paper screen and events; mark shifted objective. Empty output: inspect matching component names and clicked event. Button seems inert: check Blocks association, not decoration. Too much ambition: defer screens, storage, sensors, sound, and publication. No printer: copy five components and tests from board.

## SAFETY

No personal accounts/password sharing, private health/prayer entries, GPS/camera/microphone/texting, public uploads, or app installation outside approved tools. Adult/IT controls device setup and charging. Review interfaces for respectful language; nobody's faith or ability is ranked by app scores.

## SUPPORT / CHALLENGE - GRADES 5 AND 6

Grade 5: movable output cards and highlighted matching text, oral trace. Challenge: predict `Ruler`. Grade 6: three-branch trace scaffold; challenge normalize case or add another supply and test both valid/invalid inputs. Large print, keyboard access, and a scribe preserve reasoning goals.

## INDOOR FALLBACK

Paper screen, operator, event cards, and six tests are a complete five-meeting indoor route. This is not an actual mobile app.

## CLEANUP

Save through school-approved storage, sign out where required, collect paper components and individual traces, power down per school practice. Do not send home account credentials.

## FAMILY NEWSLETTER

**Explored:** accessible interfaces and events. **Did:** designed a kit-helper, tested six cases, and revised it. **Learned:** clear behavior and privacy matter. **Catholic connection:** technology should respect people. **Ask:** "What did your Clear action reset?" Teacher identifies whether work was a paper model or a real programmed app. No routine homework or home account required.

## TEACHER ARTIFACTS

## Exact supplies and class-size allocation / required lesson-specific packet
- **Prompt/evidence:** Supply five-component Kit helper screen, event pseudocode, and six-test expected/actual table. Each student traces ruler, empty, crayon/Ruler, and Clear; records label test/revision, corrected branch, privacy choice, and whether evidence is paper-simulated or actually programmed.
- **Worked/finished example:** `Ruler` incorrectly expected tray A; starter is case-sensitive, so actual is “Type ruler or tape.” Revise instruction to lowercase (or implement/test normalization). Finished paper/app screen passes documented reference cases and never claims paper execution is programming.
- **Board setup / expected discussion responses:** Post component stack and three Find branches plus Clear reset; chart `input|expected|actual|fix|retest`. Correct “attractive=functioning,” empty string has no branch, color-only output, and paper prototype proves app operation.
- **Kit contents / Kit label / reset / unfinished:** Per team: three screen/event/test sheets, one movable-label paper sheet, marker, ruler, blunt scissors, and 0.5 m masking tape; per student: two trace/exit sheets, pencil, and journal; optional app route: one school-approved computer plus tested Companion device or emulator. **Kit label:** `KIT HELPER—W14-18—6 TESTS/0.5 m TAPE—PAPER/APP ___—team ___`. File raw traces, count movable pieces and tools, save the project when used, and power down. Mark the exact failed test and last state; resume from reset without inventing output.
- **Annotated exemplar / common error interpretation / reteach:** Box trigger/condition/output, circle bug fix, star route/privacy. Wrong result with correct trace=operator/state error; no expected value=test-design gap; passing paper called app=claim error. Walk one movable-output event, then rerun affected test.
- **Devices/external-service compliance and deferred evidence:** The recommended service/hardware is **MIT App Inventor** with a school-approved computer and a tested **Companion device or emulator**. Runtime evidence requires an actually programmed Find/Clear interface, six live event executions with observed outputs, and an affected-test rerun after a code/label revision. If App Inventor, Companion, or the emulator is unavailable, defer programming, live event execution, observed output, reset, and runtime retest evidence; paper tracing and paper reasoning do not count as app runtime/device evidence.
- **Safety severity and likelihood / Adult supervision ratio / access:** Paper **low/unlikely**; computer/privacy **moderate/possible**. **Adult supervision ratio:** one adult/class, teams ≤3; adult/IT controls charging/setup. Print code/tests ≥12-point in high contrast; offer large print, keyboard, scribe, or movable cards. Use only individually managed school access; do not use a personal Google account, shared password, camera, microphone, location, texting, cloud database, publication, or external links.
- **SDS/product gate: HOLD — masking tape.** The exact masking-tape product/manufacturer is not specified. The [Safety Data Sheet Register TAPE row](../../Review/Safety_Data_Sheet_Register.csv) is on HOLD. Do not issue or substitute masking tape until the school safety lead approves the exact product and its current SDS.
- **SDS/product gate: HOLD — school-approved marker.** The exact marker product/manufacturer is not specified, and the [Safety Data Sheet Register CONTROL-ROW](../../Review/Safety_Data_Sheet_Register.csv) does not approve a marker product. Do not issue or substitute any marker until the school safety lead approves the exact product and its current SDS.
