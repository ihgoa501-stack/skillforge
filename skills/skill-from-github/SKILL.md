---
name: skill-from-github
description: Learn from high-quality GitHub projects and encode that knowledge into reusable AI skills. Use when users want to understand how open-source tools solve problems, or want to create skills based on proven implementations.
model: sonnet
---

# Skill from GitHub

Analyze high-quality GitHub projects to extract their core knowledge, then encode that knowledge into a reusable AI skill. The resulting skill captures the UNDERSTANDING, not just the tool.

## When to Use

When users want to learn from existing tools and encode that knowledge:

- "I want to convert markdown to PDF"
- "Help me analyze sentiment in customer reviews"
- "I need to generate API documentation from code"
- "Teach me how [project] works so I can apply its approach"

**This skill is about LEARNING from projects, not wrapping them.** The generated skill should work even without the original tool installed.

## Workflow

### Step 1: Understand User Intent

Clarify what the user wants to achieve:
- What is the input? (format, source, constraints)
- What is the expected output? (format, quality bar)
- What constraints exist? (language, framework, performance, cost)
- What's the core problem being solved? (not just the technical task)

### Step 2: Search GitHub

Search for projects that solve this problem:

```
{task keywords} language:{preferred} stars:>100 sort:stars
```

**Search strategy:**
- Start broad, then narrow based on results
- Try different keyword combinations (purpose, domain, technique)
- Include "cli", "tool", "library", "framework" as relevant
- Exclude "awesome-list", "tutorial", "demo", "sample" (curation, not implementation)

**Quality filters (must meet ALL):**
- Stars > 100 (community validated)
- Updated within last 12 months (actively maintained)
- Has README with clear documentation (> 500 words)
- Has actual implementation code (not just configuration or docs)
- License allows learning from it (MIT, Apache, BSD, GPL are fine)

### Step 3: Present Options to User

Show top 3-5 candidates with clear differentiation:

```markdown
## Found X Projects That Solve This

### Option 1: [project-name](github-url)
- **Stars:** xxx | **Language:** [lang] | **Updated:** [date]
- **What it does:** [one-line clear description]
- **Core approach:** [the key technique it uses]
- **Why it's interesting:** [specific strength — performance, simplicity, popularity]
- **License:** [type]

### Option 2: [project-name](github-url)
...

### Comparison
| | Option 1 | Option 2 | Option 3 |
|---|---------|---------|---------|
| Approach | [approach] | [approach] | [approach] |
| Complexity | Low/Med/High | Low/Med/High | Low/Med/High |
| Best for | [use case] | [use case] | [use case] |

Which should I dive into? Or shall I search differently?
```

**Wait for user confirmation before proceeding.**

### Step 4: Deep Dive into Selected Project

Thoroughly understand the project:

1. **Read README** — Purpose, features, usage patterns, philosophy
2. **Read core source files** — Main algorithm, key abstractions, design decisions
3. **Study examples/** — Real usage patterns, common workflows
4. **Check tests/** — Edge cases considered, expected behavior
5. **Check issues/PRs** — Common user problems, design trade-offs discussed
6. **Note dependencies** — What does it build on? What design choices does that imply?

**Extract:**
- **Core algorithm/approach** — The key insight that makes it work
- **Input/output model** — How data flows through the system
- **Design decisions** — Trade-offs made and why
- **Edge case handling** — Tricky situations and how they're resolved
- **Common mistakes** — What users get wrong (from issues/docs)

### Step 5: Summarize Understanding

Present what you learned before creating the skill:

```markdown
## Understanding [project-name]

### Core Insight
[The one key idea that makes this work]

### How It Works (Conceptual)
[High-level explanation — not code, but mental model]

### Key Techniques
1. **[Technique name]:** [what it does and why it matters]
2. ...

### Design Trade-offs
- **Chose X over Y because:** [reason]
- **Limitation:** [what it can't do well]

### Edge Cases Handled
- [case] → [how it handles it]

### What I'll Encode in the Skill
1. [key concept to encode]
2. ...

**Does this capture the essence? Should I proceed to create the skill?**
```

**Wait for user confirmation.**

### Step 6: Create Skill via skill-creator

Hand off to skill-creator with:

1. **Clear purpose** — What the skill does, when to use it
2. **Core methodology** — The approach learned from the project
3. **Step-by-step process** — Concrete, actionable instructions
4. **Key techniques** — Specific patterns with do/don't examples
5. **Quality criteria** — What good output looks like
6. **Common pitfalls** — What to avoid (from project issues, docs, and your analysis)

**Important:** The skill should encode the KNOWLEDGE, not wrap the tool. Someone using the skill should be able to apply the principles even without the original project.

### Step 7: Validate

Test the generated skill:
1. Feed it a simple scenario — does the output make sense?
2. Feed it the project's own examples — does it produce comparable results?
3. Check for anti-patterns (from `anti-patterns.md`)

## Example

**User:** "I want to write better commit messages"

**Step 2 — Search:** `commit message convention stars:>100`

**Step 3 — Present:**
```markdown
## Found 3 Projects

### Option 1: conventional-commits/conventionalcommits.org (4.2k ⭐)
- **Core approach:** Structured format: type(scope): description
- **Why interesting:** Industry standard used by Angular, Vue, K8s

### Option 2: commitizen/cz-cli (15k ⭐)
- **Core approach:** Interactive CLI for guided commit creation
- **Why interesting:** Battle-tested with many adapters

### Option 3: carloscuesta/gitmoji (14k ⭐)
- **Core approach:** Emoji-based visual categorization
- **Why interesting:** Fun, visually scannable history

Which approach interests you most?
```

**User:** "Let's go with conventional commits"

**Step 4 — Deep dive:**
- Read the spec thoroughly
- Understand types (feat, fix, docs, style, refactor, perf, test, chore, ci)
- Learn scope conventions and breaking change notation (!)
- Study real commit histories from Angular, Vue
- Check issues for common misunderstandings

**Step 5 — Summarize:**
```markdown
## Understanding Conventional Commits

### Core Insight
Separate WHAT changed from WHERE and WHY using a structured prefix,
enabling automated changelog generation and semantic versioning.

### Key Techniques
1. **Type prefix:** feat/fix/docs/etc categorizes the change
2. **Optional scope:** narrows WHERE the change happened
3. **Breaking change marker:** ! or BREAKING CHANGE footer

### What I'll Encode
1. Type selection decision tree
2. Scope naming conventions
3. Description writing rules (imperative, present tense, < 72 chars)
4. Body/footer for detail and issue references
5. Common mistakes and corrections

Ready to create the skill?
```

**Step 6 — Create skill with skill-creator**

## Rules

1. **Always get user confirmation** — At Step 3 (project selection) AND Step 5 (before creating)
2. **Prefer understanding over wrapping** — Encode the knowledge, not the tool invocation
3. **Check the license** — Mention if restrictive (most open-source licenses are fine for learning)
4. **Credit the source** — Include attribution and link in generated skill
5. **Quality over speed** — Take time to truly understand the project's design decisions
6. **Multiple projects are better than one** — If time allows, cross-reference 2-3 projects for more robust skills

## What This Skill is NOT

- NOT a package installer or CLI wrapper
- NOT a "run this command" generator
- It IS about **deep understanding** and **knowledge transfer** from proven implementations
