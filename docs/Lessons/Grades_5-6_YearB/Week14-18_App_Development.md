---
title: "Weeks 14-18: App Development"
description: "Grades 5-6 Year B MIT App Inventor project"
version: "1.0"
date: 2025-12-05
tags:
  - grades-5-6
  - year-b
  - coding
  - engineering
  - light
  - astronomy
  - service
  - arts
---

# 📱 Weeks 14-18: App Development

## Unit Overview

| | |
|---|---|
| **Grade Level** | Grades 5-6 |
| **Duration** | 5 sessions (45 min each) |
| **Curriculum** | Year B |
| **STREAM Focus** | T (Technology), M (Math - Logic), E (Engineering) |

---

# Weeks 14-18: App Development

## 🎯 Learning Objectives

### STEM Objectives
Students will be able to:
1. Use MIT App Inventor to create mobile apps
2. Apply programming logic and design
3. Develop user interface skills
4. Create an app that solves a real problem

### Faith Integration Objectives
Students will be able to:
1. Create technology that serves others
2. Consider ethical app design
3. Use gifts for the common good

---

# Weeks 14-18: App Development

## 🙏 Faith-Reason Integration

### Catholic Teaching Connection
**Technology for Human Flourishing** — Apps can improve lives or waste time. As Catholic creators, we're called to develop technology that serves human dignity and the common good, not just entertainment or profit.

### Scripture Connection
> "Whatever you do, work at it with all your heart, as working for the Lord."
> — Colossians 3:23

### Saint Connection
**St. Isidore of Seville** — Patron saint of the Internet! This 7th-century bishop wrote encyclopedias to organize and share knowledge. He believed information should serve education and faith. He's the perfect patron for ethical app developers!

---

## 📚 Materials Needed

- Computers with MIT App Inventor access

- Android devices or emulator

- App design worksheets

- UI/UX templates

- Project rubrics

---

## 📝 Week 14 Procedure: App Inventor Introduction (45 minutes)

### Opening Prayer (2 min)
"St. Isidore of Seville, patron of the Internet, pray for us! Lord, help us learn to create technology that serves others. May our apps bring good into the world. Amen."

### Why Build Apps? (8 min)
**Apps that matter:**

**Discussion:**

- What apps do you use daily?

- Which genuinely help you?

- Which waste your time?

- What app do you wish existed?

**St. Isidore connection:**

- Organized knowledge for learning

- Wanted information to serve people

- Saw education as sacred

- "The Internet's patron saint"

**App developer calling:**

- Create solutions, not just distractions

- Design for user wellbeing

- Consider: Who benefits? Who might be harmed?

- Build what you'd want your family to use

### MIT App Inventor Introduction (15 min)
**Platform overview:**

**What is App Inventor?**

- Free from MIT

- Visual block-based coding

- Creates real Android apps

- Drag-and-drop interface

**Two main areas:**
1. **Designer** — Visual layout (how it looks)
2. **Blocks** — Programming logic (how it works)

**Basic tutorial:**

- Create new project

- Add components (buttons, labels, images)

- Arrange on screen

- Switch to blocks view

- Connect events and actions

**First app: "Hello World"**

- Add button

- Add label

- When button clicked → change label text

- Test with emulator

### Exploring Components (15 min)
**What can apps do?**

**Component categories:**

- **User Interface** — Buttons, labels, text boxes

- **Media** — Sound, camera, video

- **Sensors** — GPS, accelerometer

- **Storage** — Files, databases

- **Connectivity** — Web, texting

**Hands-on exploration:**

- Add different components

- Test functionality

- See possibilities

**Brainstorm:**

- What kind of app could you make?

- What problem could it solve?

- Who would use it?

### Closing (5 min)
**Homework:**

- Think of 3 app ideas that could help someone

- Consider: family, school, community, parish

**Journal:**

- What did you learn today?

- What excites you about app development?

- What app would honor St. Isidore's vision?

**Closing Prayer:**
"Thank You for the gift of creation, Lord! Help us use technology to serve, not distract. St. Isidore, guide us as we learn to build apps for good. Amen."

---

## 📝 Week 15 Procedure: App Design & Planning (45 minutes)

### Opening Prayer (2 min)
"Lord, give us wisdom to design apps that truly help people. Guide our planning today. Amen."

### App Idea Sharing (8 min)
**Share homework ideas:**

- What ideas did you generate?

- Who would each app help?

- Is it possible to build?

**Good app criteria:**

- Solves real problem

- Has clear user

- Is buildable in our time

- Serves the common good

### User-Centered Design (10 min)
**Designing for people:**

**Key questions:**
1. Who is your user?
2. What problem do they have?
3. How will your app help?
4. What features are essential?
5. What would delight them?

**User persona:**
Create description of your target user:

- Name, age, situation

- Their challenge/need

- How they'd use your app

- What success looks like

**Catholic lens:**

- Does this respect human dignity?

- Does it serve or exploit?

- Would Jesus approve of this app?

### App Planning Document (20 min)
**Complete design document:**

**1. App Overview**

- App name

- Purpose (one sentence)

- Target user

- Problem being solved

**2. Features List**

- Essential features (MVP)

- Nice-to-have features

- Future possibilities

**3. Screen Designs**

- Sketch each screen

- Show navigation between screens

- Label all components

**4. Technical Plan**

- What components needed?

- What data to store?

- What logic required?

**5. Faith Connection**

- How does this serve others?

- What values does it reflect?

- How does it honor human dignity?

### Closing (5 min)
**Plan approval:**

- Teacher reviews plans

- Feedback and refinement

- Ready to build next week!

**Closing Prayer:**
"Thank You for planning time, Lord! Help us build something meaningful. Amen."

---

## 📝 Week 16 Procedure: Building Core Features (45 minutes)

### Opening Prayer (2 min)
"Creative Spirit, guide our coding today! Help us turn our plans into working apps. Amen."

### Building Phase 1 (40 min)
**Start building your app:**

**Today's goals:**

- Create all screens

- Add basic components

- Begin programming logic

- Test frequently

**Building tips:**

- Start simple, add complexity

- Test each feature as you build

- Save often!

- Ask for help when stuck

**Common patterns to use:**

**Navigation between screens:**
```
When Button.Click
  open another screen screenName = "Screen2"
```

**Storing data:**
```
When Button.Click
  set TinyDB1.Tag to "UserName"
  call TinyDB1.StoreValue value = TextBox1.Text
```

**Conditional logic:**
```
If TextBox1.Text = ""
  then set Label1.Text to "Please enter something"
  else [proceed with action]
```

**Teacher circulation:**

- Help debug

- Suggest solutions

- Keep projects on track

- Encourage persistence

### Progress Check (3 min)
**Status update:**

- What's working?

- What's challenging?

- What do you need?

**Closing Prayer:**
"Thank You for progress, Lord! Help us persevere through challenges. Amen."

---

## 📝 Week 17 Procedure: Advanced Features & Testing (45 minutes)

### Opening Prayer (2 min)
"Lord, help us add features that make our apps truly useful. Guide our testing. Amen."

### Continue Building (25 min)
**Add advanced features:**

**Possible additions:**

- Multiple screens

- Data storage

- Sensors (if relevant)

- Sound/media

- Better UI design

**Polish the interface:**

- Consistent colors

- Clear labels

- Intuitive navigation

- Error handling

### User Testing (15 min)
**Test with classmates:**

**Process:**

- Partner up with someone NOT working on your app

- Let them use it WITHOUT instruction

- Watch what confuses them

- Note what they struggle with

- Get their honest feedback

**Feedback form:**

- What worked well?

- What was confusing?

- What features would you add?

- Would you use this app?

**Iterate:**

- Based on feedback, what will you change?

- Prioritize fixes

- Make improvements

### Closing (3 min)
**Final push planning:**

- What must be done before showcase?

- What would be nice to add?

- Focus on essentials

**Closing Prayer:**
"Thank You for testers who help us improve! Help us finish strong. Amen."

---

## 📝 Week 18 Procedure: App Showcase (45 minutes)

### Opening Prayer (2 min)
"Lord, bless our presentations today! Help us share what we've created with joy and humility. St. Isidore, celebrate with us! Amen."

### Final Preparations (10 min)
**Last polish:**

- Fix any remaining bugs

- Add finishing touches

- Prepare presentation

- Test one more time

**Presentation outline:**
1. App name and purpose
2. Who it helps and how
3. Demo the app
4. Technical highlights
5. Faith connection
6. What you learned

### App Showcase (28 min)
**Present apps:**

**Each team (4-5 min):**

- Present using outline

- Live demo

- Answer questions

**Audience:**

- Try apps if possible

- Ask questions

- Give encouragement

- Note what impresses you

### Celebration & Reflection (5 min)
**Awards:**

- Most Useful App

- Best Design

- Most Creative

- Best Faith Integration

- Perseverance Award

**Reflection:**

- "What did you learn about app development?"

- "How did you serve others through your app?"

- "What would you do differently?"

**Next steps:**

- Could your app be published?

- Could it be improved over summer?

- Who else might benefit?

**Closing Prayer:**
"Thank You, God, for the gift of creation! Thank You for the ability to build apps that serve others. St. Isidore, thank you for inspiring us to use technology for good. Help us continue creating things that honor You and help our neighbors. May our apps bring good into the world! Amen."

---

## 📎 Home Connection
> "We completed a 5-week app development project! Ask your child: 'What app did you create?' 'Who does it help?' 'What was hardest about building it?' 'What did you learn?' If they have an Android device, they might be able to show you their working app!"

---

## ✅ Assessment

- Created functional app in App Inventor

- Demonstrated user-centered design

- Included meaningful features

- Connected app purpose to faith values

---

**Lesson Version:** 1.0 — Year B | **
