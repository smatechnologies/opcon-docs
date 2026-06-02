---
title: Saving Job Definitions to Master
description: "How to use the Save Job Definition to Master button in the Job Daily editor to copy platform-specific job definition details from a daily job back to the Job Master."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Saving Job Definitions to Master

The **Save Job Definition to Master** button in the Job Daily editor copies the platform-specific job definition (the content of the **Job Details** tab) from a daily job back to its corresponding Job Master record. Only the job definition information is copied; all other daily job settings are not affected.

:::note
The **Save Job Definition to Master** button is available only when the **Job Details** tab is selected and the daily job has no unsaved changes. The button is not available for Null jobs.
:::

## Before you begin

To use this feature, you must meet one of the following conditions:

- Your user account is assigned to the **ocadm** role.
- Your role has both the **Modify Jobs in Daily Schedules** and **Modify Jobs in Master Schedules** function privileges for the job's department.

If your user account is not in the ocadm role, the access code and department of the daily job must also match the master job. If they do not match, Enterprise Manager displays an error and the copy does not proceed.

## Save a job definition to master

To save a daily job's definition to the Job Master, complete the following steps:

1. In the **Operations** view, select **Daily Maintenance**. The **Daily Maintenance** screen opens.
2. Select the expand arrow next to the date to expand it.
3. Select the expand arrow next to the schedule to expand it.
4. Select the job you want to update.
5. Select **Edit Daily** in the **Maintenance** panel at the bottom-right of the screen. The **Job Daily** editor opens.
6. Select the **Job Details** tab to display the job definition section.
7. Select **Save Job Definition to Master** on the **Job Daily** toolbar.
8. Select **OK** at the confirmation prompt to copy the job definition to the master record.

**Result:** Enterprise Manager displays a confirmation message indicating that the job has been successfully saved to Master. The Job Master record is updated with the platform-specific job definition from the daily job.

9. Select **Close** (to the right of the **Daily Maintenance** tab) to close the **Daily Maintenance** screen.
