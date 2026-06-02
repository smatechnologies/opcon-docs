---
title: Managing Machine Groups
description: "The Machine Groups editor in Enterprise Manager defines and maintains OpCon Machine Groups, including machine type assignment and machine membership."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Managing Machine Groups

The **Machine Groups** editor in Enterprise Manager defines and maintains OpCon Machine Groups. It lists all existing machine groups and lets you view and edit the machine type and machine membership for each group. For conceptual information, refer to [Machine Groups](../../../objects/machine-groups.md) in the **Concepts** online help.

## Machine Groups editor

The **Machine Groups** editor contains the following sections:

| Section | Description |
|---|---|
| **Name** | The name of the machine group. Maximum 20 characters. Required. |
| **Documentation** | Optional notes about the machine group. Maximum 4,000 characters. |
| **Machine Type** | The operating system type for all machines in the group. Set when the group is created and cannot be changed after machines are assigned. |
| **Unassigned Machines** | Machines of the selected type that are not yet members of the group. |
| **Assigned Machines** | Machines that are members of the group. A group must have at least one assigned machine to be saved. |

All machines in a group must share the same machine type and the same data format (XML or Non-XML). The editor prevents mixing XML and Non-XML machines in the same group.

## Machine Groups toolbar

The **Machine Groups** toolbar provides the following actions:

| Button | Description |
|---|---|
| **Add** | Creates a new machine group record. |
| **Save** | Saves changes to the current machine group. |
| **Cancel** | Discards unsaved changes. |
| **Delete** | Deletes the selected machine group. If the group has cross-references to master schedules or jobs, Enterprise Manager displays a confirmation dialog before deleting. |
| **Copy** | Opens the **Copy Machine Group** dialog to create a copy of the selected group under a new name. |
| **View Audit** | Opens the audit history for the selected machine group. |
| **Cross-References** | Displays the master schedules, master jobs, and daily jobs that reference the selected machine group. |

## Procedures

Use the following procedures to work with machine groups:

- [Adding Machine Groups](Adding-Machine-Groups.md)
- [Viewing Additional Machine Group Information](Viewing-Additional-Machine-Group-Info.md)
- [Copying Machine Groups](Copying-Machine-Groups.md)
- [Excluding Machines from Machine Groups](Excluding-Machines-from-Machine-Groups.md)
- [Adding Machine Groups to Job Details](Adding-Machine-Groups-to-Job-Details.md)
- [Deleting Machine Groups](Deleting-Machine-Groups.md)
