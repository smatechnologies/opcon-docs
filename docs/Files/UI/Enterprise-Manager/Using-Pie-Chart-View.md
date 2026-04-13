---
title: Using Pie Chart View
description: "The Pie Chart view represents a schedule using colors corresponding to job statuses."
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

# Using Pie Chart View

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Pie Chart** view represents a schedule using colors corresponding to job statuses. For information on changing pie chart preferences, refer to [Setting Preferences for Charts](Preferences-for-Charts.md).

The **Pie Chart** screen shows jobs grouped by status for either a schedule or a day. When displaying for a day, job counts include all jobs on the day, including those in subschedules. When displaying for a schedule, job counts include all jobs in the schedule but not those in subschedules.

:::note
If the "Show Job Containers" preference is turned off, Container jobs are excluded from the job counts. For more on this setting, refer to [Setting Preferences from Enterprise Manager](Preferences-from-EM.md).
:::

The Schedule Name or Date appears above the pie. To display schedule and job information, you **must** first activate the **Listen for selection changes in other views** button on the **Pie Chart** toolbar. The **Send the current selection to other views** button must also be activated in another view (e.g., **List** and/or **Matrix**).

## Pie Chart Toolbar

The **Pie Chart** view has a toolbar for performing actions in the view. Select any icon to learn more about its functionality.

![Pie Chart toolbar](../../../Resources/Images/EM/EMpiecharttoolbar.png "Pie Chart toolbar")

## Pie Chart Right-click Menu

The **Pie Chart** view has the following right-click menu options:

- **Jobs list:** Opens the **Jobs <job status name\>** dialog, displaying jobs that match the selected pie segment. Provides **Edit Master** and **Edit Daily** buttons
- **Refresh Chart:** Refreshes the displayed items in the pie chart

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")Related
Topics

- [Creating and Saving Custom     Diagrams](Creating-Custom-Diagrams-Pie.md)
- [Viewing Job Lists for     Schedules](Viewing-Job-Lists-for-Schedules-Pie.md)
- [Viewing Jobs in     SubSchedules](Viewing-Job-Lists-for-Schedules-Pie.md#View_Jobs_in_a_SubSchedule)
- [Setting Preferences for Status     Colors](Preferences-for-Status-Colors.md)

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What can you do with Pie Chart View?**

Pie Chart View allows you to pie chart toolbar, pie chart right-click menu.

**Q: Who has access to Pie Chart View?**

Access to Pie Chart View is controlled by the privileges assigned to your OpCon role. Contact your system administrator if you need access.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
