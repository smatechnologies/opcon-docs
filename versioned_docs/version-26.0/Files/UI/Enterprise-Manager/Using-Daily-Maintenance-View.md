---
title: Using Daily Maintenance View
description: "The Daily Maintenance view allows you to manage daily schedules and validate job dependencies in the Daily tables."
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

# Using Daily Maintenance View

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Daily Maintenance** view allows you to manage daily schedules and validate job dependencies in the Daily tables.

:::note
Continuous recommends keeping no more than two weeks of schedules in the Daily tables. The SAM-SS performs better with fewer days of schedules built.

To perform any Daily Maintenance functions, you must have the appropriate privileges. Refer to [Departmental Function Privileges](../../../administration/privileges.md#departmental-function-privileges) in the Concepts online help.
:::

The **Daily Maintenance** view allows you to:

- Check and/or delete daily schedules
- Validate job dependencies in the Daily tables (e.g., detect circular dependencies or unmet "Requires" dependencies)
- Edit schedules and/or jobs in the Daily or Master tables

## When Would You Use It?

- You need to allows you to manage daily schedules and validate job dependencies in the Daily tables using The **Daily Maintenance** view

## Why Would You Use It?

- **Operational value**: Allows you to manage daily schedules and validate job dependencies in the Daily tables

## Daily Maintenance Toolbar

The **Daily Maintenance** view has a toolbar for performing actions in the view. Select any icon on the toolbar below to learn more about its functionality.

![Daily Maintenance toolbar](../../../Resources/Images/EM/EMdailymainttoolbar.png "Daily Maintenance toolbar")

The following procedures apply to Daily Maintenance functionality for schedules and jobs in the Master and Daily tables:

- [Finding Daily Schedules or Jobs](Finding-Daily-Schedules.md)
- [Checking Daily Schedules](Checking-Daily-Schedules.md)
- [Deleting Daily Schedules](Deleting-Daily-Schedules.md)
- [Deleting All Daily Schedules for Particular Days](Deleting-All-Daily-Schedules.md)
- [Deleting Jobs from Daily Schedules](Deleting-Jobs-from-Daily-Schedules.md)
- [Adding Jobs from Job Master to Daily Schedule](Adding-Jobs-from-Job-Master-to-Daily-Schedule.md)
- [Deleting Old Schedules](Deleting-Old-Schedules.md)
:::

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What can you do with Daily Maintenance View?**

Daily Maintenance View allows you to daily maintenance toolbar.

**Q: Who has access to Daily Maintenance View?**

Access to Daily Maintenance View is controlled by the privileges assigned to your OpCon role. Contact your system administrator if you need access.

## Glossary

**SAM-SS (SAM and Supporting Services)**: The collective term for the OpCon server-side processing programs: SAM, SMANetCom, SMA Notify Handler, SMA Request Router, and SMA Start Time Calculator.

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Master Tables**: The OpCon database tables that hold the permanent definitions of schedules and jobs. Changes to master tables affect all future schedule builds.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.
