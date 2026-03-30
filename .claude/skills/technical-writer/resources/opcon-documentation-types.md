# Documentation Types

Every documentation page falls into one of three types. Before writing or reviewing a page, identify its type and follow the corresponding structure. If a page combines types (e.g., a conceptual overview followed by a procedure), use the structure for each section independently.

---

## How to Identify the Type

```
What is the reader trying to do?

  "I need to understand something."      → Conceptual
  "I need to do something."              → Procedural
  "I need to look something up."         → Reference
```

---

## 1. Conceptual Documentation

**Purpose:** Build understanding of broader ideas, principles, or how things connect together. Helps readers understand the bigger picture — what features are for, why something works a certain way, and when they would use it.

**When to use:** Overviews, introductions, feature explanations, "how it works" topics, architecture descriptions, and "why" explanations.

### Structure

| Section | Required | Description |
|---|---|---|
| Title | Yes | Clear, descriptive title using sentence case. Should answer "what is this about?" |
| Introduction | Yes | 1–3 sentences explaining what this topic covers and why it matters. State the value to the reader upfront. |
| Body | Yes | The explanation itself. Organize by subtopic, not by chronological order. Use headings to break up distinct concepts. |
| Diagrams or examples | When helpful | Use diagrams, analogies, or real-world examples to make abstract concepts concrete. |
| How it connects | When applicable | Explain how this concept relates to other features or workflows. Link to related procedural or reference pages. |
| Related topics | When applicable | Links to related pages. |

### Guidelines

- Lead with **why it matters**, not what it is
- Explain concepts in terms the target audience already understands (consult learner-roles.md for assumed knowledge)
- Use concrete examples from a financial institution context
- Do not include step-by-step instructions — link to the procedural page instead
- Keep paragraphs short (3–5 sentences)
- Use headings to make the content scannable

### Template

```markdown
# [Topic Name]

[1–3 sentence introduction: what this is and why it matters to the reader.]

## [Subtopic 1]

[Explanation with context and examples.]

## [Subtopic 2]

[Explanation with context and examples.]

## How [Topic] Works with [Related Feature]

[Explain connections to other features or workflows.]

**Related topics:**

- [Related procedural page]
- [Related reference page]
```

### Example

```markdown
# Frequencies

Frequencies define when a job or schedule is eligible to run. When a job
is added to a schedule, one or more frequencies determine which days and
times OpCon will build and submit that job for execution.

## Why frequencies matter

Without a frequency, OpCon has no rules for when to run a job. A correctly
configured frequency ensures the job runs on the right days, at the right
times, and skips holidays or blackout periods automatically — reducing
manual intervention and preventing missed processing windows.

## How frequencies work with schedules

When OpCon builds the daily schedule, it evaluates each job's frequency
against the current date. Jobs whose frequency conditions are met are added
to that day's schedule. Jobs that do not meet the frequency conditions are
not built for that day.

**Related topics:**

- [Add a Frequency to a Job]
- [Configure Holiday Calendars]
```

---

## 2. Procedural Documentation

**Purpose:** Explain how to do something in an intentionally sequential order using step-by-step instructions.

**When to use:** Any task the reader needs to complete — installing, configuring, creating, importing, exporting, or any workflow that has a defined sequence of actions.

### Structure

| Section | Required | Description |
|---|---|---|
| Title | Yes | Starts with a verb or describes the task clearly. Example: "Add a Job to a Schedule" or "Configure Agent Communication Settings" |
| Introduction | Yes | 1–2 sentences stating what the procedure accomplishes and when/why the reader would do it. |
| Prerequisites | When applicable | What must be true or completed before starting. Use a note or admonition. |
| Steps | Yes | Numbered, sequential, one action per step. Follows all rules in documentation-standards.md. |
| Result statement | Yes | Final step or sentence describing what the reader sees or what changed. |
| Related topics | When applicable | Links to next steps or related procedures. |

### Guidelines

- Follow all procedural rules in documentation-standards.md (action verbs, one action per step, ~10 step limit, etc.)
- State the goal before the steps: "To [accomplish goal], complete the following steps:"
- Put prerequisites before the steps, not buried within them
- End with a result statement so the reader knows they succeeded
- Link to other procedures rather than duplicating steps
- Use tables within steps when the reader must choose between options

### Template

```markdown
# [Task Name]

[1–2 sentences: what this procedure accomplishes and when to use it.]

!!! note "Prerequisite"
    [What must be completed before starting.]

To [accomplish goal], complete the following steps:

1. [First action.]
2. [Second action.]
3. [Third action.] The [result] is displayed.

**Related topics:**

- [Next step or related procedure]
```

### Example

```markdown
# Add a Job to a Schedule

Use this procedure to add a new automated job to an existing schedule.
Repeat this procedure for each job that needs to be added.

!!! note "Prerequisite"
    The schedule must exist before adding jobs. See [Create a Schedule].

To add a job, complete the following steps:

1. Go to the **Administration** menu and select **Job Master**.
2. In the **Schedule** list, select the schedule.
3. Select the **Add** button. The Job Master Details page is displayed.
4. In the **Job Name** field, enter the job name.
5. In the **Job Type** list, select the job type.
6. Select the **Save** button. The job is added to the schedule.

**Related topics:**

- [Add a Frequency to a Job]
- [Configure Job Dependencies]
```

---

## 3. Reference Documentation

**Purpose:** Provide factual information that readers need to look up quickly. Organized for scanning, not reading start to finish.

**When to use:** UI element descriptions, field/setting definitions, report descriptions, plugin lists, API documentation, glossaries, system requirements, and any factual lookup content.

### Structure

| Section | Required | Description |
|---|---|---|
| Title | Yes | Names the reference subject clearly. Example: "Standard Reports" or "Hardware and Software Requirements" |
| Introduction | Yes | 1–2 sentences explaining what information is provided and how it's organized. |
| Reference content | Yes | Tables, definition lists, or organized sections. Information should be sorted logically (alphabetically, by function, by category, or in the order it appears in the application). |
| Notes or caveats | When applicable | Important context about limitations, special cases, or version differences. |

### Guidelines

- Optimize for **scanning**, not reading
- Use tables as the primary format — they are faster to scan than prose
- Sort content in the order that makes the most sense for lookup (alphabetical, by category, by UI order)
- Keep descriptions factual and concise — one to two sentences per item
- Do not include step-by-step instructions — link to the procedural page instead
- Include all items completely — reference docs must not have gaps

### Template

```markdown
# [Reference Subject]

[1–2 sentences: what information is provided here and how it's organized.]

## [Category 1]

| [Column 1] | [Column 2] | [Column 3] |
|---|---|---|
| Item | Description | Notes |

## [Category 2]

| [Column 1] | [Column 2] | [Column 3] |
|---|---|---|
| Item | Description | Notes |
```

### Example

```markdown
# Standard Reports

The Standard Reports section provides pre-configured reports related
to jobs, schedules, agents, and thresholds. Reports are available in
PDF and/or Excel formats.

## Job Reports

| Report | Description | Formats |
|---|---|---|
| Job Execution History | All job runs within a selected date range, including start time, end time, exit code, and agent. | PDF, Excel |
| Failed Jobs Summary | All jobs that ended in a failed status within the selected period, with exit codes and job details. | PDF, Excel |
| Job Dependency Map | All dependencies configured for a selected job or schedule. | PDF |

## Schedule Reports

| Report | Description | Formats |
|---|---|---|
| Schedule Build Summary | A record of all schedule builds for a selected date range, including build status and job counts. | PDF, Excel |
| On-Hold Schedules | All schedules currently placed on hold, with the date and user who initiated the hold. | PDF, Excel |
```

---

## Combining Types on a Single Page

Some pages naturally combine types. When this happens:

1. **Identify the primary type** — this determines the page's overall structure and title
2. **Use clear section breaks** between types — a heading should signal the shift
3. **Keep each section's rules independent** — conceptual sections follow conceptual guidelines, procedural sections follow procedural guidelines

### Common Combinations

| Primary Type | Secondary Type | Example |
|---|---|---|
| Conceptual | Procedural | Feature overview followed by "Getting Started" steps |
| Procedural | Reference | Setup procedure followed by a settings/options reference table |
| Conceptual | Reference | Explanation of a concept followed by a terminology or comparison table |

### What NOT to Do

- Do not embed a full procedure inside a conceptual explanation — link to it instead
- Do not scatter reference tables throughout a procedure — put them after the steps or in a separate section
- Do not write a reference page in paragraph form — use tables and lists

---

## Common Mistakes

### Conceptual page that should be procedural
❌ "The job build process begins when you select the Build button and
then choose the date range..." (narrative description of steps)
✅ Link to the procedural page instead

### Procedural page with buried prerequisites
❌ Step 7: "Note: You must have admin access to complete this step."
✅ State prerequisites before the steps begin

### Reference page written as prose
❌ "The Job Execution History report shows the job name, start time, and
exit code. It also includes the agent name and run duration..."
✅ Use a table with columns for Report, Description, and Formats

---

## Connecting Types to Audience

When writing a page, combine the documentation type (from this file) with the audience role (from opcon-learner-roles.md):

| Step | Question | Source |
|---|---|---|
| 1 | Who is reading this? | opcon-learner-roles.md |
| 2 | What are they trying to do? | This file (opcon-documentation-types.md) |
| 3 | How should I write it? | opcon-documentation-standards.md |

The **audience** determines tone, terminology depth, and assumed knowledge. The **type** determines structure and organization. The **standards** determine formatting and style. All three work together.
