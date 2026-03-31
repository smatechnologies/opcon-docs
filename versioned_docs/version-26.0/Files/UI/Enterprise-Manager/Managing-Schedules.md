---
title: Managing Schedules
description: "The Schedule Build dialog generates schedule builds manually for selected schedules for a specified day or series of days."
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

# Managing Schedules

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Schedule Build** dialog generates schedule builds manually for selected schedules for a specified day or series of days. For conceptual information, refer to [Building Daily Schedules](../../../operations/building-schedules.md) in the **Concepts** online help.

:::note
You must have all appropriate privileges to use the build functionality. For additional information, refer to [Departmental Function Privileges](../../../administration/privileges.md#departmental-function-privileges) in the **Concepts** online help.
:::

The **Schedule Build** dialog contains a list of schedules to build and the build results information.

## When Would You Use It?

- You need to review or update Schedules settings in Enterprise Manager
- Schedules needs to be reviewed as part of routine system maintenance or a compliance audit

## Why Would You Use It?

- **Reduce administrative overhead**: Centralizing Schedules management in Enterprise Manager reduces the time needed to locate and update settings across the environment
- All Schedules changes are captured in the OpCon audit system, supporting change management and compliance processes

## Building Daily Schedules

To build a daily schedule:

1. Select on **Schedule Build** under the **Operation** topic. The **Build Schedules** dialog displays
2. Select the **schedule(s)** in the **Schedule Selection** list. Alternatively, type the first few letters or numbers in the **Schedule Selection** text box to filter the list. You can also select the **Show schedules with auto-build** or **Show schedules without auto-build** option
3. In the **Start** text box, enter the start date or select it using the **calendar** button
4. In the **Stop** text box, enter the stop date or select it using the **calendar** button
5. *(Optional)* Select the **Overwrite existing schedules** option

:::note
Existing schedules that are processing cannot be overwritten.
:::

To build Daily Schedules, complete the following steps:

6. *(Optional)* Select the **Define schedule instance** option
7. Select **Build**. The **Build Properties** dialog displays
8. Select the **Released** option to release the schedule, or select **on Hold** to start the schedule manually

:::note
If building a schedule for a date before the current date, the **Released** status is unavailable. The schedule will always be built on Hold.
:::

9. Select **OK**

:::note
Schedules built on Hold appear **blue**. Schedules built as **Released** appear **green**. Hover over a row in the **Build Results** table to view details, including log file information.
:::

10. If the **Define schedule instance** option was not selected, select **Close ☒** to close the **Build Schedules** dialog
11. If the **Define schedule instance** option was selected and the schedule has no named instances, do the following in the **Define Schedule Instance** dialog:
    a. Enter one or more property definitions in the format **PropertyName=PropertyValue**, separated by semicolons (;).
    b. Skip to Step 13.
12. If the **Define schedule instance** option was selected and the schedule has named instances, do the following:
    a. Select the named instance.
    b. Enter property definitions in the format **PropertyName=PropertyValue**, separated by semicolons (;).
    c. Go to Step 13.
13. Select **OK** to save, or **Cancel** to discard the definitions for that schedule instance

:::note
If no properties are defined, OpCon still requests the build but no properties will be defined.
:::

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: What does managing schedules involve?**

Managing schedules includes Building Daily Schedules. Access schedules through the Enterprise Manager navigation pane.

**Q: Who can manage schedules in OpCon?**

Users with the appropriate privileges assigned through their role can manage schedules. Contact your OpCon system administrator if you do not have access.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Calendar**: A named collection of dates in OpCon used by schedules and frequencies to determine when automation runs or is excluded. Calendars can represent holidays, working days, or any custom date set.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
