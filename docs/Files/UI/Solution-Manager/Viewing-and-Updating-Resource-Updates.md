---
title: Viewing and Updating Resource Updates
description: "The Resource Update panel in Daily Job Definition displays defined resource updates for the selected job. Users with the appropriate privileges can add, edit, or delete resource updates in Admin mode."
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

The **Resource Update** panel in **Daily Job Definition** displays defined resource updates for the selected job. A resource update instructs OpCon to change the maximum number of resources for a named resource when a job enters a specific status, such as Finished OK or Failed.

For conceptual background, refer to [Threshold/Resource Updates](../../../job-components/threshold-resource-updates.md).

:::note
Only users with the appropriate permissions can access the **Lock** button and update job properties. Refer to [Required Privileges](Accessing-Daily-Job-Definition.md#Required) for details.
:::

:::note
Changes made in **Daily Job Definition** take effect immediately. If the job has already run, changes apply the next time the job runs.
:::

## Panel indicators

- Select the **Full Screen** button (![Full Screen Panel Icon](../../../Resources/Images/SM/Full-Screen-Mode-Icon.png "Full Screen Panel Icon")) at the far right of the panel bar to enter or exit **Full Screen** mode.
- When the panel contains defined properties, a blue circular indicator (![Job Properties Indicator](../../../Resources/Images/SM/Daily-Job-Definition-Properties-Indicator.png "Job Properties Indicator")) appears to the right of the panel name showing the property count.

## Add or update a resource update

To add or update a resource update for a daily job, complete the following steps:

1. Select the **Processes** button at the top-right of the **Operations Summary** page.

2. Confirm that both the **Date** and **Schedule** toggle switches are enabled (green).

<!--
![Schedule Status Updates Date & Schedule Toggle Switches Enabled](../../../Resources/Images/SM/Schedule-Status-Update_Date&ScheduleToggles.png "Schedule Status Updates Date & Schedule Toggle Switches Enabled")
-->

3. Select the desired **date(s)** to display associated schedules.

4. Select one or more **schedule(s)** in the list.

5. Select one **job** in the list. Your selection appears in the [status bar](SM-UI-Layout.md#Status) as a breadcrumb trail.

<!--
![Job Processes](../../../Resources/Images/SM/Job-ProcessesUNIX.png "Job Processes")
-->

6. Select the job record (e.g., **1 job(s)**) in the status bar to open the **Selection** panel.

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

9. Expand the **Resource Update** panel.

10. Make any of the following changes:

    - To edit an existing resource update, select it and modify the fields as needed.
    - To delete an existing resource update, select the delete control next to the entry.
    - To add a new resource update, select the green **Add** button (**+**). In the **Resource Update** dialog, complete the following fields:

      | Field | Description |
      |---|---|
      | **Job Status** | The job status that triggers the update (for example, **Finished OK** or **Failed**). |
      | **Resource** | The resource name to update. |
      | **Value** | The maximum number of resources to set for the resource when the update triggers. |

      Select **Save** to save and close the dialog.

:::note
Select the **Undo** button to discard unsaved changes.
:::

11. Select the **Save** button.

**Result:** The resource update is saved to the daily job definition and takes effect the next time the job runs.
