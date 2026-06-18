---
title: Viewing and Updating General Info
description: "The Daily Job Definition page displays read-only job identification fields and editable fields for Department, Access Code, and Tags. This page explains how to update those fields in Admin mode."
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

# Viewing and Updating General Info

The **General Info** section at the top of the **Daily Job Definition** page displays identifying information about the selected job and provides fields you can update in **Admin** mode. The following fields appear in this section:

| Field | Editable | Description |
|---|---|---|
| **Schedule Date** | No | The date for which the daily job was built |
| **Schedule Path** | No | The path of the parent schedule |
| **Schedule Name** | No | The name of the parent schedule |
| **Job Name** | No | The name of the job |
| **Department** | Yes (Admin mode) | The department assigned to the job |
| **Access Code** | Yes (Admin mode) | The access code assigned to the job |
| **Tags** | Yes (Admin mode) | Keywords associated with the job |

Read-only fields cannot be changed. **Department**, **Access Code**, and **Tags** can be updated after you switch to **Admin** mode.

:::note
Only users with the appropriate privileges can access the **Lock** button and update job properties. For details, refer to [Required Privileges](Accessing-Daily-Job-Definition.md#Required) in the **Accessing Daily Job Definition** topic.
:::

:::note
Changes to job properties in the **Daily Job Definition** take effect immediately. If the job has already run, changes apply the next time the job runs.
:::

## Opening the Daily Job Definition Page

To open the **Daily Job Definition** page and switch to **Admin** mode, complete the following steps:

1. Select the **Processes** button at the top-right of the **Operations Summary** page.
2. Enable both the **Date** and **Schedule** toggle switches. Each switch appears green when enabled.
3. Select the desired date or dates to display the associated schedules.
4. Select one or more schedules in the list.
5. Select one job in the list. Your selection appears as a breadcrumb trail in the [status bar](SM-UI-Layout.md#Status).
6. Select the job record (for example, **1 job(s)**) in the status bar to open the **Selection** panel.
7. Select the **Daily Job Definition** button at the top-left of the panel. The page opens in **Read-only** mode by default.
8. Select the **Lock** button at the top-right to switch to **Admin** mode. The button changes to a white unlocked lock on a green background.

**Result:** The **Daily Job Definition** page is now in **Admin** mode and the **Department**, **Access Code**, and **Tags** fields are editable.

## Updating the Department

For conceptual information, refer to [Departments](../../../objects/departments.md).

To update the department assigned to a job, complete the following steps:

1. Complete all steps in [Opening the Daily Job Definition Page](#opening-the-daily-job-definition-page).
2. Select a department from the **Department** field. If needed, select the **Search** button, enter search criteria to filter the list, make your selection, then select **OK**.
3. Select **Save**.

**Result:** The department assignment is updated for the daily job.

## Updating the Access Code

For conceptual information, refer to [Access Codes](../../../objects/access-codes.md).

To update the access code assigned to a job, complete the following steps:

1. Complete all steps in [Opening the Daily Job Definition Page](#opening-the-daily-job-definition-page).
2. Select an access code from the **Access Code** field. If needed, select the **Search** button, enter search criteria to filter the list, make your selection, then select **OK**.
3. Select **Save**.

**Result:** The access code assignment is updated for the daily job.

## Adding Tags

For conceptual information, refer to [Tags](../../../job-components/tags.md).

Tags can contain letters, numbers, hyphens, underscores, and spaces, and must not exceed 128 characters each.

To add one or more tags to a job, complete the following steps:

1. Complete all steps in [Opening the Daily Job Definition Page](#opening-the-daily-job-definition-page).
2. Type a tag name in the **Tags** field and press **Enter**. Repeat to add more tags.
3. Select **Save**.

**Result:** The tags are added to the daily job.

## Removing Tags

For conceptual information, refer to [Tags](../../../job-components/tags.md).

To remove a tag from a job, complete the following steps:

1. Complete all steps in [Opening the Daily Job Definition Page](#opening-the-daily-job-definition-page).
2. Select the **x** next to the tag name to remove it.
3. Select **Save**.

**Result:** The tag is removed from the daily job.
