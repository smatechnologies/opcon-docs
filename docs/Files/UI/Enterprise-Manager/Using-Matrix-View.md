---
title: Using Matrix View
description: "The Matrix view provides an alternative grid-format way to view and update job information."
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

# Using Matrix View

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Matrix** view provides an alternative grid-format way to view and update job information. It displays a calendar of days with schedules in the Daily tables, a list of schedules for the current day, and a **Job Matrix** table showing all jobs in the selected schedule.

To display schedule and job information in the **Gantt**, **PERT**, **Bar Chart**, **Pie Chart**, and **Workload Chart** views, activate the **Send the current selection to other views** button on the **Matrix** toolbar. The **Listen for selection changes in other views** button must also be activated in each destination view.

## When Would You Use It?

- You need to provide an alternative grid-format way to view and update job information using The **Matrix** view

## Why Would You Use It?

- **Operational value**: Provides an alternative grid-format way to view and update job information

## Matrix Toolbar

The **Matrix** view has a toolbar for performing actions. Select any icon to learn more about its functionality.

![Matrix toolbar](../../../Resources/Images/EM/EMmatrixtoolbar.png "Matrix toolbar")

## Job Matrix Table

The **Job Matrix** table lists all jobs for the selected schedule and day. Columns can be reordered by dragging a column heading to the preferred location. Hovering over a row displays all column values in a tooltip.

:::note
If the "Show Job Containers" preference is turned off, the **Job Matrix** table will not show Container jobs. Refer to [Setting Preferences from Enterprise Manager](Preferences-from-EM.md).
:::

- **Machine Name**: The OpCon machine used by the job
- **Schedule Name**: The OpCon schedule for the job
- **Job Name**: The OpCon job name
- **Department**: The OpCon schedule department
- **Local Start Time**: The estimated start time based on where the EM is running (tooltip only)
- **Server Start Time**: The actual date and time the job started on the OpCon Server. A clock icon indicates an estimated start time when the job has not yet started
- **Server End Time**: The date and time the job ended. A clock icon with "Running" indicates the job has not ended
- **Duration**: The time the job took to run
- **Job Status**: The current status of the job
- **Priority**: The priority defined for the job
- **Term Description**: The termination description for the job

## Matrix Right-click Menus

The right-click menus for schedules and jobs in the **Matrix** view are the same as those in the **List** view. Refer to [Operations Right-click Menus](Working-with-Operation.md#Operatio).

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Synchronizing Data between the List and Matrix Views](Synchronizing-Data-between-List-and-Matrix-Views.md)
- [Creating/Updating Job Filters](Creating_Updating-Job-Filters-Matrix.md)
- [Changing Focus of Days in Calendars](Changing-Focus-of-Days-in-Calendars.md)
- [Viewing Schedule and/or Job information](Viewing-Schedule-or-Job-Info.md)
- [Performing Schedule Procedures](Performing-Schedule-Procedures-Matrix.md)
- [Performing Job Procedures](Performing-Job-Procedures-Matrix.md)

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Machine Name | The OpCon machine used by the job | — | — |
| Schedule Name | The OpCon schedule for the job | — | — |
| Job Name | The OpCon job name | — | — |
| Local Start Time | The estimated start time based on where the EM is running (tooltip only) | — | — |
| Server Start Time | The actual date and time the job started on the OpCon Server. | — | — |
| Server End Time | The date and time the job ended. | — | — |
| Duration | The time the job took to run | — | — |
| Job Status | The current status of the job | — | — |
| Priority | The priority defined for the job | — | — |
| Term Description | The termination description for the job | — | — |
## FAQs

**Q: What can you do with Matrix View?**

Matrix View allows you to matrix toolbar, job matrix table, matrix right-click menus.

**Q: Who has access to Matrix View?**

Access to Matrix View is controlled by the privileges assigned to your OpCon role. Contact your system administrator if you need access.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Department**: An organizational grouping in OpCon used to assign jobs to logical divisions. User roles can be scoped to specific departments, controlling which jobs a user can manage.

**Calendar**: A named collection of dates in OpCon used by schedules and frequencies to determine when automation runs or is excluded. Calendars can represent holidays, working days, or any custom date set.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.
