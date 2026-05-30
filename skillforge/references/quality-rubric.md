# Quality Rubric

A standardized 5-dimension scoring framework for evaluating AI skills. Use this to assess generated skills before delivery and to guide iterative improvement.

---

## The 5 Dimensions

### 1. Clarity
**Can a new user understand what to do on first reading?**

| Score | Description |
|-------|-------------|
| 5 (Excellent) | Crystal clear. No ambiguity. A new user could follow instructions immediately |
| 4 (Good) | Clear with minor ambiguities in 1-2 places |
| 3 (Adequate) | Understandable but requires re-reading some sections |
| 2 (Poor) | Confusing in multiple places. Overly abstract |
| 1 (Unusable) | Cannot determine what actions to take |

**Evaluation questions:**
- Are instructions in imperative voice (do this, not "you should do this")?
- Is jargon defined or avoided?
- Are sentence structures simple and direct?
- Could someone tired and distracted still follow this?

---

### 2. Specificity
**Are there concrete examples, not just abstract principles?**

| Score | Description |
|-------|-------------|
| 5 (Excellent) | Rich with specific do/don't examples from real cases |
| 4 (Good) | Has examples but some are generic or hypothetical |
| 3 (Adequate) | Mostly principles with occasional examples |
| 2 (Poor) | Abstract advice without concrete illustrations |
| 1 (Unusable) | Pure theory, nothing to operationalize |

**Evaluation questions:**
- Does each principle have a concrete "do this" example?
- Does each principle have a corresponding "don't do this" example?
- Are examples derived from real cases, not fabricated?
- Would a user know exactly what words to use/avoid?

---

### 3. Actionability
**Does each instruction tell you exactly what action to take?**

| Score | Description |
|-------|-------------|
| 5 (Excellent) | Every instruction is directly executable. Step-by-step where needed |
| 4 (Good) | Mostly actionable with a few vague directives |
| 3 (Adequate) | Mix of actionable steps and general advice |
| 2 (Poor) | Mostly "be better at X" style advice |
| 1 (Unusable) | Purely philosophical — nothing to actually do |

**Evaluation questions:**
- Can each instruction be translated to a specific action?
- Are there step-by-step sequences for complex tasks?
- Are decision points clear (if X, then Y)?
- Would someone know they'd "done it right"?

---

### 4. Coverage
**Are both success patterns AND failure patterns addressed?**

| Score | Description |
|-------|-------------|
| 5 (Excellent) | Comprehensive: golden cases, failure cases, edge cases, AND recovery strategies |
| 4 (Good) | Covers success + failure, minor gaps in edge cases |
| 3 (Adequate) | Success patterns covered, failure patterns mentioned but light |
| 2 (Poor) | Only covers the "happy path" |
| 1 (Unusable) | Single-perspective, no awareness of what can go wrong |

**Evaluation questions:**
- Are common failure modes explicitly called out?
- Is there a "Common Mistakes" or "What to Avoid" section?
- Are edge cases addressed (unusual inputs, constraints)?
- Is there guidance for when things go wrong?

---

### 5. Testability
**Can you verify the skill works with real scenarios?**

| Score | Description |
|-------|-------------|
| 5 (Excellent) | Includes test cases with expected outputs. Clear pass/fail criteria |
| 4 (Good) | Testable with provided scenarios, criteria somewhat implicit |
| 3 (Adequate) | Could design tests but none provided |
| 2 (Poor) | Hard to determine if the skill is working correctly |
| 1 (Unusable) | No way to validate output quality |

**Evaluation questions:**
- Are there example scenarios to test against?
- Do test cases include expected behavior/output?
- Is there a self-check mechanism built into the skill?
- Can failures be clearly distinguished from successes?

---

## Composite Scoring

### Overall Quality Levels

| Total Score | Rating | Action |
|-------------|--------|--------|
| 22-25 | ⭐⭐⭐⭐⭐ Exceptional | Ready to ship |
| 18-21 | ⭐⭐⭐⭐ Strong | Minor refinements |
| 13-17 | ⭐⭐⭐ Adequate | Needs improvement in weak areas |
| 8-12 | ⭐⭐ Weak | Significant revision needed |
| 5-7 | ⭐ Poor | Rebuild from foundation |

### Quick Assessment Matrix

```
Skill: [name]
Type: [from taxonomy]

Clarity:       [1-5]  Notes: ___
Specificity:   [1-5]  Notes: ___
Actionability: [1-5]  Notes: ___
Coverage:      [1-5]  Notes: ___
Testability:   [1-5]  Notes: ___
─────────────────────
TOTAL:         [sum]

Strongest dimension: [name]
Weakest dimension:   [name]
Priority fix:        [what to improve first]
```

---

## Dimension Flags

These flags indicate specific issues within each dimension:

### Clarity Flags
- 🔴 **Jargon overload** — domain terms used without definition
- 🔴 **Passive swamp** — excessive passive voice obscuring who does what
- 🟡 **Run-on instructions** — multiple steps buried in one paragraph
- 🟡 **Assumed knowledge** — references concepts without context

### Specificity Flags
- 🔴 **Abstract-only** — principles without examples ("be empathetic")
- 🔴 **Hypothetical examples** — made-up scenarios, not real cases
- 🟡 **Single example** — one example per concept (need at least 2)
- 🟡 **Missing anti-example** — says what to do, not what to avoid

### Actionability Flags
- 🔴 **Vague directives** — "consider," "think about," "be mindful of"
- 🔴 **Missing steps** — jumps from goal to outcome without process
- 🟡 **Undefined triggers** — doesn't say WHEN to take each action
- 🟡 **No completion criteria** — unclear when you're "done"

### Coverage Flags
- 🔴 **Happy-path only** — no failure modes or edge cases
- 🔴 **Missing recovery** — identifies problems but not how to fix them
- 🟡 **Narrow scope** — only works for one specific scenario
- 🟡 **No constraints** — doesn't say when NOT to use the skill

### Testability Flags
- 🔴 **No test cases** — no scenarios provided to validate
- 🔴 **Subjective-only criteria** — "good judgment" as the standard
- 🟡 **Unclear expected output** — can't tell correct from incorrect
- 🟡 **No self-check** — skill can't validate its own output

---

## Using the Rubric

### For skill creators (self-check)
Before finalizing, score your own skill. If any dimension scores below 3, revise before delivery.

### For skill-evaluator (formal review)
Use this rubric as the evaluation standard. Score each dimension with specific evidence. See `skills/skill-evaluator/SKILL.md`.

### For skill-improver (iterative refinement)
Target the weakest dimension first. Each iteration should raise at least one score by 1 point. See `skills/skill-improver/SKILL.md`.

---

## Version History

- v1.0 (2026-05): Initial rubric with 5 dimensions, scoring levels, and flags
