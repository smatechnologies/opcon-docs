---
title: Viewing and Updating Threshold Dependencies
description: "The Threshold Dependency panel in Master Job Definition displays and lets you manage the threshold dependencies for the job."
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

# Viewing and Updating Threshold Dependencies

The **Threshold Dependency** panel in **Master Job Definition** displays the threshold dependencies for the job. Each dependency causes the job to wait until a named threshold's current value meets a specified operator and value condition before the job is eligible to start.

For conceptual information, refer to [Threshold/Resource Dependencies](../../../../../../job-components/threshold-resource-dependencies.md) in the **Concepts** online help.

:::note
- Select the full-screen button (![Full Screen Panel Icon](../../../../../../Resources/Images/SM/Full-Screen-Mode-Icon.png "Full Screen Panel Icon")) on the far right of the panel bar to enter or exit **Full Screen** mode.
- When the panel contains defined dependencies, a blue circular indicator (![Job Properties Indicator](../../../../../../Resources/Images/SM/Daily-Job-Definition-Properties-Indicator.png "Job Properties Indicator")) appears to the right of the panel name showing the count.
:::

## Adding or Updating Threshold Dependencies

:::note
Only those with the appropriate permissions have access to the **Lock** button and can update job properties. For details about privileges, refer to [Required Privileges](Accessing-Master-Jobs.md#Required) in the **Accessing Master Job Definition** topic.
:::

To add or update threshold dependencies, complete the following steps:

1. Go to the master job definition page. See [Accessing Master Jobs](Accessing-Master-Jobs.md) for instructions.
2. Select the **Lock** button to enter **Admin** mode.
3. Expand the **Threshold Dependency** panel.
4. To add a dependency, select the **+** button. To update an existing dependency, select it from the list.
5. In the threshold dependency dialog, complete the following fields:

   | Field | Description |
   |---|---|
   | **Threshold Name** | The threshold whose current value must meet the operator and value requirements. |
   | **Operator** | The comparison operator SAM uses to evaluate the threshold value. Valid values: **EQ** (equal), **GT** (greater than), **LT** (less than), **GE** (greater than or equal to), **LE** (less than or equal to), **NE** (not equal). |
   | **Value** | The numeric value SAM compares against the current threshold value using the selected operator. |
   | **Frequency Name** | Optional. The frequency to which this dependency applies. Leave blank to apply the dependency for all runs of the job. Select a frequency name to apply it only when the job runs under that frequency. |

6. Select **Save** to close the dialog.
7. Select **Save** on the **Master Job Definition** page to commit the changes.

**Result:** The threshold dependency is saved to the job definition. SAM evaluates the dependency each time the job is eligible to start and holds the job until the threshold condition is met.
