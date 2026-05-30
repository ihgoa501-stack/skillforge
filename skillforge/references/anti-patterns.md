# Anti-Patterns Catalog

A curated catalog of common failure modes when creating AI skills. Learn what to avoid — each anti-pattern includes a real example and the correct approach.

> Use this as a checklist before finalizing any skill. If your skill exhibits any of these, revise.

---

## Category 1: Structure Anti-Patterns

### AP-1: Wall of Text
**Symptom:** Skill is one long prose block with no sections, bullet points, or visual hierarchy.

**Why it fails:** The AI must parse dense text to find instructions. Important rules get lost.
```
❌ "When writing the email you should first consider the audience and their needs and then
   craft a subject line that captures attention while being honest about the content..."
```
**Fix:** Break into scannable sections with clear headings. Use tables for rules. Use bullets for lists.

---

### AP-2: Missing "When to Use"
**Symptom:** Skill jumps straight into process without saying what triggers it.

**Why it fails:** The AI doesn't know when to activate the skill, so it either never triggers or triggers incorrectly.

**Fix:** Add a clear "When to Use" section at the top:
```
## When to Use
- When the user asks for [specific task]
- When the input contains [signal]
- NOT when [boundary condition]
```

---

### AP-3: Template Without Rationale
**Symptom:** Provides an output template/format without explaining WHY each section exists.

**Why it fails:** The AI fills sections mechanically without understanding their purpose, producing correct-looking but hollow output.

**Fix:** After each template section, add "**Purpose:** [why this section matters and what makes it good]"

---

## Category 2: Content Anti-Patterns

### AP-4: Abstract Virtue Signaling
**Symptom:** Instructions like "be empathetic," "think strategically," "write clearly."

**Why it fails:** These are values, not instructions. The AI already "knows" to be empathetic — it needs to know HOW.

**Fix:** Replace every abstract virtue with concrete technique:
```
❌ "Write with empathy"
✅ "When the user describes a problem, first acknowledge the specific difficulty
    they mentioned before offering a solution. Use their own words."
```

---

### AP-5: The Missing "Don't"
**Symptom:** Skill tells you what TO do but never what NOT to do.

**Why it fails:** Users (and AIs) learn fastest through contrast. Without anti-examples, they repeat common mistakes.

**Fix:** For every "do this," add a "don't do this" pair:
```
✅ "Saw your post on Kafka migration — we helped Acme cut latency 60%."
❌ "I'd love to tell you about our amazing data platform..."
```

---

### AP-6: Hypothetical Examples
**Symptom:** Examples are clearly made up, generic, or too clean.

**Why it fails:** Real-world messiness is where skills prove their value. Sanitized examples don't prepare for reality.

**Fix:** Use examples from real cases. If you must adapt, preserve the messiness. Mark hypothetical examples honestly.

---

### AP-7: Single-Source Dogma
**Symptom:** Skill is built entirely on one expert's framework with no cross-validation.

**Why it fails:** Every framework has blind spots. Without cross-validation, the skill inherits those blind spots.

**Fix:** Cross-reference at least 2-3 sources. When they agree, note the consensus. When they disagree, present the trade-off.

---

## Category 3: Process Anti-Patterns

### AP-8: Theory-First Generation
**Symptom:** Skill starts with a theoretical framework and works down, rather than starting with cases and working up.

**Why it fails:** Skills built from theory feel academic. Skills built from cases feel practical.

**Fix:** Follow the Phase 2 → Phase 3 → Phase 4 order: cases first, patterns from cases, theory to explain.

---

### AP-9: Skipping Failure Cases
**Symptom:** Only golden examples were studied. No search for what goes wrong.

**Why it fails:** Knowing what NOT to do is often more immediately useful than knowing what to do. A skill without anti-patterns is half-finished.

**Fix:** Always search for common mistakes, failure stories, and "what I learned the hard way" content. Include at least 5 failure patterns.

---

### AP-10: Perfect-Condition Assumption
**Symptom:** Skill assumes ideal conditions: enough time, full information, cooperative participants.

**Why it fails:** Real situations are constrained. Skills that only work in perfect conditions fail when needed most.

**Fix:** Add a "When Constraints Are Tight" section:
```
## Working Under Constraints
- If you have < 5 minutes: [minimum viable approach]
- If information is incomplete: [how to proceed]
- If the other party is uncooperative: [alternative strategy]
```

---

## Category 4: Output Anti-Patterns

### AP-11: No Self-Check
**Symptom:** Skill produces output but provides no way to verify quality.

**Why it fails:** Without self-check, errors propagate. Neither the AI nor the user can tell if output is good.

**Fix:** Add a verification step at the end:
```
## Before Delivering, Verify:
- [ ] [checkable criterion 1]
- [ ] [checkable criterion 2]
If any fail, revise the [section] before proceeding.
```

---

### AP-12: Output Without Context
**Symptom:** Skill generates output (an email, a plan, a review) but doesn't explain the reasoning behind it.

**Why it fails:** The user can't learn from the output. They get a fish, not a fishing lesson.

**Fix:** Include reasoning alongside output:
```
## Output
[the generated artifact]

## Why This Approach
- [reasoning behind key choices]
- [alternatives considered and why rejected]
```

---

### AP-13: One-Size-Fits-All
**Symptom:** Skill has no branching logic — it does the same thing regardless of context.

**Why it fails:** Different situations need different approaches. A monolithic skill produces mediocre results across the board.

**Fix:** Add decision points:
```
## Choose Your Approach
- If [condition A]: use [approach 1]
- If [condition B]: use [approach 2]
- If unsure: [default with quick validation]
```

---

## Category 5: Meta Anti-Patterns (Creating the Creator)

### AP-14: Perfection Paralysis
**Symptom:** Endless research and refinement. Never reaching "good enough to ship."

**Why it fails:** A skill that never ships helps no one. Version 1.0 can be improved based on real usage.

**Fix:** Set a timebox. Ship when the quality rubric scores 18+. Improve iteratively.

---

### AP-15: Reinventing the Wheel
**Symptom:** Building a skill from scratch when an existing skill already covers 80% of the need.

**Why it fails:** Wasted effort. Duplicate skills fragment the ecosystem.

**Fix:** Always run search-skill first. If an existing skill covers most of the need, extend or wrap it rather than replacing it.

---

## Quick Diagnostic: Does Your Skill Have Anti-Patterns?

| Anti-Pattern | Quick Check |
|-------------|-------------|
| AP-1 Wall of Text | Can I scan the structure in 10 seconds? |
| AP-2 Missing When to Use | Is the trigger condition clearly stated? |
| AP-3 Template Without Rationale | Does each section explain WHY? |
| AP-4 Abstract Virtue | Search for "be [adjective]" — any matches? |
| AP-5 Missing Don't | Count do examples vs don't examples — balanced? |
| AP-6 Hypothetical Examples | Are examples sourced from real cases? |
| AP-7 Single Source | How many independent sources consulted? |
| AP-8 Theory-First | Did cases come before frameworks? |
| AP-9 Skipping Failures | How many failure patterns identified? |
| AP-10 Perfect Conditions | Is there a "working under constraints" section? |
| AP-11 No Self-Check | Is there a "before delivering, verify" section? |
| AP-12 Output Without Context | Does output include reasoning? |
| AP-13 One-Size-Fits-All | Are there branching decision points? |
| AP-14 Perfection Paralysis | Has this been timeboxed? |
| AP-15 Reinventing | Was search-skill run first? |

---

## Version History

- v1.0 (2026-05): Initial catalog with 15 anti-patterns across 5 categories
