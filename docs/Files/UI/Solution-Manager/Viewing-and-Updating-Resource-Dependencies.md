---
title: Viewing and Updating Resource Dependencies
description: "The Resource Dependency panel in Daily Job Definition displays any defined resource dependencies for the selected job and lets you add, edit, or delete them in Admin mode."
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

# Viewing and Updating Resource Dependencies

## Overview

The **Resource Dependency** panel in **Daily Job Definition** displays any defined resource dependencies for the selected job. When the panel contains defined dependencies, a blue circular indicator showing a count appears to the right of the panel name.

You can expand the panel to full-screen by selecting the full-screen button (![Full Screen Panel Icon](../../../Resources/Images/SM/Full-Screen-Mode-Icon.png "Full Screen Panel Icon")) at the far-right of the panel bar. Select it again to exit full-screen.

For conceptual background on resource dependencies, refer to [Threshold/Resource Dependencies](../../../job-components/threshold-resource-dependencies.md).

## Required Privileges

Only users with the appropriate permissions can select the **Lock** button and update job properties. For details, refer to [Required Privileges](Accessing-Daily-Job-Definition.md#Required) in the **Accessing Daily Job Definition** topic.

## Adding or Updating Resource Dependencies

Changes made in **Daily Job Definition** take effect immediately. If the job has already run, changes take effect the next time the job runs.

To add or update resource dependencies, complete the following steps:

1. Open **Daily Job Definition** for the target job in **Admin** mode. For navigation steps, refer to [Accessing Daily Job Definition](Accessing-Daily-Job-Definition.md).

2. Select the **Lock** button ![Daily Job Definition Read-only Button](../../../Resources/Images/SM/Daily-Job-Definition-Read-only-Button.png "Daily Job Definition Read-only Button") at the top-right corner to switch to **Admin** mode. The button changes to a white unlocked lock on a green background ![Daily Job Definition Admin Switch](../../../Resources/Images/SM/Daily-Job-Definition-Admin-Button.png "Daily Job Definition Admin Switch") when Admin mode is active.

   :::note
   The **Lock** button is not visible to users without the appropriate permissions.
   :::

3. Expand the **Resource Dependency** panel.

   ![Daily Job Definition Resource Dependency Panel](../../../Resources/Images/SM/Daily-Job-Definition-Resource-Dependency-Panel.png "Daily Job Definition Resource Dependency Panel")

4. To edit or delete an existing dependency, select the dependency entry and make your changes or select the delete control.

5. To add a new dependency, select the green **Add** button (**+**). When the **Resource Dependency** dialog opens:

   a. Select the resource name from the list.

   b. Select **Requires All** to require all units of the resource, or enter the number of resource units the job requires in the **Value** field.

   c. Select **Save** to save your selections and close the dialog.

6. Select the **Save** button.

   :::note
   Select **Undo** to discard any unsaved changes.
   :::

**Result:** The resource dependency is saved to the daily job definition and takes effect immediately.

## Dependency Status Indicators

After saving, each resource dependency in the panel displays a status indicator that shows whether the dependency condition is currently met.

![Resource Dependency Indicator](../../../Resources/Images/SM/Resource-Green-Indicator.png "Resource Dependency Indicator")

| Indicator | Meaning | Example condition |
|---|---|---|
| Green | Dependency is met | Current resource value is greater than the required value |
| Red | Dependency is not met | Current resource value equals the required value and more are needed |

Available resource counts appear to the right of each entry in the format *Available (in use / total)*.

:::note
SAM checks that the number of available resources exceeds the number required before marking the dependency as met.
:::
