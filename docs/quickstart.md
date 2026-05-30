# SkillForge Quickstart

Get from "I need a skill" to a working, evaluated skill in under 30 minutes.

## Prerequisites

- Claude Code, Codex, or compatible AI agent platform
- `skill-creator` skill available in your environment
- (Optional) `skill-evaluator` and `skill-improver` for quality iteration

## Installation

```bash
# Clone into your skills directory
cd ~/.claude/skills
git clone https://github.com/YOUR_USERNAME/skillforge.git

# Or copy just the skillforge folder
cp -r skillforge ~/.claude/skills/
```

## The 3-Path Quickstart

Depending on what you need:

### Path A: Create a New Skill (10-30 min)
Use when you need a skill that doesn't exist yet.

```
1. "Help me create a skill for [your task]"
2. Answer narrowing questions
3. Review golden/failure cases found
4. Select which patterns to use
5. Skill is generated
6. (Optional) "Evaluate this skill"
```

### Path B: Find an Existing Skill (2-5 min)
Use when you suspect someone already built this.

```
1. "Find me a skill for [your task]"
2. Review results from trusted sources
3. Install the recommended skill
4. Test it with your use case
```

### Path C: Learn from a GitHub Project (15-30 min)
Use when an open-source tool already solves the problem.

```
1. "I want to learn from [problem domain] projects on GitHub"
2. Review the project options
3. Select one for deep dive
4. Review the extracted knowledge
5. Skill is generated from that knowledge
```

## Your First Skill: A Walkthrough

Let's create a skill for writing good commit messages.

### 1. Start the conversation
```
You: "Help me create a skill for writing commit messages"
```

### 2. SkillForge narrows the task
```
SkillForge: "What kind of commits? Solo project, team with code review,
             or open-source with changelog requirements?"
You: "Team project with automated changelogs"
```

### 3. SkillForge searches for cases
```
SkillForge searches for:
- Top open-source projects with clean commit histories
- Common commit message mistakes
- Before/after rewrites of bad commits
```

### 4. You review and select
```
SkillForge presents:
- Angular's conventional commits (the standard)
- Linux kernel style (detailed, imperative)
- Common failures: "fixed bug", "updated code", "WIP"

You: "Let's use conventional commits as the base"
```

### 5. Skill is generated
SkillForge hands off to skill-creator with:
- The commit type taxonomy (feat, fix, docs, etc.)
- Concrete do/don't examples
- Common mistakes catalog
- Quality checklist

### 6. (Optional) Evaluate
```
You: "Evaluate this skill"
Skill-evaluator: Scores it 20/25 — Strong.
                  Suggestion: add more edge cases (merge commits, reverts)
```

### 7. (Optional) Improve
```
You: "Improve it based on that feedback"
Skill-improver: Adds edge case coverage. New score: 23/25 — Exceptional.
```

## Common Patterns

### "I don't know what skill I need"
Start with Path B (search-skill). If nothing fits, Path A (skillforge).

### "I found a skill but it's not quite right"
Use Path A (skillforge) with the existing skill as a reference point.
Say: "Create a skill similar to [existing skill] but for [your context]"

### "I want to capture how my team does things"
Use Path A (skillforge). Your team members ARE the practice experts.
Say: "Create a skill for [team process] based on how our best people do it"

### "I have a skill but it gives bad advice"
Use skill-evaluator to diagnose, then skill-improver to fix.
Say: "Evaluate this skill" then "Improve it based on the evaluation"

## Quality Expectations

| Score | What it means | When to ship |
|-------|--------------|-------------|
| 22-25 | Exceptional | Ship immediately |
| 18-21 | Strong | Ship, iterate later |
| 13-17 | Adequate | Fix weak areas first |
| 8-12 | Weak | Significant revision needed |
| 5-7 | Poor | Start over with better cases |

## Next Steps

- Read `skillforge/SKILL.md` for the full methodology
- Browse `skillforge/references/` for the methodology registry and templates
- Check `docs/examples/` for example skills
- Contribute new experts to the methodology registry
