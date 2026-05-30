# Skill Taxonomy: Complete Skill Type Classification

> **Version:** 2.0 | **Types:** 15 | This taxonomy covers both non-technical AND technical skill categories.

## Why Taxonomy Matters

Different skill types require fundamentally different:
- **Methodologies** — which expert frameworks apply
- **Quality criteria** — how to evaluate the output
- **Generation approaches** — prompting strategies that work
- **Output templates** — what structure the skill should have

Misclassifying a skill leads to poor results:
- Treating **Insight** as **Summary** → Comprehensive but shallow
- Treating **Decision** as **Research** → Information without commitment
- Treating **Diagnosis** as **Evaluation** → Root cause missed

---

## Quick Reference: Identify the Type

| User says... | Likely type |
|-------------|-------------|
| "Help me summarize..." | Summary (总结) |
| "Help me understand why/what matters..." | Insight (洞察) |
| "Help me write/create/make..." | Generation (生成) |
| "Help me decide/choose..." | Decision (决策) |
| "Help me evaluate/review/judge..." | Evaluation (评估) |
| "Help me figure out why something is broken..." | Diagnosis (诊断) |
| "Help me convince/persuade/sell..." | Persuasion (说服) |
| "Help me plan/roadmap..." | Planning (规划) |
| "Help me research/find out..." | Research (调研) |
| "Help me interview/draw out/extract..." | Facilitation (引导) |
| "Help me convert/transform/translate..." | Transformation (转化) |
| "Help me automate/script..." | Automation (自动化) |
| "Help me integrate/connect..." | Integration (集成) |
| "Help me generate code for..." | Code Generation (代码生成) |
| "Help me analyze data/patterns..." | Analysis (分析) |

---

## Type 1: Summary (总结)

**Core Operation:** Compress — reduce volume while preserving coverage.

**Transformation:** Many signals → Fewer signals (equal weight compression)

**Quality Criteria:**
- Completeness: Did it cover all important aspects?
- Accuracy: Is the compression faithful?
- Structure: Well-organized and scannable?

**Methodology Sources:** Minto (Pyramid Principle), MECE frameworks

**Output Template Sections:** Overview, Key Points, Details (by category), Omissions

---

## Type 2: Insight (洞察)

**Core Operation:** Extract the exceptional — find the few signals that explain everything.

**Transformation:** Many signals → Few KEY signals that explain WHY

**Quality Criteria:**
- Depth: Answers WHY, not just WHAT
- Prioritization: Ranked by importance
- Actionability: Can act on the insight

**Methodology Sources:** Signal detection, NN/g framework, Topgrading

**Output Template Sections:** Key Insight, Supporting Evidence, What This Means, Recommended Actions

---

## Type 3: Generation (生成)

**Core Operation:** Create under constraints — produce new content that meets requirements.

**Transformation:** Constraints + Requirements → New artifact

**Quality Criteria:**
- Fit: Meets all constraints?
- Effectiveness: Will it achieve the goal?
- Style: Tone/voice appropriate for audience?

**Methodology Sources:** Domain-specific writing frameworks, copywriting, genre conventions

**Output Template Sections:** Purpose, Audience, Constraints, Process, Examples, Quality Checklist

---

## Type 4: Decision (决策)

**Core Operation:** Choose and commit — weigh incommensurable factors and decide.

**Transformation:** Options + Criteria → Selection + Rationale

**Quality Criteria:**
- Clarity: Recommendation unambiguous?
- Rationale: Reasoning explicit?
- Trade-off acknowledgment: Downsides stated?

**Methodology Sources:** MCDA, decision matrices, Bezos Type 1/Type 2

**Output Template Sections:** Options, Criteria & Weights, Analysis, Recommendation, Risks & Mitigations

---

## Type 5: Evaluation (评估)

**Core Operation:** Judge against standards — compare artifact to ideal and identify gaps.

**Transformation:** Artifact → Quality judgment + Gap analysis

**Quality Criteria:**
- Objectivity: Based on standards, not preference
- Specificity: Exact issues, not vague complaints
- Constructiveness: Actionable improvements

**Methodology Sources:** Domain quality frameworks, rubrics, best-practice checklists

**Output Template Sections:** Standards Applied, Findings (by dimension), Score/Summary, Improvement Recommendations

---

## Type 6: Diagnosis (诊断)

**Core Operation:** Trace to root cause — reason backward from symptoms.

**Transformation:** Symptoms → Root cause(s) + Fix

**Quality Criteria:**
- Depth: Found the TRUE root cause?
- Completeness: All contributing factors?
- Actionability: Fix clear and executable?

**Methodology Sources:** 5 Whys, fishbone diagrams, systems thinking

**Output Template Sections:** Symptoms Observed, Investigation Steps, Root Cause(s), Contributing Factors, Recommended Fix, Prevention

---

## Type 7: Persuasion (说服)

**Core Operation:** Bridge worldviews — connect your goal to their mental model.

**Transformation:** My goal + Their worldview → Message that moves them

**Quality Criteria:**
- Audience fit: Speaks to THEIR concerns?
- Credibility: Believable?
- Call to action: Next step clear?

**Methodology Sources:** Cialdini, SPIN Selling, Aristotle (Ethos/Pathos/Logos)

**Output Template Sections:** Audience Profile, Their Current Belief, Desired Belief, Message Strategy, Key Arguments, Objection Handling

---

## Type 8: Planning (规划)

**Core Operation:** Decompose into steps — break goal into achievable sequence.

**Transformation:** Goal → Path with milestones + Dependencies

**Quality Criteria:**
- Completeness: All necessary steps?
- Sequencing: Dependencies correct?
- Granularity: Right detail level?

**Methodology Sources:** Work breakdown structures, agile planning, critical path

**Output Template Sections:** Goal, Milestones, Phase Breakdown, Dependencies, Timeline, Risk Register

---

## Type 9: Research (调研)

**Core Operation:** Discover and structure — explore unknown territory, return organized.

**Transformation:** Questions → Structured answers with sources

**Quality Criteria:**
- Coverage: Enough sources consulted?
- Objectivity: Balanced, not cherry-picked?
- Structure: Organized usefully?

**Methodology Sources:** Research methodology, source evaluation, synthesis techniques

**Output Template Sections:** Research Questions, Sources Consulted, Findings, Confidence Levels, Gaps & Further Research

---

## Type 10: Facilitation (引导)

**Core Operation:** Elicit through questions — surface others' hidden knowledge.

**Transformation:** Hidden/tacit knowledge → Explicit, articulated knowledge

**Quality Criteria:**
- Depth: Surfaced non-obvious information?
- Neutrality: Avoided leading questions?
- Completeness: Covered all areas?

**Methodology Sources:** Mom Test, Motivational Interviewing, SPIN (discovery portion)

**Output Template Sections:** Opening Questions, Deep-Dive Questions, What to Listen For, Follow-up Patterns, Pitfalls to Avoid

---

## Type 11: Transformation (转化)

**Core Operation:** Map between representations — convert format while preserving meaning.

**Transformation:** Format A → Format B (isomorphic mapping)

**Quality Criteria:**
- Fidelity: Essential meaning preserved?
- Fit: Appropriate for target format?
- Clarity: Clear in new format?

**Methodology Sources:** Translation theory, information design, audience adaptation

**Output Template Sections:** Source Format, Target Format, Mapping Rules, Edge Cases, Validation Checklist

---

## Type 12: Automation (自动化) [NEW]

**Core Operation:** Encode a repeatable process — turn manual steps into automatic execution.

**Transformation:** Manual workflow → Automated pipeline

**Quality Criteria:**
- Reliability: Handles all expected inputs?
- Error handling: Graceful failure modes?
- Idempotency: Safe to run multiple times?

**Methodology Sources:** DevOps practices, workflow automation, script design patterns

**Output Template Sections:** Trigger, Input Spec, Process Steps, Output Spec, Error Handling, Verification

---

## Type 13: Integration (集成) [NEW]

**Core Operation:** Connect systems — make disparate tools work together.

**Transformation:** System A + System B → Unified workflow

**Quality Criteria:**
- Compatibility: Works with target systems?
- Data integrity: No loss or corruption?
- Maintainability: Easy to update when APIs change?

**Methodology Sources:** API design, ETL patterns, middleware architecture

**Output Template Sections:** Systems Involved, Data Flow, Connection Points, Auth/Security, Error Recovery, Testing Strategy

---

## Type 14: Code Generation (代码生成) [NEW]

**Core Operation:** Produce working code — generate correct, idiomatic implementation.

**Transformation:** Specification → Working code

**Quality Criteria:**
- Correctness: Matches spec and compiles/runs?
- Idiomaticity: Follows language conventions?
- Robustness: Handles edge cases?

**Methodology Sources:** Software engineering best practices, language-specific style guides

**Output Template Sections:** Spec, Language/Environment, Architecture, Key Implementation Decisions, Edge Cases Handled, Testing Approach

---

## Type 15: Analysis (分析) [NEW]

**Core Operation:** Find patterns in data — apply structured methods to extract meaning.

**Transformation:** Raw data → Patterns + Conclusions

**Quality Criteria:**
- Method: Appropriate analytical approach?
- Rigor: Biases accounted for?
- Clarity: Conclusions clearly supported?

**Methodology Sources:** Statistical methods, qualitative analysis, data visualization

**Output Template Sections:** Data Sources, Methodology, Findings, Patterns Identified, Limitations, Conclusions

---

## Common Confusions

| Often confused | How to distinguish |
|---------------|-------------------|
| Summary vs Insight | Summary = complete coverage; Insight = key signals only |
| Decision vs Evaluation | Decision = make a choice; Evaluation = judge quality |
| Research vs Insight | Research = gather info; Insight = interpret meaning |
| Generation vs Transformation | Generation = create new; Transformation = convert existing |
| Diagnosis vs Evaluation | Diagnosis = find root cause; Evaluation = judge against standard |
| Automation vs Code Generation | Automation = encode workflow; Code Gen = produce software |
| Analysis vs Insight | Analysis = structured method on data; Insight = intuitive extraction of what matters |
| Integration vs Automation | Integration = connect systems; Automation = remove manual steps |

---

## How to Use This Taxonomy

### Step 1: Identify from user request

Listen for the core verb: summarize, understand, create, decide, evaluate, fix, convince, plan, research, interview, convert, automate, integrate, code, analyze.

### Step 2: Validate with user

```
"It sounds like you need a [TYPE] skill ([core operation]).
Is that right, or did I misclassify?"
```

### Step 3: Apply type-specific resources

- Select methodology from registry based on "Best for" column
- Use the quality criteria specific to this type
- Follow the output template for this type
- Load `output-templates.md` for the template

---

## Version History

- v2.0 (2026-05): Extended from 11 to 15 types. Added Automation, Integration, Code Generation, Analysis. Added "Best for" cross-references to methodology registry.
- v1.0 (2026-01): Initial taxonomy with 11 types (from skill-from-masters)
