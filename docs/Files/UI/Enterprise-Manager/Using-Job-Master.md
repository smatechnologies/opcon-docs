---
title: Using Job Master
description: "The Job Master editor is used to define and maintain OpCon jobs."
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

# Using Job Master

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Job Master** editor is used to define and maintain OpCon jobs.

## Job Master Tabs

The editor lists jobs and uses tabs to provide details for each job, including instance definitions, frequencies, events, threshold/resource updates, dependencies, documentation, tags, and notification triggers. Select any tab to learn more about its functionality.

![Job Master tab bar](../../../Resources/Images/EM/EMjobmastertabs.png "Job Master tab bar")

## Job Master Toolbar

The **Job Master** editor has a toolbar for managing jobs. Select any icon to learn more about its functionality.

![Job Master toolbar](../../../Resources/Images/EM/EMjobmastertoolbar.png "Job Master toolbar")

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Adding Jobs](Adding-Jobs.md)
- [Copying Jobs](Copying-Jobs.md)
- [Moving Jobs](Moving-Jobs.md)
- [Deleting Jobs](Deleting-Jobs.md)
- [Viewing Additional Job Information](Viewing-Additional-Schedule-Info.md)

:::

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What can you do with Job Master?**

Job Master allows you to job master tabs, job master toolbar.

**Q: Who has access to Job Master?**

Access to Job Master is controlled by the privileges assigned to your OpCon role. Contact your system administrator if you need access.

## Glossary

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Threshold**: A numeric variable stored in the OpCon database used to control job execution. Jobs can be made dependent on threshold values, and OpCon events can update threshold values at runtime.

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
