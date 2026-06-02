---
title: Adding Jobs to Schedule Layouts
description: "Use these procedures to add, edit, and delete jobs and job dependencies in the Workflow Designer in Enterprise Manager."
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

# Adding Jobs to Schedule Layouts

The Workflow Designer in Enterprise Manager provides a graphical canvas for building and maintaining schedule layouts. Use the procedures on this page to add jobs to a schedule, create and manage job dependencies, and edit or delete jobs and dependencies from the diagram.

## Add a Job

To add a job to a schedule layout, complete the following steps:

1. Select **Workflow Designer** under the **Administration** topic.
2. In the **Select Schedule** tree, select a schedule or expand a schedule to select one of its SubSchedules. Use the **filter** text box to narrow the list.
3. In the **Tools** frame, select and drag the **Add Job** button onto the schedule diagram.
4. Enter the job information in the **Job Master** form that opens.
5. Select **Save** on the **Job Master** toolbar.
6. Select **Close** (to the right of the **Job Master** tab) to close Job Master.

**Result:** The new job appears as a node on the schedule diagram.

---

## Add a Job Dependency

:::note
The **Add Dependency** tool is disabled if you do not have the "Modify Jobs in Job Master" privilege in at least one department, or the "All Administration Functions" or "All Functions" privilege.
:::

You can establish a dependency link using either of the following methods.

**Method 1 — Tools frame**

To add a job dependency using the Tools frame, complete the following steps:

1. In the **Tools** frame, select **Add Dependency**.
2. Select the job that is the predecessor (the job the dependency is based on).
3. Select the job that is the successor (the job where the dependency is created).

**Method 2 — Drag**

To add a job dependency by dragging, complete the following steps:

1. In the **Tools** frame, select **Select**.
2. Hold **Ctrl** and select the predecessor job.
3. Drag the line to the successor job.

**Complete the Add Dependency dialog**

After using either method, the **Add Dependency** dialog opens. Complete the following steps:

4. If the predecessor belongs to a Multi-Instance Schedule, select the **Instance Name** for the predecessor job.

   :::note
   The **Instance Name** list is available only for Multi-Instance Schedules.
   :::

5. Select the **Dependency Type** option.
6. Select the **Dependency Options**.
7. Select the **Frequency** for the successor job.
8. Select **OK** to save the dependency.

**Result:** The dependency link appears on the diagram. Line color and style indicate the dependency type (for example, Requires, After, Excludes, or Conflicts). For details, see [Workflow Designer Dependency Lines](Workflow-Designer-Dependency-Lines.md).

---

## Edit a Job

To edit a job in the schedule layout, complete the following steps:

1. In the **Tools** frame, select **Select**.
2. Right-click the job to change.
3. Select **Edit**.
4. Enter the job information changes in the **Job Master** form.
5. Select **Save** on the **Job Master** toolbar.
6. Select **Close** (to the right of the **Job Master** tab) to close Job Master.

---

## Edit a Job Dependency

To edit a job dependency, complete the following steps:

1. Right-click the dependency link (line) to change.

   :::note
   When you select the dependency link line, the line thickens and becomes bold.
   :::

2. Select **Edit**. The **Edit Dependency** dialog opens.
3. If the predecessor belongs to a Multi-Instance Schedule, select the **Instance Name** for the predecessor job.

   :::note
   The **Instance Name** list is available only for Multi-Instance Schedules.
   :::

4. Select the **Dependency Type** option.
5. Select the **Dependency Options**.
6. Select the **Frequency** for the successor job.
7. Select **OK** to save the changes.

---

## Delete a Job

:::note
The **Delete** option is disabled if you do not have the "Delete Jobs in Job Master" privilege in at least one department, or the "All Administration Functions" or "All Functions" privilege.
:::

To delete a job from the schedule layout, complete the following steps:

1. In the **Tools** frame, select **Select**.
2. Right-click the job to delete.
3. Select **Delete**.
4. Select **Yes** to confirm, or **No** to cancel.

---

## Delete a Dependency

:::note
The **Delete** option is disabled if you do not have the "Modify Jobs in Job Master" privilege in at least one department, or the "All Administration Functions" or "All Functions" privilege.
:::

To delete a dependency from the schedule layout, complete the following steps:

1. In the **Tools** frame, select **Select**.
2. Right-click the dependency link (line) to delete.

   :::note
   When you select the dependency link line, the line thickens and becomes bold.
   :::

3. Select **Delete**.
4. Select **Yes** to confirm, or **No** to cancel.
5. Select **Close** (to the right of the **Workflow Designer** tab) to close Workflow Designer.
