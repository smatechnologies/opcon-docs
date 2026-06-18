---
title: Viewing and Updating Threshold Updates
description: "The Threshold Update panel in Daily Job Definition displays defined threshold updates for the selected job."
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

The **Threshold Update** panel in **Daily Job Definition** displays the threshold updates defined for the selected job. Each update specifies a job status that triggers the update, the threshold to update, and the new value to set.

- Select the full screen button at the far right of the panel bar to enter or exit **Full Screen** mode.
- When the panel contains defined threshold updates, a blue circular indicator appears to the right of the panel name showing the count.

For conceptual background, refer to [Threshold/Resource Updates](../../../job-components/threshold-resource-updates.md).

:::note
Only users with the appropriate permissions can access the **Lock** button and update job properties. Refer to [Required Privileges](Accessing-Daily-Job-Definition.md#Required) for details.
:::

:::note
Changes made in **Daily Job Definition** take effect immediately. If the job has already run, changes apply the next time the job runs.
:::

## Add or Update a Threshold Update

To add or update a threshold update on a daily job, complete the following steps:

1. Select the **Processes** button at the top-right of the **Operations Summary** page.

2. Confirm that the **Date** and **Schedule** toggle switches are enabled (green).

<!--
![Schedule Status Updates Date & Schedule Toggle Switches Enabled](../../../Resources/Images/SM/Schedule-Status-Update_Date&ScheduleToggles.png "Schedule Status Updates Date & Schedule Toggle Switches Enabled")
-->

3. Select the desired **date(s)** to display the associated schedules.

4. Select one or more **schedule(s)** in the list.

5. Select one **job** in the list. Your selection appears in the [status bar](SM-UI-Layout.md#Status) as a breadcrumb trail.

<!--
![Job Processes](../../../Resources/Images/SM/Job-ProcessesUNIX.png "Job Processes")
-->

6. Select the job record (for example, **1 job(s)**) in the status bar to open the **Selection** panel.

:::note
Alternatively, right-click the job in the list to open the **Selection** panel.
:::

<!--
![Job Summary Tab in Operations](../../../Resources/Images/SM/Job-Summary-Tab-(UNIX).png "Job Summary Tab in Operations")
-->

7. Select the **Daily Job Definition** button at the top-left of the panel. The page opens in **Read-only** mode by default.

8. Select the **Lock** button at the top-right to enter **Admin** mode. 

:::note
The **Lock** button is not visible to users without the appropriate permissions.
:::

9. Expand the **Threshold Update** panel.

10. Do one of the following:

    - To add a new threshold update, select the **Add** button (**+**). In the **Threshold Update** dialog, complete the following fields and then select **Save**:

      | Field | Description |
      |---|---|
      | **Job Status** | The job status that triggers the threshold update. Available statuses: Finished Ok, Failed, Exceeded Max Run Time, Still Attempting Start, Start Attempted, Late To Finish, Late To Start, Missed Start Time, Skipped, Fixed, Under Review. |
      | **Threshold** | The threshold to update. Each job status and threshold combination must be unique on a job. |
      | **Value** | The numeric value to set the threshold to. Valid range: 0–2147483647. |

    - To edit an existing threshold update, select the **Edit** button next to the entry, update the fields in the **Threshold Update** dialog, and then select **Save**.

    - To delete an existing threshold update, select the **Delete** button next to the entry.

:::note
Select the **Undo** button to discard unsaved changes.
:::

11. Select the **Save** button.

**Result:** The threshold update is saved to the daily job. OpCon sets the specified threshold to the configured value when the job reaches the selected status.
