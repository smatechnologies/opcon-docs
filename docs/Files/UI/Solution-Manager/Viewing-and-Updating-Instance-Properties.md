---
title: Viewing and Updating Instance Properties
description: "The Instance Properties panel in Daily Job Definition displays the defined properties for each instance of the job. Users with appropriate permissions can add, edit, or delete instance properties in Admin mode."
product_area: Solution Manager
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

# Viewing and Updating Instance Properties

The **Instance Properties** panel in **Daily Job Definition** displays the defined properties for each instance of the job. When at least one property is defined, a blue circular indicator (![Job Properties Indicator](../../../Resources/Images/SM/Daily-Job-Definition-Properties-Indicator.png "Job Properties Indicator")) appears to the right of the panel name showing the count of defined properties.

Select the full-screen button (![Full Screen Panel Icon](../../../Resources/Images/SM/Full-Screen-Mode-Icon.png "Full Screen Panel Icon")) at the far right of the panel bar to expand the panel to full-screen mode. Select it again to return to the standard view.

For conceptual background, refer to [Instance Definition](../../../job-components/instances.md).

:::note
Changes to job properties in **Daily Job Definition** take effect immediately. If the job has already run, changes apply on the next run.
:::

## Required Privileges

Only users with appropriate permissions can access the **Lock** button and update job properties. For details, refer to [Required Privileges](Accessing-Daily-Job-Definition.md#Required) in the **Accessing Daily Job Definition** topic.

## Update Instance Properties

To update instance properties for a daily job, complete the following steps:

1. Open **Daily Job Definition** for the target job. For navigation steps, refer to [Daily Job Definition Access](Accessing-Daily-Job-Definition.md#Daily).

2. Select the **Lock** button ![Daily Job Definition Read-only Button](../../../Resources/Images/SM/Daily-Job-Definition-Read-only-Button.png "Daily Job Definition Read-only Button") at the top-right corner to switch to **Admin** mode. The button displays a white unlocked lock on a green background ![Daily Job Definition Admin Switch](../../../Resources/Images/SM/Daily-Job-Definition-Admin-Button.png "Daily Job Definition Admin Switch") when Admin mode is active.

   :::note
   The **Lock** button is not visible to users without appropriate permissions.
   :::

3. Expand the **Instance Properties** panel.

   ![Daily Job Definition Instance Properties Panel](../../../Resources/Images/SM/Daily-Job-Definition-Instance-Props-Panel.png "Daily Job Definition Instance Properties Panel")

4. Make one or more of the following changes:

   - To add a new property, select the **New Property** button, then enter the property name and value.
   - To edit an existing property, update the name or value directly in the field.
   - To delete an existing property, select the delete control next to the property.
   - To add or update multiple properties at once, select the **Manual Edit** button and enter each definition using the format `PropertyName=PropertyValue;`. Separate multiple entries with a semicolon (`;`).

   :::note
   Select the **Undo** button to revert any unsaved changes.
   :::

5. Select the **Save** button.

**Result:** The instance properties are saved and take effect immediately for the selected daily job.
