---
title: Viewing and Updating Threshold Updates
description: "The Threshold Update panel in Master Job Definition displays and lets you manage the threshold updates configured for a job."
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

# Viewing and Updating Threshold Updates

The **Threshold Update** panel in **Master Job Definition** displays the threshold updates configured for a job. A threshold update instructs OpCon to set a named threshold to a specific numeric value when the job reaches a designated status. You can view, add, edit, and delete threshold updates from this panel.

:::note
Only users with the appropriate edit privileges can modify job properties. For details, refer to [Required Privileges](Accessing-Master-Jobs.md#Required) in the **Accessing Master Job Definition** article.
:::

## Panel indicators

- Select the full-screen button (![Full Screen Panel Icon](../../../../../../Resources/Images/SM/Full-Screen-Mode-Icon.png "Full Screen Panel Icon")) at the far right of the panel bar to enter or exit full-screen mode.
- When at least one threshold update is defined, a blue circular badge (![Job Properties Indicator](../../../../../../Resources/Images/SM/Daily-Job-Definition-Properties-Indicator.png "Job Properties Indicator")) appears to the right of the panel name and shows the count of configured updates.

## Adding a threshold update

To add a threshold update to a job, complete the following steps:

1. Go to the master job definition page. Refer to [Accessing Master Jobs](Accessing-Master-Jobs.md) for instructions.
2. Expand the **Threshold Update** panel.
3. Select the **New Threshold Update** button.
4. In the **Threshold Update** dialog, complete the following fields:

   | Field | Description |
   |---|---|
   | **Job Status** | The job status that triggers the update. Required. See [Supported job statuses](#supported-job-statuses). |
   | **Threshold** | The name of the threshold to update. Required. |
   | **Value** | The numeric value to assign to the threshold. Required. Must be 0–2147483647. |
   | **Frequency** | The frequency name that limits when this update applies. Optional. When left blank, the update applies to all frequencies. |

5. Select **Save** in the dialog.
6. Select **Save** on the **Master Job Definition** page.

**Result:** The threshold update is saved. When the job reaches the specified status, OpCon sets the named threshold to the configured value.

## Editing a threshold update

To edit an existing threshold update, complete the following steps:

1. Go to the master job definition page. Refer to [Accessing Master Jobs](Accessing-Master-Jobs.md) for instructions.
2. Expand the **Threshold Update** panel.
3. Select the edit button next to the threshold update you want to change.
4. In the **Threshold Update** dialog, update the relevant fields.
5. Select **Save** in the dialog.
6. Select **Save** on the **Master Job Definition** page.

**Result:** The threshold update is saved with your changes.

## Deleting a threshold update

To delete a threshold update, complete the following steps:

1. Go to the master job definition page. Refer to [Accessing Master Jobs](Accessing-Master-Jobs.md) for instructions.
2. Expand the **Threshold Update** panel.
3. Select the delete button next to the threshold update you want to remove.
4. Select **Save** on the **Master Job Definition** page.

**Result:** The threshold update is removed from the job.

## Supported job statuses

The following job statuses are available as trigger conditions for a threshold update:

| Status | Description |
|---|---|
| Exceeded Max Run Time | The job exceeded its configured maximum run time. |
| Failed | The job ended in a failed state. |
| Finished OK | The job completed successfully. |
| Fixed | The job was previously failed and is now fixed. |
| Job Still Attempting Start | The job has been trying to start and has not yet started. |
| Late to Finish | The job has not finished by its expected finish time. |
| Late to Start | The job has not started by its expected start time. |
| Missed Latest Start Time | The job missed its latest allowable start time. |
| Skipped | The job was skipped. |
| Start Attempted | A start attempt has been made for the job. |
| Under Review | The job is under review. |

:::note
Two threshold updates cannot share the same threshold name and job status combination for the same frequency. If a conflicting combination is detected, an error message appears in the dialog and **Save** is disabled until the conflict is resolved.
:::
