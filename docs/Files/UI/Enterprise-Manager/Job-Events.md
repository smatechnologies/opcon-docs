---
title: Job Events
description: "The Events tab in the Job Master editor lets you define and manage OpCon events that fire when a job reaches a specific status, produces agent feedback, matches an exit description, or satisfies a complex expression."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: conceptual
---

# Job Events

The **Events** tab in the [Job Master](Using-Job-Master.md) editor lets you define and manage OpCon events associated with a job. Events can be scoped to the job as a whole or to a specific frequency. When OpCon detects the trigger condition you define, it sends the associated event command to the SAM for processing.

For background on OpCon events, refer to [Events](../../../job-components/events.md) in the Concepts help.

## Events tab overview

The **Events** tab contains two scoping options and an events table.

### Job Related and Frequency Related options

Select **Job Related** to define events that fire regardless of which frequency the job runs under. Select **Frequency Related** to define events tied to a specific frequency. When you select **Frequency Related**, the frequency list becomes active; you must select a frequency before you can add an event.

### Events table

The events table displays each event defined for the current scope. The table contains the following columns:

| Column | Description |
|---|---|
| **Event** | The full event command string. |
| **Trigger** | The condition that fires the event: Job Status, LSAM Feedback, Exit Description, or Job Completion Complex Expression. |
| **Match** | The specific status, feedback value, exit code, or expression that must match to fire the event. |
| **User** | The OpCon user who created the event. |

Select a row to enable the **Edit** and **Remove** buttons. Double-clicking a row opens the **Event Definition Wizard** in edit mode.

### Add, Edit, and Remove buttons

Use the **Add**, **Edit**, and **Remove** buttons to manage events in the table. **Add** opens the **Event Definition Wizard**. When **Frequency Related** is selected, **Add** is only enabled after you select a frequency from the list.

### Copy and paste

You can copy an event string from the table using **Ctrl+C** or right-click > **Copy**, then paste it into another event row using **Ctrl+V** or right-click > **Paste**. Pasted event strings open in the **Event Definition Wizard** for review before saving.

## Event trigger types

When you add or edit a job event, the **Event Definition Wizard** prompts you to select a trigger type. The following trigger types are available:

| Trigger type | Description |
|---|---|
| **Job Status** | Fires when the job reaches a selected status (for example, Finished OK or Failed). |
| **LSAM Feedback** | Fires when the agent running the job reports a specific feedback value that matches a string you define. |
| **Exit Description** | Fires when the job's exit description matches an operator comparison (for example, Equal To `0`). |
| **Job Completion Complex Expression** | Fires when a property expression you define evaluates to true at job completion. Refer to [Property Expressions API Syntax](../../../reference/property-expressions-syntax.md) for syntax details. |

## Related procedures

- [Adding Job Events](Adding-Job-Events.md)
- [Editing Job Events](Editing-Job-Events.md)
- [Copying Job Events](Copying-Job-Events.md)
- [Deleting Job Events](Deleting-Job-Events.md)
