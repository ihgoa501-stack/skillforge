---
name: search-skill
description: Search and recommend AI agent skills from trusted marketplaces. Use when users ask "is there a skill for...", "find me a skill...", or "I need a skill that can..."
model: sonnet
---

# Search Skill

Search and recommend skills from trusted marketplaces based on user requirements. Enhanced with tiered trust scoring, security checks, and MCP-ready architecture.

## When to Use

When users want to find an existing skill rather than create one:

- "Is there a skill that can auto-generate changelogs?"
- "Find me a skill for frontend design"
- "I need a skill for automated browser testing"
- "What skills exist for code review?"

## Data Sources (by trust level)

### Tier 1 — Official / High Trust (search first)
| Source | URL | Notes |
|--------|-----|-------|
| anthropics/skills | github.com/anthropics/skills | Official examples, most reliable |
| ComposioHQ/awesome-claude-skills | github.com/ComposioHQ/awesome-claude-skills | Hand-picked, 12k+ stars |

### Tier 2 — Community Curated (search second)
| Source | URL | Notes |
|--------|-----|-------|
| travisvn/awesome-claude-skills | github.com/travisvn/awesome-claude-skills | Community curated, 21k+ stars |
| skills.sh | skills.sh | Vercel's official directory |

### Tier 2.5 — Large Community Registry
| Source | URL | Notes |
|--------|-----|-------|
| ClawHub | clawhub.ai | OpenClaw official registry, 5000+ skills, vector search |

### Tier 3 — Aggregators (use with caution)
| Source | URL | Notes |
|--------|-----|-------|
| skillsmp.com | skillsmp.com | Auto-scraped, requires extra verification |

## Search Process

### Step 1: Parse User Intent

Extract from user description:
- **Core functionality keywords** (e.g., changelog, browser, frontend)
- **Use case domain** (e.g., development, testing, design, writing)
- **Special requirements** (e.g., language support, specific framework)
- **Constraint signals** (e.g., "free", "open source", "offline")

### Step 2: Multi-Source Search

**IMPORTANT: Only search these 6 sources. Do NOT search the entire internet.**

Search by priority:
```
1. Search Tier 1 (official/high trust) first
2. If fewer than 5 results, continue to Tier 2
3. If still insufficient, search Tier 2.5 (ClawHub — large volume, check quality)
4. If still insufficient, search Tier 3 with strict filtering
5. If still nothing found, tell user honestly — suggest skillforge to create one
```

Allowed search queries for GitHub sources:
```
site:github.com/anthropics/skills {keywords}
site:github.com/ComposioHQ/awesome-claude-skills {keywords}
site:github.com/travisvn/awesome-claude-skills {keywords}
```

For non-GitHub sources, use WebFetch directly (see methods below):
```
skills.sh — WebFetch to scrape search results
clawhub.ai — WebFetch clawhub.ai/skills?q={keywords}
skillsmp.com — WebFetch with additional verification
```

Search methods:
- **GitHub repos:** Use `site:github.com/{repo}` to restrict scope
- **skills.sh:** WebFetch to scrape search results
- **ClawHub:** WebFetch `clawhub.ai/skills?q={keywords}` to search the registry
- **skillsmp.com:** WebFetch with additional verification steps

**Do NOT:**
- Search the entire web
- Use broad queries without `site:` restriction
- Include results from unknown sources

### Step 3: Quality Filtering (Critical)

**Must filter out:**

| Filter Condition | Threshold | Reason |
|-----------------|-----------|--------|
| GitHub stars < 10 | Stars ≥ 10 | Not community validated |
| Last update > 6 months | Updated within 180 days | Possibly abandoned |
| No SKILL.md file | Must have SKILL.md | Non-standard format |
| README too sparse | README > 200 words | Quality concerns |
| Contains suspicious code | See security checks below | Security risk |

**Security checks:**
- Requests sensitive permissions (e.g., ~/.ssh, env variables access)
- External network requests to unknown or suspicious domains
- Contains `eval()` or dynamic code execution
- Modifies system files without clear justification
- Obfuscated code patterns

### Step 4: Rank Results

Scoring formula:
```
Score = Source Trust × 0.40 + Community Signal × 0.30 + Freshness × 0.20 + Relevance Match × 0.10

Source Trust weights:
- Tier 1: 1.0
- Tier 2: 0.70
- Tier 2.5 (ClawHub): 0.55
- Tier 3: 0.40

Community Signal:
- Stars normalized to 0-1 (log scale, cap at 10k)
- If no stars available (e.g., skills.sh), use 0.5 default

Freshness:
- Updated within 30 days: 1.0
- Updated within 90 days: 0.8
- Updated within 180 days: 0.5
- Older: 0.2
```

### Step 5: Format Output

Return Top 5-10 results, organized by tier:

```markdown
## Found X Relevant Skills

### 🏅 Recommended (Tier 1 — Official/Verified)
1. **[skill-name](url)** — Source: anthropics/skills
   - **What it does:** [one-line description]
   - **Stars:** xxx | **Updated:** [date]
   - **Install:** `/plugin marketplace add [source]`
   - **Why recommended:** [specific strength]

### 👍 Worth Considering (Tier 2 — Community Trusted)
2. **[skill-name](url)** — Source: [source name]
   ...

### 👀 For Reference (Tier 2.5/3 — Use with Caution)
- **[skill-name](url)** — Reason: [low stars / unverified / outdated]

### ❌ None Found
If nothing suitable: suggest using skillforge to create a custom skill.
```

## Example

**User:** "Is there a skill that helps write commit messages?"

**Search process:**
1. Extract keywords: commit, message, git
2. Search Tier 1: Found git-commit-assistant in anthropics/skills
3. Search Tier 2: Found semantic-commit in ComposioHQ
4. Filter: Exclude results with stars < 10
5. Rank: Official sources first

**Output:**
```markdown
## Found 3 Relevant Skills

### 🏅 Recommended
1. **git-commit-assistant** — Source: anthropics/skills (official)
   - **What it does:** Generate semantic commit messages following conventional commits
   - **Install:** `/plugin marketplace add anthropics/claude-code`

2. **semantic-commit** — Source: ComposioHQ
   - **What it does:** Follow conventional commits spec with type/scope/description
   - **Stars:** 890 | **Updated:** 2 weeks ago

### 👀 For Reference
- **gitmoji-cli** — Stars: 45 | Lightweight but limited functionality
```

## Important Rules

1. **Never recommend unverified skills** — Better to recommend fewer than risk bad ones
2. **Stay skeptical with Tier 3** — Results from skillsmp.com require double verification
3. **Be honest about gaps** — If nothing fits, suggest skillforge
4. **Surface security concerns clearly** — Flag risks, let user decide
5. **Prefer official over popular** — Official > high stars on unofficial source
6. **Explain WHY each recommendation** — Not just "here are results" but "here's why this one fits"

## Integration with SkillForge

If no existing skill meets the user's needs, seamlessly suggest:
```
"No existing skill matches your needs well. Would you like me to use
SkillForge to create one based on how top practitioners handle [task]?"
```

This creates a smooth handoff from discovery to creation.
