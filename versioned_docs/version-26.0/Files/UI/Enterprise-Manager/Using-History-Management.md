---
title: Using History Management
description: "The History Management view is used to view the schedule and job history information."
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

# Using History Management

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **History Management** view is used to view the schedule and job history information.

**History Management** also provides a **Type Filter Text** box to type a part of or the full name for the specific item to display the selection. You can also type an \* (asterisk) in front of a word in a string if the string you are looking for is not necessarily at the beginning of the string.

:::tip Example
In the History Management screen, type **\*Build** to find the SMA_SKD_BUILD job in the AdHoc schedule.
:::

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")

- [Viewing History Records](Viewing-and-Exporting-History-Records.md#Viewing)
- [Exporting History Records](Viewing-and-Exporting-History-Records.md#Exportin)
- [Resetting the View](Viewing-and-Exporting-History-Records.md#Resettin)

## When Would You Use It?

- The **History Management** view is used to view the schedule and job history information

## Why Would You Use It?

- **Operational value**: Provides a Type Filter Text box to type a part of or the full name for the specific item

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What can you do with History Management?**

History Management allows you to manage and configure related settings.

**Q: Who has access to History Management?**

Access to History Management is controlled by the privileges assigned to your OpCon role. Contact your system administrator if you need access.

## Glossary

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
