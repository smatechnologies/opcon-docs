---
title: Using Daily Maintenance View
description: "The Daily Maintenance view allows you to manage daily schedules and validate job dependencies in the Daily tables."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Using Daily Maintenance View

The **Daily Maintenance** view in Enterprise Manager provides a central workspace for managing schedules and jobs in the Daily tables. Use this view to check dependencies, delete schedules, and open editors for both Daily and Master table records.

:::note
Continuous recommends keeping no more than 14 days of schedules in the Daily tables. The default **Days Kept in Daily** preference is 14. Performance improves with fewer days of schedules built.

To perform any Daily Maintenance functions, you must have the appropriate privileges. For details, see [Departmental Function Privileges](../../../administration/privileges.md#departmental-function-privileges).
:::

## Overview

The **Daily Maintenance** view lets you:

- Check daily schedules and jobs for dependency issues
- Delete schedules or jobs from the Daily tables
- Open schedules and jobs in the Daily or Master editors
- Add jobs from the Master tables to a daily schedule

The view contains two panels side by side:

- **Daily** — A tree that lists all dates and their associated daily schedules and jobs.
- **Master** — A job list showing jobs available to add from the Master tables to the selected daily schedule.

## Toolbar

The **Daily Maintenance** toolbar contains one action:

| Button | Description |
|---|---|
| **Delete Old Schedules** | Removes daily schedule records older than the configured **Days Kept in Daily** preference value. This button is active only when you are an OCADM user, or when you have the **Delete Daily Schedules** privilege and access to all schedules. |

## Maintenance Panel Buttons

The **Maintenance** group at the lower right of the view contains buttons for acting on your selection in the **Daily** tree.

### Check Options

Select one of the following options before selecting **Check**:

| Option | Behavior |
|---|---|
| **Normal (No Circular)** | Validates schedule dependencies, excluding circular dependency detection. This is the default selection. |
| **Slow (Circular)** | Validates schedule dependencies and detects circular dependencies. |
| **Fast (Requires Only)** | Validates only "Requires" dependencies. |

### Action Buttons

| Button | Active When | Required Privilege |
|---|---|---|
| **Check** | A date, schedule, or sub-schedule is selected | None beyond login |
| **Edit Master** | A schedule, job, or sub-schedule is selected | **Maintain Schedules** (when a schedule is selected); **View Jobs in Master Schedules** (departmental, when a job or sub-schedule is selected) |
| **Edit Daily** | A schedule, job, or sub-schedule is selected | **Maintain Schedules** (when a schedule is selected); **View Jobs in Daily Schedules** (departmental, when a job or sub-schedule is selected) |
| **Delete** | A date, schedule, job, or sub-schedule is selected | **Delete Daily Schedules**; additionally **Delete Jobs from Daily Schedules** (departmental) is required when deleting a job |

## Procedures

The following procedures describe how to use Daily Maintenance functionality:

- [Finding Daily Schedules or Jobs](Finding-Daily-Schedules.md)
- [Checking Daily Schedules](Checking-Daily-Schedules.md)
- [Deleting Daily Schedules](Deleting-Daily-Schedules.md)
- [Deleting All Daily Schedules for Particular Days](Deleting-All-Daily-Schedules.md)
- [Deleting Jobs from Daily Schedules](Deleting-Jobs-from-Daily-Schedules.md)
- [Adding Jobs from Job Master to Daily Schedule](Adding-Jobs-from-Job-Master-to-Daily-Schedule.md)
- [Deleting Old Schedules](Deleting-Old-Schedules.md)
