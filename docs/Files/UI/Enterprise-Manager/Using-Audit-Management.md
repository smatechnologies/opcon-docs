---
title: Using Audit Management
description: "The Audit Management view displays the history of user updates to the OpCon database."
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

# Using Audit Management

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Audit Management** view displays the history of user updates to the OpCon database. For conceptual information, refer to [Legacy Audit Management](../../../utilities/Graphical-Utilities/Legacy-Audit-Management.md) in the **Utilities** online help.

The **Audit Management** screen provides list lists for user selection, audit category selection, and date range. Available categories include:

- **All Categories**: Displays changes across all categories
- **Access Code**: Displays changes to Access Code definitions
- **Calendar**: Displays changes to Calendar definitions
- **Daily Job**: Displays changes to jobs in the Daily tables (status changes and job definitions)
- **Daily Schedule**: Displays changes to schedules in the Daily tables (status changes and schedule definitions)
- **Department**: Displays changes to Department definitions
- **Event Notification**: Displays changes to Event Notifications through the Notification Manager
- **Global Property**: Displays changes to Global Property definitions
- **Machine**: Displays changes to Machine definitions
- **Machine Group**: Displays changes to Machine Group definitions
- **Master Job**: Displays changes to Job definitions in the Master tables
- **Master Schedule**: Displays changes to Schedule definitions in Administration
- **Role**: Displays changes to Role definitions
- **Schedule Maintenance**: Displays user-submitted requests for Schedule Build, Schedule Check, and Date level Schedule Deletes
- **Threshold/Resource**: Displays changes to Threshold and Resource definitions
- **User Account**: Displays changes to User Account definitions, Last Login, Last Log out, and the Enterprise Manager version used

The **Type Filter Text** box filters results by full or partial name. Use an \* (asterisk) prefix to search mid-string.

:::tip Example
In the Audit Management screen, type **\*JobName** to find a specific job name in the output.
:::

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")

- [Viewing Audit Records](Viewing-and-Exporting-Audit-Records.md#Viewing)
- [Exporting Audit Records](Viewing-and-Exporting-Audit-Records.md#Exportin)

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| All Categories | Displays changes across all categories | — | — |
| Daily Job | Displays changes to jobs in the Daily tables (status changes and job definitions) | — | — |
| Daily Schedule | Displays changes to schedules in the Daily tables (status changes and schedule definitions) | — | — |
| Event Notification | Displays changes to Event Notifications through the Notification Manager | — | — |
| Global Property | Displays changes to Global Property definitions | — | — |
| Machine | Displays changes to Machine definitions | — | — |
| Machine Group | Displays changes to Machine Group definitions | — | — |
| Master Job | Displays changes to Job definitions in the Master tables | — | — |
| Master Schedule | Displays changes to Schedule definitions in Administration | — | — |
| Role | Displays changes to Role definitions | — | — |
| Schedule Maintenance | Displays user-submitted requests for Schedule Build, Schedule Check, and Date level Schedule Deletes | — | — |
| Threshold/Resource | Displays changes to Threshold and Resource definitions | — | — |
| User Account | Displays changes to User Account definitions, Last Login, Last Log out, and the Enterprise Manager version used | — | — |
## FAQs

**Q: What can you do with Audit Management?**

Audit Management allows you to manage and configure related settings.

**Q: Who has access to Audit Management?**

Access to Audit Management is controlled by the privileges assigned to your OpCon role. Contact your system administrator if you need access.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Master Tables**: The OpCon database tables that hold the permanent definitions of schedules and jobs. Changes to master tables affect all future schedule builds.

**Threshold**: A numeric variable stored in the OpCon database used to control job execution. Jobs can be made dependent on threshold values, and OpCon events can update threshold values at runtime.

**Access Code**: A security label applied to jobs and schedules in OpCon. Users must have the matching access code privilege to view or manage items with that label.

**Department**: An organizational grouping in OpCon used to assign jobs to logical divisions. User roles can be scoped to specific departments, controlling which jobs a user can manage.

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.

**Calendar**: A named collection of dates in OpCon used by schedules and frequencies to determine when automation runs or is excluded. Calendars can represent holidays, working days, or any custom date set.
