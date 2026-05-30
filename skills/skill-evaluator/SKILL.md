---
name: skill-evaluator
description: Evaluate the quality of AI skills against a standardized 5-dimension rubric. Use after creating a skill, before shipping, or when reviewing skills. Triggered by "evaluate this skill", "review my skill", "score this skill."
model: sonnet
---

# Skill Evaluator

Evaluate AI skills against the SkillForge 5-dimension quality rubric. Provides scored feedback with specific, actionable improvement recommendations.

## When to Use

- After generating a skill via skillforge or skill-creator
- When asked to "review," "evaluate," or "score" a skill
- Before publishing or sharing a skill
- When comparing multiple versions of a skill
- As part of the skill-improver feedback loop

## Evaluation Process

### Step 1: Load the Skill

Read the skill file completely. Note:
- Overall structure and organization
- Presence/absence of key sections
- Writing style and clarity
- Example quality and quantity

### Step 2: Score Each Dimension

Use the rubric defined in `skillforge/references/quality-rubric.md`. Score each dimension 1-5:

#### Dimension 1: Clarity (1-5)
> Can a new user understand what to do on first reading?

**Check:**
- Instructions in imperative voice?
- Jargon defined or avoided?
- Sentence structures simple and direct?
- Visual hierarchy aids scanning?

#### Dimension 2: Specificity (1-5)
> Are there concrete examples, not just abstract principles?

**Check:**
- Each principle has a concrete "do this" example?
- Each principle has a "don't do this" example?
- Examples come from real cases?
- User knows exactly what words/actions to use?

#### Dimension 3: Actionability (1-5)
> Does each instruction tell you exactly what action to take?

**Check:**
- Each instruction translatable to a specific action?
- Step-by-step sequences where needed?
- Decision points clear (if X, then Y)?
- Completion criteria clear (user knows when "done")?

#### Dimension 4: Coverage (1-5)
> Are both success patterns AND failure patterns addressed?

**Check:**
- Common failure modes explicitly called out?
- "Common Mistakes" or "What to Avoid" section present?
- Edge cases addressed?
- Recovery guidance when things go wrong?

#### Dimension 5: Testability (1-5)
> Can you verify the skill works with real scenarios?

**Check:**
- Example scenarios to test against?
- Expected behavior/output described?
- Self-check mechanism built in?
- Clear pass/fail distinction?

### Step 3: Assign Dimension Flags

For dimensions scoring 3 or below, identify specific flags (from quality-rubric.md):
- Clarity flags: Jargon overload, Passive swamp, Run-on instructions, Assumed knowledge
- Specificity flags: Abstract-only, Hypothetical examples, Single example, Missing anti-example
- Actionability flags: Vague directives, Missing steps, Undefined triggers, No completion criteria
- Coverage flags: Happy-path only, Missing recovery, Narrow scope, No constraints
- Testability flags: No test cases, Subjective-only criteria, Unclear expected output, No self-check

### Step 4: Calculate Composite Score

```
Total Score = Clarity + Specificity + Actionability + Coverage + Testability

Rating:
22-25: ⭐⭐⭐⭐⭐ Exceptional — Ready to ship
18-21: ⭐⭐⭐⭐ Strong — Minor refinements before shipping
13-17: ⭐⭐⭐ Adequate — Needs improvement in weak areas
8-12:  ⭐⭐ Weak — Significant revision needed
5-7:   ⭐ Poor — Rebuild from foundation recommended
```

### Step 5: Generate Report

```markdown
# Skill Evaluation: [skill-name]

## Overall: [score]/25 — [rating]

### Dimension Scores

| Dimension | Score | Assessment |
|-----------|-------|------------|
| Clarity | [1-5] | [one-line assessment] |
| Specificity | [1-5] | [one-line assessment] |
| Actionability | [1-5] | [one-line assessment] |
| Coverage | [1-5] | [one-line assessment] |
| Testability | [1-5] | [one-line assessment] |

### Strengths
- **[dimension]:** [what's working well, with example from skill]
- ...

### Priority Improvements

#### 🔴 Critical (score 1-2)
1. **[dimension — flag]:** [specific issue]
   - **Current:** [what the skill does now]
   - **Should be:** [what it should do]
   - **How to fix:** [concrete action]

#### 🟡 Important (score 3)
1. **[dimension — flag]:** [specific issue]
   - **How to fix:** [concrete action]

#### 🟢 Nice to Have (score 4)
- **[dimension]:** [minor suggestion]

### Anti-Patterns Detected
- [AP-#] [anti-pattern name] — [where it appears in the skill]

### Next Steps
1. Fix critical issues first (affect score most)
2. Address important issues for robustness
3. Consider nice-to-haves for polish
4. Re-evaluate after changes
```

### Step 6: Offer Improvement Path

After the report, offer:
```
Would you like me to use skill-improver to address these issues?
I can focus on the [weakest dimension] first.
```

## Example Evaluation

**Skill being evaluated:** A cold-email-writing skill

```markdown
# Skill Evaluation: cold-outreach

## Overall: 16/25 — ⭐⭐⭐ Adequate

### Dimension Scores

| Dimension | Score | Assessment |
|-----------|-------|------------|
| Clarity | 4 | Well-structured, minor jargon in one section |
| Specificity | 3 | Has examples but they feel hypothetical |
| Actionability | 4 | Clear steps, missing completion criteria |
| Coverage | 2 | Good success patterns, no failure cases |
| Testability | 3 | Scenarios present but no expected outputs |

### Strengths
- **Clarity:** "Subject Line Rules" section is scannable and direct
- **Actionability:** Step-by-step email structure is clear

### Priority Improvements

#### 🔴 Critical
1. **Coverage — Happy-path only:** No failure patterns addressed
   - **Current:** Only shows good email examples
   - **Should be:** Include common mistakes: feature-dumping, generic personalization, asking for time without value
   - **How to fix:** Add "Common Mistakes" section with 5+ failure examples and their corrections

#### 🟡 Important
1. **Specificity — Hypothetical examples:** Examples read as generic templates
   - **How to fix:** Replace with real case studies. Show actual emails that got replies vs ones that didn't
2. **Testability — No expected outputs:** Scenarios ask user to "write an email" but don't show what good looks like
   - **How to fix:** Add 2-3 test scenarios with example expected outputs

### Anti-Patterns Detected
- AP-5: The Missing "Don't" — no anti-examples anywhere
- AP-9: Skipping Failure Cases — only studied successful emails

### Next Steps
1. Add failure case section (biggest score gain)
2. Ground examples in real cases
3. Add expected outputs to test scenarios
```

## Rules

1. **Be specific, not vague** — Every criticism must point to a specific place in the skill
2. **Provide the fix, not just the problem** — Every issue gets a "how to fix"
3. **Balance is credible** — Call out strengths alongside weaknesses
4. **Prioritize ruthlessly** — Critical > Important > Nice to have
5. **Reference the rubric** — Tie every judgment to a specific rubric criterion
6. **Offer next step** — Always end with a clear action
