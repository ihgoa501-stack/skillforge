# Output Templates

Structured templates for each skill type. Use these when generating the final skill to ensure consistent quality and completeness.

---

## How to Use Templates

1. Identify the skill type from `skill-taxonomy.md`
2. Load the corresponding template below
3. Fill each section with content distilled from cases (Phase 3-4 of SKILL.md)
4. Generate the companion `CLAUDE.md` (see template at bottom of this file)
5. Pass everything to skill-creator for final generation

---

## Template 1: Summary (总结)

```markdown
## Purpose
[One sentence: what this skill compresses and for whom]

## Input Requirements
- What information does the user need to provide?
- What format should it be in?

## Compression Process
### Step 1: [First pass]
### Step 2: [Organize]
### Step 3: [Condense]

## Output Format
[Template for the summary output]

## What to Include
- [Inclusion rule 1]
- [Inclusion rule 2]

## What to Exclude
- [Exclusion rule 1]
- [Exclusion rule 2]

## Common Mistakes
| Mistake | Why It's Wrong | Correct Approach |
|----------|---------------|-----------------|
| [example] | [reason] | [fix] |

## Quality Checklist
- [ ] All key information preserved?
- [ ] No distortion introduced?
- [ ] Clear structure?
```

---

## Template 2: Insight (洞察)

```markdown
## Purpose
[What kind of insight this skill extracts]

## Input
[What the user provides]

## Extraction Process
### Phase 1: Surface everything
### Phase 2: Filter for significance
### Phase 3: Connect the dots
### Phase 4: Prioritize

## Insight Format
### Key Insight
[Template]

### Why This Matters
[Template]

### Supporting Signals
[Template]

### Recommended Action
[Template]

## What Separates Real Insight from Noise
- Signal: [characteristic]
- Noise: [characteristic]

## Common Mistakes
| Mistake | Example | Correct Approach |
|----------|---------|-----------------|
| [describing] | [specific example] | [what to do instead] |

## Self-Check
After generating insight, ask:
1. Does this answer WHY, not just WHAT?
2. Would someone change their behavior based on this?
3. Did I filter out obvious observations?
```

---

## Template 3: Generation (生成)

```markdown
## Purpose
[What this skill creates, for what audience, in what context]

## Audience & Constraints
- **Audience:** [who receives the output]
- **Length:** [constraint]
- **Tone:** [constraint]
- **Must include:** [requirements]
- **Must avoid:** [prohibitions]

## Generation Process
### Step 1: [Understand requirements]
### Step 2: [Draft]
### Step 3: [Refine]

## Key Techniques
### Technique 1: [name]
✅ Do: "[example]"
❌ Don't: "[example]"
**Why:** [brief explanation]

### Technique 2: [name]
✅ Do: "[example]"
❌ Don't: "[example]"
**Why:** [brief explanation]

## Common Mistakes
| Mistake | Why It Happens | Fix |
|----------|---------------|-----|
| [specific mistake] | [root cause] | [correction] |

## Quality Checklist
- [ ] Meets all constraints?
- [ ] Appropriate for audience?
- [ ] Techniques applied correctly?
```

---

## Template 4: Decision (决策)

```markdown
## Purpose
[What kind of decisions this skill helps with]

## Decision Framework
### Step 1: Define the decision
### Step 2: List options
### Step 3: Establish criteria
### Step 4: Evaluate each option
### Step 5: Make recommendation
### Step 6: Identify risks

## Criteria Template
| Criterion | Weight | Why It Matters |
|-----------|--------|---------------|
| [criterion] | [1-10] | [justification] |

## Output Format
### Recommendation
[Template]

### Rationale
[Template]

### Trade-offs Acknowledged
[Template]

### Next Steps
[Template]

## Common Decision Traps
| Trap | How to Recognize | How to Avoid |
|------|-----------------|--------------|
| [trap name] | [symptoms] | [countermeasure] |

## Self-Check
- Is the recommendation unambiguous?
- Are trade-offs explicitly stated?
- Would someone with different preferences make a different choice?
```

---

## Template 5: Evaluation (评估)

```markdown
## Purpose
[What this skill evaluates and against what standards]

## Evaluation Standards
[The rubric, checklist, or framework used]

## Evaluation Process
### Step 1: [Surface-level scan]
### Step 2: [Deep analysis by dimension]
### Step 3: [Synthesize findings]
### Step 4: [Generate recommendations]

## Output Format
### Overall Assessment
[Score/Rating]

### Strengths
- [specific strength with example]

### Weaknesses
- [specific weakness with example]

### Priority Improvements
1. [most critical fix]
2. [next fix]

## Common Evaluation Biases
| Bias | How to Counter |
|------|---------------|
| [bias] | [countermeasure] |

## Self-Check
- Based on standards, not personal preference?
- Each finding supported by specific evidence?
- Recommendations actionable?
```

---

## Template 6: Diagnosis (诊断)

```markdown
## Purpose
[What kind of problems this skill diagnoses]

## Diagnostic Process
### Step 1: [Collect symptoms]
### Step 2: [Form hypotheses]
### Step 3: [Test hypotheses]
### Step 4: [Identify root cause]
### Step 5: [Prescribe fix]

## Question Framework
| To Determine... | Ask... |
|----------------|--------|
| [what you need to know] | [specific question] |

## Output Format
### Symptoms
[Template]

### Investigation
[Template]

### Root Cause
[Template]

### Fix
[Template]

### Prevention
[Template]

## Common Diagnostic Errors
| Error | Why It Happens | How to Avoid |
|-------|---------------|--------------|
| Stopping at symptoms | [reason] | [countermeasure] |

## Self-Check
- Did I go at least 3 "why" levels deep?
- Would fixing this cause actually prevent recurrence?
- Are there contributing factors beyond the root cause?
```

---

## Template 7: Persuasion (说服)

```markdown
## Purpose
[What this skill helps persuade people about]

## Audience Analysis
Before crafting message, understand:
- Current belief: [what they think now]
- Desired belief: [what you want them to think]
- Barriers: [what's stopping them]
- Motivators: [what moves them]

## Message Structure
### 1. Hook
✅ Do: "[example]"
❌ Don't: "[example]"

### 2. Problem Amplification
✅ Do: "[example]"
❌ Don't: "[example]"

### 3. Solution Introduction
✅ Do: "[example]"
❌ Don't: "[example]"

### 4. Evidence Stack
✅ Do: "[example]"
❌ Don't: "[example]"

### 5. Call to Action
✅ Do: "[example]"
❌ Don't: "[example]"

## Objection Handling
| Common Objection | Response Pattern |
|-----------------|-----------------|
| [objection] | [how to respond] |

## Common Mistakes
| Mistake | Example | Fix |
|----------|---------|-----|
| [mistake] | [real case] | [correction] |

## Self-Check
- Does this speak to THEIR concerns, not mine?
- Is the ask specific and small enough to say yes to?
- Did I address the strongest counter-argument?
```

---

## Template 8: Planning (规划)

```markdown
## Purpose
[What kind of plans this skill creates]

## Planning Process
### Step 1: Define the goal
### Step 2: Identify milestones
### Step 3: Break into tasks
### Step 4: Sequence with dependencies
### Step 5: Identify risks
### Step 6: Add checkpoints

## Output Format
### Goal
[Template]

### Milestones
| # | Milestone | Success Criteria | Target Date |
|---|-----------|-----------------|-------------|
| 1 | [milestone] | [criteria] | [date] |

### Phase Breakdown
#### Phase 1: [name]
- [ ] Task 1
- [ ] Task 2

### Dependencies
[Which tasks block which]

### Risk Register
| Risk | Likelihood | Impact | Mitigation |
|------|-----------|--------|------------|
| [risk] | H/M/L | H/M/L | [plan] |

## Common Planning Failures
| Failure | Why It Happens | Prevention |
|---------|---------------|------------|
| [failure] | [cause] | [how to prevent] |

## Self-Check
- Right level of detail for the audience?
- Dependencies correctly sequenced?
- Risks identified with mitigations?
```

---

## Template 9: Research (调研)

```markdown
## Purpose
[What this skill researches]

## Research Process
### Step 1: [Formulate questions]
### Step 2: [Identify sources]
### Step 3: [Gather information]
### Step 4: [Verify and cross-reference]
### Step 5: [Synthesize findings]
### Step 6: [Identify gaps]

## Source Strategy
| Type | Where to Look | Trust Level |
|------|--------------|-------------|
| [source type] | [specific sources] | High/Med/Low |

## Output Format
### Key Questions
[Questions driving the research]

### Findings
| Finding | Source | Confidence |
|---------|--------|-----------|
| [finding] | [source] | High/Med/Low |

### Synthesis
[Template for connecting findings]

### Gaps & Limitations
[Template]

## Common Research Mistakes
| Mistake | Why It's Wrong | Fix |
|---------|---------------|-----|
| Confirmation bias | [explanation] | [countermeasure] |

## Self-Check
- Multiple independent sources for key claims?
- Confidence levels indicated?
- Gaps honestly acknowledged?
```

---

## Template 10: Facilitation (引导)

```markdown
## Purpose
[What kind of information this skill helps elicit]

## Question Framework
### Opening Questions
- "[question]" — Purpose: [what this reveals]
- "[question]" — Purpose: [what this reveals]

### Deep-Dive Questions
When they mention [signal], ask: "[follow-up]"
When they say [pattern], probe: "[probe]"

### Closing Questions
- "[question]" — Purpose: [what this captures]

## What to Listen For
| Signal | What It Means | How to Follow Up |
|--------|--------------|-----------------|
| [specific phrase] | [interpretation] | [next question] |

## Pitfalls: What NOT to Do
| Don't Do This | Example | Do This Instead |
|--------------|---------|----------------|
| Leading question | "[bad example]" | "[good example]" |
| Multiple questions | "[bad example]" | "[good example]" |

## Self-Check
- Questions are open-ended?
- Avoiding "would you..." hypotheticals?
- Silence periods built in?
- Following their language, not imposing yours?
```

---

## Template 11: Transformation (转化)

```markdown
## Purpose
[What this skill transforms from/to]

## Mapping Rules
| Source Element | Target Element | Rule |
|---------------|---------------|------|
| [element] | [element] | [how to map] |

## Transformation Process
### Step 1: [Extract from source]
### Step 2: [Apply mapping rules]
### Step 3: [Verify fidelity]
### Step 4: [Format for target]

## Edge Cases
| Situation | Handling |
|-----------|---------|
| [edge case] | [rule] |

## Output Format
[Template for transformed output]

## Common Mistakes
| Mistake | Example | Fix |
|---------|---------|-----|
| [mistake] | [example] | [correction] |

## Self-Check
- Essential meaning preserved?
- Target format requirements met?
- Edge cases handled?
```

---

## Template 12: Automation (自动化) [NEW]

```markdown
## Purpose
[What process this skill automates]

## Trigger
[What initiates the automation]

## Input Specification
| Input | Type | Required | Default |
|-------|------|---------|---------|
| [name] | [type] | Yes/No | [default] |

## Process Steps
### Step 1: [Validate inputs]
### Step 2: [Core operation]
### Step 3: [Handle results]

## Output Specification
[What the automation produces]

## Error Handling
| Error Condition | Response |
|----------------|---------|
| [condition] | [response] |

## Idempotency
[How to ensure safe re-execution]

## Common Mistakes
| Mistake | Why It Happens | Fix |
|---------|---------------|-----|
| [mistake] | [cause] | [correction] |
```

---

## Template 13: Integration (集成) [NEW]

```markdown
## Purpose
[What systems this skill connects]

## Systems Involved
| System | Role | Connection Method |
|--------|------|------------------|
| [system] | [what it does] | [API/SDK/etc] |

## Data Flow
```
[System A] → [transformation] → [System B]
```

## Connection Points
### Connection 1: [name]
- **Input:** [what comes in]
- **Output:** [what goes out]
- **Auth:** [how to authenticate]

## Error Recovery
| Failure Mode | Detection | Recovery |
|-------------|----------|---------|
| [mode] | [how to detect] | [steps] |

## Testing Strategy
[How to verify the integration works]

## Common Mistakes
| Mistake | Example | Fix |
|---------|---------|-----|
| [mistake] | [example] | [correction] |
```

---

## Template 14: Code Generation (代码生成) [NEW]

```markdown
## Purpose
[What kind of code this skill generates]

## Specification Input
[What the user must provide]

## Language & Environment
- **Language:** [language + version]
- **Framework:** [if applicable]
- **Constraints:** [any limits]

## Architecture
[High-level structure of generated code]

## Key Implementation Patterns
### Pattern 1: [name]
```[language]
// ✅ Good
[example]

// ❌ Bad
[anti-example]
```

## Edge Cases Handled
| Case | Handling |
|------|---------|
| [case] | [approach] |

## Testing
[How generated code should be tested]

## Common Mistakes
| Mistake | Example | Fix |
|---------|---------|-----|
| [mistake] | [example] | [correction] |
```

---

## Template 15: Analysis (分析) [NEW]

```markdown
## Purpose
[What kind of data/patterns this skill analyzes]

## Data Requirements
| Data Element | Why Needed | Format |
|-------------|-----------|--------|
| [element] | [purpose] | [format] |

## Analysis Methodology
### Step 1: [Data preparation]
### Step 2: [Exploratory analysis]
### Step 3: [Apply analytical method]
### Step 4: [Interpret results]
### Step 5: [Draw conclusions]

## Output Format
### Key Findings
[Template]

### Patterns Identified
[Template]

### Statistical Significance
[Template]

### Limitations
[Template]

### Recommendations
[Template]

## Common Analysis Pitfalls
| Pitfall | Why It Happens | How to Avoid |
|---------|---------------|-------------|
| Correlation ≠ causation | [explanation] | [countermeasure] |

## Self-Check
- Appropriate method for the data type?
- Biases identified and addressed?
- Limitations clearly stated?
```

---

## Template Selection Quick Reference

| Skill Type | Template # | Key Sections |
|-----------|-----------|-------------|
| Summary | 1 | Include/Exclude rules, Compression steps |
| Insight | 2 | Signal vs Noise, Why This Matters |
| Generation | 3 | Audience, Constraints, Do/Don't techniques |
| Decision | 4 | Criteria weights, Trade-offs, Traps |
| Evaluation | 5 | Standards, Strengths/Weaknesses, Biases |
| Diagnosis | 6 | 5 Whys, Root Cause, Prevention |
| Persuasion | 7 | Audience analysis, Objection handling |
| Planning | 8 | Milestones, Dependencies, Risk register |
| Research | 9 | Source strategy, Confidence levels, Gaps |
| Facilitation | 10 | Question framework, Signals to listen for |
| Transformation | 11 | Mapping rules, Edge cases |
| Automation | 12 | Trigger, Error handling, Idempotency |
| Integration | 13 | Data flow, Connection points, Recovery |
| Code Generation | 14 | Language/env, Edge cases, Testing |
| Analysis | 15 | Methodology, Findings, Limitations |

---

---

## CLAUDE.md Template (Required for Every Generated Skill)

Every skill generated by SkillForge MUST include a companion `CLAUDE.md` in the same directory. This ensures the skill works as a standalone project.

```markdown
# [Skill Name]

[One-line description of what this skill does.]

## When This Skill Activates

- [Trigger condition 1]
- [Trigger condition 2]
- NOT when: [boundary — when NOT to use this skill]

## How It Works

[2-3 sentences on the methodology — what approach this skill takes, where the knowledge comes from]

## Dependencies

- [Any other skills or tools required]
- Model: [opus/sonnet]
- [External access needed: web search, file system, etc.]

## Quality

Skill-evaluator score: [X]/25 — [rating]
Generated with [SkillForge](https://github.com/ihgoa501-stack/skillforge)
```

### CLAUDE.md Generation Rules

1. **Keep it minimal** — CLAUDE.md is a signpost, not a manual. The full methodology lives in SKILL.md.
2. **Focus on activation** — The most important information is WHEN this skill triggers.
3. **State dependencies clearly** — So users know what else they need.
4. **Include the quality score** — Builds trust in the skill.
5. **Link back to SkillForge** — Attribution and traceability.

---

## Version History

- v1.0 (2026-05): 15 templates covering all skill types
