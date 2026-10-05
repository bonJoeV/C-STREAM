---
title: "Session 8: App Inventor"
description: "An executable one-screen app with fixed inputs and an explicit reset"
version: "3.0"
date: 2026-10-04
---

# Session 8: App Inventor

## LESSON AT A GLANCE

| Field | Reference |
|---|---|
| Grade / schedule / rotation / unit | 5-6 / Bi-Weekly / A / Computing |
| Time | 1 meeting of 45 minutes |
| Objective / why / big idea | I can assemble/run a button-to-label app, trace two events and explain privacy/access choices. Events connect interface and behavior. |
| Domains / Catholic connection | T, C; useful technology respects dignity and collects no unnecessary personal information. |
| Local standards | CST-T2: event trace/debug; CST-T3: excluded data; CST-C2: access. Official benchmarks VERIFICATION REQUIRED. |
| Technology Requirement | Required for App Inventor execution; paper fallback explicitly records interface simulation, not app creation. |
| Difficulty / entry | Introductory; Designer/Blocks taught here; no previous app unit assumed. |
| Prep / cleanup | Moderate: prepared packet 20 min/repeat 10; school/IT setup may exceed 30 min before class; cleanup 4 min. |

## BEFORE CLASS / MATERIALS

Confirm school contact/accommodations. IT verifies current platform age/privacy
policy, approved individual school-managed access, local/school save and tested
Companion/emulator connection. Never share passwords or require home accounts.
Seat 4/5/7/9 teams; rotate editor/operator/tester every five minutes in the
simultaneous route or by the shared turns below. Pretest
exact starter; if setup fails choose paper before class, not live login hunt.

| Item | Allocation | 10 | 15 | 20 | 25 |
|---|---|---:|---:|---:|---:|
| Paper trace; pencil | 1 each/student | 10 | 15 | 20 | 25 |
| Computer plus tested Companion device/emulator, simultaneous route | 1 working setup/team | 4 | 5 | 7 | 9 |
| Computer plus tested Companion device/emulator, shared route instead | 3/class alternative | 3 | 3 | 3 | 3 |
| Paper screen/event/test sheets | 3/team | 12 | 15 | 21 | 27 |
| Board; clock; roster | 1 each/teacher | 1 | 1 | 1 | 1 |

Paper consumable; equipment reusable. App Inventor/Companion are access
resources; emulator does not require an additional physical phone.

### Shared-route kit and turn plan

Choose one setup row; each setup includes the stated computer/test connection,
not an extra teacher device. If three approved setups work, preload the
complete Designer/events below with Reset's output intentionally wrong on a
turn copy. Keep balanced groups <=3: 10 two trios/two pairs; 15 five trios;
20 six trios/one pair; 25 seven trios/two pairs. Teams 1-3 use **11-19**,
4-6 **19-27**, 7-9 **27-35**; at 10/15 use the last window for retests.
Each pupil has up to two minutes to restore Reset to "Ready", execute
Reset/Help/Help/Reset and record actual outputs; allow two minutes/team for
approved account transition/reset/checking. Waiting pupils label their own
screens, trace events and prepare privacy/access reasons.
IT must pretest this actual individual-access workflow; never share passwords.
Record each child's edit/run or assistance/NE, not watching. One/two setups
serve that many teams per window; schedule remaining device checks later and
retain paper reasoning without an app-execution claim. If account switching
or accessibility overruns, defer checks rather than compress safe turns.
This route edits a provided starter, not a fresh complete app from blank.

## VOCABULARY / TEACHER BACKGROUND

**Component:** interface part. **Event:** trigger. **Output:** response.
**Reset:** return to starting display.
**Common misconception:** attractive screen already functions.
**If asked, "Can we publish?"** Not in this class; school review first.
Complete Designer: TitleLabel "Supply helper"; HelpButton "Show paper location";
ResetButton "Reset"; ResultLabel initially "Ready". Large vertical labels.
Blocks: when HelpButton.Click set ResultLabel.Text "Paper: tray A";
when ResetButton.Click set ResultLabel.Text "Ready".
No text input, storage, sound, camera, GPS or external link.
Key sequence Reset/Help/Help/Reset -> Ready/Paper: tray A/Paper: tray A/Ready;
four events, two unique display states. Physical tray A is fictional here.

## EXACT LESSON SEQUENCE

1. **0-4 (4 min):** Read supply-help purpose; ask "Why doesn't it need your name?"
2. **4-11 (7 min):** Demonstrate Designer component names and two Blocks events.
3. **11-25 (14 min):** Teams assemble exact screen/events and execute through tested setup; each pupil edits or runs one event. Shared teams begin the stated waves; waiting pupils draw/trace components.
4. **25-35 (10 min):** Run four-event key; deliberately wrong Reset output on copy, predict/fix/retest; finish shared waves and have a peer find both controls without coaching.
5. **35-41 (6 min):** Each independently traces outputs, explains trigger/result, privacy boundary and accessible label choice; record runtime turn separately.
6. **41-45 (4 min):** Save school-only if approved, disconnect/close, save traces and tidy.

## QUESTIONS TO ASK STUDENTS / WHAT SUCCESS LOOKS LIKE

"What happens on second Help? Which test finds reset bug?"
Each has four correct outputs, corrected test, input/output/privacy/access
reason and observed execution when device route chosen.
1 unsupported; 2 prompted; 3 independent; 4 predicts another event sequence;
NE for unexecuted app evidence.

## IF THINGS GO WRONG / SAFETY

No response -> check component names/event connection before cosmetic edits.
No approved setup -> paper operator moves ResultLabel by same rules; defer
actual programming. No private data, public upload, shared login, permissions,
patient app or personal account. Stop/report unsafe device/data behavior.

## SUPPORT / CHALLENGE / INDOOR FALLBACK

Grade 5/support: component checklist, large block reference, oral trace.
Grade 6/challenge: compare input-free design against a hypothetical unnecessary
name field; no persistence/multiscreen scope. Indoor seated plan.

## CLEANUP / FAMILY NEWSLETTER

Record actual versus paper, save evidence and report setup failures.
**Explored:** app events. **Did:** assembled/run or simulated two controls.
**Learned:** reset/privacy. **Catholic connection:** dignity in useful tools.
**Ask:** "Which event changed the label?" No routine homework.

**Previous:** [Christmas Electronics](./Session07_Christmas_Electronics.md)
**Next:** [Catholic Scientists](./Session09_Catholic_Scientists.md)
## Teacher artifact pack (release checklist)

- **Student material and expected evidence (print/no-print):** Provide/board-copy the screen components and event trace `Reset / Help / Help / Reset`, with expected output `Ready / Paper: tray A / Paper: tray A / Ready`; fields also ask `trigger, output, excluded data, access choice, actual app or paper`. Full evidence corrects the wrong Reset block and records the retest.
- **Worked example and finished example:** Model HelpButton.Click changing only ResultLabel.Text. Finished executable screen has TitleLabel `Supply helper`, HelpButton, ResetButton and ResultLabel; both events run in the key sequence and reset to Ready. If approved access fails, the finished paper event simulation is valid only as `interface/logic reasoning; app build/run N/A`.
- **Board setup:** Sketch the one screen, list exact component names/text, and draw `EVENT | EXPECTED | ACTUAL | BUG/FIX`. Post `no text input, storage, sound, camera, GPS, link or publish`.
- **Questions/misconceptions:** Ask “What happens on second Help?” (same Paper output), “Which test exposes Reset bug?” (Help then Reset), “Why no name field?” (unnecessary data), and “Does an attractive screen function?” (not until event blocks execute).
## Exact supplies

- **Kit contents and Kit label:** Trace/pencil per pupil; one approved computer plus tested Companion/emulator per team **or** three shared setups; three paper screen/event/test sheets per team; teacher board/clock/roster. **Kit label:** `G5-6 YA S08 — SUPPLY HELPER — HELP/RESET TEST`. Reset to starter `ResultLabel=Ready`, remove pupil changes from turn copy, school-save only if approved, disconnect/close, and file traces. Unfinished records name last component/event and whether runtime was observed; book only missing edit/run, never share credentials.
- **Annotated exemplar, Common error interpretation, and reteach:** Annotate `Reset -> Paper: tray A` as `wrong Reset output`; box actual sequence, underline wrong text literal and circle replacement `Ready`. **Common error interpretation:** this is an event-output mismatch, not a design-quality judgment. Reteach with paper component/event cards, then one approved retest.

## SAFETY

- **Safety classification, supervision, SDS, and Print/accessibility check:** Severity **low**, likelihood **unlikely** for seated managed devices; stop/report damaged chargers or unsafe data prompts. Adult ratio **1:25**, teams ≤3 with individual observed turns. SDS **not applicable**. **Print/accessibility check:** use large vertical labels, high contrast, keyboard/switch access where supported, read-aloud and paper/scribed traces.
- **Devices/external-service compliance:** Required execution uses MIT App Inventor on a school-managed computer with the IT-approved AI Companion on a school-managed test device or the approved emulator. If that hardware/service route or current age/privacy approval is unavailable, defer and mark `NE` for component creation, HelpButton.Click, ResetButton.Click, displayed output, and observed reset retest. The paper screen/event trace remains interface/logic reasoning only and must not count as app runtime or device-operation evidence. No personal/home account, shared password, public upload, added permissions or private data is permitted; save school/local only.
