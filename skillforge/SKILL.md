---
name: skillforge
description: Create high-quality AI skills by learning from top practitioners. Finds golden examples, failure cases, and before/after contrasts before generating. Use when creating a new skill, building a skill for a specific task, or when asked to "help me create a skill for..."
model: opus
---

# SkillForge

Create skills like a seasoned practitioner, not like an academic.

## When to Use

- When the user asks to create a new skill ("help me create a skill for...", "I want a skill that...")
- When the user describes a task and wants it turned into a reusable skill
- When an existing skill doesn't cover the user's need and a custom one is required
- Runs **before** skill-creator to ground the skill in proven practitioner methodologies
- NOT when: an existing skill already covers the need (use search-skill first)

## Core Philosophy

**Skills are for doing. Knowledge for doing comes from practice, not from theory.**

### Practice Experts vs Theory Experts

| Practice Expert | Theory Expert |
|-----------------|---------------|
| **The person who does it best** | The person who wrote the book |
| Top-performing salesperson | Sales methodology author |
| Customer support rep who delights clients | Customer service trainer |
| Interviewer who consistently hires A-players | Interview technique book author |
| Listener who makes people want to keep talking | Psychology professor |

**We seek practice experts — the people who actually do the thing best.** Theory experts are secondary; they help explain WHY something works, not WHAT to do.

```
❌ WRONG: Find authors → Extract their theories → Generate skill
✅ RIGHT: Find top practitioners → Study what they actually do → Use theory to explain why
```

---

## Workflow

### Phase 1: Narrow the Task

Ensure the task is specific enough to find meaningful cases. Overly broad tasks yield shallow skills.

**Narrowing questions:**
1. What domain does this belong to? (writing, sales, engineering, etc.)
2. What specific scenario? (B2B cold emails, not just "emails")
3. What constraints exist? (length, format, audience, tools)
4. Can you describe a concrete situation where this skill would be used?

**Narrowing test:**
- Can you find real examples of this specific scenario?
- Can you distinguish "done well" from "done poorly"?

If the answer to either is NO, continue narrowing.

---

### Phase 2: Find Cases (THE MOST IMPORTANT STEP) ⚠️

**This is the core of the entire process. Find cases FIRST, don't find theory first.**

#### 2.1 Find GOLDEN Cases (how the best practitioners do it)

**Key insight: Find people who DO it best, not people who WRITE about it best.**

Search strategy:
```
"[specific task] top performer example"
"[specific task] how the best [role] do it"
"[specific task] real example from [top company]"
"who is the best at [specific task]"
"[specific task] case study success"
"[specific task] behind the scenes [practitioner]"
"[specific task] interview with [top performer]"
```

Target: Find 3-5 real cases of practitioners who are widely recognized as excellent.

Signals of a genuine practice expert:
- Has specific results/data ("increased reply rate from 3% to 32%")
- Recognized by peers ("everyone on the team learns from her")
- Shares concrete details, not vague principles
- May NOT have written a book — many top practitioners don't

For each golden case, document:
- What exactly did this person do?
- How did their approach differ from the typical approach?
- What specific details made their execution better?

#### 2.2 Find FAILURE Cases (what goes wrong) ⚠️ Equally Important

Search strategy:
```
"[specific task] common mistakes"
"[specific task] what not to do"
"[specific task] worst practices"
"[specific task] I learned the hard way"
"[specific task] why it failed"
"[specific task] mistakes beginners make"
"[specific task] before after fix"
```

Target: Find 5+ common failure patterns with real examples.

For each failure case, document:
- What exactly went wrong?
- Why was this approach ineffective?
- What should have been done instead?

#### 2.3 Find CONTRASTS (effective vs ineffective)

Search strategy:
```
"[specific task] good vs bad example"
"[specific task] before after rewrite"
"[specific task] do this not that"
"[specific task] comparison effective ineffective"
```

Contrast is the most valuable teaching material — it directly shows the difference.

**Case Collection Checklist:**
- [ ] Found 3+ golden cases with concrete details?
- [ ] Found 5+ common failure patterns with real examples?
- [ ] Found direct before/after comparisons?
- [ ] Cases are specific enough to see actual techniques?

If any answer is NO, keep searching.

---

### Phase 3: Distill Patterns

Extract patterns FROM the cases, not from theoretical frameworks.

**Method:**

1. **List what all golden cases have in common**
   - What did they all do?
   - What shared characteristics do they have?
   - Why are these approaches effective?

2. **List what all failure cases have in common**
   - What mistakes recur?
   - What's the root cause behind these mistakes?
   - How can each be avoided?

3. **Create a contrast table**

```
| Effective | Ineffective | Why |
|-----------|-------------|-----|
| [specific technique A] | [corresponding mistake] | [reason] |
| [specific technique B] | [corresponding mistake] | [reason] |
```

**Distillation Checklist:**
- [ ] Does each effective pattern have a corresponding ineffective pattern?
- [ ] Can you state each as "Do X, not Y" in one sentence?
- [ ] Are patterns derived from cases, not from theoretical assumptions?

---

### Phase 4: Add Theory (Optional — for Explanation)

**Theory experts (authors) appear at this stage, as support only.**

Theory's role is to EXPLAIN why the practice works, not to PRESCRIBE what to do.

Search strategy:
```
"why [effective pattern] works psychology"
"[domain] science behind [technique]"
"[expert author] explains [phenomenon]"
```

The value of theory:
- Provides "why" explanations for practical patterns
- Helps users understand the logic behind the technique
- Adds credibility through established frameworks

**Important:**
- Theory is supplementary, not the main content
- If no good theory is found, that's fine — the practice cases are the evidence
- Don't let theory overshadow practice. The skill's core should be "how the best do it," not "what the book says"

---

### Phase 5: Generate the Skill

Transform distilled patterns into skill instructions.

**Generation principles:**

1. **Lead with cases**
   - Every rule should have concrete "do this" and "not this" examples
   - Examples come from real cases, not fabrication

2. **Action first, explanation second**
   - Users need to know WHAT to do before WHY
   - Put theoretical explanations after instructions

3. **Failure cases are as important as golden cases**
   - Knowing "what NOT to do" is often more immediately useful
   - Include dedicated "Common Mistakes" or "Avoid" sections

4. **Stay specific**
   - Replace abstract principles ("be empathetic") with concrete actions ("when the user says X, respond with Y not Z")

5. **Use the appropriate output template**
   - Load `skillforge/references/output-templates.md` for type-specific templates
   - Follow the template structure for consistent quality

6. **Always generate a CLAUDE.md alongside the skill** ⚠️
   - Every generated skill gets a companion `CLAUDE.md` so it works as a standalone project
   - The CLAUDE.md should be minimal but complete: what the skill does, when it triggers, its model, and any dependencies
   - This makes the generated skill immediately usable when someone clones or copies its directory

**CLAUDE.md template for generated skills:**
```markdown
# [Skill Name]

[One-line description of what this skill does.]

## When This Skill Activates

- [Trigger condition 1]
- [Trigger condition 2]
- NOT when: [boundary]

## How It Works

[2-3 sentences on the methodology — what approach this skill takes]

## Dependencies

- [Any other skills or tools required]
- Model: [opus/sonnet]

## Quality

Skill-evaluator score: [X]/25 — [rating]
Generated with [SkillForge](https://github.com/ihgoa501-stack/skillforge)
```

**Hand off to skill-creator:**
```
Use the Skill tool with: skill: "skill-creator:skill-creator"
```

Ensure the skill-creator receives:
- The task type (from skill taxonomy)
- Golden cases with specific techniques
- Failure cases with anti-patterns
- The contrast table (effective vs ineffective)
- The output template for that skill type
- Quality rubric criteria
- The CLAUDE.md template (filled in)

---

### Phase 6: Validate with Cases

Test the generated skill against real scenarios.

1. Take a golden case — can the skill produce output of similar quality?
2. Trigger a failure pattern — does the skill recognize and avoid it?
3. Have the user test with their own real scenario

If validation fails, return to Phase 2 and find more cases.

---

## Reference Files

Load these on demand as needed:

| Reference | When to Load |
|-----------|-------------|
| `skillforge/references/methodology-registry.md` | When you need expert frameworks for a specific domain |
| `skillforge/references/skill-taxonomy.md` | When determining the skill type for template selection |
| `skillforge/references/quality-rubric.md` | When evaluating or self-checking a generated skill |
| `skillforge/references/output-templates.md` | When generating the final skill output |
| `skillforge/references/anti-patterns.md` | When you need to check for common skill-creation mistakes |

---

## Search Strategy Comparison

### ❌ Theory-Heavy Search (Avoid)
```
"[domain] best practices expert"
"[domain] framework methodology"
"[expert name] methodology"
"[domain] principles and frameworks"
```
These return book summaries, academic frameworks, abstract principles — all "book knowledge."

### ✅ Practice-First Search (Use)
```
"[task] real example case study"
"[task] common mistakes what not to do"
"[task] before after comparison"
"[task] I learned the hard way"
"how [top company] does [task]"
"[task] top performer technique"
```
These return real cases, failure lessons, and contrasts — all "practice knowledge."

---

## Quality Checklist

Before finalizing any skill, verify:

**Case Quality:**
- [ ] Found enough golden cases (3+ with concrete details)?
- [ ] Found enough failure cases (5+ common mistakes)?
- [ ] Cases from real practice, not theoretical assumptions?
- [ ] Cases specific enough to see actual techniques?

**Pattern Quality:**
- [ ] Effective/ineffective patterns form clear contrasts?
- [ ] Each rule has a "do this" and "don't do this" pair?
- [ ] Patterns distilled from cases, not derived from theory?

**Skill Quality:**
- [ ] Skill contains specific examples, not just abstract principles?
- [ ] Both golden and failure cases are represented?
- [ ] Tested against real scenarios?

**Final Test:**
- [ ] Does this skill sound like a seasoned practitioner, or someone who read a lot of books?

---

## Example: Building a Cold Outreach Skill

### ❌ Wrong Approach

1. Search "email marketing methodology"
2. Find Seth Godin's Permission Marketing framework
3. Find Ogilvy's advertising principles
4. Extract principles, generate skill
5. **Result:** Generic advice about "know your audience" — unusable

### ✅ Right Approach

1. Search "cold email top performer SDR example"
2. Search "cold email reply rate case study"
3. Search "cold email common mistakes what not to do"
4. Search "cold email before after rewrite"
5. Find real practitioners with 30%+ reply rates:
   - One SDR who personalizes based on recent LinkedIn activity
   - One who uses a "problem-first, solution-second" structure
   - One who A/B tested 200+ subject lines
6. Find common failures:
   - "I hope this finds you well" (instant delete)
   - Feature-dumping in paragraph 1
   - Asking for time without stating value
   - Generic personalization ("saw you work at [company]")
7. Distill patterns into concrete do/don't pairs:
   - ✅ "Noticed your team is hiring ML engineers — we helped [similar co] reduce time-to-hire by 40%"
   - ❌ "I'd love to schedule a demo of our amazing ATS platform..."
8. Generate skill with specific templates, word-choice guidance, and anti-patterns
9. **Result:** A skill that produces emails resembling those from top SDRs

---

## Core Principles to Remember

1. **Find the best practitioners, not the best authors** — Practice experts > Theory experts
2. **Cases first, theory second** — Theory only explains what practice reveals
3. **Golden + Failure cases** — Knowing what NOT to do is often more practical than knowing what TO do
4. **Contrast is the best teacher** — "Do this vs. do that" comparisons teach fastest
5. **Skills are for DOING** — The output should feel like a battle-tested veteran, not a well-read student
