# SkillForge Project Instructions

## What This Project Is

SkillForge is a framework for creating high-quality AI agent skills. It contains:
- **6 skills** in `skills/` — reusable AI agent skill definitions
- **1 core skill** in `skillforge/` — the main skill creation engine
- **5 reference files** in `skillforge/references/` — methodology registry, taxonomy, rubric, templates, anti-patterns
- **2 tools** in `skillforge/tools/` — validate.sh and scaffold.sh
- **Generated examples** in `generated-skills/` — skills created using this framework

## How Skills Work

Each skill is a `SKILL.md` file with YAML frontmatter (`name`, `description`, `model`) and markdown instructions. Skills are loaded by AI agent platforms (Claude Code, Codex) and tell the AI how to perform specific tasks.

## Key Project Rules

### When creating a new skill for the framework itself:
- Use `skillforge/tools/scaffold.sh` to generate the skeleton
- Follow the 6-phase workflow in `skillforge/SKILL.md`
- Always run `skillforge/tools/validate.sh` before committing
- Score with the 5-dimension rubric in `skillforge/references/quality-rubric.md`
- Target score: 18+ (Strong) minimum, 22+ (Exceptional) ideal

### When adding to the methodology registry:
- Add entries to `skillforge/references/methodology-registry.md`
- Include: expert name, framework name, core idea, best skill types, primary source
- Must be a PRACTICE expert (does the thing, not just writes about it)

### Skill naming convention:
- Use kebab-case: `my-skill-name`
- Place in `skills/<name>/SKILL.md`

### Model selection:
- `model: opus` — Research-heavy, requires judgment (skillforge core, master-research, skill-improver)
- `model: sonnet` — Task-execution, structured process (search-skill, skill-from-github, skill-evaluator)

## File Structure Conventions

```
skills/<skill-name>/SKILL.md     → Always this structure
skillforge/references/<file>.md  → Reference files loaded on demand
generated-skills/<name>/SKILL.md → Example outputs from the framework
```

## Testing

Before committing any skill change:
```bash
./skillforge/tools/validate.sh skills/<name>/SKILL.md
```

All 6 core skills must pass validation.

## Common Tasks

### Add a new skill to the framework:
```bash
./skillforge/tools/scaffold.sh <name> "<description>" [type]
# Edit the generated file
./skillforge/tools/validate.sh skills/<name>/SKILL.md
```

### Generate a skill using the framework:
Just ask Claude to create a skill — SkillForge activates automatically.

### Evaluate an existing skill:
"Evaluate the skill at skills/search-skill/SKILL.md"
