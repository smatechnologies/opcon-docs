---
title: Schedule History
description: "The Schedule History dialog displays all iterations of a schedule."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: conceptual
---

# Schedule History

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Schedule History** dialog displays all iterations of a schedule. Access it by right-clicking a schedule and selecting **Schedule History** in the **List**, **Matrix**, or **PERT** views.

The dialog includes the following per schedule iteration:

- Schedule Date
- Start Time
- End Time
- Run Time (min)
- History Details (if selected)
- History Archive (if selected)

## Viewing Schedule History

To view Schedule History, complete the following steps:

1. Select on **List** under the **Operation** topic
2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Right-click on the **schedule**
4. Select **Schedule History** from the menu. The **Schedule History** dialog displays
5. Enter or select a **Start Date** and **End Date** using the text boxes or calendar icons
6. Select the **Refresh** button to display the details
7. Select the **Close** button to close the dialog

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: How many steps does the Schedule History procedure involve?**

The Schedule History procedure involves 7 steps. Complete all steps in order and save your changes.

**Q: What does Schedule History cover?**

This page covers Viewing Schedule History.

## Glossary

**Calendar**: A named collection of dates in OpCon used by schedules and frequencies to determine when automation runs or is excluded. Calendars can represent holidays, working days, or any custom date set.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.
