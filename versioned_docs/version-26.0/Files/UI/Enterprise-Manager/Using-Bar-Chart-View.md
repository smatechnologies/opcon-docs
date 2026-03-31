---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Using Bar Chart View
description: "The Bar Chart view displays Daily statistics with each bar representing schedules for that day grouped by job status."
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

#  Using Bar Chart View

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Bar Chart** view displays Daily statistics with each bar representing schedules for that day grouped by job status. To change chart preferences, refer to [Setting Preferences for Charts](Preferences-for-Charts.md).

The **Bar Chart** screen shows jobs grouped by status for either a schedule or a day. The schedule name or date appears above the bar chart. To display schedule and job information, you **must** first select the **Listen for selection changes in other views** button on the **Bar Chart** toolbar.

The **Send the current selection to other views** button must also be activated in another view (e.g., **Daily list** and/or **Matrix**).

## When Would You Use It?

- The **Bar Chart** view displays Daily statistics with each bar representing schedules for that day grouped by job status

## Why Would You Use It?

- **Using Bar**: The **Bar Chart** view displays Daily statistics with each bar representing schedules for that day grouped by job status

## Bar Chart Toolbar

The **Bar Chart** view has a toolbar for performing actions in the view. Select any icon on the toolbar below to learn more about its functionality.

![Bar Chart toolbar](../../../Resources/Images/EM/EMbarcharttoolbar.png "Bar Chart toolbar")

## Bar Chart Right-click Menu

Selecting a bar or tube in the **Bar Chart** view displays the following menu items:

-   **Drill down**: Takes the display down a level (e.g., from all daily schedules to schedules for a specific day)
-   **Drill up**: Takes the display up a level (e.g., from a schedule on a specific day to all days in the Daily tables)
-   **Jobs list**: Opens the **Jobs list** dialog showing jobs that match the selected bar or tube. Provides **Edit Master** and **Edit Daily** options. Refer to [Editing Master Jobs](Performing-Job-Procedures-List.md#Editing) or [Monitoring SAP R/3 and CRM Background Process Resources](Monitoring-SAP-R3-and-CRM-Background-Process-Resources.md)
-   **Refresh Chart**: Refreshes the displayed items in the **Bar Chart** view
-   **Pie Chart**: Opens the **Pie Chart** for the matching selection
-   **Workload chart**: Opens the **Workload Chart** for the matching selection

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")Related
Topics

-   [Creating and Saving Custom Diagrams](Creating-Custom-Diagrams-Bar.md)
-   [Synchronizing Data between List and Bar Chart Views](Synchronizing-Data-between-List-and-Bar-Chart-Views.md)
-   [Creating/Updating Job Filters](Creating_Updating-Job-Filters-Bar.md)
-   [Viewing Job Lists for Schedules](Viewing-Job-Lists-for-Schedules-Bar.md)
:::

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Drill down | Takes the display down a level (e.g., from all daily schedules to schedules for a specific day) | — | — |
| Drill up | Takes the display up a level (e.g., from a schedule on a specific day to all days in the Daily tables) | — | — |
| Jobs list | Opens the **Jobs list** dialog showing jobs that match the selected bar or tube. | — | — |
| Refresh Chart | Refreshes the displayed items in the **Bar Chart** view | — | — |
| Pie Chart | Opens the **Pie Chart** for the matching selection | — | — |
| Workload chart | Opens the **Workload Chart** for the matching selection | — | — |
## FAQs

**Q: What can you do with Bar Chart View?**

Bar Chart View allows you to bar chart toolbar, bar chart right-click menu.

**Q: Who has access to Bar Chart View?**

Access to Bar Chart View is controlled by the privileges assigned to your OpCon role. Contact your system administrator if you need access.

## Glossary

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
