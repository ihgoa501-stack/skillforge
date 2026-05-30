---
name: master-research
description: Deep-dive research into a specific master practitioner's methodology. Extracts actionable techniques, core principles, and real case examples from primary sources. Use when users ask "how does [expert] approach [domain]", "research [person]'s methodology", "what can I learn from [master] about [task]".
model: opus
---

# Master Research（大师调研）

Deep-dive research into a specific master practitioner. Go beyond surface-level summaries — extract the actionable techniques, mental models, and real case examples that make this person exceptional at what they do.

## When to Use

- "How does Chris Voss negotiate?"
- "Research Jensen Huang's leadership approach"
- "What can I learn from Rob Fitzpatrick about user interviews?"
- "Study how Barbara Minto structures business writing"
- "What makes [person] the best at [skill]?"
- As a deep-dive step within skillforge's workflow (after identifying a master worth studying)

NOT when:
- You need to compare multiple experts (use skillforge core)
- You just want a biography or summary (this skill extracts actionable patterns)

---

## Research Process

### Phase 1: Identify the Master and Focus

Clarify exactly who and what to research.

**Questions to answer:**
1. Who is the master? (full name, domain, era)
2. What are they known for being the best at? (be specific — not "leadership" but "giving feedback to direct reports")
3. What context did they operate in? (industry, company size, era — methodologies may be context-dependent)
4. What output do you want? (a skill, a decision framework, general principles?)

**Example:**
```
Master: Chris Voss
Known for: Hostage negotiation → business negotiation
Context: FBI lead hostage negotiator, 24 years
Want: Actionable negotiation techniques for sales conversations
```

---

### Phase 2: Find Primary Sources (MOST IMPORTANT)

**Go to the source. Not summaries of the source. The source itself.**

#### Source Priority:

| Priority | Source Type | Examples | Why |
|----------|------------|----------|-----|
| **1st** | Their own work | Books they wrote, talks they gave, interviews they did | Unfiltered, direct from the master |
| **2nd** | Direct accounts | People who worked with them, case studies of their work | Observed behavior, not interpretation |
| **3rd** | Analysis by domain experts | Other practitioners analyzing their method | Contextualized understanding |
| **Last** | General summaries | Blog posts, "10 lessons from..." articles | Often oversimplified, sometimes wrong |

#### Search strategy:

```
Round 1 — Find their body of work:
"[master name] book"
"[master name] talk TED keynote"
"[master name] interview podcast"
"[master name] original article essay"

Round 2 — Find their work in action:
"[master name] case study real example"
"[master name] in practice"
"how [master name] [specific technique]"
"[master name] before after"

Round 3 — Find critiques and limitations:
"critique of [master name]'s approach"
"when [master name]'s method doesn't work"
"[master name] limitations"
"[master name] vs [alternative approach]"
```

**Quality signal checklist for each source:**
- [ ] Is this the master's own words, or someone else's interpretation?
- [ ] Does it contain specific techniques, not just general praise?
- [ ] Does it include real examples or cases?
- [ ] Is it recent enough to be relevant? (or historically important enough to be timeless?)

**Target:** 3-5 primary sources minimum before proceeding.

---

### Phase 3: Extract the Methodology

Go beyond "what they believe" to "what they actually do."

#### 3.1 Core Framework

**What is their central model or framework?**
- The ONE idea that everything else builds on
- Usually expressible in 1-3 sentences
- Often has a memorable name or metaphor

```
Example (Chris Voss):
Core framework: Tactical Empathy
"Understand the other side's emotions and use that understanding
to influence their decision-making. It's not about being nice —
it's about being effective."
```

#### 3.2 Key Techniques (The "How")

Extract specific, actionable techniques. Each should be something you could DO, not just something you should "understand."

| Technique | What It Is | When to Use | Concrete Example |
|-----------|-----------|-------------|-----------------|
| Mirroring | Repeat the last 1-3 words they said, with upward inflection | To build rapport and get them to elaborate | Them: "We're struggling with retention" You: "Retention?" |
| Labeling | Name their emotion: "It sounds like..." / "It seems like..." | To diffuse negative emotions and build trust | "It sounds like you're frustrated with the current vendor" |
| Calibrated Questions | "How..." or "What..." questions that start with "How am I supposed to..." | To give the other side a sense of control while guiding the conversation | "How am I supposed to justify this budget to my CEO?" |

#### 3.3 Mental Models

**How does this master SEE the world differently?**

What assumptions do they make that others don't?
What do they pay attention to that others ignore?
What do they ignore that others obsess over?

```
Example (Chris Voss):
- "No" is the START of a negotiation, not the end. "No" makes people feel safe.
- The goal is not "yes" — it's "that's right" (they feel understood).
- Never compromise. Compromise is lazy. Create new options instead.
- Deadlines are almost always arbitrary and self-imposed.
```

#### 3.4 Decision Rules

**If X, then Y.** The master's heuristic rules for specific situations.

```
Example (Chris Voss):
- If they say "you're right," they're just trying to end the conversation. Dig deeper.
- If they say "that's right," you've achieved real connection.
- If the other side hasn't said "no" at least once, they're not being honest.
- Never split the difference. Create value, don't compromise.
```

---

### Phase 4: Find Real Cases

Concrete examples of the methodology in action. This is what separates useful research from book reports.

**For each case, document:**

```
## Case: [name/situation]

### Context
[Who, what, when, where — the specific situation]

### What They Did
[Step-by-step actions, using the master's techniques]

### What Would Normally Happen
[The typical/mediocre approach for contrast]

### Result
[What happened — with specific data if available]

### Why It Worked
[Connect back to the methodology]
```

**Target:** 2-3 detailed cases minimum.

---

### Phase 5: Identify Limitations

Every methodology has blind spots. A good researcher finds them.

**Questions to answer:**
1. What contexts does this approach NOT work for?
2. What did the master assume that may not apply to you?
3. What have critics said? (Even unfair criticism reveals something)
4. What's HARD about implementing this? (It's easy to read, hard to do)
5. How has the methodology evolved or been refined?

```
Example (Chris Voss limitations):
- Assumes negotiation is adversarial (not collaborative)
- Heavy reliance on verbal communication (less useful for written negotiation)
- Some techniques feel manipulative if overused (mirroring especially)
- FBI hostage context = high stakes, binary outcomes. Business is often about
  ongoing relationships, not one-time deals.
```

---

### Phase 6: Synthesize into Actionable Output

Transform research into something usable. The format depends on the user's goal:

#### Option A: For Skill Creation (handoff to skill-creator)

```markdown
## Master Research: [Name]

### Who They Are
[One paragraph — why this person is worth learning from]

### Core Methodology
[The 1-3 sentence framework]

### Key Techniques for Skill Encoding
| # | Technique | Do This | Not This | When to Apply |
|---|----------|---------|---------|---------------|
| 1 | [name] | [action] | [anti-pattern] | [condition] |
| 2 | [name] | [action] | [anti-pattern] | [condition] |
| ... | ... | ... | ... | ... |

### Mental Models to Encode
- [model 1 + how it changes behavior]
- [model 2 + how it changes behavior]

### Warning: Common Misapplications
- [mistake 1] → [correction]
- [mistake 2] → [correction]

### Sources
- [Primary source 1 with link]
- [Primary source 2 with link]

---

Ready to encode into a skill. Handing off to skill-creator.
```

#### Option B: For Reference (knowledge card)

```markdown
## [Master Name]: [Domain] Methodology Card

**Who:** [one-line]
**Best known for:** [one-line]
**Core idea:** [one sentence]

### The Framework
[Diagram or structured description]

### Quick Reference
| Situation | Do This |
|-----------|---------|
| [scenario] | [action] |
| [scenario] | [action] |

### Must-Read/Watch
1. [Primary source — their best single work]
2. [Secondary source — best explanation of their method]

### When to Use This Approach
✅ [good context]
❌ [poor context]
```

---

### Phase 7: Offer Next Steps

After delivering the research, offer:

```
What would you like to do with this research?
1. Turn it into a skill (via skill-creator)
2. Compare it with another master's approach
3. Add it to the methodology registry
4. Dig deeper into a specific technique
```

---

## Research Quality Checklist

Before delivering research, verify:

**Source Quality:**
- [ ] At least 3 primary sources consulted (the master's own words)?
- [ ] At least 2 real cases found (methodology in action)?
- [ ] Critiques or limitations identified?
- [ ] Sources recent enough to be relevant?

**Extraction Quality:**
- [ ] Core methodology expressible in 1-3 sentences?
- [ ] At least 5 specific, actionable techniques identified?
- [ ] Each technique has a concrete example?
- [ ] Mental models articulated, not just quoted?

**Output Quality:**
- [ ] Can someone apply at least one technique after reading?
- [ ] Are limitations honestly stated?
- [ ] Is the context clear (when to use, when not to use)?
- [ ] Would the master themselves recognize this as their approach?

---

## Example: Full Research Flow

**User:** "Research how Jensen Huang manages and leads"

### Phase 1 — Identify:
```
Master: Jensen Huang
Known for: CEO of NVIDIA, 40+ direct reports, no 1:1s
Context: High-growth tech company, 30+ years as CEO
Want: Leadership principles applicable to technical founders
```

### Phase 2 — Find primary sources:
1. Stanford GSB interview (2024) — 80 min, direct
2. GTC keynote Q&A — multiple years
3. Acquired podcast interview (2023) — 3 hours
4. Employee accounts (Glassdoor, Blind, Twitter)
5. Critique: "Does Jensen's style only work at NVIDIA?"

### Phase 3 — Extract:

**Core Framework:** "Leadership by System Design, Not Management"
NVIDIA isn't managed — it's designed. Jensen built a system where
information flows directly to him without management layers filtering it.

**Key Techniques:**
| Technique | What It Is | When to Use | Example |
|-----------|-----------|-------------|---------|
| Flat Org with Direct Reports | 40-50 people report directly. No 1:1s | High-trust, high-competence teams | Every direct report knows they can walk into his office |
| "I Don't Give Feedback, I Give Perspective" | He never says "this is wrong." He says "here's how I see it" | When coaching senior leaders | After a presentation: "Here's what I understood from your talk..." |
| Reasoning Out Loud | He thinks through problems in front of the team | Strategic decisions | "Let me think about this. If we go left, then... If we go right..." |
| No Status Reports | Everyone has access to all information. No one prepares updates for him | Flat information flow | He reads everything directly, no middle-management summaries |
| Public Accountability | Praises and critiques in group settings, not private | Building shared standards | "That presentation didn't answer the question. Here's what was missing..." |

**Mental Models:**
- Information is the product of leadership. The leader's job is to ensure information flows at full fidelity.
- Layers of management are information filters. Each layer degrades the signal. Remove as many as possible.
- Strategy = a bet on what will matter. Articulate it clearly so everyone can align their own decisions to it.

**Limitations:**
- Requires exceptional talent density (NVIDIA's hiring bar)
- 40 direct reports only works if each is a senior leader who doesn't need daily guidance
- Public critique style can backfire in low-trust or less confident cultures
- His style may not scale to turnaround or crisis situations that need command-and-control

### Phase 6 — Synthesize:
[Delivers structured research output, offers next steps]

---

## Integration with SkillForge Ecosystem

```
skillforge (broad search) → master-research (deep dive on one expert) → skill-creator (encode)
```

When skillforge identifies a master worth studying in depth, master-research takes over for the deep dive. The research output feeds directly into skill-creator for skill generation.

---

## Core Principles

1. **Primary sources over summaries** — The master's own words, always
2. **Techniques over philosophies** — Extract what they DO, not just what they BELIEVE
3. **Cases over claims** — Real examples prove the methodology works
4. **Limitations are honest** — Every methodology has blind spots. Find them.
5. **Actionable output** — Research should produce something someone can USE, not just know
