---
title: Using PERT View
description: "The PERT view shows a schedule's individual jobs and job dependency relationships."
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

# Using PERT View

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **PERT** view shows a schedule's individual jobs and job dependency relationships. For information on changing PERT preferences, refer to [Preferences for Update Sites](Preferences-for-Update-Sites.md). For error messages displayed for failed jobs, refer to [Operations Machine Messages](../../../reference/Operations-Machine-Messages.md) in the **Concepts** online help.

The **PERT** screen displays job dependency relationships and each job's current status in simple schedules. To display schedule and job information in the **PERT** view, you **must** first select a schedule in another view (e.g., **List** or **Matrix**) and activate the **Listen for selection changes in other views** button on the **PERT** toolbar.

The **Send the current selection to other views** button must also be activated in another view (e.g., **Daily List** and/or **Matrix**). To view changes simultaneously in both views, refer to the [Synchronizing Data between List and PERT Views](Synchronizing-Data-between-List-and-PERT-Views.md) procedure.

## When Would You Use It?

- The **PERT** view shows a schedule's individual jobs and job dependency relationships

## Why Would You Use It?

- **Using PERT**: The **PERT** view shows a schedule's individual jobs and job dependency relationships

## PERT View Toolbar

The **PERT** view has a toolbar for performing actions in the view. Select any icon to learn more about its functionality.

![PERT View toolbar](../../../Resources/Images/EM/EMperttoolbar.png "PERT View toolbar")

## PERT View Right-click menu

Right-click a job in the **PERT** view to display the following options:

- **Job**: Refer to [Job Right-click Menu](Working-with-Operation.md#Job)
- **Open SubSchedule**: For Container jobs, changes the display to show the jobs in the subschedule
- **Find**: Opens the **Find a Job** dialog
- **Isolate**: Options related to job dependency display
  - **Previous Dependencies**: Displays all preceding jobs in a dependent chain
  - **Subsequent Dependencies**: Displays all subsequent jobs in a dependent chain
  - **Dependency Chain**: Displays an entire dependency chain (preceding critical path and subsequent jobs)
  - **Shortest Path**: Shows the shortest path among all dependency chains to the selected job
- **Layout:** Opens a sub-menu to change the layout format
  - **Top to Bottom**: Changes to a vertical tree layout
  - **Left to Right**: Changes to a horizontal tree layout
- **Zoom In:** Increases the zoom level. Options: 10%, 20%, 30%, 40%, 50%, 60%, 70%, 80%, 90%, 100%, 150%, 200%
- **Zoom Out:** Decreases the zoom level to the next lower percentage
- **Print:** Opens the **Print** dialog to print the diagram
- **Take Screenshot**: Takes a screenshot and saves the visible area of the current view

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Creating and Saving Custom     Diagrams](Creating-Custom-Diagrams-PERT.md)
- [Synchronizing Data between List and PERT     Views](Synchronizing-Data-between-List-and-PERT-Views.md)
- [Creating/Updating Job     Filters](Creating_Updating-Job-Filters-PERT.md)
- [Opening Mini Maps](Opening-Mini-Maps.md)
- [Viewing Job Information](Viewing-Job-Info.md)
- [Viewing Job History     Information](Viewing-Job-History-Info.md)
- [Viewing Container Jobs'     SubSchedules](Viewing-Container-Job-SubSchedules.md)
- [Performing Additional Job     Procedures](Performing-Job-Procedures-PERT.md)

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Open SubSchedule | For Container jobs, changes the display to show the jobs in the subschedule | — | — |
| Isolate | Options related to job dependency display | — | — |
| Take Screenshot | Takes a screenshot and saves the visible area of the current view | — | — |
## FAQs

**Q: What can you do with PERT View?**

PERT View allows you to pert view toolbar, pert view right-click menu.

**Q: Who has access to PERT View?**

Access to PERT View is controlled by the privileges assigned to your OpCon role. Contact your system administrator if you need access.

## Glossary

**Subschedule**: A schedule that runs as a child process within a Container job, allowing hierarchical, nested workflow automation where a parent schedule can trigger and monitor an entire child schedule.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
