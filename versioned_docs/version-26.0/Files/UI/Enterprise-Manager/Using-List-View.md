---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Using List View
description: "The List view (Daily list) displays all dates that have schedules built."
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

#  Using List View

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **List** view (Daily list) displays all dates that have schedules built. It contains a daily list of schedule dates that can be expanded to show schedule and job information.

To display schedule and job information in the **Gantt**, **PERT**, **Bar Chart**, **Pie Chart**, and **Workload Chart** views, activate the **Send the current selection to other views** button on the **Daily list** toolbar. The **Listen for selection changes in other views** button must also be activated in each destination view.

## When Would You Use It?

- The **List** view (Daily list) displays all dates that have schedules built

## Why Would You Use It?

- **Using List**: The **List** view (Daily list) displays all dates that have schedules built

## List View Toolbar

The **List** view has a toolbar for performing actions. Select any icon to learn more about its functionality.

![List View toolbar](../../../Resources/Images/EM/EMlisttoolbar.png "List View toolbar")

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

-   [Using Filter Text](Using-Filter-Text.md)
-   [Creating/Updating Job Filters](Creating_Updating-Job-Filters.md)
-   [Synchronizing Data between Matrix and List Views](Synchronizing-Data-between-Matrix-and-List-Views.md)
-   [Performing Schedule Procedures](Performing-Schedule-Procedures-List.md)
-   [Performing Job Procedures](Performing-Job-Procedures-List.md)
:::

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What can you do with List View?**

List View allows you to list view toolbar.

**Q: Who has access to List View?**

Access to List View is controlled by the privileges assigned to your OpCon role. Contact your system administrator if you need access.

## Glossary

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
