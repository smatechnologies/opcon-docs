---
title: Adding Thresholds to Layouts
description: "Use these procedures to add thresholds to Workflow Designer layouts, create threshold dependencies, and edit threshold dependencies in Enterprise Manager."
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

# Adding Thresholds to Layouts

Workflow Designer lets you place threshold objects directly on a schedule diagram and link them to jobs as dependencies. Use the procedures on this page to add a threshold to a layout, create a threshold dependency, and edit an existing threshold dependency.

:::note
The **Select Threshold** tool is disabled unless your role has **Modify Jobs in Job Master** privileges for at least one department, or **All Administration Functions** or **All Functions**.
:::

## Add a Threshold to a Layout

To add a threshold to a schedule layout, complete the following steps:

1. In Enterprise Manager, select **Workflow Designer** under the **Administration** topic.
2. Select a schedule from the **Select Schedule** list.
3. From the **Tools** palette, drag the **Select Threshold** tool onto the schedule diagram.
4. In the dialog that appears, select the threshold you want to add.
5. Select **OK**.

**Result:** The threshold object appears on the schedule diagram.

## Add a Threshold Dependency

To link a threshold to a job as a dependency, complete the following steps using one of two methods:

**Method 1 — Add Dependency tool:**

1. In the **Tools** palette, select **Add Dependency**.
2. Select the threshold that is the object of the dependency.
3. Select the job on which to create the dependency.
4. Continue with step 4 of Method 2.

**Method 2 — Ctrl+drag:**

1. In the **Tools** palette, select **Select**.
2. Hold **Ctrl** and select the threshold that is the object of the dependency.
3. Drag the link line to the job on which to create the dependency.
4. In the **Threshold Dependency** dialog, configure the dependency options (Operator, Value, and Frequency).
5. Select **OK** to save the threshold dependency.

**Result:** A dependency link line connects the threshold to the job on the diagram.

## Edit a Threshold Dependency

To edit an existing threshold dependency, complete the following steps:

1. In the schedule diagram, right-click the threshold dependency link line you want to change.

   :::note
   The selected link line thickens and becomes bold.
   :::

2. Select **Edit**. The **Editing Job Dependency** dialog opens.
3. Change the threshold dependency options (Operator, Value, Frequency).
4. Select **OK** to save the changes.

:::note
To delete a threshold dependency, follow the [Delete a Dependency](Adding-Jobs-to-Schedule-Layouts.md#Delete_a_Dependency) procedure.
:::
