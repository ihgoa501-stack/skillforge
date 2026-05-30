# SkillForge

> **Learn from the best, then build better.** — An optimized framework for creating AI agent skills grounded in proven expert methodologies.

A skill that helps you discover and incorporate frameworks, principles, and best practices from recognized masters before generating any new skill. Works with Claude Code, Codex, and other AI agent platforms.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
![Skills: 5](https://img.shields.io/badge/skills-5-blue)
![Domains: 15+](https://img.shields.io/badge/domains-15+-green)

---

## Why SkillForge?

**The hard part of creating a skill isn't the format — it's knowing the best way to do the thing.**

SkillForge is an optimized evolution of the skill-from-masters project. While the original pioneered the "learn from experts" approach, SkillForge adds:

| Improvement | What it means |
|-------------|---------------|
| **English-first + i18n** | Primary content in English with structured multilingual support |
| **Extended taxonomy** | 15 skill types covering both technical and non-technical domains |
| **Quality rubric** | Standardized 5-dimension evaluation for every generated skill |
| **Feedback loop** | Built-in skill-evaluator and skill-improver for iterative refinement |
| **Structured templates** | Output templates per skill type for consistent quality |
| **Anti-pattern catalog** | Curated catalog of common failure modes to avoid |
| **Progressive disclosure** | Modular reference files load only what's needed |
| **Tooling** | Validation and scaffolding scripts for rapid skill development |

## How It Works

```
1. You: "I want to create a skill for user interviews"

2. SkillForge:
   ├── Narrows the task scope (what exactly? in what context?)
   ├── Searches for GOLDEN examples (practitioners who do it best)
   ├── Searches for FAILURE cases (common mistakes people make)
   ├── Finds before/after comparisons (effective vs ineffective)
   ├── Cross-validates patterns across multiple sources
   └── (Optionally) Explains WHY with theory

3. Surfaces findings:
   - Rob Fitzpatrick (The Mom Test) — real conversation examples
   - Steve Portigal (Interviewing Users) — specific techniques
   - NN Group — research-backed do's and don'ts
   - Common failure: leading questions, asking about hypotheticals

4. You select which patterns to incorporate

5. Generates skill using structured templates + quality rubric

6. (Optional) skill-evaluator scores the output
7. (Optional) skill-improver refines based on evaluation
```

## Key Features

| Feature | Description |
|---------|-------------|
| **Practice-First Search** | Finds top practitioners (not just authors) — the people who actually do the thing best |
| **Golden + Failure Cases** | Learns from both what works AND what doesn't — contrast is the best teacher |
| **Cross-Validation** | Compares multiple experts to find consensus patterns and flag disagreements |
| **Quality Rubric** | 5-dimension scoring: Clarity, Specificity, Actionability, Coverage, Testability |
| **Structured Output** | Type-specific templates ensure every skill has the right sections |
| **Iterative Refinement** | skill-evaluator → skill-improver feedback loop for continuous improvement |

## Methodology Registry

Covers 15+ domains with 80+ expert frameworks:

| Domain | Example Experts |
|--------|-----------------|
| Writing & Communication | Barbara Minto, William Zinsser, Amazon 6-pager |
| Product & Design | Marty Cagan, Teresa Torres, Dieter Rams |
| Sales & Marketing | Neil Rackham (SPIN), April Dunford, Seth Godin |
| Hiring & People | Laszlo Bock, Geoff Smart, Kim Scott |
| User Research | Rob Fitzpatrick, Steve Portigal, JTBD |
| Engineering | Martin Fowler, Kent Beck, John Ousterhout |
| Leadership | Andy Grove, Ray Dalio, Netflix Culture |
| Negotiation | Chris Voss, Fisher & Ury |
| Startups | Eric Ries, Paul Graham, YC |
| Decision Making | Jeff Bezos, Charlie Munger, Annie Duke |
| Personal Effectiveness | Cal Newport, James Clear, David Allen |
| Finance & Investing | Warren Buffett, Howard Marks |

Plus an **Oral Tradition** section for experts who share through talks and interviews (Jensen Huang, Patrick Collison, Naval Ravikant, etc.)

## Installation

### Option 1: Clone directly (Recommended)

```bash
# Navigate to your skills directory
cd ~/.claude/skills  # Claude Code
# or your platform's skills path

# Clone the skill
git clone https://github.com/YOUR_USERNAME/skillforge.git
```

### Option 2: Manual installation

1. Download the `skillforge` folder
2. Place it in your skills directory

### Dependencies

- **skill-creator** — for final skill generation (peer skill)
- Optional: **skill-evaluator** — for quality scoring (included)
- Optional: **skill-improver** — for iterative refinement (included)

## Usage

### Creating a new skill

The skill automatically activates when you ask to create a new skill. It runs **before** skill-creator to ground your skill in proven methodologies.

**Example session:**

```
You: "Help me create a skill for writing cold outreach emails"

SkillForge:
  > Let me narrow this down first. Are these B2B sales emails,
  > recruiting outreach, or partnership pitches?

You: "B2B sales, targeting CTOs at Series A startups"

SkillForge:
  > [Searches for top-performing SDRs and their actual emails]
  > [Searches for common cold email mistakes]
  > [Finds before/after rewrites that improved reply rates]
  >
  > I found several patterns from top performers:
  >
  > GOLDEN examples:
  > - 3 practitioners with 30%+ reply rates
  > - Their common pattern: research-first, problem-led, 3-sentence max
  >
  > FAILURE patterns:
  > - "I hope this finds you well" (deletes trust instantly)
  > - Feature-dumping without context
  > - Asking for "15 minutes" without saying why
  >
  > KEY contrast:
  > ✅ "Saw your post on Kafka migration — we helped Acme cut
  >    latency 60% with a similar approach. Worth a chat?"
  > ❌ "I'd love to tell you about our amazing data platform..."
  >
  > Which patterns resonate? Should I dive deeper into any?

You: "I like the research-first approach. Let's use that."

SkillForge: [Generates skill with structured template, includes
           do/don't contrasts, adds quality rubric scores]
```

### Finding existing skills

```
You: "Find me a skill for automated testing"

SkillForge (search-skill):
  > Searched 5 trusted sources
  > Found: webapp-testing (official), playwright (verified),
  >        code-review (26k stars)
```

### Learning from GitHub projects

```
You: "I want to convert images to ASCII art"

SkillForge (skill-from-github):
  > Found: ascii-image-converter (3.1k stars), RASCII (224 stars)
  > Which should I learn from?
```

## Skills Included

| Skill | File | Purpose |
|-------|------|---------|
| **skillforge** | `skillforge/SKILL.md` | Core: create skills from expert methodologies |
| **search-skill** | `skills/search-skill/SKILL.md` | Find existing skills from trusted sources |
| **skill-from-github** | `skills/skill-from-github/SKILL.md` | Learn from GitHub projects |
| **skill-evaluator** | `skills/skill-evaluator/SKILL.md` | Evaluate skill quality on 5 dimensions |
| **skill-improver** | `skills/skill-improver/SKILL.md` | Iteratively improve skills from feedback |

## File Structure

```
skillforge/
├── skillforge/
│   ├── SKILL.md                         # Core skill with optimized workflow
│   └── references/
│       ├── methodology-registry.md      # Curated expert frameworks (80+ entries)
│       ├── skill-taxonomy.md            # 15 skill type categories
│       ├── quality-rubric.md            # 5-dimension scoring standards
│       ├── output-templates.md          # Type-specific generation templates
│       └── anti-patterns.md             # Catalog of common failure modes
├── skills/
│   ├── search-skill/SKILL.md            # Enhanced skill discovery
│   ├── skill-from-github/SKILL.md       # Enhanced GitHub knowledge extraction
│   ├── skill-evaluator/SKILL.md         # Quality evaluation (NEW)
│   └── skill-improver/SKILL.md          # Iterative refinement (NEW)
├── tools/
│   ├── validate.sh                      # Skill validation script
│   └── scaffold.sh                      # New skill scaffolding script
├── docs/
│   ├── quickstart.md
│   └── examples/
│       ├── example-product-skill.md
│       └── example-writing-skill.md
├── README.md
├── LICENSE
└── .gitignore
```

## Quality Standards

Every skill generated through SkillForge is evaluated on:

1. **Clarity** — Can a new user understand what to do?
2. **Specificity** — Are there concrete examples, not just abstract principles?
3. **Actionability** — Does each instruction tell you exactly what action to take?
4. **Coverage** — Are both success patterns AND failure patterns addressed?
5. **Testability** — Can you verify the skill works with real scenarios?

## Philosophy

> **Skills are for doing, not for reading.**

The best skills feel like they were written by someone who has done the thing thousands of times — because they were built by studying people who have.

- **Practice experts > Theory experts** — Learn from top practitioners, not just authors
- **Cases first, theory second** — Theory explains what practice reveals
- **Golden + Failure cases** — Knowing what NOT to do is as valuable as knowing what TO do
- **Contrast is clarity** — "Do this, not that" teaches faster than "do this"

## Contributing

Contributions welcome! Especially:

- Adding new domains and experts to the methodology registry
- Improving framework descriptions with verified source links
- Sharing examples of skills created with this approach
- Adding new anti-patterns discovered through usage

## Credits

SkillForge is an optimized evolution of [skill-from-masters](https://github.com/GBSOSS/skill-from-masters) by GBSOSS. The original pioneered the approach of grounding AI skills in expert methodologies. SkillForge builds on that foundation with extended taxonomy, quality rubrics, feedback loops, structured templates, and English-first internationalization.

## License

MIT License — feel free to use, modify, and distribute.

---

**Philosophy:** Quality isn't written. It's selected — from the best practitioners in the world.
