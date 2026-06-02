---
title: Schedule Completion Events
description: "The Events tab in the Schedule Master editor lets you view and manage the completion events defined for a schedule."
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

# Schedule Completion Events

The **Events** tab in the [Schedule Master](Using-Schedule-Master.md) editor displays the completion events defined for a schedule. A schedule completion event is an OpCon event that runs automatically when a schedule finishes for the day.

The tab lists each event in a table with the following columns:

| Column | Description |
|---|---|
| **Event Command** | The OpCon event template command (for example, `$JOB:ADD`). |
| **Parameters** | The parameter string supplied to the event command. |
| **User** | The OpCon user associated with the event. |

From the **Events** tab, you can:

- [Add Schedule Completion Events](Adding-Schedule-Completion-Events.md)
- [Edit Schedule Completion Events](Editing-Schedule-Completion-Events.md)
- [Copy Schedule Completion Events](Copying-Schedule-Completion-Events.md)
- [Delete Schedule Completion Events](Deleting-Schedule-Completion-Events.md)
