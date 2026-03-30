---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Using Frequency Manager
description: "The Frequency Manager allows you to look up, edit, rename, forecast, and compare frequencies."
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

#  Using Frequency Manager

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Frequency Manager** allows you to look up, edit, rename, forecast, and compare frequencies. You can also resolve duplicate frequency names and definitions, and cross-reference any schedules or jobs using a frequency.

The **Frequency Manager** screen displays a list of frequency names and the master schedules and jobs using each frequency.

## When Would You Use It?

- You need to allows you to look up, edit, rename, forecast, and compare frequencies using The **Frequency Manager**

## Why Would You Use It?

- **Operational value**: Allows you to look up, edit, rename, forecast, and compare frequencies

## Frequency Manager Toolbar

The **Frequency Manager** has a toolbar for managing frequencies. Select any icon on the toolbar below to learn more about its functionality.

![Frequency Manager toolbar](../../../Resources/Images/EM/EMfreqmngrtoolbar.png "Frequency Manager toolbar")

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

-   [Viewing Schedules and Jobs using Frequency Names](Viewing-Schedules-and-Jobs.md)
-   [Editing Frequency Definitions](Editing-Frequency-Definitions.md)
-   [Renaming Frequencies](Renaming-Frequencies.md)
-   [Forecasting Frequencies](Forecasting-Frequencies.md)
-   [Comparing Frequencies](Comparing-Frequencies.md)
-   [Editing Schedule or Job Master](Editing-Schedule-or-Job-Master.md)
-   [Showing Duplicate Frequency Names Only](Showing-Duplicate-Frequency-Names.md)
-   [Showing Duplicate Frequency Definitions Only](Showing-Duplicate-Frequency-Definitions.md)
-   [Showing Schedule Frequencies Only](Showing-Schedule-Frequencies.md)
:::

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What can you do with Frequency Manager?**

Frequency Manager allows you to frequency manager toolbar.

**Q: Who has access to Frequency Manager?**

Access to Frequency Manager is controlled by the privileges assigned to your OpCon role. Contact your system administrator if you need access.

## Glossary

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
