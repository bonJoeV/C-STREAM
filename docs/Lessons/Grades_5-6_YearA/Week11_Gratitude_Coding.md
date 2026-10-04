---
title: "Week 11: Gratitude and Coding"
description: "An executable Scratch list with fictional entries and privacy guards"
version: "3.0"
date: 2026-10-04
---

# Week 11: Gratitude and Coding

## LESSON AT A GLANCE

| Field | Reference |
|---|---|
| Grade / schedule / rotation / unit | 5-6 / Weekly / A / Computing |
| Time | 1 meeting of 45 minutes |
| Objective / why / big idea | I can execute an add/retrieve/reset list program, trace its values and exclude private data. Lists organize information; gratitude is not a health treatment or spiritual score. |
| Domains / Catholic connection | T, C; thanksgiving may be voluntary/private; respect another person's choice not to disclose. |
| Local standards | CST-T2: list trace/debug; CST-T3: data boundary; CST-C2: respectful opt-out. Official benchmarks VERIFICATION REQUIRED. |
| Technology Requirement | Required for actual Scratch programming; paper fallback records a changed algorithm-only objective. |
| Difficulty / entry | Developing; teach event, list and index here; no prior lists assumed. |
| Prep / cleanup | Moderate: first 25 min, repeat 15 min; approved-device setup extra before class; cleanup 4 min. |

## BEFORE CLASS / MATERIALS

Teacher/IT checks school-approved Scratch editor, age/privacy policy, local
save and working setups; never shared/personal passwords. Pretest starter
below. Seat balanced teams of at most three: 4/5/7/9 teams at 10/15/20/25;
rotate operator every five minutes in the simultaneous route or by the
individual shared-route turns below.
Copy fictional allowed entries: "sunny walk" and "helpful action". No real
prayer, names, family or health entries. Check school contact/accommodations.

| Item | Allocation | 10 | 15 | 20 | 25 |
|---|---|---:|---:|---:|---:|
| Paper trace; pencil | 1 each/student | 10 | 15 | 20 | 25 |
| Computer with tested Scratch editor, simultaneous route | 1/team | 4 | 5 | 7 | 9 |
| Computer with tested Scratch editor, shared route instead | 3/class alternative | 3 | 3 | 3 | 3 |
| Paper list/event reference | 2/team | 8 | 10 | 14 | 18 |
| Board; clock; roster | 1 each/teacher | 1 | 1 | 1 | 1 |

Paper consumable; equipment reusable. Scratch is an access resource, not a
physical supply. Choose one computer row, not both; these are required
allocations for the selected route, not reported school holdings. The teacher
demonstrates with an issued setup, not an unlisted extra.

### Shared-route kit and turn plan

With three approved working setups, preload the exact starter below; on each
turn's copy set View's item index to 2 as the intentional bug. Preserve balanced
groups: 10 = two trios/two pairs; 15 = five trios; 20 = six trios/one pair;
25 = seven trios/two pairs. Do not form groups of four.
Use **11-19**, **19-27**, **27-35** for teams 1-3, 4-6, 7-9 respectively;
10/15 pupils need only two waves, with the last window for retests/checks.
Each pupil has up to two minutes to predict the wrong retrieval, personally
change index 2 to 1, run the six keyed tests and record actual output; the
remaining two minutes/team allow reset and teacher checking. Waiting pupils
trace the same list states and prepare privacy/access explanations.
Pretest this exact turn/account workflow before class. Record actual edit/run,
assisted action and NE separately; watching is not operation evidence.
With one/two working setups, keep the three windows with that many active
teams, book remaining operation checks later and record their paper-only
reasoning honestly. Never compress accommodations or reset safety to claim
all turns. Shared work modifies a provided starter, not a from-scratch build.

## VOCABULARY / TEACHER BACKGROUND

**List:** ordered items. **Index:** position, starting at 1 in Scratch.
**Event:** trigger. **Reset:** clear previous values.
**Common misconception:** a list automatically stays saved safely forever.
No persistence/publication objective. **If asked, "May I add my prayer?"**
Keep it private; only the two fictional strings are classroom inputs.

Create list `Thanks` for all sprites; hide list monitor if desired.
Complete starter in one sprite:

```text
when green flag clicked
delete all of [Thanks]
say [Ready: use a or v]

when [a] key pressed
ask [Type sunny walk or helpful action] and wait
if <<(answer) = [sunny walk]> or <(answer) = [helpful action]>> then
  add (answer) to [Thanks]
  say [Added]
else
  say [Use a fictional example]

when [v] key pressed
if <(length of [Thanks]) > (0)> then
  say (item (1) of [Thanks])
else
  say [No entries]
```

Key: reset/v -> No entries; a/sunny walk -> length 1; a/helpful action ->
length 2; v -> sunny walk; a/name -> unchanged length 2; reset -> length 0.
Messages remain until next event; no racing animations.

## EXACT LESSON SEQUENCE

1. **0-4 (4 min):** Introduce fictional gratitude list and opt-out; ask "Why not collect private prayers?"
2. **4-11 (7 min):** Model creation of list/events and empty-list guard; trace key.
3. **11-25 (14 min):** Simultaneous teams assemble starter and run reset/add/view; every child edits or executes an event and records actual result. Shared teams begin the stated waves; waiting pupils complete their traces.
4. **25-35 (10 min):** Run all six keyed tests; deliberately replace item 1 with item 2 on a copy, predict wrong retrieval, fix and retest. Finish shared waves with every pupil's own edit/run; keep failed output.
5. **35-41 (6 min):** Each independently traces 0/1/2/2/0 lengths, gives first item and explains excluded private input/opt-out.
6. **41-45 (4 min):** Local school save if approved, close editor, delete fictional entries via reset, return paper/tools.

## QUESTIONS TO ASK STUDENTS / WHAT SUCCESS LOOKS LIKE

"What is item 1 after two adds? What happens to empty view? Which test finds
the index bug?" Each supplies correct five-length trace, retrieval, corrected
test and privacy decision; teacher records individual device turn separately.
1 unsupported; 2 prompted; 3 independent; 4 explains a new boundary; NE if unrun.

## IF THINGS GO WRONG / SAFETY

No output -> check event/key/list name, not random code changes. Approval/device
fails -> move paper entries by same rules; record algorithm simulation, real
execution deferred. No public uploads, private inputs, health benefit claims
or personal account demand. Stop/report unsafe device/data use.

## SUPPORT / CHALLENGE / INDOOR FALLBACK

Grade 5/support: large block reference, scribed trace, one event at a time.
Grade 6/challenge: predict a third add and explain why first item stays first;
do not add cloud storage. All work seated indoors.

## CLEANUP / FAMILY NEWSLETTER

Save evidence, log executed versus paper, report missing tests.
**Explored:** lists/privacy. **Did:** add/retrieve/reset using fictional entries.
**Learned:** guards and indices matter. **Catholic connection:** voluntary
thanksgiving and dignity. **Ask:** "What did reset do?" No routine homework.
