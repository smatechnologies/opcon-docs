---
title: Viewing and Updating Resource Dependencies
description: "The Resource Dependency panel in Master Job Definition displays and lets you manage resource dependencies for the job."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Viewing and Updating Resource Dependencies

The **Resource Dependency** panel in **Master Job Definition** displays the resource dependencies for the job. Each dependency causes the job to wait until a named resource pool has enough available units before the job is eligible to start.

For conceptual information, refer to [Threshold/Resource Dependencies](../../../../../../job-components/threshold-resource-dependencies.md) in the **Concepts** online help.

:::note
- Select the full-screen button (![Full Screen Panel Icon](../../../../../../Resources/Images/SM/Full-Screen-Mode-Icon.png "Full Screen Panel Icon")) on the far right of the panel bar to enter or exit **Full Screen** mode.
- When the panel contains defined dependencies, a blue circular indicator (![Job Properties Indicator](../../../../../../Resources/Images/SM/Daily-Job-Definition-Properties-Indicator.png "Job Properties Indicator")) appears to the right of the panel name showing the count.
:::

## Adding or Updating Resource Dependencies

:::note
Only those with the appropriate permissions have access to the **Lock** button and can update job properties. For details about privileges, refer to [Required Privileges](Accessing-Master-Jobs.md#Required) in the **Accessing Master Job Definition** topic.
:::

To add or update resource dependencies, complete the following steps:

1. Go to the master job definition page. See [Accessing Master Jobs](Accessing-Master-Jobs.md) for instructions.
2. Select the **Lock** button to enter **Admin** mode.
3. Expand the **Resource Dependency** panel.
4. To add a dependency, select the **+** button. To update an existing dependency, select it from the list.
5. In the resource dependency dialog, complete the following fields:

   | Field | Description |
   |---|---|
   | **Resource** | The resource that must have enough available units to meet the value requirement. |
   | **Value** | The number of resource units the job requires. SAM checks that the number of available units meets or exceeds this value before the dependency is satisfied. Enter **All** to require the job to consume all units; SAM locks the resource when the job qualifies and waits until no units are in use before starting the job. |
   | **Frequency Name** | Optional. The frequency to which this dependency applies. Leave blank to apply the dependency for all runs of the job. Select a frequency name to apply it only when the job runs under that frequency. |

6. Select **Save** to close the dialog.
7. Select **Save** on the **Master Job Definition** page to commit the changes.

**Result:** The resource dependency is saved to the job definition. SAM evaluates the dependency each time the job is eligible to start and holds the job until the required number of resource units is available.
