---
title: Viewing and Updating Resource Updates
description: "The Resource Update panel in Master Job Definition displays and manages resource updates for the job — rules that change a resource's maximum count when the job reaches a specific status."
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

# Viewing and Updating Resource Updates

## Overview

The **Resource Update** panel in **Master Job Definition** displays resource updates for the job. A resource update causes OpCon to change the maximum number of resources for a defined resource when the job enters a specific status, such as **Finished OK** or **Failed**. Resource updates can be defined at the job level or for a specific frequency. For background information, refer to [Threshold/Resource Updates](../../../../../../job-components/threshold-resource-updates.md).

The panel bar includes two controls:

- Select the full-screen button (![Full Screen Panel Icon](../../../../../../Resources/Images/SM/Full-Screen-Mode-Icon.png "Full Screen Panel Icon")) at the far right of the panel bar to enter or exit **Full Screen** mode.
- When the panel contains defined resource updates, a blue circular indicator (![Job Properties Indicator](../../../../../../Resources/Images/SM/Daily-Job-Definition-Properties-Indicator.png "Job Properties Indicator")) appears to the right of the panel name showing the count of defined updates.

## Add or Update Resource Updates

:::note
Only users with the appropriate privileges have access to the **Lock** button and can update job properties. For details about required privileges, refer to [Required Privileges](Accessing-Master-Jobs.md#Required) in the **Accessing Master Job Definition** topic.
:::

To add or update resource updates, complete the following steps:

1. Go to **Library** > **Master Jobs** and open the master job definition. See [Accessing Master Jobs](Accessing-Master-Jobs.md) for full instructions.
2. Select the **Lock** button to switch to **Admin** mode if you are not already in it.
3. Expand the **Resource Update** panel.
4. To add a new resource update, select the **+** button. To edit an existing resource update, select it in the list.
5. Complete the fields in the resource update dialog:
   - **Frequency Name**: Select a frequency to apply the update only when the job runs with that frequency, or leave blank to apply the update for all runs.
   - **Job Status**: Select the job status that triggers the update.
   - **Resource**: Select the resource whose maximum count will be changed.
   - **Value**: Enter the maximum resources value to set for the resource when the update triggers.
6. Select **Save** on the dialog to confirm the entry.
7. Select **Save** on the **Master Job Definition** page to save all changes.

**Result**: The resource update is saved. When the job reaches the specified status during a run, OpCon updates the maximum count for the selected resource.

## Resource Update Fields

The following fields apply when configuring a resource update:

| Field | Description |
|---|---|
| **Frequency Name** | The frequency name if the update applies to a specific frequency. Leave blank to apply the update for all runs. |
| **Job Status** | The job status that triggers the resource update. |
| **Resource** | The resource whose maximum count will be changed. |
| **Value** | The maximum resources value to set for the resource when the update triggers. |

### Valid Job Statuses

The following job statuses can trigger a resource update:

- **Exceeded Max Run Time**: The job ran longer than the specified Max Run Time.
- **Finished OK**: The job terminated successfully.
- **Late to Start**: Time passed the late-to-start time and the job has not started.
- **Late to Finish**: Time passed the late-to-finish time and the job is still running.
- **Job Still Attempting Start**: The job remains in Start Attempted status when SAM checks again after the configured interval.
- **Failed**: The job failed.
- **Missed Latest Start Time**: The job missed its latest start time.
- **Skipped**: The job was skipped.
