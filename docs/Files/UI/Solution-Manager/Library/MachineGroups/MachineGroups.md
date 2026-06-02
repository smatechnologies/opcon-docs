---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Machine Groups
description: "Available Machine Groups in OpCon are shown in the grid under Library > Machine Groups."
product_area: Solution Manager
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

# Machine Groups

A Machine Group is a named collection of Agents of the same type. You can assign a Machine Group to a job so that OpCon selects any available Agent in the group at run time, distributing workload across multiple Agents without requiring a specific Agent assignment.

Machine Groups are managed under **Library > Machine Groups** in Solution Manager.

![Machine Groups Grid](../../../../../Resources/Images/SM/Library/MachineGroups/MachineGroups-Grid.png "Machine Groups Grid")

## Required privilege

To add, edit, copy, or delete Machine Groups, your role must have the **Maintain Machine Groups** function privilege.

## Machine Group fields

| Field | Required | Description |
|---|---|---|
| **Name** | Yes | A unique display name for the Machine Group. |
| **Type** | Yes | The Agent type for the group. All Agents assigned to the group must match this type. The **Type** field is read-only when editing or copying an existing group. |
| **Description** | No | Optional documentation text for the group (up to 4,000 characters). |
| Machines | Yes | One or more Agents to include in the group. At least one Agent must be assigned before you can save. |

## Add a Machine Group

To add a Machine Group, complete the following steps:

1. Go to **Library > Machine Groups**.
2. Select **Add**.

   The detail panel opens at the bottom of the page.

3. Enter a unique value in the **Name** field.
4. Select the Agent type from the **Type** list.

   The available Agents for that type appear in the machine transfer list.

5. Optionally, enter text in the **Description** field.
6. In the machine transfer list, move one or more Agents to the assigned column.
7. Select **Save**.

**Result:** The new Machine Group appears in the grid.

## Copy a Machine Group

To copy a Machine Group, complete the following steps:

1. Go to **Library > Machine Groups**.
2. Select the Machine Group you want to copy in the grid.
3. Select **Copy**.

   The detail panel opens with the copied group's **Type** and Agents pre-populated. The **Name** field is blank and must be filled in.

4. Enter a unique value in the **Name** field.
5. Optionally, update the **Description** or Agents.
6. Select **Save**.

**Result:** The copied Machine Group appears in the grid.

## Edit a Machine Group

To edit a Machine Group, complete the following steps:

1. Go to **Library > Machine Groups**.
2. Select the Machine Group in the grid.

   The detail panel opens with the group's current values.

3. Update the **Name**, **Description**, or Agents as needed.

   The **Type** field cannot be changed for an existing Machine Group.

4. Select **Save**.

**Result:** The Machine Group is updated.

## Delete a Machine Group

You cannot delete a Machine Group that is assigned to master jobs or daily jobs. Use **Cross References** to review assignments before deleting.

To delete a Machine Group, complete the following steps:

1. Go to **Library > Machine Groups**.
2. Select the Machine Group in the grid.
3. Select **Delete**.

   A confirmation dialog appears. If the group has active job assignments, an informational dialog shows the cross references instead, and deletion is blocked.

4. Confirm the deletion.

**Result:** The Machine Group is removed.

## View cross references

Cross References show which master jobs and daily jobs use a particular Machine Group.

To view cross references for a Machine Group, complete the following steps:

1. Go to **Library > Machine Groups**.
2. Select the Machine Group in the grid.
3. Select **Cross References**.

   ![Machine Group Cross References](../../../../../Resources/Images/SM/Library/MachineGroups/MachineGroups-CrossReferenceSummary.png "Machine Groups Cross References")

4. Select the expansion arrow next to **Master Job** to view master jobs using the group.

   ![Machine Group Master Job Cross References](../../../../../Resources/Images/SM/Library/MachineGroups/MachineGroups-MasterJobCrossReference.png "Machine Group Master Job References Dialog")

5. Select the expansion arrow next to **Daily Job** to view daily jobs using the group.

   ![Machine Group Daily Job Cross References](../../../../../Resources/Images/SM/Library/MachineGroups/MachineGroups-DailyJobCrossReference.png "Machine Group Daily Job Cross References Dialog")
