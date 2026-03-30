---
title: Using Notification Manager
description: "The Notification Manager is used to create groups based on Machine, Schedule, and Job status change events in OpCon, then define triggers to send notifications."
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

# Using Notification Manager

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Notification Manager** is used to create groups based on Machine, Schedule, and Job status change events in OpCon, then define triggers to send notifications. User-defined group folders are created and displayed for each item (Machines, Schedules, and/or Jobs). For conceptual information on the Event Notification System (ENS), refer to [Event Notification](../../../notifications/Components.md) in the **Concepts** online help.

:::caution
All data in the **Notification Manager** table is updated every time a user makes a single change. If more than one user attempts to make a change at the same time, errors can occur. Continuous recommends limiting **Notification Manager** to one user at a time.
:::

The **Notification Manager** screen displays item groups, notification triggers inside the groups, and notifications defined for each trigger.

The **Type Filter Text** box lets you type part or all of a name to filter the display. Type an \* (asterisk) before a word to search for strings that do not start with that word.

:::tip Example
Type **\*Level** to find a group that includes "Level" somewhere in the name.
:::

## When Would You Use It?

- You need to define triggers to send notifications using The **Notification Manager** is used to create groups based on Machine, Schedule, and Job status change events in OpCon, then

## Why Would You Use It?

- **Using Notification**: The **Notification Manager** is used to create groups based on Machine, Schedule, and Job status change events in OpCon, then define triggers to send notifications

## Notification Manager Toolbar

The toolbar resides at the top-right corner of the screen. Select any icon to learn more about its functionality.

![Notification Manager toolbar](../../../Resources/Images/EM/EMnotifmgrtoolbar.png "Notification Manager toolbar")

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Notification Triggers](Notification-Triggers2.md)
- [Group Definitions](Group-Definitions.md)
- [Notification Definitions](Notification-Definitions.md)

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What can you do with Notification Manager?**

Notification Manager allows you to notification manager toolbar.

**Q: Who has access to Notification Manager?**

Access to Notification Manager is controlled by the privileges assigned to your OpCon role. Contact your system administrator if you need access.

**Q: What happens if more than one user edits the Notification Manager at the same time?**

All data in the Notification Manager table is updated every time a user makes a single change. If more than one user attempts to make a change at the same time, errors can occur. Continuous recommends limiting Notification Manager to one user at a time.

## Glossary

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
