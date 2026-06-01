---
title: Adding Resources to Layouts
description: "Use these procedures to add a resource to a Workflow Designer layout, create a resource dependency, and edit a resource dependency in Enterprise Manager."
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

# Adding Resources to Layouts

The Workflow Designer lets you visually place resources on a schedule diagram and draw dependency links between resources and jobs. Use the procedures on this page to add a resource to the layout, create a resource dependency, and edit an existing resource dependency.

:::note
If you do not have the **Modify Jobs in Master Schedules** privilege in at least one department, resource dependency creation will fail.
:::

## Add a Resource to the Layout

To add a resource to the Workflow Designer layout, complete the following steps:

1. Select **Workflow Designer** under the **Administration** topic in the navigation pane.
2. Select a schedule from the **Select Schedule** list.
3. Select, drag, and drop the **Select Resource** tool from the **Tools** panel onto the schedule diagram.
4. Select the resource in the selection dialog, then select **OK**.

The resource node appears on the schedule diagram.

## Add a Resource Dependency

To create a resource dependency link on a job, complete the following steps using one of two methods.

**Method 1 — Use the Add Dependency tool:**

1. Select **Add Dependency** in the **Tools** panel.
2. Select the resource node that is the source of the dependency.
3. Select the job on which to create the dependency.
4. In the **Threshold/Resource Dependency** dialog, configure the dependency options (resource, value, and frequency).
5. Select **OK** to save the dependency.

**Method 2 — Drag from the resource node:**

1. Select **Select** in the **Tools** panel.
2. Hold **Ctrl** and select the resource node that is the source of the dependency.
3. Drag the connection line to the job on which to create the dependency.
4. In the **Threshold/Resource Dependency** dialog, configure the dependency options (resource, value, and frequency).
5. Select **OK** to save the dependency.

The dependency link appears as a line connecting the resource to the job on the diagram.

## Edit a Resource Dependency

To edit an existing resource dependency, complete the following steps:

1. Right-click the resource dependency link (the line connecting the resource to the job).

   :::note
   When you select the resource dependency link, the line thickens and becomes bold to indicate it is selected.
   :::

2. Select **Edit**. The **Threshold/Resource Dependency** dialog opens.
3. Change the dependency options as needed (resource, value, or frequency).
4. Select **OK** to save the changes.

The dependency link updates to reflect the new settings.

:::note
To delete a resource dependency, refer to the [Delete a Dependency](Adding-Jobs-to-Schedule-Layouts.md#Delete_a_Dependency) procedure.
:::
