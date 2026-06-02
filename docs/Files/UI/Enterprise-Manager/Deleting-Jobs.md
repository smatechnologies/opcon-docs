---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Deleting Jobs
description: "Use this procedure to delete jobs in Enterprise Manager."
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

# Deleting Jobs

Deleting a job permanently removes it from the master schedule. Before you delete a job, remove any job dependencies that reference it as a predecessor, then use the **Remove** button on the **Job Master** toolbar to complete the deletion.

:::warning
Deletion is permanent. Verify the job is no longer needed before proceeding.
:::

## Prerequisites

Your user account must have the **Delete Jobs from Master Schedules** department function privilege for the department that owns the job.

## Remove Job Dependencies

If other jobs depend on the job you want to delete, remove those dependencies first. If you attempt to delete a job that still has dependents, Enterprise Manager displays a **Cross Reference Details** dialog listing the dependent jobs. You can either cancel and remove the dependencies manually, or select **Force Delete** to remove the job and its dependency relationships in one operation.

To remove job dependencies before deleting, complete the following steps:

1. Select **Job Master** under the **Administration** topic. The **Job Master** screen opens.
2. Select the schedule in the **Schedule** list.
3. Select the job in the **Job** list.
4. Select the **Dependencies** tab.
5. Confirm the **Job Related** option is selected in the **Dependencies Filters** frame.
6. Select the dependency in the **Job Dependency** list.
7. Select **Remove**.
8. Select **Yes** to confirm, or **No** to cancel.

Repeat steps 6–8 for each dependency to remove.

**Result:** The dependency is removed from the job record.

## Delete the Job

To delete the job, complete the following steps:

1. In **Job Master**, confirm the correct job is selected in the **Job** list.
2. Select ![Remove button](../../../Resources/Images/EM/EMdelete.png) **Remove** on the **Job Master** toolbar.
3. Select **Yes** to confirm, or **No** to cancel.

**Result:** The job is permanently deleted from the master schedule. Select **Close** (the X next to the **Job Master** tab) to close the screen.
