#!/usr/bin/env bash
# SkillForge Scaffold — Create a new SKILL.md from template
# Usage: ./scaffold.sh skill-name "Short description" [skill-type]
#
# Generates:
#   skills/<skill-name>/SKILL.md  — scaffolded from the appropriate template

set -euo pipefail

SKILL_NAME="${1:-}"
SKILL_DESC="${2:-}"
SKILL_TYPE="${3:-generation}"  # default to generation type

if [[ -z "$SKILL_NAME" ]] || [[ -z "$SKILL_DESC" ]]; then
    echo "Usage: ./scaffold.sh <skill-name> \"<description>\" [skill-type]"
    echo ""
    echo "Skill types:"
    echo "  summary, insight, generation, decision, evaluation,"
    echo "  diagnosis, persuasion, planning, research, facilitation,"
    echo "  transformation, automation, integration, code-generation, analysis"
    echo ""
    echo "Example:"
    echo "  ./scaffold.sh cold-outreach \"Write B2B cold emails that get replies\" persuasion"
    exit 1
fi

SKILL_DIR="skills/$SKILL_NAME"
SKILL_FILE="$SKILL_DIR/SKILL.md"

if [[ -d "$SKILL_DIR" ]]; then
    echo "❌ Directory already exists: $SKILL_DIR"
    exit 1
fi

mkdir -p "$SKILL_DIR"

cat > "$SKILL_FILE" << EOF
---
name: $SKILL_NAME
description: $SKILL_DESC
model: sonnet
---

# $(echo "$SKILL_NAME" | sed 's/-/ /g' | sed 's/\b\(.\)/\u\1/g')

$SKILL_DESC

## When to Use

- When [specific trigger condition]
- When the user [describes this need]
- NOT when [boundary — when a different skill is better]

## Process

### Step 1: [First step name]
[What to do in this step. Include: what to look for, what to produce]

**✅ Do:** "[example of correct approach]"
**❌ Don't:** "[example of wrong approach]"

### Step 2: [Second step name]
[What to do in this step]

**✅ Do:** "[example of correct approach]"
**❌ Don't:** "[example of wrong approach]"

### Step 3: [Third step name]
[What to do in this step]

## Key Techniques

### Technique 1: [Name]
- **What:** [description of technique]
- **When to use:** [condition]
- **Example:** "[concrete example]"

### Technique 2: [Name]
- **What:** [description of technique]
- **When to use:** [condition]
- **Example:** "[concrete example]"

## Common Mistakes

| Mistake | Why It Happens | How to Avoid |
|---------|---------------|-------------|
| [mistake 1] | [root cause] | [prevention] |
| [mistake 2] | [root cause] | [prevention] |
| [mistake 3] | [root cause] | [prevention] |

## Quality Checklist

Before delivering output, verify:
- [ ] [Checkable criterion 1]
- [ ] [Checkable criterion 2]
- [ ] [Checkable criterion 3]
- [ ] [Checkable criterion 4]

## Self-Check (for the AI)

After generating output, ask:
1. [Verification question 1]
2. [Verification question 2]
3. [Verification question 3]

---

*Generated with SkillForge. Improve this skill by running skill-evaluator and skill-improver.*
EOF

echo ""
echo "✅ Skill scaffolded at: $SKILL_FILE"
echo ""
echo "Next steps:"
echo "  1. Fill in the template sections"
echo "  2. Find golden cases: search for top practitioners doing [$SKILL_DESC]"
echo "  3. Find failure cases: search for common mistakes in [$SKILL_DESC]"
echo "  4. Run: skill-evaluator to score the result"
echo "  5. Run: skill-improver to refine"
echo ""
echo "  Or use skillforge to generate it from expert research:"
echo "  'Help me create a skill for $SKILL_DESC'"
