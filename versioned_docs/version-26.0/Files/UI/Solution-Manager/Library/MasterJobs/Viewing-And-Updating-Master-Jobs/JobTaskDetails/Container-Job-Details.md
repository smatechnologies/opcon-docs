---
title: Viewing and Adding Container Job Details
description: "Use this procedure to view and Adding Container Job Details in Solution Manager."
product_area: Solution Manager
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

# Viewing and Adding Container Job Details

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to view and Adding Container Job Details in Solution Manager.

To view, add, or edit a Container job, you must have the required privileges as defined in [Required Privileges](../Accessing-Master-Jobs.md#required-privileges).

## When Would You Use It?

- You need to inspect or audit and Adding Container Job Details records in Solution Manager
- An audit, compliance review, or operational check requires inspection of current and Adding Container Job Details state

## Why Would You Use It?

- **Improve operational visibility**: Inspecting and Adding Container Job Details records in Solution Manager supports informed decision-making and provides an audit trail for compliance reviews
- Information in Solution Manager reflects the live database state, ensuring that the data reviewed is current at the time of inspection

## Viewing Container Job Details

To view Container Job Details, complete the following steps:

1. Go to **Library** > **Master Jobs**
1. Select a container job in the list
1. Select **Edit**
1. Expand the **Task Details** panel to expose its content

---

## Adding Container Job Details

1. Go to **Library** > **Master Jobs**
1. Select **Add**
1. Expand the **Task Details** panel
1. Select a **Schedule** to update the schedule
1. Enter a **Name** to update the job name
1. Select a **Department** to update the department
1. Select an **Access Code** to update the access code
1. Update the **Disable Build** option. For more information, refer to [Jobs](../../../../../../../objects/jobs.md) in the **Concepts** online help
1. Select the **Allow Multi-Instance** option. For more information, refer to [Multi-Instance Jobs](../../../../../../../operations/job-names.md#multi-instance-jobs) in the **Concepts** online help
1. Select **Master Sub-Schedule**
1. Select **Edit Sub-Schedule Jobs** to go to the Master Jobs page and display the sub-schedule's jobs
1. Select **Edit Sub-Schedule** to go to the Master Schedule page and display the sub-schedule
1. Select **Save**

---

## Updating Container Job Details

To update Container Job Details, complete the following steps:

1. Go to **Library** > **Master Jobs**
1. Select a container job
1. Select **Edit**
1. Select the lock icon. The button appears gray and locked (![Master Job Definition Read-only Button](../../../../../../../Resources/Images/SM/Daily-Job-Definition-Read-only-Button.png 'Master Job Definition Read-only Button')) in **Read-only** mode and green and unlocked (![Job Definition Admin Button](../../../../../../../Resources/Images/SM/Daily-Job-Definition-Admin-Button.png 'Job Definition Admin Button')) in **Admin** mode
1. Expand the **Task Details** panel
1. Select a **Schedule** to update the schedule
1. Enter a **Name** to update the job name
1. Select a **Department** to update the department
1. Select an **Access Code** to update the access code
1. Update the **Disable Build** option. For more information, refer to [Jobs](../../../../../../../objects/jobs.md) in the **Concepts** online help
1. Select the **Allow Multi-Instance** option. For more information, refer to [Multi-Instance Jobs](../../../../../../../operations/job-names.md#multi-instance-jobs) in the **Concepts** online help
1. Select **Master Sub-Schedule**
1. Select **Edit Sub-Schedule Jobs** to go to the Master Jobs page and display the sub-schedule's jobs
1. Select **Edit Sub-Schedule** to go to the Master Schedule page and display the sub-schedule
1. Select **Save**

---

### More Information

For conceptual information, refer to [Container Jobs](../../../../../../../job-types/container.md) in the **Concepts** online help.

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: How many steps does the Viewing and Adding Container Job Details procedure involve?**

The Viewing and Adding Container Job Details procedure involves 32 steps. Complete all steps in order and save your changes.

**Q: What does Viewing and Adding Container Job Details cover?**

This page covers Viewing Container Job Details, Adding Container Job Details, Updating Container Job Details.

## Glossary

**Container Job**: A job type that runs a subschedule. Container jobs enable hierarchical schedule structures and support properties and events just like standard jobs.

**Access Code**: A security label applied to jobs and schedules in OpCon. Users must have the matching access code privilege to view or manage items with that label.

**Department**: An organizational grouping in OpCon used to assign jobs to logical divisions. User roles can be scoped to specific departments, controlling which jobs a user can manage.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
