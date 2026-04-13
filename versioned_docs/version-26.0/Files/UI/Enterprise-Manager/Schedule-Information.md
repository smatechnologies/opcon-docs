---
title: Schedule Information
description: "The Schedule Information dialog provides details about the daily copy of a selected schedule."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Schedule Information

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Schedule Information** dialog provides details about the daily copy of a selected schedule. Access it by right-clicking a schedule in the **List**, **Matrix**, or **PERT** views. Fields can be copied to the clipboard.

The dialog contains the following information:

- **Schedule Date**: The date the schedule was built for
- **Schedule Name**: The name of the selected schedule
- **Status**: The current status of the selected schedule
- **Start Time**: The build date and the time the schedule is supposed to start, as defined in **Operation**
- **End Time**: Displays *Not Finished* if incomplete; displays the finished date and time if completed
- **Work Week**: The number of workdays in the week for the selected schedule
- **Actual Start Time**: Displays *Not Started* if not yet started; displays the date and time processing began if started
- **Post Processes Tab**: Provides information about the schedule post processes
- **Status Change Explanation Tab**: Lists chronological manual status changes. Format: **\<Status Change\> - \<Explanation\> (\<user\> on \<Date\> \<Time\>)**
- **Documentation Tab**: Provides access to documentation relating to the selected schedule
- **Configuration Tab**: View and define Schedule Instance Properties

## Getting Schedule Information

To get Schedule Information, complete the following steps:

1. Select on **List** under the **Operation** topic
2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Right-click on the **Schedules** icon
4. Select **Schedule Information** from the menu. The **Schedule Information** dialog displays
5. Select the various **tabs** for additional information
6. Select the **OK** button to close the dialog

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Schedule Date | The date the schedule was built for | — | — |
| Schedule Name | The name of the selected schedule | — | — |
| Status | The current status of the selected schedule | — | — |
| Start Time | The build date and the time the schedule is supposed to start, as defined in **Operation** | — | — |
| End Time | Displays *Not Finished* if incomplete; displays the finished date and time if completed | — | — |
| Work Week | The number of workdays in the week for the selected schedule | — | — |
| Actual Start Time | Displays *Not Started* if not yet started; displays the date and time processing began if started | — | — |
| Post Processes Tab | Provides information about the schedule post processes | — | — |
| Status Change Explanation Tab | Lists chronological manual status changes. | — | — |
| Documentation Tab | Provides access to documentation relating to the selected schedule | — | — |
| Configuration Tab | View and define Schedule Instance Properties | — | — |
## FAQs

**Q: How many steps does the Schedule Information procedure involve?**

The Schedule Information procedure involves 6 steps. Complete all steps in order and save your changes.

**Q: What does Schedule Information cover?**

This page covers Getting Schedule Information.

## Glossary

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.
