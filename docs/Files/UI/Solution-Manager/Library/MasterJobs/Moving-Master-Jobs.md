---
title: Moving Master Jobs
description: "Move a master job from one schedule to another in Solution Manager."
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

# Moving Master Jobs

Moving a master job reassigns it from its current schedule to a different schedule. The job retains its definition, but its schedule context changes. If the destination schedule uses schedule-level frequencies that differ from the job's current frequencies, a warning appears and the job is set to **Disable Build** until you validate its configuration.

## Required Privileges

To move a master job, your role must have the **Departmental Function Privilege** of at least one of the following:

- **All Function Privileges**
- **All Job Master Functions**
- **Add Jobs To Master Schedules**

## Move a Master Job

To move a master job to a different schedule, complete the following steps:

1. Go to **Library** > **Master Jobs**.
2. Select the job you want to move.
3. Select **Move** from the action menu. The **Master Job Move** dialog opens.

   ![Master Job Move](../../../../../Resources/Images/SM/Library/MasterJobs/master-jobs-move.png "Master Job Move")

4. In the **Schedule** field, select or type the destination schedule name.
5. (Optional) Select the **Go to Master Job Definition Page after move** option to open the job definition page when the move completes.
6. Select **OK** to move the job, or select **Cancel** to discard the change.

**Result:** The job moves to the destination schedule. If you selected the navigate option, the Master Job Definition page for the moved job opens. If the job name already exists in the destination schedule, an error message appears and the move is not completed.

## Warnings

The **Master Job Move** dialog displays a warning under the following conditions:

| Condition | Warning message |
|---|---|
| Your role lacks sufficient privileges for the job | "Insufficient privileges to move this job." |
| The destination schedule has frequencies that do not match the job's current frequencies | The job will inherit destination schedule frequencies, lose all Frequency Associated Properties, and be set to **Disable Build**. |
| The source schedule uses named instances that are not a subset of the destination schedule's named instances | "The source schedule named instances must be a subset of the target schedule named instances." |
| A job dependency predecessor job does not exist in the destination schedule | "We're unable to move the job because the following job dependency predecessor job(s) do not exist on target schedule." |

When a blocking warning appears, the **OK** button is disabled and the move cannot proceed until you select a valid destination schedule.
