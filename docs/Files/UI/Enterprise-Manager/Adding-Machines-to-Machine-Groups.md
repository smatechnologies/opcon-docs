---
title: Adding Machines to Machine Groups
description: "Use this procedure to assign Machines to a Machine Group in Enterprise Manager."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
doc_type: procedural
last_updated: 2026-05-29
---

# Adding Machines to Machine Groups

## What Is It?

A Machine Group is a named collection of Machines that share the same machine type. You assign Machines to a Machine Group so that jobs and schedules can target the group instead of an individual Machine. You manage group membership in the **Machine Groups** editor in Enterprise Manager, where Machines move between an **Unassigned Machines** list and an **Assigned Machines** list.

All Machines in a group must use the same machine type and the same data type. The editor allows only Machines that match the group's selected **Machine Type**, and it allows either all Non-XML or all XML Machines in a single group, not a mix.

## Required Privileges

Your role must have the privileges needed to open the **Machine Groups** editor and update Machine Group membership. Machine Group access is controlled per role through Machine Group privileges, including the **Can Update** permission for the group.

## Assign Machines to a Machine Group

To assign Machines to a Machine Group, complete the following steps:

1. In the navigation pane, select the **Administration** category.
2. Select **Machine Groups** to open the Machine Groups editor.
3. From the **Machine Group** list, select the group you want to update.
4. In the **Machine Assignment** section, select one or more Machines in the **Unassigned Machines** list.
5. Select the green arrow button to move the selected Machines to the **Assigned Machines** list.
6. To remove a Machine from the group, select it in the **Assigned Machines** list and select the red arrow button to move it back to **Unassigned Machines**.
7. Select **Save** on the toolbar to save the Machine Group.

**Result:** The Machines in the **Assigned Machines** list are members of the Machine Group and are available when you target that group from a job or schedule.

## Notes

- A Machine Group cannot be saved while it is empty. At least one Machine must remain in the **Assigned Machines** list.
- The **Unassigned Machines** list shows only Machines that match the group's **Machine Type**.
- A Machine Group can contain only one data type. If you select a mix of Non-XML and XML Machines, Enterprise Manager reports that the group can contain only Non-XML or only XML Machines.

## FAQs

**Q: Why do some Machines not appear in the Unassigned Machines list?**

The list shows only Machines whose machine type matches the group's **Machine Type**. After the first Machine is assigned, the list is further limited to Machines that share the same data type as the assigned Machines.

**Q: How do I save the changes?**

After moving Machines between the lists, select **Save** on the toolbar.

## Glossary

**Enterprise Manager**: OpCon's graphical user interface used to define schedules and jobs, manage automation data, and perform operational tasks.

**Machine**: A platform defined in the OpCon database that has an Agent installed. OpCon routes job requests to Machines and receives job completion status back from them.

**Machine Group**: A named collection of Machines of the same machine type. Jobs and schedules can target a Machine Group instead of a single Machine.
