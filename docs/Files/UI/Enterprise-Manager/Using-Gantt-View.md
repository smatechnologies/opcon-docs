---
title: Using Gantt View
description: "The Gantt view displays the estimated length and chronological order of jobs by schedule."
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

# Using Gantt View

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Gantt** view displays the estimated length and chronological order of jobs by schedule. For an accurate display, the average run time of jobs must be calculated frequently by the **SMA_JOBAVG** utility. Refer to [SMA Job Average](../../../objects/schedules.md#smautility-schedule) in the **Concepts** online help. To change Gantt preferences, refer to [Setting Preferences for Gantt](Preferences-for-Gantt.md).

The **Gantt** screen displays schedule dates and all jobs in start time order for a selected day. Lines connect dependent jobs when dependencies exist. To display schedule and job information, you **must** first activate the **Listen for selection changes in other views** button on the **Gantt** toolbar.

The **Send the current selection to other views** button must also be activated in another view (e.g., **Daily list** and/or **Matrix**).

:::note
The **Gantt** screen displays only first-level schedule jobs. Individual jobs on a subschedule are not shown, but the Container job is.
:::

## When Would You Use It?

- The **Gantt** view displays the estimated length and chronological order of jobs by schedule

## Why Would You Use It?

- **Using Gantt**: The **Gantt** view displays the estimated length and chronological order of jobs by schedule

## Gantt View Toolbar

The **Gantt** view has a toolbar for performing actions in the view. Select any icon on the toolbar below to learn more about its functionality.

![Gantt View toolbar](../../../Resources/Images/EM/EMgantttoolbar.png "Gantt View toolbar")

## Gantt View Right-click Menu

right-clicking in the **Gantt** view shows the following menu items:

- **Zoom in**: Allocates more time to each column, showing less total time on screen
- **Zoom out**: Allocates more time to the entire screen display. Continued zoom out changes the column time allocation from hours to days
- **Find Job**: Opens the **Find a Job** dialog showing jobs from the currently displayed schedule

right-clicking on a **Job** icon shows job-related menu items. Refer to [Job Right-click Menu](Working-with-Operation.md) for more detail.

![White "person reading" icon on bluecircular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Using Plan Mode](Using-Plan-Mode.md)
- [Synchronizing Data between List and Gantt Views](Synchronizing-Data-between-List-and-Gantt-Views.md)
- [Performing Job Procedures](Performing-Job-Procedures-Gantt.md)

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Zoom in | Allocates more time to each column, showing less total time on screen | — | — |
| Zoom out | Allocates more time to the entire screen display. | — | — |
| Find Job | Opens the **Find a Job** dialog showing jobs from the currently displayed schedule | — | — |
## FAQs

**Q: What can you do with Gantt View?**

Gantt View allows you to gantt view toolbar, gantt view right-click menu.

**Q: Who has access to Gantt View?**

Access to Gantt View is controlled by the privileges assigned to your OpCon role. Contact your system administrator if you need access.

## Glossary

**Subschedule**: A schedule that runs as a child process within a Container job, allowing hierarchical, nested workflow automation where a parent schedule can trigger and monitor an entire child schedule.

**Container Job**: A job type that runs a subschedule. Container jobs enable hierarchical schedule structures and support properties and events just like standard jobs.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
