---
title: Using Schedule Daily
description: "The Schedule Daily editor displays a list of schedule dates and schedules."
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

# Using Schedule Daily

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Schedule Daily** editor displays a list of schedule dates and schedules. Select a date and schedule to modify schedule details and events. For conceptual information, refer to [Editing Daily Schedules](../../../operations/editing-schedules.md) in the **Concepts** online help.

:::note
Completed schedules with failed jobs display in red as: `ScheduleName (Completed -- Contains Failed Jobs)`. In-progress schedules with failed jobs display as: `ScheduleName (In Progress -- Contains Failed Jobs)`.
:::

## When Would You Use It?

- The **Schedule Daily** editor displays a list of schedule dates and schedules

## Why Would You Use It?

- **Using Schedule**: The **Schedule Daily** editor displays a list of schedule dates and schedules

## Schedule Daily Toolbar

The toolbar provides functions for managing schedules in daily.

![Schedule Daily toolbar](../../../Resources/Images/EM/EMscheddailytoolbar.png "Schedule Daily toolbar")

**Schedule Daily** procedures from the **Daily Maintenance** view:

- [Deleting Old Schedules](Deleting-Old-Schedules.md)
- [Adding Properties to Daily Schedule     Instances](Adding-Properties-to-Daily-Schedule-Instances.md)
- [Editing Daily Schedule Instance     Properties](Editing-Daily-Schedule-Instance-Properties.md)
- [Removing Daily Schedule Instance     Properties](Removing-Daily-Schedule-Instance-Properties.md)
- [Adding Daily Schedule     Events](Adding-Daily-Schedule-Events.md)
- [Deleting Schedule Completion     Events](Deleting-Schedule-Completion-Events2.md)

**Schedule Master** procedures from the **Daily Maintenance** view:

- [Editing Schedules in Daily Schedule     Tables](Editing-Schedules-in-Daily.md)
- [Editing Schedules in Master Schedule     Tables](Editing-Schedules-in-Master.md)

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What can you do with Schedule Daily?**

Schedule Daily allows you to schedule daily toolbar.

**Q: Who has access to Schedule Daily?**

Access to Schedule Daily is controlled by the privileges assigned to your OpCon role. Contact your system administrator if you need access.

## Glossary

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
