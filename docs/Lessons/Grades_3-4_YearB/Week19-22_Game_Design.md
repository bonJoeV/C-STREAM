---
title: "Weeks 19-22: Game Design Studio"
description: "Grades 3-4 Year B Scratch game development"
version: "1.0"
date: 2025-12-05
tags:
  - grades-3-4
  - year-b
  - coding
  - engineering
  - astronomy
  - lent
  - arts
---

# 🎮 Weeks 19-22: Game Design Studio

## Unit Overview

| | |
|---|---|
| **Grade Level** | Grades 3-4 |
| **Duration** | 4 sessions (40 min each) |
| **Curriculum** | Year B |
| **STREAM Focus** | T (Technology), M (Math), A (Arts) |

---

# Weeks 19-22: Game Design Studio

## 🎯 Learning Objectives

### STEM Objectives
Students will be able to:
1. Use Scratch to create interactive games
2. Implement game mechanics (scoring, levels, win/lose)
3. Apply math concepts in game design
4. Debug and improve code

### Faith Integration Objectives
Students will be able to:
1. Create games with positive values
2. Use creativity as gift from God
3. Design for others' enjoyment

---

# Weeks 19-22: Game Design Studio

## 🙏 Faith-Reason Integration

### Catholic Teaching Connection
**Creativity & Joy** — God created us to experience joy! Designing games that bring fun to others is a way of sharing God's joy. Our creativity reflects God the Creator.

### Scripture Connection
> "A cheerful heart is good medicine."
> — Proverbs 17:22

### Saint Connection
**St. John Bosco** — Patron of young people, Don Bosco believed in "faith, learning, and play." He used games and recreation as ways to connect with and educate youth. He showed that play has spiritual value!

---

## 📚 Materials Needed

- Computers with Scratch (scratch.mit.edu)

- Game design worksheets

- Storyboard templates

- Project rubrics

- Example games

- Testing feedback forms

---

## 📝 Week 19 Procedure: Game Design Basics (40 minutes)

### Opening Prayer (2 min)
"Creator God, You gave us imagination and creativity! Help us design games that bring joy to others. St. John Bosco, inspire us to see play as valuable. Amen."

### What Makes a Good Game? (8 min)
**Analyze games:**

**Discussion:**

- What games do you like to play?

- What makes them fun?

- What makes them frustrating?

**Key game elements:**

- **Goal** — What are you trying to do?

- **Rules** — What can/can't you do?

- **Challenge** — What makes it hard?

- **Feedback** — How do you know you're doing well?

- **Reward** — What do you get for succeeding?

**St. John Bosco connection:**

- Used games to teach values

- Made learning fun

- Believed joy is from God

- "Run, jump, make noise — just don't sin!"

### Game Types in Scratch (10 min)
**Explore possibilities:**

**Common game types:**
1. **Maze games** — Navigate through obstacles
2. **Catch games** — Collect falling objects
3. **Chase games** — Avoid or chase something
4. **Clicker games** — Click on targets
5. **Quiz games** — Answer questions

**Show simple examples of each**

**Math in games:**

- Scoring (addition)

- Lives (subtraction)

- Levels (variables)

- Positioning (coordinates)

- Timing (seconds, counting)

### Scratch Review (10 min)
**Quick skills check:**

**Essential blocks:**

- Motion (movement)

- Looks (appearance)

- Sound (audio)

- Events (triggers)

- Control (loops, conditionals)

- Sensing (detection)

- Variables (score, lives)

**Key concepts for games:**

- "When green flag clicked" → game start

- "Forever" loops → continuous checking

- "If touching" → collision detection

- Variables for score/lives

- "Change score by 1" → scoring

### Game Planning (8 min)
**Design document:**

**Game Concept Worksheet:**
1. Game name:
2. Game type:
3. Goal — what does player try to do?
4. Controls — how does player control it?
5. Challenge — what makes it hard?
6. Scoring — how do you earn points?
7. Win/Lose — how does game end?

**Faith element:**

- What positive value does your game promote?

- Options: helpfulness, care for creation, joy, courage, kindness

### Closing (2 min)
**Homework:**

- Finalize game concept

- Sketch main character/sprites

**Closing Prayer:**
"Thank You, God, for creativity and fun! Help us create games that bring joy. St. John Bosco, pray for us! Amen."

---

## 📝 Week 20 Procedure: Building Core Mechanics (40 minutes)

### Opening Prayer (2 min)
"Lord, help us be patient programmers today! When things don't work, help us persevere. Amen."

### Sharing Game Concepts (5 min)
**Quick shares:**

- Game name and type

- Main goal

- Faith element included

### Core Mechanics Tutorial (10 min)
**Essential game code:**

**Player movement (4 directions):**
```
When green flag clicked
Forever
  If key "up arrow" pressed then
    Change y by 10
  If key "down arrow" pressed then
    Change y by 10
  If key "left arrow" pressed then
    Change x by -10
  If key "right arrow" pressed then
    Change x by 10
```

**Collision detection:**
```
If touching "color" or "sprite" then
  [action]
```

**Scoring:**
```
When green flag clicked
Set score to 0

[Later, when player succeeds]
Change score by 1
```

**Game over:**
```
If [losing condition] then
  Stop all
```

### Build Time (20 min)
**Create your game:**

**Minimum requirements:**

- Player-controlled sprite

- At least one other sprite/obstacle

- Scoring system

- Win or lose condition

**Teacher circulation:**

- Help debug

- Suggest improvements

- Ensure positive content

- Connect to math concepts

**Checkpoints:**

- Does your player move?

- Does something happen when sprites touch?

- Does score change?

### Progress Check (3 min)
**Status update:**

- What's working?

- What's challenging?

- What help do you need?

**Closing Prayer:**
"Thank You for progress, Lord! Help us keep improving. Amen."

---

## 📝 Week 21 Procedure: Adding Features (40 minutes)

### Opening Prayer (2 min)
"Creative Spirit, inspire us to make our games even better! Help us use our gifts well. Amen."

### Debugging Review (5 min)
**Common problems:**

- Sprite not moving → check if/forever blocks

- Score not changing → check variable blocks

- Game not ending → check conditions

**Debugging strategy:**
1. Test small sections
2. Read code out loud
3. Check for typos
4. Ask for another pair of eyes

### Advanced Features (10 min)
**Level up your game:**

**Option A: Multiple Levels**
```
When score > 10
  Broadcast "Level 2"

When I receive "Level 2"
  Change speed by 2
  Show new background
```

**Option B: Lives System**
```
When green flag clicked
Set lives to 3

When touching bad thing
Change lives by -1
If lives = 0 then
  Stop all
```

**Option C: Timer**
```
When green flag clicked
Set time to 60
Forever
  Wait 1 second
  Change time by -1
  If time = 0 then
    Stop all
```

**Option D: Sound Effects**
```
When [event]
Play sound "pop"
```

### Development Time (20 min)
**Improve your game:**

**Goals today:**

- Fix any bugs from last week

- Add at least one new feature

- Test multiple times

- Refine gameplay

**Quality checklist:**

- [ ] Game starts when flag clicked

- [ ] Player controls work smoothly

- [ ] Scoring works correctly

- [ ] Game ends appropriately

- [ ] At least one advanced feature

- [ ] Positive content/values

### Partner Testing (3 min)
**Swap and play:**

- Play partner's game

- Note: What works well? What's confusing?

- Give kind, helpful feedback

**Closing Prayer:**
"Thank You for partners who help us improve, Lord! Amen."

---

## 📝 Week 22 Procedure: Game Showcase (40 minutes)

### Opening Prayer (2 min)
"Lord of joy, thank You for these weeks of creativity! Help us celebrate together and appreciate each other's work. St. John Bosco, pray for us! Amen."

### Final Polish (10 min)
**Last touches:**

- Fix any remaining bugs

- Add instructions (how to play)

- Add credits (your name)

- Test one more time

**Instructions template:**
```
"How to Play:
Use arrow keys to move.
Collect [items] for points.
Avoid [obstacles].
Try to score [goal]!"
```

### Game Arcade (20 min)
**Play everyone's games:**

**Setup:**

- All games open and ready

- Students rotate through stations

- 2-3 minutes per game

**Feedback form for each game:**

- Game name:

- What I liked:

- Favorite feature:

- Score I got:

**Teacher observation:**

- Note creativity

- Identify strong coders

- Recognize perseverance

- Appreciate faith integration

### Showcase & Awards (6 min)
**Celebrate achievements:**

**Categories:**

- Most Creative Concept

- Best Gameplay

- Most Challenging

- Best Use of Faith Values

- Most Improved Coder

- Best Bug Fixer

**Whole class:**

- Everyone completed a game!

- We learned coding, math, and design

- We created joy for others!

### Reflection & Closing (2 min)
**Discussion:**

- "What was hardest about game design?"

- "What did you learn about yourself as a coder?"

- "How did your game share positive values?"

**St. John Bosco wisdom:**
"Through play, we learn and grow. Fun is a gift from God!"

**Closing Prayer:**
"Thank You, Lord, for creativity and joy! Thank You for the gift of play and the ability to create. Help us always use our talents to bring happiness to others. St. John Bosco, continue to inspire us to see fun as something holy. Bless our games and those who play them! Amen."

---

## 📎 Home Connection
> "We completed a Game Design Studio unit! Your child created an original Scratch game. Ask them: 'Can I play your game?' 'What was hardest to program?' 'What positive value does your game include?' Visit scratch.mit.edu together to explore or continue creating!"

---

## ✅ Assessment

- Created functional Scratch game

- Implemented scoring and win/lose conditions

- Used at least one advanced feature

- Included positive values in design

---

**Lesson Version:** 1.0 — Year B | **
