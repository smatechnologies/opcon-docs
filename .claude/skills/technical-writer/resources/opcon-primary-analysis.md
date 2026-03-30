# Writer-Friendly Documentation Standard

> **Purpose:** This file defines the primary page template used to evaluate documentation completeness and structure. Every feature page submitted for review is scored against these 13 sections (0–12).
>
> **Used by:** `doc-quality-assessor` — Template Adherence Review (Step 3) and Completeness subscore.

---

## Template Overview

Every feature page must include all 13 sections below, in order. Each section has a defined intent — use it to judge whether the content present actually fulfills the section's purpose, not just whether a heading exists.

| # | Section Title | One-Line Intent |
|---|---|---|
| 0 | Theme and Audience | Declares page type and target reader at the top |
| 1 | What Is It? (Overview) | 2–4 sentence intro for a first-time reader |
| 2 | When Would You Use It? (Use Cases) | Bullet list of key scenarios |
| 3 | Why Would You Use It? (Value) | Benefits in plain language |
| 4 | How To Implement It | Prerequisites, numbered steps, one example |
| 5 | Configuration Options | Table: Setting \| What It Does \| Default \| Notes |
| 6 | Exception Handling | Error → Meaning → Fix |
| 7 | Administration | Enable/disable, roles, maintenance |
| 8 | Security Considerations | Auth, authorization, data security, sensitive data |
| 9 | Operations (Running in Production) | Monitoring, alerts, performance/scaling |
| 10 | FAQs | Most predictable user questions |
| 11 | Examples / Recipes | Real-world scenarios |
| 12 | Glossary | Short definitions of key terms |

---

## Section Definitions

### Section 0 — Theme and Audience

At the top of the page, clearly state:

- **Theme:** one of *Build*, *Configure*, *Troubleshoot*, or *Overview*
- **Who Is It For?** — the intended audience, selected from:
  - *System Administrator*
  - *Automation Engineer*
  - *Application Owner*
  - *Operations Staff*
  - *Business Analyst*
  - *Compliance Team*

**Evaluation pass criteria:** Both fields are present, populated with a valid value from the allowed lists, and placed at the top of the page before any body content.

---

### Section 1 — What Is It? (Overview)

2–4 sentences explaining the feature for a first-time reader. Should answer: what does this feature do, and what problem does it solve?

**Evaluation pass criteria:** 2–4 sentences present. No bullet lists. Written for someone with no prior exposure to the feature.

---

### Section 2 — When Would You Use It? (Use Cases)

A bullet list of key scenarios in which a user would reach for this feature. Each bullet should describe a real situation, not a capability.

**Evaluation pass criteria:** At least 2 bullets present. Phrased as scenarios ("When you need to…", "If your organization…"), not capabilities ("This feature supports…").

---

### Section 3 — Why Would You Use It? (Value)

Benefits written in plain language. Focus on outcomes: easier, faster, safer, more automated, reduced risk, etc. Avoid marketing language.

**Evaluation pass criteria:** At least 2 distinct benefits stated. Written from the reader's perspective. Does not simply restate the feature's capabilities.

---

### Section 4 — How To Implement It

Three required parts:

1. **Prerequisites** — what must be true or in place before starting
2. **Numbered steps** — one action per step, in order
3. **One short example or screenshot** — a concrete illustration of the completed setup or a key step

**Evaluation pass criteria:** All three parts present. Steps are numbered. At least one example or screenshot placeholder/description present.

---

### Section 5 — Configuration Options

A table with four columns:

| Setting | What It Does | Default | Notes |
|---|---|---|---|

Each configurable setting for the feature should appear as one row.

**Evaluation pass criteria:** Table present with all four columns. At least one row populated. No placeholders left blank without a stated reason.

---

### Section 6 — Exception Handling

A list of common problems and solutions. Each entry follows this pattern:

> **Error or symptom** → What it means → How to fix it

**Evaluation pass criteria:** At least 2 error/symptom entries present. Each entry includes the error, its meaning, and a fix. Not a generic "contact support" placeholder.

---

### Section 7 — Administration

How administrators manage the feature on an ongoing basis. Must cover:

- How to enable or disable the feature
- Which roles can access or configure it
- Routine maintenance tasks (if any)

**Evaluation pass criteria:** All three sub-topics addressed. Role names use product terminology (not code names).

---

### Section 8 — Security Considerations

Covers the security surface of the feature:

- Authentication — what credentials or tokens are involved
- Authorization — who can access or modify this feature
- Data security — what data is stored, transmitted, or exposed
- Sensitive data — any PII, credentials, or regulated data handled

**Evaluation pass criteria:** All four sub-topics addressed, even if briefly. Section is not omitted or left as a stub.

---

### Section 9 — Operations (Running in Production)

How the feature behaves and is monitored in a live environment:

- Monitoring — what signals indicate the feature is healthy
- Alerts — what conditions should trigger notification
- Performance and scaling — known limits, load considerations, or tuning guidance

**Evaluation pass criteria:** All three sub-topics addressed. Specific metrics, alert conditions, or thresholds stated where applicable.

---

### Section 10 — FAQs

A list of the most predictable questions a user would have after reading the page. Each FAQ is a question-and-answer pair.

**Evaluation pass criteria:** At least 3 Q&A pairs present. Questions reflect real user confusion or edge cases, not rephrased section headings.

---

### Section 11 — Examples / Recipes

Real-world scenarios showing the feature in use end-to-end. Each example should include:

- The scenario or goal
- The configuration or steps used
- The expected outcome

**Evaluation pass criteria:** At least 1 complete example present. Must be specific to a plausible real-world situation, not generic.

---

### Section 12 — Glossary

Short definitions of key terms introduced or heavily used on the page. Format:

> **Term** — definition in one or two sentences.

**Evaluation pass criteria:** At least 2 terms defined. Terms are specific to the feature or domain, not general IT vocabulary.

---

## Scoring Guidance

When evaluating a page against this template, apply the following status to each section:

| Status | Meaning |
|---|---|
| ✅ Present and complete | Section exists and fulfills its stated intent |
| ⚠️ Present but incomplete | Section exists but is missing one or more required elements |
| ❌ Missing | Section is absent or reduced to a heading with no content |

The **Completeness subscore** (weighted 25%) is derived from the ratio of ✅ sections to total sections. Partial credit applies for ⚠️ sections at the reviewer's discretion.

The **Structure / Template Adherence subscore** (weighted 15%) evaluates whether sections appear in order, use the correct format (table, numbered list, etc.), and meet the structural requirements stated above — not just whether content is present.
