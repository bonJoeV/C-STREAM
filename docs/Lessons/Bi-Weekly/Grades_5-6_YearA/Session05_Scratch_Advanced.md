---
title: "Session 5: Scratch Advanced"
description: "Bounded score logic, reset, and loops with an executable paper model"
version: "2.0"
date: 2026-10-04
---

# Session 5: Scratch Advanced

## LESSON AT A GLANCE

| Field | Teacher reference |
|---|---|
| Grade / unit / title | Grades 5-6 / Computing A / Scratch Advanced |
| Time | One 45-minute meeting |
| Domains | C, T, M |
| Big idea | A variable changes according to explicit rules, not the programmer's wishes. |
| Student objective | I can trace a score, stop it at three, and debug reset or condition logic. |
| Why | Programmers and players need predictable rules and respectful feedback. |
| Catholic connection | Inclusive play, honest tests, and shared roles express dignity; [verified sources](../../../Review/Grades_5-6_Review.md#verified-sources). |
| Local standards / evidence | CST-T2: individual loop/condition trace and bug correction; CST-M1: individual score table; CST-C2: individual respectful-feedback/access decision. Local codes, not official. |
| Official benchmarks | VERIFICATION REQUIRED. |
| Technology | Recommended: primary paper trace is complete without devices. Optional Scratch desktop/web path requires an approved computer/team, no student account. Paper work is not actual programming/operation evidence. |
| Difficulty / prerequisites | Moderate; count to three, compare "less than," follow sequence. Advanced here means state/condition reasoning, not building a whole game in twelve minutes. |
| Prep / cleanup | First packet 15 minutes; repeat 10 minutes; cleanup 4 minutes included. |

## BEFORE CLASS

Optional approved platform: [Scratch](https://scratch.mit.edu/), or an installed
desktop editor. The primary paper path needs neither account nor connection.

1. Make teams of three maximum (4/5/7/9); rotate input caller, operator, checker.
2. Make score cards 0,1,2,3/team; draw two buttons: green flag/reset and sprite click. Copy the complete reference below on board or team sheet.
3. Optional devices: pre-open blank Scratch project, one sprite with two costumes, create variable `score` for all sprites; test saving locally. No public studio, names, or home login.
4. Write criterion: after reset, clicks 1/2/3/4 produce scores 1/2/3/3; feedback is welcoming, not a rating of people.

## MATERIALS

| Supply | Per student / team / class / teacher | 10 | 15 | 20 | 25 |
|---|---|---:|---:|---:|---:|
| Pencil; journal, reusable | 1 each/student | 10 | 15 | 20 | 25 |
| Individual trace sheet | 1/student | 10 | 15 | 20 | 25 |
| Reference/button/score-card sheet | 1/team, cut into cards | 4 | 5 | 7 | 9 |
| Marker; blunt scissors | 1 each/team | 4 | 5 | 7 | 9 |
| Timer; board example | 1 each/teacher | 1 | 1 | 1 | 1 |
| Approved computer with Scratch, optional | 1/team | 4 | 5 | 7 | 9 |

## VOCABULARY

**Variable:** named stored value. **Event:** trigger. **Condition:** test deciding a branch. **Loop:** repeated instructions. **Reset:** return to starting state. **Bug:** mismatch between intended and actual behavior.

## TEACHER BACKGROUND / COMPLETE STARTER

```text
when green flag clicked
  set score to 0
  say "Try three clicks"

when this sprite clicked
  if score < 3 then
    change score by 1
    if score = 3 then
      repeat 3
        next costume
        wait 0.2 seconds
      say "Thanks for trying!"
```

On paper the operator swaps score cards and flips the sprite card three times instead of changing costumes. `if score = 3` is inside the guard: the fourth click causes no change or repeat. Record this precise behavior, not an assumed extra celebration.

**Common misconception:** reset only changes the picture. Here reset must change the score.

**If asked, "Is this a complete game?"** Answer: It is a small tested interaction. A full game needs more design and time; custom blocks, falling objects, lives, and levels remain later extensions.

Teacher key: reset -> 0; four clicks -> 1,2,3,3; reset again -> 0. Celebration loop occurs once on the third click.

## EXACT LESSON SEQUENCE

1. **0-5 (5 min):** Introduce respectful game rules and the score-limit criterion; differentiate simulation from real programming.
2. **5-12 (7 min):** Model reset and first two clicks; teach variable, guard, and nested condition.
3. **12-20 (8 min):** Teams assemble paper model or exact Scratch blocks. Each member explains a different event/branch.
4. **20-30 (10 min):** Run reset, four clicks, reset again; rotate operators, log expected/actual scores and loop count.
5. **30-38 (8 min):** Intentionally omit reset or change guard to `score < 4` in a copy. Predict, test, correct, and retest; preserve original working version.
6. **38-41 (3 min):** Each independently gives five score states, says why click four stops, and explains one respectful/access decision.
7. **41-45 (4 min):** Save approved local work, collect individual traces, count cards, tidy.

## QUESTIONS TO ASK STUDENTS

What is stored before the event? Which condition blocks click four? How many costume changes occur? Why would a player need a clear reset? Which test revealed your bug?

## WHAT SUCCESS LOOKS LIKE

Each student correctly gives 0/1/2/3/3, traces the three-iteration loop, and corrects a reset/guard bug with one before/after test. Grade 5 uses the reference. Grade 6 changes the limit to four, predicts the new boundary, and justifies both edits needed (guard and celebration condition). Team success alone earns no individual programming credit.

## IF THINGS GO WRONG

Device unavailable: paper operator executes all events; mark **algorithm simulation, not device programming**. Score does not reset: check green-flag event and variable name. Repeated click animation surprises: inspect nesting. Too difficult: keep the same rule with highlighted guard and a checker, not a different unassessed task.

## SAFETY

Adult checks device/charging condition. No personal/public accounts, private entries, online chat, or publishing. Keep sounds optional/off for sensory access. Never use game score to rank worth or religious commitment.

## SUPPORT / CHALLENGE - GRADES 5 AND 6

Grade 5: large score cards, less-than symbol spoken aloud, oral exit. Challenge: predict missing reset. Grade 6: same scaffold; challenge limit-four trace with tests at 3/4/5. Keyboard-accessible trigger may replace sprite clicking on device with stated event change and retest.

## INDOOR FALLBACK

The paper state machine is complete at desks, with no device/internet or weather dependency.

## CLEANUP

Save/sign out per school policy; collect score cards and scissors; retain individual trace and bug explanation, not screenshots alone.

## FAMILY NEWSLETTER

**Explored:** score variables, loops, and conditions. **Did:** tested a three-click interaction and debugged it. **Learned:** boundary rules and reset matter. **Catholic connection:** welcoming, accessible play. **Ask:** "Why didn't the fourth click change the score?" No routine homework; optional conversation needs no account.

**Previous:** [Session 4 - Body Systems](./Session04_Body_Systems.md)

**Next:** [Session 6 - Thanksgiving Innovation](./Session06_Thanksgiving_Innovation.md)
## Teacher artifact pack (release checklist)

- **Student prompt/evidence (print/no-print):** Provide or board-copy columns `event / score before / condition / score after / costume changes / message` for reset, clicks 1-4, reset. Exact states are `0,1,2,3,3,0`; the three-costume repeat occurs once on click 3. Each pupil must explain that `score < 3` blocks click 4 and correct either an omitted reset or `<4` guard.
- **Worked example and finished example:** Work reset→0 and clicks 1→1, 2→2. Finished paper/Scratch trace shows all events, the nested celebration on click 3, bug result (`<4` permits score 4), correction to `<3`, and successful retest. Paper is explicitly `algorithm simulation`; finished device evidence requires that pupil’s observed run.
- **Board/chart:** Post the complete starter, a 0/1/2/3 state line, `EXPECTED | ACTUAL | FIX | RETEST`, and the criterion `clicks 1/2/3/4 = 1/2/3/3; reset=0`. Keep welcoming feedback separate from technical score.
- **Expected discussion responses and misconceptions:** Ask “What is stored before each event?” (current score), “Why no fourth increase?” (guard false), “How many costume changes?” (three), “What must reset change?” (score to zero). Expected discussion responses are `current score`, `guard false`, `three`, and `score to zero`. Correct “reset only changes picture,” “repeat runs every click,” and using score to rank people.

## Exact supplies

- **Kit contents and Kit label:** Pencil/journal and individual trace per pupil; per team reference/button/score-card sheet, marker, blunt scissors, optional approved computer; teacher timer/board example. **Kit label:** `G5-6 YA S05 — SCORE 0-3 — RESET/4-CLICK TRACE`. Reset by saving school-local work, closing/signing out per policy, counting 0-3/button cards and scissors. Mark unfinished event and last score; preserve working copy and bug copy, then resume in school.
- **Annotated exemplar, Common error interpretation, and reteach:** Annotate `fourth click=4` as `guard changed to <4`; box observed state, underline faulty condition, circle corrected `<3`. **Common error interpretation:** this is boundary-logic evidence, not inattentiveness. Reteach by physically swapping score cards through four clicks, then rerun the corrected trace.
- **Safety, supervision, SDS/product gate, and Print/accessibility check:** Severity **low**, likelihood **unlikely** (blunt scissors/devices); adult checks charging and damaged equipment. Adult ratio **1:25**, with teams ≤3 and observed turns. **SDS/product gate: HOLD — school-approved marker (CONTROL-ROW commercial mixture).** The exact product/manufacturer is not specified and no approved marker row exists; see the [Safety Data Sheet Register](../../../Review/Safety_Data_Sheet_Register.csv), use its CONTROL-ROW, and do not issue or substitute a marker until the school safety lead approves the exact product and current SDS. **Print/accessibility check:** use large high-contrast blocks/cards, speak `<` as “less than,” offer keyboard trigger, sounds off, scribing/oral answers.
- **Technology/external-service compliance:** Recommended execution uses Scratch Desktop, or the school-approved Scratch web service, on a school-managed computer. If that hardware/service route is unavailable, defer and mark `NE` for project launch, event handling, visible score/costume output, reset, and observed retest. The paper event trace remains algorithm reasoning only and must not count as Scratch runtime or computer-operation evidence. No pupil account, public studio, chat, publishing, private entry or home login is permitted; save locally only if approved.
