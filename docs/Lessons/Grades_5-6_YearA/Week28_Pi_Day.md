---
title: "Week 28: Pi Day Mathematics"
description: "Grades 5-6 mathematical exploration and coding"
version: "1.0"
date: 2025-12-05
tags:
  - grades-5-6
  - year-a
  - robotics
  - coding
  - engineering
  - light
  - pi-day
  - arts
---

# π Week 28: Pi Day Mathematics

## Lesson Overview

| | |
|---|---|
| **Grade Level** | Grades 5-6 |
| **Duration** | 45 minutes |
| **STREAM Focus** | M (Math), T (Technology), R (Religion) |

---

# Week 28: Pi Day Mathematics

## 🎯 Learning Objectives

### STEM Objectives
Students will be able to:
1. Understand π as a ratio and its significance
2. Calculate pi through measurement and simulation
3. Code a Monte Carlo simulation to estimate π
4. Apply pi in engineering calculations

### Faith Integration Objectives
Students will be able to:
1. Appreciate mathematical constants as part of God's ordered creation
2. Connect infinity of π's digits to God's infinite nature
3. Recognize mathematics as discovering (not inventing) truth

---

# Week 28: Pi Day Mathematics

## 🙏 Faith-Reason Integration

### Catholic Teaching Connection
**Mathematical Truth** - Careful measurement and reasoning are compatible with faith. Whether mathematical objects are discovered or invented is a philosophical discussion, not a defined Catholic doctrine.

### Scripture Connection
> "He has measured the waters in the hollow of his hand, and with the span of his hand marked off the heavens."
> — Isaiah 40:12

### Saint Connection
**Fr. Marin Mersenne** — 17th-century priest who made significant contributions to mathematics and music theory. He corresponded with Descartes, Pascal, and other great mathematicians, seeing no conflict between faith and mathematical inquiry.

---

## 📚 Materials Needed

- Circular objects and string

- Rulers

- Computers with Scratch (or calculators)

- Pi digit sheets

- Graphing materials

---

## 📝 Lesson Procedure (45 minutes)

### Opening Prayer & Introduction (5 min)
**Prayer:** "God of infinite wisdom, Your creation contains beautiful mathematical truths. Help us explore the mystery of pi today and see Your order in mathematics. Amen."

**Pi Day context (March 14 = 3/14):**

- "Pi appears EVERYWHERE in creation"

- "Not just circles — physics, probability, nature"

- "It's irrational — infinite non-repeating digits"

- "Yet it's constant — always exactly the same"

**Wonder:** "How can something be infinite yet constant? How can we know it precisely yet never write it completely?"

### Measuring Pi (10 min)
**Original discovery method:**

- Pi = Circumference ÷ Diameter

- EVERY circle, EVERY size, SAME ratio!

**Activity:**
1. Measure circumference of circular object (string method)
2. Measure diameter
3. Calculate ratio
4. Compare to actual pi (3.14159...)

**Class data collection:**

| Object | Circumference | Diameter | C/D Ratio |
|--------|---------------|----------|-----------|
| Can    | 25.1 cm       | 8.0 cm   | 3.14      |
| Lid    | 18.9 cm       | 6.0 cm   | 3.15      |

**Discussion:**

- Why don't we get exactly 3.14159?

- How could we be more precise?

- What does "irrational" mean?

### Monte Carlo Estimation (15 min)
**Visual approach to pi:**

Imagine a square with a circle inside it (circle touches all sides).

- Drop random points in the square

- Count how many land inside the circle

- The ratio relates to pi!

**The math:**

- Square area = (2r)² = 4r²

- Circle area = πr²

- Ratio: Circle/Square = πr²/4r² = π/4

- So: π = 4 × (points in circle / total points)

**Scratch implementation:**
```
Set [in_circle] to 0
Set [total] to 0
Repeat 1000
    Set [x] to (pick random -100 to 100)
    Set [y] to (pick random -100 to 100)
    Set [distance] to (sqrt of ((x * x) + (y * y)))
    If distance < 100 then
        Change [in_circle] by 1
    Change [total] by 1
Set [pi_estimate] to (4 * (in_circle / total))
Say (join "Pi ≈ " (pi_estimate))
```

**Students code and run simulation:**

- Try with 100 points

- Try with 1000 points

- Try with 10000 points

- What happens as you increase points?

**Key insight:** More independent random samples tend to reduce typical sampling error, but any particular larger run can be farther from pi. Retain both results; do not promise monotonic improvement.

### Pi in the Real World (8 min)
**Where pi appears:**

**Circles and spheres (obvious):**

- Wheels, balls, planets

- Area = πr², Circumference = 2πr

**Waves and oscillation:**

- Sound waves, light waves

- Pendulum motion

- Electronics signals

**Probability and statistics:**

- Normal distribution (bell curve)

- Random walks

**Physics:**

- Einstein's field equations

- Heisenberg uncertainty principle

- Period of pendulum

**Nature:**

- River shape varies; do not teach a universal river-meandering ratio of pi.

- Spiral patterns

- Eye structure

**Engineering application:**

- Calculate gear circumference for robot

- Estimate circumference of an actual wheeled model. Sphero is a rolling sphere with an internal drive, not a standard exposed wheel.

### Faith Connection (5 min)
**Mathematical constants and God:**

**Pi is discovered, not invented:**

- "Pi existed before humans calculated it"

- "We DISCOVER mathematical truth, we don't CREATE it"

- "This mathematical philosophy is a discussion position, not a required Catholic belief."

**Infinity of pi's digits:**

- "Pi has infinite decimal places, never repeating"

- "We can calculate more digits, but never ALL digits"

- "God is infinite — we can always know Him more, but never comprehend Him fully"

- "Pi reminds us of infinity!"

**Fr. Mersenne reflection:** "Catholic priests and scientists have contributed to mathematics for centuries. They saw discovering mathematical truth as discovering God's creation."

### Closing (2 min)
**Pi celebration:**

- Share estimation results

- How close did simulations get?

- Appreciate the beauty of mathematics

**Closing Prayer:** "Thank You, God, for mathematical beauty. Thank You that pi is constant throughout the universe — from atoms to galaxies. Help us see Your fingerprints in mathematics and pursue truth in all areas. Amen."

---

## ✅ Assessment

**Local standards (not official):** CST-M3 - individual circumference/diameter ratio with matching units; CST-S2 - repeated measurement and uncertainty; CST-C1 - distinguish numerical evidence from philosophical reflection. Official benchmarks **VERIFICATION REQUIRED**. Primary no-device route measures three circular objects; simulation is enrichment, not required evidence for students without Scratch.

- Calculated pi through measurement

- Coded Monte Carlo simulation

- Compared estimates to actual pi

- Connected mathematical constants to faith

---

## 📎 Home Connection
> "We estimated pi from circumference and diameter. Ask: 'Why did measurements differ from 3.14?' We practiced honest reasoning; views about discovered versus invented mathematics are philosophical, not a Catholic doctrine. No routine homework or home coding required."

---

**Lesson Version:** 1.0 | **
