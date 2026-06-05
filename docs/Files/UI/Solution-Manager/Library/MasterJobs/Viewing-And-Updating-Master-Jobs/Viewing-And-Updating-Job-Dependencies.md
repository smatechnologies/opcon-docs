---
title: Viewing and Updating Job Dependencies
description: "Use the Job Dependency panel in Master Job Definition to view, add, and update job-to-job dependencies."
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

# Viewing and Updating Job Dependencies

The **Job Dependency** panel in **Master Job Definition** displays all job-to-job dependencies defined for the selected job. In **Admin** mode, you can add, edit, and remove dependencies.

For conceptual information about dependency types and options, refer to [Job Dependencies](../../../../../../job-components/job-dependencies.md).

:::note
A blue circular indicator appears to the right of the panel name showing the count of defined dependencies. Select the **Full Screen** button on the far-right of the panel bar to enter or exit full-screen mode for the panel.
:::

## Required Privileges

To add or update job dependencies, you must have the edit privileges described in [Accessing Master Job Definition](Accessing-Master-Jobs.md#required-privileges).

## Add a Job Dependency

To add a job dependency, complete the following steps:

1. Open the **Master Job Definition** page for the job. See [Open a Master Job Definition](Accessing-Master-Jobs.md#open-a-master-job-definition).
2. Select the **Lock** button to switch to **Admin** mode.
3. Expand the **Job Dependency** panel.
4. Select the **+** button to open the job dependency dialog.
5. In the dialog, complete the following fields:

   | Field | Description |
   |---|---|
   | **Predecessor Schedule Name** | The name of the schedule that contains the predecessor job. |
   | **Predecessor Job Name** | The name of the job this job depends on. |
   | **Predecessor Instance Name** | The schedule instance for the predecessor job. Available only for multi-instance schedules. Use `*` to apply to all instances. |
   | **Dependency Type** | The type of dependency: **After**, **Conflict**, **Exclude**, or **Requires**. |
   | **Options** | Additional dependency behavior. See [Dependency Options](../../../../../../job-components/job-dependencies.md) for valid options per type. |
   | **Successor Frequency Name** | Leave blank to apply the dependency for all runs. Select a frequency name to apply the dependency only when the job runs with that frequency. |
   | **Successor Instance Name** | The schedule instance for the successor job. |

6. Select **Save** in the dialog.
7. Select **Save** on the **Master Job Definition** page.

**Result**: The new job dependency is saved and appears in the **Job Dependency** panel.

## Update a Job Dependency

To update an existing job dependency, complete the following steps:

1. Open the **Master Job Definition** page for the job. See [Open a Master Job Definition](Accessing-Master-Jobs.md#open-a-master-job-definition).
2. Select the **Lock** button to switch to **Admin** mode.
3. Expand the **Job Dependency** panel.
4. Select the dependency you want to edit.
5. Update the fields as needed in the dialog.
6. Select **Save** in the dialog.
7. Select **Save** on the **Master Job Definition** page.

**Result**: The updated dependency is saved.

## Remove a Job Dependency

