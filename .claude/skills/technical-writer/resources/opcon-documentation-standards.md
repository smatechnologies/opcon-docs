# Documentation Standards

Writing and formatting rules for all OpCon documentation. These standards are the single source of truth for style, formatting, and procedural writing decisions.

**Primary references (in order of authority):**

1. This document
2. [Merriam-Webster](https://www.merriam-webster.com/) — spelling
3. [Chicago Manual of Style](https://www.chicagomanualofstyle.org/) — general grammar and punctuation
4. [Microsoft Writing Style Guide](https://learn.microsoft.com/en-us/style-guide/) — technical writing, UI, and procedures

When this document conflicts with an external reference, this document takes precedence.

---

## Core Principles

- Write for **customers**, not internal teams.
- Be **clear, concise, and consistent**.
- Prioritize **accuracy and completeness** over cleverness.
- Never publish documentation for features that are **not generally available**.
- Assume customers operate in **regulated environments**.
- Be explicit about outcomes and side effects.
- Always describe what success looks like (messages, state changes).

## Front Matter

Front matter is the first element of every page. Complete it before writing content.

Every markdown documentation file must include YAML front matter between
`---` fences at the top of the file. Front matter provides metadata that
serves two purposes: it enables Docusaurus to generate accurate search
results, navigation, and page descriptions, and it gives the AI immediate
context about any page before reading the content.

### Required Fields

| Field | Required | Description |
|---|---|---|
| `title` | Yes | The page title, matching the H1 heading. Used by Docusaurus for navigation and browser tab display. |
| `description` | Yes | A one-sentence summary of what the page covers and why it matters. Written for the reader, not the search engine. Should state the value or goal, not just the topic. |
| `tags` | Yes | A list of tags identifying the page's audience, documentation type, and feature area. See Tag Vocabulary below. |

### Tag Vocabulary

Use the following controlled vocabulary for tags. Every page must have
at least one tag from each category.

**Documentation type** (one per page):
`Conceptual`, `Procedural`, `Reference`

**Audience role** (one or more per page):
`System Administrator`, `Automation Engineer`, `Application Owner`, `Operations Staff`, `Business Analyst`, `Compliance Team`

**Feature area** (one or more per page):
`Jobs`, `Schedules`, `Agents`, `Frequencies`, `Events`, `Thresholds`,
`Notifications`, `Reports`, `System Configuration`,
`API`, `Getting Started`, `Installation`, `Upgrade`, `Solution Manager`

### Template

```yaml
---
title: Add a Job to a Schedule
description: "Add a new automated job to an existing schedule so OpCon can build and submit it for execution."
tags:
  - Procedural
  - Automation Engineer
  - Jobs
---
```

### Guidelines

- The `description` field should be a complete sentence, enclosed in
  quotes if it contains colons or special characters
- Tags are case-sensitive — use the exact values listed above
- If a page serves multiple audiences, include all applicable role tags
- If a page spans multiple feature areas, include all applicable area tags
- Do not include tags that are only tangentially related — the tag should
  reflect what the page is primarily about
- When creating a new page, add front matter before writing any content
- When reviewing an existing page, verify that front matter is present,
  accurate, and uses the controlled vocabulary

---

## Language and Grammar

- Use **second person**: "you," not "we"
  > **Exception:** Pages where Continuous is describing its own processes
  > (e.g., how connectors are developed, how data accuracy is ensured)
  > may use first person ("we") because the company is the subject. This
  > should be rare — most documentation is instructional and should use
  > second person.
- Use **active voice**, especially in procedures
- Use **imperative verbs** in instructions: "Select," "Enter," "Go to"
- Follow **US English** spelling and punctuation
- Use the **Oxford (serial) comma**
- One idea per sentence; prefer short sentences over compound ones

---

## Action Verbs

Use the following decision tree for every user interaction. There are no exceptions.

```
Is the user navigating to a menu?           → "Go to"
Is the user pressing a physical key?        → "Press"
Is the user running a job, query, or script?→ "Run"
Is the user deselecting an option?          → "Clear"
Is the user typing into a field?            → "Enter"
Is the user opening a context menu?         → "Right-click"
Everything else (buttons, options, tabs,
  links, fields, list selections)           → "Select"
```

### Quick Reference

| Action | Verb | Example |
|---|---|---|
| Menu navigation | Go to | Go to the **Administration** menu and select **Job Master**. |
| Button | Select | Select the **Export** button. |
| Option (checkbox) | Select / Clear | Select the **Allow Multi-Instance** option. |
| List selection | Select + pick | Select the **Frequency** field and pick **Daily** from the list. |
| Tab | Select | Select the **Frequency** tab. |
| Link | Select | Select the **Schedules** link. |
| Field entry | Enter | In the **Job Name** field, enter the job name. |
| Keyboard key | Press | Press the **Enter** key. |
| Context menu | Right-click | Right-click the **SMA OpCon** service and select **Start**. |
| Job or query | Run | Run the job. |
| Deselecting | Clear | Clear the **Allow Multi-Instance** option. |

### Banned Verbs

Never use the following verbs in documentation:

- **click** — use "Select"
- **hit** — use "Press" for keys, "Select" for UI elements
- **execute** — use "Run"
- **check / uncheck** — use "Select" / "Clear"
- **turn on / turn off** — use "Select" / "Clear"
- **navigate to** — use "Go to"
- **launch** — use "Open" for applications or "Start" for services

### Negative Examples

```
✅ Select the **Save** button.
❌ Click the Save button.
❌ Click **Save**.

✅ Go to the **Administration** menu and select **Job Master**.
❌ Navigate to Administration > Job Master.
❌ Click on the Administration menu.

✅ Select the **Allow Multi-Instance** option.
❌ Check the Allow Multi-Instance checkbox.
❌ Turn on the Allow Multi-Instance toggle.

✅ Select the **Frequency** field and pick **Daily** from the list.
❌ Click the Frequency dropdown and choose Daily.
❌ Select the **Frequency** drop-down and pick **Daily**.

✅ Right-click the **SMA OpCon** service and select **Start**.
❌ Click on the SMA OpCon service and select Start.
❌ Right-click on the service. (Do not use "right-click on" — use "right-click" without "on".)

✅ Right-click the default website and select **Add Application**.
❌ Right-click on the default website and click Add Application.
```

---

### Additional Notes

The word "right-click" is the ONE exception to the ban on "click" in
documentation. It is permitted because:

- There is no alternative verb that clearly communicates opening a
  context menu ("Open the context menu for..." is wordy and unfamiliar
  to the admin audience)
- The admin guide legitimately requires right-click instructions for
  Windows Server, IIS, and service management tasks
- The pattern "Right-click [element] and select [option]" is concise,
  unambiguous, and consistent with the existing verb style

Rules for using "right-click":
- Always hyphenate: "right-click" not "right click"
- Never follow with "on": "Right-click the **service**" not "Right-click on the service"
- Always pair with "and select" for the menu option that follows
- Bold the target element and the menu option
- Only use for actual context menus — do not use for any other purpose

## UI Element References

| Element | How to Refer to It | Example |
|---|---|---|
| Button | Label + "button" | Select the **Save** button. |
| Checkbox | Label + "option"; select/clear | Select the **Allow Multi-Instance** option. |
| Radio button | Label + "option" | Select the **Daily** option. |
| Drop-down / list | Use "list", never "drop-down" | Select **Daily** from the list. |
| Field | Exact label + "field" | In the **Job Name** field, enter the value. |
| Text area (large, with formatting) | Label + "area" | Enter the description in the **Documentation** area. |
| Tab | Tab name only | Select the **Frequency** tab. |
| Menu bar item | "Go to" + menu name | Go to the **Administration** menu and select **Job Master**. |
| Navigation menu | "menu" only, no "navigation" | Select **General Settings** from the menu on the left. |
| Icon | Do NOT use the word "icon"; treat as a button | Select the **Settings** button. |
| Hamburger menu | Never say "hamburger"; use label or "menu button" | Select the **OpCon** button in the top left corner. |
| Ellipsis button | Tooltip name + (...) | Select the **More actions** (...) button. |
| Expander arrow | Label + appropriate element; never say "arrow" or "drop-down arrow" | Select the **Frequency** button and pick **Add** from the list. |

### Banned UI Terminology

Never use these terms in documentation:

- **drop-down** (any variation) — use "list" or "field"
- **icon** — treat as a button if it performs an action
- **checkbox** — use "option"
- **radio button** — use "option"
- **hamburger** — use label or "menu button"
- **arrow** or **drop-down arrow** — use the label + appropriate element
- **text box** — use "field" or "area"
- **menu item** — refer to the item by name
- **navigation** (as a noun for a menu) — use "menu"

---

## Menu Paths

For simple sequential menu selections, use angle brackets with spaces. Bold each label individually. Do **not** bold the angle brackets.

```
✅ Select **Administration** > **Job Master** > **Frequencies**.
❌ Select **Administration > Job Master > Frequencies**.
❌ **Administration > Job Master > Frequencies**
```

Only use angle bracket paths for simple sequences within the same element (e.g., the same menu). For more complex flows, use separate numbered steps.

---

## Formatting

### Headings and Titles

- Use **sentence case** for all titles and headings
- Do not create new styles or override platform defaults

### Bold

- **Bold** all UI element names that users interact with (buttons, fields, tabs, menus, options)
- Do not bold angle brackets in menu paths
- Do not bold risk callout labels beyond the specified format (NOTE:, CAUTION:, WARNING:)

UI element names must match the product **exactly** as displayed —
including capitalization. Never apply sentence case, title case, or
any other casing change to a UI element name.

✅ Select the **Job Build Status** tab.
✅ Select the **Add Frequency** button.
✅ Go to the **Administration** menu.

❌ Select the **Job build status** tab.
❌ Select the **add frequency** button.
❌ Go to the **administration** menu.

Sentence case applies to headings and titles you write — not to
UI labels you reference.

### Code Font

- Use `code font` for code, commands, file paths, system values, and configuration settings
- Example: Enter `C:\ProgramData\OpConxps\` in the path field.

### Lists

- **Numbered lists** → sequential or ordered steps (procedures)
- **Bulleted lists** → unordered or descriptive content
- Do **not** use periods at the end of bulleted list items
- **Do** use periods at the end of numbered procedural steps
- Introduce every list with a heading, complete sentence, or a fragment ending with a colon

### Dates

- Use unambiguous format: **MM/DD/YYYY**

---

## Procedural Instructions

Procedures explain **how to do something** and must be predictable and scannable.

### Required Rules

1. Open with: "To [accomplish goal], complete the following steps:"
2. Use **numbered lists** for all steps
3. **One action per step** — do not combine actions unless selecting nested menu items via angle brackets
4. End the procedure with a **result statement** describing what the user sees or what changed
5. Break procedures longer than **~10 steps** into linked sections
6. Reuse wording and structure — **repetition improves usability**

### Step Structure

```markdown
To [accomplish goal], complete the following steps:

1. Go to the **Administration** menu and select **Job Master**.
2. Select the schedule.
3. Select the **Add** button. The Job Master Details page is displayed.
4. In the **Job Name** field, enter the job name.
5. Select the **Save** button. The job is added to the schedule.
```

### Sub-Steps

Use letters for nested actions within a step:

```markdown
1. Configure the frequency:
   a. Select the **Frequency** tab.
   b. In the **Frequency Name** field, enter the name.
   c. Select the **Save** button.
```

### Optional Steps

Mark optional steps explicitly:

```markdown
4. (Optional) Select the **Allow Multi-Instance** option.
```

### Tables in Procedures

Use tables when users must choose between options within a step.

- Introduce the table in the step text
- Indent the table to align with the step it belongs to
- Always explain the **consequences** of each option

```markdown
2. Select one of the following options:

   | Option | Description |
   |---|---|
   | Copy a Job | Creates a new job by copying an existing one. Frequencies, dependencies, and events are duplicated. |
   | Create a New Job | Creates a new job from scratch. You will need to configure all settings manually. |

3. Select the **Save** button.
```

### Linking to Other Procedures

When a procedure references steps documented elsewhere, link rather than duplicate:

```markdown
1. [From the Schedule list], select the **Add Job** button.
```

This accommodates both experienced users (who skip the link) and new users (who follow it).

---

## Pattern Library

These patterns cover the most common documentation scenarios. Match each new task to the closest pattern.

### Pattern 1: Simple Export

```markdown
To export the report, complete the following steps:

1. Go to the **Reports** menu and select **Scheduled Jobs**.
2. Select the schedule.
3. Select the **Export** button and pick **Excel** from the list. The report is downloaded.
```

### Pattern 2: Configuration / Settings

```markdown
To configure SMTP settings, complete the following steps:

1. Go to the **Administration** menu and select **System Settings**.
2. In the **SMTP Server** field, enter the server address.
3. In the **Port** field, enter the port number.
4. (Optional) Select the **Use SSL** option.
5. Select the **Save** button. The settings are saved.
```

### Pattern 3: Search and Select

```markdown
To find a job, complete the following steps:

1. Go to the **Administration** menu and select **Job Master**.
2. In the **Search** field, enter the job name.
3. Press the **Enter** key.
4. Select the job from the results. The Job Master Details page is displayed.
```

### Pattern 4: Create Then Configure

```markdown
To add a job, complete the following steps:

1. [From the Job Master list], select the **Add** button. The Job Master Details page is displayed.
2. Select one of the following options:

   | Option | Description |
   |---|---|
   | Copy a Job | Creates a new job by copying an existing one. |
   | Create a New Job | Creates a new job using a connector. |

3. Select the **Save** button. The job is added to the schedule.
4. [Add a frequency to the job].
```

### Pattern 5: Multi-Option Step

```markdown
3. Select a format:
   - To export as PDF: Select **PDF** from the list.
   - To export as Excel: Select **Excel** from the list.
```

### Pattern 6: Long Procedure (Broken Into Sections)

When a procedure exceeds ~10 steps, break it into named sections and link between them:

```markdown
## Step 1 — Download installation files

1. Log into Solution Manager as an Administrator.
2. Go to the **Administration** menu and select **Upgrade**.
3. Select each of the three download links.
4. Save the files to the Install Files folder.

## Step 2 — Stop the service

1. Open the Windows Services console.
2. Right-click the **SMA OpCon** service and select **Stop**.

## Step 3 — Run the database migrator
...
```

---

## Risk Callouts

Use callouts sparingly and intentionally. Three tiers:

| Level | Format | Use For |
|---|---|---|
| Note | **NOTE:** followed by the text | Helpful, non-critical information — tips, clarifications, reminders |
| Caution | **CAUTION:** followed by the text | Risk of data, system, or configuration issues |
| Warning | **WARNING:** in all caps, bold | High risk of serious damage or data loss |

### In Zensical / MkDocs Markdown

Use admonition syntax:

```markdown
!!! note
    This information can be found at help.smatechnologies.com.

!!! warning
    Not completing a backup prior to these steps could result in data loss.
```

### In Plugin Instructions (C# Inline)

Use heading syntax indented under the relevant step:

```csharp
.AppendLine("3. Select **Reset My Security Token**.")
.AppendLine("   ###### Tip: The token is sent to your registered email.")
```

---

## Images

Include images **only when they add clarity** — specifically when the step involves a UI element that the reader must visually identify to proceed.

- Use **PNG** format
- Provide **alt text** for every image
- Maintain **aspect ratio** when resizing
- **Indent** images to align with their related step in a procedure

---

## Content Reuse

- If a procedure is identical across guides, write it once and link to it from each guide
- If a procedure is similar but has role-specific differences, write separate versions and note the differences
- Never copy-paste content between pages — duplicated content creates maintenance debt
- Use "Related topics" links to connect shared concepts across guides

---

## Release Notes

Release notes are reference documentation. Customers scan them to find what changed and how it affects them. Every release gets one release notes page.

### Structure

| Section | Required | Description |
|---|---|---|
| Version and date | Yes | Version number and release date as the page title and subtitle |
| Summary | Yes | 1–3 sentences describing the release theme — what this release is about at a high level |
| New features | When applicable | Features that did not exist before this release |
| Improvements | When applicable | Enhancements to existing features |
| Bug fixes | When applicable | Issues that were resolved |
| Known issues | When applicable | Outstanding issues with workarounds |
| Upgrade notes | When applicable | What Administrators must do before or after upgrading |

### Organizing Entries

Group entries by **feature area**, not by role. Use headings that match the product's navigation so customers can find what's relevant to them:

- Jobs
- Schedules
- Agents
- Frequencies
- Events
- Thresholds
- Notifications
- Reports
- System Configuration
- API
- Solution Manager

Within each feature area, list entries in order of impact: new features first, then improvements, then bug fixes.

### Entry Guidelines

Each entry follows this pattern:

```
**[Past-tense verb] [what changed].** [Why it matters or what the customer sees.]
```

Rules:
- Start each entry with a **past-tense verb**: Added, Fixed, Updated, Removed, Improved, Redesigned, Resolved
- State **what changed** in customer-facing terms (consult glossary.md)
- Follow with **why it matters** or what the customer experience is now
- One entry per user-visible change — do not document internal refactors
- Keep each entry to 1–2 sentences
- Do not include Jira ticket numbers or internal references in customer-facing release notes

### Template

```markdown
# OpCon [version]

**Released:** [MM/DD/YYYY]

[1–3 sentence summary of the release theme.]

## New features

### [Feature area]

- **Added [feature].** [Why it matters or what the customer sees.]
- **Added [feature].** [Description.]

### [Feature area]

- **Added [feature].** [Description.]

## Improvements

### [Feature area]

- **Improved [what changed].** [What the customer experience is now.]
- **Updated [what changed].** [Description.]

## Bug fixes

### [Feature area]

- **Fixed an issue where [description of the problem].** [What happens now.]

## Known issues

- **[Description of the issue].** Workaround: [steps or explanation.]

## Upgrade notes

- [What Administrators must do before or after upgrading.]
```

### Example

```markdown
# OpCon 26.0

**Released:** 03/15/2026

OpCon 26.0 introduces enhanced frequency management, Solution Manager
performance improvements, and several fixes to the job dependency workflow.

## New features

### Frequencies

- **Added frequency preview.** You can now preview which dates a frequency
  will generate before saving it, allowing you to verify holiday and
  blackout calendar interactions before the schedule is built.

### Schedules

- **Added bulk schedule build.** You can now trigger a manual build for
  multiple schedules at once from the Schedule list instead of building
  each schedule individually.

## Improvements

### Agents

- **Improved agent communication retry logic.** OpCon now retries failed
  agent communication attempts up to three times before marking the agent
  as unavailable, reducing false disconnection alerts.

### Reports

- **Updated the Job Execution History report to include threshold values.**
  Each job now shows the threshold state at execution time, which simplifies
  audit documentation for automated decision points.

## Bug fixes

### Jobs

- **Fixed an issue where jobs with multi-instance configurations did not
  display all instances on the Operations dashboard.** All instances now
  appear correctly regardless of how the job was triggered.

### Frequencies

- **Fixed an issue where annual frequencies were not correctly applying
  holiday calendar offsets.** Frequencies now apply calendar offsets as
  configured.

## Upgrade notes

- Back up your database before upgrading. Refer to
  [Backup and Restore](../admin-guide/backup-restore.md) for
  instructions.
- After upgrading, go to **Administration** and select
  **Health Check** to verify all components are running correctly.
```

### What NOT to Include

- Internal ticket numbers (OC-1010, IDEA-1229, etc.)
- Developer-facing details (class names, database schema changes, refactors)
- Changes that are not visible to customers
- Marketing language or superlatives ("exciting new feature," "game-changing update")
- Future plans or roadmap items ("coming soon," "in a future release")

### Tone

Release notes serve all roles simultaneously. Write for the **least technical audience** while including enough detail for technical readers:

- Use plain language — avoid jargon unless it's standard product terminology
- Be specific about what changed — "Updated the Job Execution History report" not "Made report improvements"
- Be honest about bug fixes — describe what was wrong and what's fixed
- Keep it scannable — customers should find what matters to them in seconds

---

## Pre-Flight Checklist

Before finalizing any documentation, verify:

### Content

- [ ] Feature is generally available
- [ ] Uses customer-facing terminology (consult glossary.md)
- [ ] Appropriate for the target audience role (consult learner-roles.md)
- [ ] Risks are clearly called out at the appropriate tier

### Formatting

- [ ] All UI element names are **bold**
- [ ] UI labels match the product exactly
- [ ] No bulleted list items end with periods
- [ ] All numbered procedural steps end with periods
- [ ] Angle brackets in menu paths are not bolded
- [ ] Code, commands, and paths use `code font`
- [ ] Dates use MM/DD/YYYY format
- [ ] Headings use sentence case

### Procedures

- [ ] Opens with "To [goal], complete the following steps:"
- [ ] One action per step
- [ ] Steps are numbered sequentially
- [ ] Ends with a result statement
- [ ] No procedure exceeds ~10 steps without a section break
- [ ] Tables in procedures explain consequences of each option

### Banned Terms

- [ ] No instance of "click"
- [ ] No instance of "execute" (use "run")
- [ ] No instance of "hit"
- [ ] No instance of "check/uncheck" or "turn on/turn off"
- [ ] No instance of "navigate to" (use "go to")
- [ ] No instance of "drop-down" (use "list" or "field")
- [ ] No instance of "icon" (treat as button)
- [ ] No instance of "checkbox" or "radio button" (use "option")
- [ ] No instance of "hamburger"
- [ ] No instance of "text box" (use "field" or "area")
- [ ] No instance of "client" (use "customer")
- [ ] No instance of "launch" (use "open" or "start")

---

**When in doubt:** Follow the Microsoft Writing Style Guide and optimize for clarity over brevity.
