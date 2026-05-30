---
name: skill-improver
description: Iteratively improve AI skills based on evaluation feedback or real usage data. Use after skill-evaluator identifies issues, or when users report problems. Triggered by "improve this skill", "refine my skill based on feedback", "fix the issues in this skill."
model: opus
---

# Skill Improver

Iteratively refine AI skills based on structured evaluation, user feedback, or real-world usage data. Closes the feedback loop between skill creation and skill performance.

## When to Use

- After skill-evaluator has scored a skill and identified issues
- When users report a skill isn't working well
- When you want to improve a skill based on usage patterns
- When adapting a skill for a new context or audience
- As part of continuous improvement cycles

## Improvement Process

### Step 1: Gather Feedback Sources

Collect all available feedback:

1. **Evaluation report** (from skill-evaluator) — Most structured source
2. **User feedback** — "It doesn't work for X," "It gives bad advice when Y"
3. **Usage data** — What inputs cause failures? What do users override?
4. **Comparison** — How does this skill compare to similar skills?

Prioritize issues by:
- **Severity:** Does it cause wrong output? (Critical) Or suboptimal output? (Important)
- **Frequency:** Does it affect every use? (High) Or edge cases only? (Low)
- **Fix complexity:** Quick fix? (Easy) Or requires restructuring? (Heavy)

### Step 2: Diagnose Root Cause

Don't just patch symptoms — find why the issue exists.

**Diagnostic questions:**
1. Is the core methodology wrong, or just poorly expressed?
2. Are the cases this skill learned from insufficient or biased?
3. Is the issue structural (missing section) or content (wrong instruction)?
4. Would more cases help, or better distillation of existing cases?

**Root cause patterns:**
| Symptom | Likely Root Cause |
|---------|------------------|
| Generic, unhelpful output | Insufficient golden cases studied |
| Repeats common mistakes | No failure cases in training data |
| Works only in narrow scenarios | Cases from single source/domain |
| Correct but bland output | Missing "why" explanations |
| Users ignore instructions | Too long, poor structure |
| Good advice, wrong context | Missing "when to use" branching |

### Step 3: Plan Improvements

Map each issue to an improvement action:

| Issue Type | Action |
|-----------|--------|
| Missing failure cases | Search for more failure cases — find "common mistakes," "what not to do" examples |
| Weak golden cases | Search for better practitioners — find people with demonstrated results |
| Poor structure | Reorganize using output template from skillforge `references/output-templates.md` |
| Abstract principles | Convert each to concrete do/don't pairs |
| Missing self-check | Add verification section from template |
| Anti-pattern detected | Apply the fix from skillforge `references/anti-patterns.md` |
| Low clarity score | Simplify sentences, add visual hierarchy |
| Low coverage score | Add failure modes, edge cases, recovery |

**Improvement plan format:**
```markdown
## Improvement Plan for [skill-name]

### Target Scores
| Dimension | Current | Target | Actions |
|-----------|---------|--------|---------|
| Clarity | [X] | [Y] | [what to change] |
| Specificity | [X] | [Y] | [what to change] |
| Actionability | [X] | [Y] | [what to change] |
| Coverage | [X] | [Y] | [what to change] |
| Testability | [X] | [Y] | [what to change] |

### Changes to Make
1. **[Change description]**
   - **Section:** [where]
   - **Before:** [current text]
   - **After:** [improved text or approach]
   - **Expected impact:** [which dimension improves, by how much]

2. ...
```

### Step 4: Execute Improvements

Apply changes in priority order:

1. **Critical fixes first** (prevent wrong output)
2. **Coverage improvements** (add failure modes)
3. **Clarity and structure** (improve usability)
4. **Specificity and examples** (improve quality)
5. **Testability** (add validation)

**Rules for applying changes:**
- Make one change at a time when possible
- Preserve what's already working
- Keep the skill's original voice and philosophy
- Credit new sources if adding cases
- Update version/date in the skill metadata

### Step 5: Validate Improvements

After changes:
1. Re-run skill-evaluator to get new scores
2. Compare old vs new scores — did each dimension improve?
3. Test with scenarios that previously failed
4. Verify no regression on scenarios that previously worked

### Step 6: Document the Iteration

```markdown
## Iteration Log: [skill-name] v[old] → v[new]

### Changes Made
- Added: [what was added]
- Changed: [what was modified]
- Removed: [what was removed]

### Score Impact
| Dimension | v[old] | v[new] | Δ |
|-----------|--------|--------|---|
| Clarity | X | Y | +Z |
| ... | | | |

### Test Results
- Previously failing scenario: [now passes / still needs work]
- No regression on: [list of preserved behaviors]
```

---

## Improvement Patterns

### Pattern A: The Specificity Boost
**Problem:** Skill has good principles but vague examples.
**Fix:** Return to cases. Find 3-5 more golden examples. Replace generic illustrations with specific ones from real cases.

### Pattern B: The Failure Injection
**Problem:** Skill only covers the happy path.
**Fix:** Search specifically for failure cases. Add a "Common Mistakes" section with 5+ patterns, each with:
- The mistake (with real example)
- Why it happens
- How to avoid it
- How to recover if you make it

### Pattern C: The Structure Overhaul
**Problem:** Good content, terrible organization.
**Fix:** Load the output template for that skill type from `output-templates.md`. Reorganize existing content into the template structure. Add missing sections.

### Pattern D: The Clarity Pass
**Problem:** Instructions are correct but hard to follow.
**Fix:** 
1. Replace passive voice with imperative
2. Break long paragraphs into bullet lists
3. Add decision trees for complex workflows
4. Use tables for comparison rules
5. Add "In short:" summaries after long sections

### Pattern E: The Testability Addition
**Problem:** Can't verify if the skill works.
**Fix:** Add 2-3 test scenarios with:
- Input description
- Expected behavior
- Common wrong outputs to watch for
- Self-check questions for the AI to verify its output

---

## Example: Improving a Cold Outreach Skill

**Feedback:** "The skill produces emails that sound like templates. Reply rates are low."

### Step 1 — Gather:
- Skill-evaluator report: Specificity 3/5, Coverage 2/5
- User feedback: "All emails sound the same — generic and salesy"

### Step 2 — Diagnose:
- Root cause: Golden cases were from marketing blogs, not actual top SDRs
- Missing: Real email examples with reply data, failure cases

### Step 3 — Plan:
```
Target: Specificity 3→5, Coverage 2→4

Changes:
1. Replace hypothetical examples with real SDR emails (with permission)
2. Add 5 failure patterns with before/after rewrites
3. Add subject line A/B test data from real campaigns
```

### Step 4 — Execute:
Added real examples, before/after rewrites, subject line data.

### Step 5 — Validate:
- Skill-evaluator re-score: 21/25 (was 16/25)
- Test with real scenarios: emails sound distinct and personal

### Step 6 — Document:
```markdown
## Iteration Log: cold-outreach v1.0 → v1.1

### Score Impact
| Dimension | v1.0 | v1.1 | Δ |
|-----------|------|------|---|
| Clarity | 4 | 4 | 0 |
| Specificity | 3 | 5 | +2 |
| Actionability | 4 | 4 | 0 |
| Coverage | 2 | 4 | +2 |
| Testability | 3 | 4 | +1 |
| **TOTAL** | **16** | **21** | **+5** |
```

---

## Connection to SkillForge Ecosystem

```
skillforge (create) → skill-evaluator (score) → skill-improver (refine)
         ↑                                              |
         └────────────── feedback loop ─────────────────┘
```

1. **skillforge** creates the initial skill from expert cases
2. **skill-evaluator** scores it against the quality rubric
3. **skill-improver** fixes the weakest dimensions
4. Loop back to evaluator for re-scoring
5. Continue until score ≥ 18 or user is satisfied

## Rules

1. **Don't break what works** — Preserve strengths while fixing weaknesses
2. **Target the biggest gap** — Fix the weakest dimension first for maximum score gain
3. **Return to cases, not theory** — When in doubt, find more practice experts
4. **Document every iteration** — Track what changed and why
5. **Test before and after** — Validate that fixes actually improve output
6. **Know when to stop** — 18+ is "strong," 22+ is "exceptional." Don't over-optimize
7. **Sometimes rebuild** — If score < 8, starting fresh with better cases is faster than fixing
