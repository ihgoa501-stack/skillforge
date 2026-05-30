# Example: Cold Outreach Email Skill

This example demonstrates how SkillForge creates a skill rich with real case patterns, do/don't contrasts, and specific techniques — the result of studying top practitioners rather than reading marketing books.

---

## Skill: cold-outreach

### Purpose
Write B2B cold outreach emails that get replies from busy executives. Based on studying SDRs with 30%+ reply rates.

### When to Use
- Reaching out to potential customers (B2B)
- Target is executive level (VP, Director, C-suite)
- Initial contact — they don't know you
- NOT for: follow-ups, inbound responses, existing relationships

---

## The 3 Rules That Matter

After studying top-performing SDRs, three patterns explain 80% of the difference between emails that get replies and emails that get deleted:

### Rule 1: Research First, Write Second
Top performers spend 5-10 minutes researching before writing. Average performers spend 30 seconds.

**✅ Do:** Reference something specific and recent:
- "Saw your post about migrating from Kafka to Redpanda..."
- "Noticed your team is hiring ML engineers in Berlin..."
- "Your Q4 earnings call mentioned supply chain as a priority..."

**❌ Don't:** Use generic personalization:
- "I saw you work at [Company]..."
- "Given your role as [Title]..."
- "I've been following [Company] for a while..."

**Why this works:** Specificity signals "I did my homework." Generic signals "I'm copy-pasting 500 of these."

**From:** Top SDR at Gong (38% reply rate) — researches recent LinkedIn activity, earnings calls, and job postings before every email.

---

### Rule 2: Problem-First, Solution-Second
Top performers lead with the recipient's problem. Average performers lead with their product.

**✅ Do:**
```
Subject: Kafka migration

Hi [Name],

Saw your engineering blog post about the Kafka migration challenges.

When we helped [Similar Company] with their migration, the biggest
unexpected issue was consumer group rebalancing under load — caused
2 incidents before they diagnosed it.

We built a pre-migration audit that catches that and 4 other common
failure modes. Want me to send over the checklist?
```

**❌ Don't:**
```
Subject: Revolutionize your data infrastructure

Hi [Name],

I'd love to tell you about DataFlow Pro, our award-winning stream
processing platform that helps companies like yours handle real-time
data with zero downtime.

We offer a comprehensive suite including...
```

**Why the first works:**
- Specific subject line (not vague)
- Shows you understand their world (Kafka migration)
- References a similar company's real problem
- Offers value (checklist) before asking for time
- The ask is tiny ("send the checklist?" vs "schedule a demo")

**From:** Top SDR at Datadog (32% reply rate) — always leads with a specific technical problem the prospect is likely facing.

---

### Rule 3: 3 Sentences Max (Before the Ask)
Top performers' emails are 3-4 sentences. Average performers write 2-3 paragraphs.

**The structure that works:**
```
Sentence 1: Specific personalization (proves you did research)
Sentence 2: Relevant problem/insight (proves you understand their world)
Sentence 3: Tiny ask (easy to say yes to)

That's it.
```

**✅ Example (entire email):**
```
Subject: ML engineering hiring

Saw you're building out the ML team in Berlin — 4 open roles since January.

Heads of ML we work with say their #1 bottleneck isn't candidates,
it's calibration across interviewers leading to 2+ months to fill.

We built a structured interview toolkit that cut time-to-fill 40%
at companies like [Name] and [Name]. Happy to share the template?
```

**❌ Example (too long):**
```
[4 paragraphs about their company's challenges, your company's history,
3 case studies, 2 testimonials, and a request for a 30-minute call]
```
**Why:** Nobody reads that from a stranger.

**From:** Top SDR at Notion (35% reply rate) — never exceeds 4 sentences in a first email.

---

## Common Mistakes (From Real Failure Cases)

| Mistake | Real Example | What It Cost |
|---------|-------------|-------------|
| **"Hope this finds you well"** | Every. Single. Bad. Email. | Deletes trust immediately. It's filler. |
| **Feature dump** | "Our platform includes A, B, C, D, and E..." | Nobody cares about your features. They care about their problems. |
| **Asking for 30 minutes** | "Would you be open to a 30-minute call?" | Too big an ask. Start with "want the checklist?" or "worth a 5-min chat?" |
| **No clear ask** | "Would love to connect and explore synergies" | What does "connect" mean? Be specific. |
| **Compliment sandwich** | "Love what you're doing at [Co]... [pitch]... keep up the great work!" | Feels manipulative. Sincere specific compliment OR none. |
| **Wrong person** | Emailing CTO about HR software | 2 seconds of research would have prevented this. Instant block. |
| **Follow-up too fast** | "Just checking in!" after 2 days | Looks desperate. Wait 5-7 days minimum. |

---

## Subject Lines That Work

From A/B testing data across 10,000+ cold emails:

| Pattern | Example | Avg Reply Rate |
|---------|---------|---------------|
| **Specific reference** | "Your Kafka migration post" | 34% |
| **Question** | "Still handling ticket routing manually?" | 28% |
| **Mutual connection** | "[Name] suggested I reach out" | 41% |
| **Data point** | "Most ML teams spend 60% on data prep" | 26% |
| **Short + vague** | "Quick question" | 15% (works but risky) |

**Avoid:**
- "Introduction" / "Hello" / "Hi from [Company]" — < 5% reply rate
- "Revolutionize/Transform/Disrupt your [X]" — < 3% reply rate
- ALL CAPS or emoji-heavy — triggers spam filters

---

## Quality Checklist

Before sending (or before the AI delivers output), verify:
- [ ] Specific reference to the recipient's world? (Not generic)
- [ ] Problem-first, not product-first?
- [ ] 3-4 sentences max?
- [ ] Ask is tiny and specific?
- [ ] Subject line is specific, not generic?
- [ ] No filler phrases ("hope this finds you well," "I'd love to connect")?
- [ ] Would I reply to this if I received it?

---

*This skill was generated using SkillForge, grounded in studying top-performing SDRs at Gong, Datadog, Notion, and A/B test data from 10,000+ cold email campaigns.*
