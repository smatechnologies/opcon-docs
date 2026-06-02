---
title: Copying Master Jobs
description: "Copy an existing master job to reuse its configuration as the starting point for a new job in the same or a different schedule."
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

# Copying Master Jobs

Copying a master job duplicates all settings from the original, including job type details, frequencies, and dependencies, and saves them as a new job. You must give the copy a name that is unique within the destination schedule.

## Required Privileges

To copy a master job, your role must have at least one of the following **Departmental Function Privileges**:

- All Function Privileges
- All Job Master Functions
- Add Jobs To Master Schedules

## Copy a Master Job

To copy a master job, complete the following steps:

1. Go to **Library** > **Master Jobs**.
2. Select the job you want to copy.
3. Select **Copy**. The **Master Job Copy** dialog opens.

   ![Master Job Copy](../../../../../Resources/Images/SM/Library/MasterJobs/master-job-copy.png "Master Job Copy")

4. In the **Name** field, enter a unique name for the new job. The field is pre-populated with the original job name.
5. In the **Schedule** field, select the schedule where the new job will be saved. You can select the same schedule as the original or a different one.
6. Select **OK**.

**Result:** The new job is saved with all settings copied from the original. If the destination schedule has frequencies that do not match the original job, a warning dialog appears. Select **Yes** to continue — the copied job adopts the destination schedule's frequencies, loses any frequency-level components that did not match, and is set to **Disable Build** so you can validate the job configuration before it runs. Select **No** to cancel the copy without saving.

## Notes

- The job name must be unique within the selected schedule. If the name already exists in that schedule, an error message appears and the copy is not saved.
- After copying a job with frequency or dependency incompatibilities, review all job automation components — especially the **Frequency** tab and **Job Dependencies** — before clearing the **Disable Job** option on the **Job Details** tab to re-enable the job.
