---
title: "Weeks 24-25: Advanced Scratch Programming"
description: "Grades 5-6 complex coding concepts and projects"
version: "1.0"
date: 2025-12-05
tags:
  - grades-5-6
  - year-a
  - coding
  - engineering
  - life-science
  - astronomy
  - lent
  - arts
---

# 💻 Weeks 24-25: Advanced Scratch Programming

## Unit Overview

| | |
|---|---|
| **Grade Level** | Grades 5-6 |
| **Duration** | 2 sessions (45 min each) |
| **STREAM Focus** | T (Technology), M (Math) |

---

# Weeks 24-25: Advanced Scratch Programming

## 🎯 Learning Objectives

### STEM Objectives
Students will be able to:
1. Create and use custom blocks (functions)
2. Implement cloning and object management
3. Use advanced list operations
4. Design multi-sprite interactive programs

### Faith Integration Objectives
Students will be able to:
1. Connect programming organization to order in creation
2. Understand abstraction as reflecting God's hierarchical creation
3. Create programs that serve or teach others

---

# Weeks 24-25: Advanced Scratch Programming

## 🙏 Faith-Reason Integration

### Catholic Teaching Connection
**Order in Creation** — God created an ordered universe with hierarchies and systems. Good programming mirrors this: organized code, clear structures, and elegant solutions. Excellence in coding reflects the Creator's excellence.

### Scripture Connection
> "For God is not a God of disorder but of peace."
> — 1 Corinthians 14:33

### Saint Connection
**St. Thomas Aquinas** — Master of organized thinking who created the Summa Theologica with beautiful logical structure. His clear organization of complex ideas mirrors good code structure.

---

## 📚 Materials Needed

- Computers with Scratch

- Advanced concepts reference sheet

- Project planning templates

- Code organization guides

---

# Session 1: Custom Blocks & Cloning

## 📝 Lesson Procedure (45 minutes)

### Opening Prayer & Introduction (4 min)
**Prayer:** "Lord, You created an ordered universe with beautiful systems. Help us write code that is organized, clear, and excellent. May our programming skills honor You. Amen."

**Today's focus:** "Level up your coding with custom blocks and cloning!"

### Custom Blocks (Functions) (12 min)
**What are custom blocks?**

- Reusable code chunks

- Like making your own Scratch block

- Called "functions" in most languages

**Why use them?**

- Avoid repeating code

- Make code more readable

- Easier to debug

- Change once, works everywhere

**Creating a custom block:**
1. Go to "My Blocks"
2. Click "Make a Block"
3. Name it (descriptive!)
4. Add input parameters if needed
5. Define what it does

**Example:**
```
Define [draw square (size)]
    Repeat 4
        Move (size) steps
        Turn right 90 degrees
```

Now you can use `draw square (50)` or `draw square (100)` anywhere!

**Practice:** Create a custom block for something you do repeatedly in your programs.

**Parameters:**

- Make blocks flexible with inputs

- `draw polygon (sides) (size)` — now it can draw ANY shape!

### Cloning (12 min)
**What is cloning?**

- Creating copies of a sprite during runtime

- Each clone acts independently

- Great for: enemies, particles, projectiles, repetitive elements

**How to clone:**

- `create clone of [myself]` — makes a copy

- `when I start as a clone` — what the clone does

- `delete this clone` — removes the clone

**Example: Falling snow**
```
When green flag clicked
Forever
    Create clone of myself
    Wait 0.1 seconds

When I start as a clone
    Go to x: (pick random -240 to 240) y: 180
    Repeat until y position < -180
        Change y by -5
    Delete this clone
```

**Clone properties:**

- Each clone has its own position, variables, appearance

- Clones can interact with each other

- Be careful: too many clones can slow things down!

**Practice:** Create a simple project using clones.

### Faith Connection (5 min)
**Organized code as worship:**

- St. Thomas Aquinas organized complex theological ideas beautifully

- His Summa has clear structure: questions, articles, objections, replies

- Good code has similar organization

- "Excellence in our work honors God"

**Discussion:** "When we write messy, disorganized code that 'just works,' we're settling for less than our best. When we write clean, organized code, we're exercising our God-given ability to create order."

### Work Time & Preview (12 min)
**Begin project:**

- Start a project that uses custom blocks OR cloning

- Must include faith connection in final product

**Preview:** "Next session: advanced lists and multi-sprite coordination!"

---

# Session 2: Advanced Lists & Project Development

## 📝 Lesson Procedure (45 minutes)

### Opening Prayer & Review (4 min)
**Prayer:** "Lord, continue to guide our learning. Help us create programs that are both technically excellent and meaningful. Amen."

**Review:** "What are custom blocks? What is cloning?"

### Advanced List Operations (10 min)
**Beyond basic lists:**

**List operations:**

- `length of [list]` — how many items

- `item (1) of [list]` — get specific item

- `item (last) of [list]` — get last item

- `item (random) of [list]` — random selection

- `[list] contains [thing]` — check if item exists

**List manipulation:**

- `replace item (1) of [list] with [value]` — update item

- `insert [value] at (1) of [list]` — add at position

- `delete (1) of [list]` — remove item

**Practical uses:**

- High score tracking

- Inventory systems

- Quiz question banks

- Conversation trees

- Save/load game states

**Example: Quiz from list**
```
Set [score] to 0
Set [question_num] to 1
Repeat (length of [questions])
    Ask (item (question_num) of [questions])
    If answer = item (question_num) of [answers] then
        Change score by 1
        Say "Correct!"
    Else
        Say (join "The answer was " (item (question_num) of [answers]))
    Change question_num by 1
```

### Multi-Sprite Coordination (8 min)
**Sprites working together:**

**Broadcast messaging:**

- `broadcast [message]` — send to all sprites

- `when I receive [message]` — respond to broadcast

- Coordinates action across sprites

**Example: Game states**
```
// In main controller sprite:
When green flag clicked
Broadcast "game start"

When [space] key pressed
Broadcast "game over"

// In player sprite:
When I receive "game start"
Show
Go to starting position

When I receive "game over"
Hide
```

**Variable sharing:**

- Global variables: all sprites can see

- Sprite-only variables: private to one sprite

- Choose appropriately!

### Project Development (20 min)
**Project options:**

**Option A: Educational Game**

- Quiz or learning game

- Uses lists for content

- Clones for game elements

- Custom blocks for organization

**Option B: Interactive Story**

- Multiple characters (sprites)

- Broadcast messaging for coordination

- User choices affect outcome

- Lists for dialogue/options

**Option C: Simulation**

- Model a system (ecosystem, physics, social)

- Clones for multiple agents

- Variables track state

- Custom blocks for behaviors

**Requirements:**

- Use at least TWO advanced concepts (custom blocks, cloning, advanced lists, broadcasting)

- Clear organization

- Faith connection (content or purpose)

- Comments in code explaining sections

**Work time with teacher support.**

### Closing (3 min)
**Share progress:**

- What are you creating?

- Which advanced concepts are you using?

- What's your faith connection?

**Faith Connection:** "Programming is a form of creation. When we write organized, elegant code, we reflect God's ordered creation. When we use our programming skills to teach, help, or serve others, we use technology for good."

**Closing Prayer:** "Thank You, God, for the gift of logic and creativity. Help us continue growing as programmers who create excellent, purposeful programs. May our skills serve You and others. Amen."

---

## ✅ Assessment

- Demonstrated custom block usage

- Implemented cloning appropriately

- Used advanced list operations

- Created organized, commented code

- Included faith connection

---

## 📎 Home Connection
> "We learned advanced Scratch programming! Ask your child to explain: 'What are custom blocks (functions)?' 'What is cloning in programming?' 'Show me your project!' We discussed how organized code reflects God's ordered creation. Encourage your child to continue developing their programming skills — they're building abilities that can serve others!"

---

**Unit Version:** {{ page.meta.version }} | **Last Updated:** {{ page.meta.date }}