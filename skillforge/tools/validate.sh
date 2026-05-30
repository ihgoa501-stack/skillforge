#!/usr/bin/env bash
# SkillForge Validate — Quick validation checks for SKILL.md files
# Usage: ./validate.sh path/to/SKILL.md
#
# Checks for:
#   1. YAML frontmatter (name, description)
#   2. Required structural sections
#   3. Anti-pattern signals (abstract virtues, missing anti-examples)
#   4. Readability metrics

set -euo pipefail

SKILL_FILE="${1:-}"
if [[ -z "$SKILL_FILE" ]]; then
    echo "Usage: ./validate.sh path/to/SKILL.md"
    exit 1
fi

if [[ ! -f "$SKILL_FILE" ]]; then
    echo "❌ File not found: $SKILL_FILE"
    exit 1
fi

SKILL_CONTENT=$(cat "$SKILL_FILE")
ISSUES=0
PASSES=0

echo "============================================"
echo "  SkillForge Validate"
echo "  File: $SKILL_FILE"
echo "============================================"
echo ""

# --- Check 1: YAML Frontmatter ---
echo "--- Frontmatter ---"
if echo "$SKILL_CONTENT" | head -1 | grep -q "^---$"; then
    echo "✅ Has opening ---"
    ((PASSES++))
else
    echo "❌ Missing YAML frontmatter opening ---"
    ((ISSUES++))
fi

if echo "$SKILL_CONTENT" | grep -q "^name:"; then
    echo "✅ Has name field"
    ((PASSES++))
else
    echo "❌ Missing 'name:' in frontmatter"
    ((ISSUES++))
fi

if echo "$SKILL_CONTENT" | grep -q "^description:"; then
    echo "✅ Has description field"
    ((PASSES++))
else
    echo "❌ Missing 'description:' in frontmatter"
    ((ISSUES++))
fi

# --- Check 2: Required Structural Elements ---
echo ""
echo "--- Structure ---"

if echo "$SKILL_CONTENT" | grep -q "When to Use"; then
    echo "✅ Has 'When to Use' section"
    ((PASSES++))
else
    echo "⚠️  No 'When to Use' section found (recommended)"
fi

if echo "$SKILL_CONTENT" | grep -qiE "step|phase|process"; then
    echo "✅ Has process/steps section"
    ((PASSES++))
else
    echo "⚠️  No process/steps section found (recommended)"
fi

# --- Check 3: Anti-Pattern Signals ---
echo ""
echo "--- Anti-Pattern Detection ---"

# AP-4: Abstract virtues
ABSTRACT_COUNT=$(echo "$SKILL_CONTENT" | grep -ciE "\bbe (empathetic|strategic|clear|concise|creative|innovative|helpful)\b" || true)
if [[ "$ABSTRACT_COUNT" -gt 3 ]]; then
    echo "⚠️  Found $ABSTRACT_COUNT instances of abstract 'be [adjective]' patterns (AP-4)"
    echo "   Consider replacing with concrete techniques"
else
    echo "✅ Abstract virtue check passed (found $ABSTRACT_COUNT, threshold: 3)"
    ((PASSES++))
fi

# AP-5: Missing "Don't" examples
DO_COUNT=$(echo "$SKILL_CONTENT" | grep -ciE "✅|Do:" || true)
DONT_COUNT=$(echo "$SKILL_CONTENT" | grep -ciE "❌|Don't:|Do not:" || true)
if [[ "$DONT_COUNT" -eq 0 ]] && [[ "$DO_COUNT" -gt 0 ]]; then
    echo "⚠️  Has $DO_COUNT 'do' examples but 0 'don't' examples (AP-5)"
    echo "   Consider adding anti-examples for contrast"
elif [[ "$DONT_COUNT" -gt 0 ]]; then
    echo "✅ Has do/don't contrast ($DO_COUNT do, $DONT_COUNT don't)"
    ((PASSES++))
else
    echo "⚠️  No do/don't examples found"
fi

# AP-11: Self-check
if echo "$SKILL_CONTENT" | grep -qiE "self-check|verify|quality check|before.*deliver"; then
    echo "✅ Has self-check/verification section"
    ((PASSES++))
else
    echo "⚠️  No self-check section found (AP-11)"
fi

# --- Check 4: Readability ---
echo ""
echo "--- Readability ---"

# Word count
WORD_COUNT=$(echo "$SKILL_CONTENT" | wc -w | tr -d ' ')
echo "Word count: $WORD_COUNT"
if [[ "$WORD_COUNT" -lt 200 ]]; then
    echo "⚠️  Skill is very short (< 200 words). May lack sufficient detail."
elif [[ "$WORD_COUNT" -gt 5000 ]]; then
    echo "⚠️  Skill is very long (> 5000 words). Consider splitting or adding progressive disclosure."
else
    echo "✅ Word count in reasonable range"
    ((PASSES++))
fi

# Section count (rough proxy for structure)
SECTION_COUNT=$(echo "$SKILL_CONTENT" | grep -c "^## " || true)
echo "Top-level sections: $SECTION_COUNT"
if [[ "$SECTION_COUNT" -ge 3 ]]; then
    echo "✅ Has 3+ top-level sections"
    ((PASSES++))
elif [[ "$SECTION_COUNT" -ge 1 ]]; then
    echo "⚠️  Only $SECTION_COUNT section(s). Consider more structure."
else
    echo "❌ No sections found. Needs structure."
    ((ISSUES++))
fi

# --- Summary ---
echo ""
echo "============================================"
echo "  Summary"
echo "============================================"
echo "Passed: $PASSES"
echo "Issues: $ISSUES"

if [[ "$ISSUES" -eq 0 ]]; then
    echo ""
    echo "✅ Skill looks good! Run skill-evaluator for detailed scoring."
    exit 0
else
    echo ""
    echo "⚠️  $ISSUES issue(s) found. Review and fix before finalizing."
    echo "   Run 'skillforge' to regenerate with improvements."
    exit 1
fi
