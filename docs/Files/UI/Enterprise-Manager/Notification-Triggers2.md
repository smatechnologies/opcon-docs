---
title: Notification Triggers
description: "The Notification Triggers frame provides tabs for the Trigger types (Machines, Schedules, and Jobs)."
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

# Notification Triggers

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Notification Triggers** frame provides tabs for the Trigger types (Machines, Schedules, and Jobs). Each Trigger type contains the names of the user-defined notification groups and triggers associated with each group.

:::note
Triggers are responsible for writing the notification information to the OpCon database upon the status change of one or more items (Machines, Schedules, or Jobs) within a group.
:::

- Search for a specific trigger by typing part of or the full trigger name in the **type filter text** box
- You can add groups inside other groups to better organize triggers
- You must add triggers to the "lowest level" groups within a group tree

## When Would You Use It?

- You need to provide tabs for the Trigger types (Machines, Schedules, and Jobs) using The **Notification Triggers** frame

## Why Would You Use It?

- **Operational value**: Provides tabs for the Trigger types (Machines, Schedules, and Jobs)

## Right-click Menu

- **Add Root Group**: Adds a new group to the root level of the **Jobs**, **Machines**, or **Schedules** tab
- **[Add Group](Managing-Groups.md#Adding)**: Adds a new group within any empty group. Selecting **Add Group** from another group creates a child group
- **[Delete Group](Managing-Groups.md#Deleting)**: Deletes the selected group and all items within its tree
- **[Add Machine Trigger](Managing-Triggers.md#Adding)**: In the **Machines** tab, provides a list of machine triggers as defined in the [Machine Triggers](../../../notifications/Notification-Triggers.md#Machine) section in the **Concepts** online help
- **[Add Schedule Trigger](Managing-Triggers.md#Adding)**: In the **Schedules** tab, provides a list of schedule triggers as defined in the [Schedule Triggers](../../../notifications/Notification-Triggers.md#Schedule) section in the **Concepts** online help
- **[Add Job Trigger](Managing-Triggers.md#Adding)**: In the **Machines**, **Schedules**, and **Jobs** tabs, provides a list of job triggers as defined in the [Job Triggers](../../../notifications/Notification-Triggers.md#Job) section in the **Concepts** online help
- **[Rename](Managing-Groups.md#Renaming)**: Renames the selected group
- **[Delete Trigger](Managing-Triggers.md#Deleting)**: Deletes the selected trigger within the selected tab

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Add Root Group | Adds a new group to the root level of the **Jobs**, **Machines**, or **Schedules** tab | — | — |
| [Add Group](Managing-Groups.md#Adding) | Adds a new group within any empty group. | — | — |
| [Delete Group](Managing-Groups.md#Deleting) | Deletes the selected group and all items within its tree | — | — |
| [Add Machine Trigger](Managing-Triggers.md#Adding) | In the **Machines** tab, provides a list of machine triggers as defined in the Machine Triggers section in the **Concepts** online help | — | — |
| [Add Schedule Trigger](Managing-Triggers.md#Adding) | In the **Schedules** tab, provides a list of schedule triggers as defined in the Schedule Triggers section in the **Concepts** online help | — | — |
| [Add Job Trigger](Managing-Triggers.md#Adding) | In the **Machines**, **Schedules**, and **Jobs** tabs, provides a list of job triggers as defined in the Job Triggers section in the **Concepts** onli... | — | — |
| [Rename](Managing-Groups.md#Renaming) | Renames the selected group | — | — |
| [Delete Trigger](Managing-Triggers.md#Deleting) | Deletes the selected trigger within the selected tab | — | — |
## FAQs

**Q: What does Notification Triggers cover?**

This page covers Right-click Menu.

## Glossary

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
