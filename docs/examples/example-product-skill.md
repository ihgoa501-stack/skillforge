# Example: Product Requirement Document (PRD) Skill

This is an example of what a skill generated through SkillForge looks like. It demonstrates the structure, specificity, and do/don't patterns that result from the case-study-first methodology.

---

## Skill: prd-writer

### Purpose
Write product requirement documents that create alignment, not just documentation. Based on how top product teams (Stripe, Linear, Figma) actually write PRDs.

### When to Use
- Starting a new feature or product
- Need to align engineering, design, and leadership
- Someone says "we should build X" without clear problem definition
- NOT for: bug fixes, small UI tweaks, technical refactoring (use a tech spec instead)

---

## Writing Process

### Phase 1: Define the Problem (MOST IMPORTANT)

Start with the problem, not the solution. Most bad PRDs fail here.

**✅ Do:**
```
## Problem
Customer support team spends 4 hours/week manually tagging and routing
incoming tickets. Average first-response time is 6 hours. Target is 2 hours.
This gap costs ~$50k/month in SLA penalties and churned customers.
```

**❌ Don't:**
```
## Problem
We need an AI-powered ticket routing system with a React dashboard and
WebSocket integration for real-time updates.
```
**Why:** The second example jumps to solution. It hasn't proven there's a problem worth solving.

**Technique from:** Amazon 6-pager (problem-first) + Marty Cagan (problem space vs solution space)

---

### Phase 2: Define Success

Specific, measurable outcomes. Not features shipped.

**✅ Do:**
```
## Success Metrics
- First-response time: 6 hours → < 2 hours (within 30 days of launch)
- Manual routing hours: 4 hrs/week → < 30 min/week
- Ticket misrouting rate: current 12% → < 3%
- CSAT after resolution: maintain current 4.2/5 minimum
```

**❌ Don't:**
```
## Success Metrics
- Launch AI ticket routing
- Better customer experience
- Reduced workload for support team
```
**Why:** Can't verify success. "Better experience" means nothing without a metric.

**Technique from:** Teresa Torres (outcome-focused requirements) + Gibson Biddle (DHM metrics)

---

### Phase 3: Define the Solution Approach

Describe WHAT and WHY, not HOW (leave implementation to engineering).

**✅ Do:**
```
## Solution Approach

### Core Mechanism
When a ticket arrives, it should be:
1. Classified by topic (billing, technical, account, feature request)
2. Prioritized (urgent: SLA-bound, high, normal, low)
3. Routed to the right team queue

### Key Design Decisions
- **Rules-first, AI-second:** Start with keyword rules (deterministic), add ML
  classification later. We need 100% predictability for SLA-bound tickets.
- **Human override always available:** Any routing decision can be overridden.
  Overrides become training data.
- **Gradual rollout:** Route 10% of tickets → measure → 50% → 100%
```

**❌ Don't:**
```
## Solution
Build a microservices-based ticket routing engine using TensorFlow for NLP
classification, React frontend, PostgreSQL for ticket storage, and Kafka
for event streaming between services.
```
**Why:** Dictates implementation. Engineering should decide architecture.

**Technique from:** Marty Cagan (empowered teams, PM owns WHY) + Amazon (narrative, not specs)

---

### Phase 4: User Scenarios

Show the flow, not just describe it.

**✅ Do:**
```
## Primary Scenario: Customer Submits Billing Question

1. Customer emails support@company.com with: "I was charged twice last month"
2. System detects keywords: charged, twice, billing
3. System classifies: topic=billing, priority=high (payment issue)
4. Routes to Billing Support queue
5. Support agent sees: ticket + classification reason ("detected: billing keywords")
6. Agent resolves, optionally corrects classification → feedback logged

### Edge Cases
- **Ambiguous ticket:** "Help! Nothing works!" → Routes to General queue with
  flag "ambiguous — needs human triage"
- **Multi-topic:** "Billing issue AND my account is locked" → Routes to highest
  priority topic (billing = high, account = normal → routes to Billing)
```

**❌ Don't:**
```
## User Flow
1. User submits ticket
2. AI processes it
3. Ticket gets routed
```
**Why:** Too abstract. No one can implement from this. Edge cases invisible.

**Technique from:** Jobs to be Done (what job is the user hiring the product for?)

---

## Common Mistakes to Avoid

These come from real PRD failures studied:

| Mistake | Real Example | Why It Failed |
|---------|-------------|---------------|
| **Solution-first** | "We need to rebuild the dashboard in React" | No problem validated. Built something nobody needed. |
| **No success metrics** | "Better UX" as the only goal | Team built for 3 months. Couldn't prove it worked. Leadership killed the project. |
| **Dictating implementation** | PRD specified database schema and API routes | Engineers disengaged. "If they're doing my job, why am I here?" |
| **No edge cases** | Only described the happy path | 40% of tickets fell into unhandled scenarios. Support team reverted to manual. |
| **Feature creep** | 15 "nice to have" features in v1 | Timeline bloated 3x. MVP never shipped. |
| **Writing for engineers only** | JIRA-style tickets with technical jargon | Design and leadership couldn't evaluate. Misalignment at review. |

---

## Quality Checklist

Before sharing the PRD, verify:
- [ ] Problem stated before solution?
- [ ] Success metrics specific and measurable?
- [ ] Solution describes WHAT and WHY, not HOW?
- [ ] At least 3 edge cases addressed?
- [ ] Rollout/rollback plan included?
- [ ] Readable by non-engineers (design, leadership, support)?
- [ ] Can someone say "no" to this? (If it's unfalsifiable, it's not a real proposal)

---

## Self-Check (for the AI)

After generating a PRD, ask:
1. Would an engineer read this and know WHAT to build without being told HOW?
2. Would a designer read this and understand the user scenarios?
3. Would a VP read this and understand the business impact and success criteria?
4. Are there concrete examples, not just abstract descriptions?

---

*This skill was generated using SkillForge, grounded in methodologies from Marty Cagan, Teresa Torres, Amazon (6-pager), Gibson Biddle, and Clayton Christensen (JTBD).*
