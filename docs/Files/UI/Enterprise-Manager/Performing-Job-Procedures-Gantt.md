---
title: Performing Job Procedures when Working in Gantt View
description: "Use this procedure to perform Job Procedures when Working in Gantt View in the Enterprise Manager."
product_area: Enterprise Manager
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

# Performing Job Procedures when Working in Gantt View

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to perform Job Procedures when Working in Gantt View in the Enterprise Manager.

## When Would You Use It?

- A Job Procedures when Working in Gantt View action needs to be carried out in Enterprise Manager

## Why Would You Use It?

- **Ensure consistent operations**: Performing Job Procedures when Working in Gantt View actions through OpCon creates a centralized, auditable record of all operational changes

## Adding Job Completion Comments

:::note
This menu option is only available when the job is Finished OK, Marked Finished OK, Failed, or Marked Failed.
:::

To add Job Completion Comments, complete the following steps:

1. Complete [Steps 1 - 8 of the Synchronizing Data between List and Gantt Views](Synchronizing-Data-between-List-and-Gantt-Views.md)
2. Right-click on the preferred **job bar** in the **Gantt** display
3. Use menu path: **Job \> Comment**. The **Job Completion Comment** dialog displays
4. Enter a *short comment* for the job
5. Select **OK** to save or **Cancel** to abort

## Viewing Job Output

Before attempting to view a job's output file, refer to [Viewing a Job Output File](../../../operations/job-output.md).

1. Complete [Steps 1 - 8 of the Synchronizing Data between List and Gantt Views](Synchronizing-Data-between-List-and-Gantt-Views.md)
2. Right-click on the preferred **job bar** in the **Gantt** display
3. Use menu path: **Job \> View Job Output**. The **Job Output Retriever** dialog displays
4. Select the **Output File(s)** name. The **Log Viewer** dialog displays
5. *(Optional)* Select **Copy To Clipboard** or **Open external editor**
6. Select **Close** to close the **Log Viewer** dialog, then **Close** again to close the **Job Output Retriever** dialog

## Opening Window to Host

:::note
This action requires a configured emulator. For details, refer to [Preferences for Window To Host](Preferences-for-Windows-To-Host.md).
:::

1. Complete [Steps 1 - 8 of the Synchronizing Data between List and Gantt Views](Synchronizing-Data-between-List-and-Gantt-Views.md)
2. Right-click on the preferred **job bar** in the **Gantt** display
3. Use menu path: **Job \> Window to Host**. The **Window to Host Emulator** dialog displays
4. Log in to the machine to manage the content

## Editing Daily Jobs

1. Complete [Steps 1 - 8 of the Synchronizing Data between List and Gantt Views](Synchronizing-Data-between-List-and-Gantt-Views.md)
2. Right-click on the preferred **job bar** in the **Gantt** display
3. Use menu path: **Job \> Maintenance \> Edit Daily**. The **Job Daily** dialog displays

4. *(Optional)* Enter the *changes*
5. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Daily** toolbar
6. Select **Close ☒** to close the **Job Daily** screen

## Editing Master Jobs

1. Complete [Steps 1 - 8 of the Synchronizing Data between List and Gantt Views](Synchronizing-Data-between-List-and-Gantt-Views.md)
2. Right-click on the preferred **job bar** in the **Gantt** display
3. Use menu path: **Job \> Maintenance \> Edit Master Job**. The **Job Master** dialog displays

4. *(Optional)* Enter the *changes*
5. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar
6. Select **Close ☒** to close the **Job Master** screen

## Deleting Jobs

1. Complete [Steps 1 - 8 of the Synchronizing Data between List and Gantt Views](Synchronizing-Data-between-List-and-Gantt-Views.md)
2. Right-click on the preferred **job bar** in the **Gantt** display
3. Use menu path: **Job \> Maintenance \> Delete Job**. The **Delete Job** dialog displays

4. Select **Yes** to confirm or **No** to cancel
5. Select **Close ☒** to close the **Gantt** screen

## Placing Jobs on Hold

Suspends processing of the selected job. A job submitted to start cannot be held.

:::note
If performed when a schedule is selected, all jobs on the schedule are affected.
:::

1. Complete [Steps 1 - 8 of the Synchronizing Data between List and Gantt Views](Synchronizing-Data-between-List-and-Gantt-Views.md)

2. Right-click on the preferred **job bar** in the **Gantt** display
3. Use menu path: **Job \> Hold**. The **Hold** dialog displays
4. *(Optional)* Enter a *short explanation for the status change*
5. Select **OK** to confirm

## Canceling Jobs

Cancels the job. Dependent jobs will not have their dependencies met.

:::note
If performed when a schedule is selected, all jobs on the schedule are affected.
:::

To cancel Jobs, complete the following steps:

1. Complete [Steps 1 - 8 of the Synchronizing Data between List and Gantt Views](Synchronizing-Data-between-List-and-Gantt-Views.md)
2. Right-click on the preferred **job bar** in the **Gantt** display
3. Use menu path: **Job \> Cancel**. The **Cancel** dialog displays
4. *(Optional)* Enter a *short explanation for the status change*
5. Select **OK** to confirm

## Skipping Jobs

Places the job in a Job to be Skipped state until it qualifies to start. When it qualifies, the job is skipped and dependencies of all subsequent jobs are met.

1. Complete [Steps 1 - 8 of the Synchronizing Data between List and Gantt Views](Synchronizing-Data-between-List-and-Gantt-Views.md)
2. Right-click on the preferred **job bar** in the **Gantt** display
3. Use menu path: **Job \> Skip**. The **Skip** dialog displays
4. *(Optional)* Enter a *short explanation for the status change*
5. Select **OK** to confirm

## Killing Jobs

Sends a request to kill the job. Dependent jobs will not have their dependencies met.

:::note
Not available for the BIS, OpenVMS, IBM i, and OS 2200 platforms.
:::

1. Complete [Steps 1 - 8 of the Synchronizing Data between List and Gantt Views](Synchronizing-Data-between-List-and-Gantt-Views.md)

2. Right-click on the preferred **job bar** in the **Gantt** display
3. Use menu path: **Job \> Kill**. The **Kill** dialog displays
4. *(Optional)* Enter a *short explanation for the status change*
5. Select **OK** to confirm

## Releasing Held Jobs

Places the job back in a Qualifying state. The job processes when all dependencies are met.

:::note
If performed when a schedule is selected, all jobs on the schedule are affected.
:::

To release Held Jobs, complete the following steps:

1. Complete [Steps 1 - 8 of the Synchronizing Data between List and Gantt Views](Synchronizing-Data-between-List-and-Gantt-Views.md)
2. Right-click on the preferred **job bar** in the **Gantt** display
3. Use menu path: **Job \> Release**. The **Release** dialog displays
4. *(Optional)* Enter a *short explanation for the status change*
5. Select **OK** to confirm

## Force Starting Jobs

Causes the job to ignore the start time and all dependencies. The job starts as soon as a machine is available.

1. Complete [Steps 1 - 8 of the Synchronizing Data between List and Gantt Views](Synchronizing-Data-between-List-and-Gantt-Views.md)
2. Right-click on the preferred **job bar** in the **Gantt** display
3. Use menu path: **Job \> Force Start**. The **Force Start** dialog displays
4. *(Optional)* Enter a *short explanation for the status change*
5. Select **OK** to confirm

## Restarting Jobs

Places the job back in a Qualifying state. The job starts when all dependencies are met.

:::note
The SAM uses current details from the Daily tables and **Job Configuration** screen unless **Re-build the SubSchedule** is selected, in which case SAM re-builds the subschedule before restarting.
:::

To restart Jobs, complete the following steps:

1. Complete [Steps 1 - 8 of the Synchronizing Data between List and Gantt Views](Synchronizing-Data-between-List-and-Gantt-Views.md)
2. Right-click on the preferred **job bar** in the **Gantt** display
3. Use menu path: **Job \> Restart**. The **Restart dialog** displays
4. *(Optional)* Enter a *short explanation for the status change*
5. Select **OK** to confirm

## Force Restarting Jobs

1. Complete [Steps 1 - 8 of the Synchronizing Data between List and Gantt Views](Synchronizing-Data-between-List-and-Gantt-Views.md)
2. Right-click on the preferred **job bar** in the **Gantt** display
3. Use menu path: **Job \> Force Restart**. The **Force Restart** dialog displays

4. *(Optional)* Enter a *short explanation for the status change*
5. Select **OK** to confirm

## Restarting Without Prerun

Places the selected job back in a Qualifying state and submits it without the associated Prerun. All dependencies must be met before submission.

1. Complete [Steps 1 - 8 of the Synchronizing Data between List and Gantt Views](Synchronizing-Data-between-List-and-Gantt-Views.md)

2. Right-click on the preferred **job bar** in the **Gantt** display
3. Use menu path: **Job \> Restart Without Prerun**. The **Restart Without Prerun** dialog displays
4. *(Optional)* Enter a *short explanation for the status change*
5. Select **OK** to confirm

## Restarting On Step

Allows you to select a step on which to restart (for supported job types).

1. Complete [Steps 1 - 8 of the Synchronizing Data between List and Gantt Views](Synchronizing-Data-between-List-and-Gantt-Views.md)
2. Right-click on the preferred **job bar** in the **Gantt** display
3. Select **Job \> Restart On Step**. The **Restart On Step** dialog displays
4. Select the **Start step** to restart
5. Select the **End step** (only for platforms that support it)
6. Select **Restart On Step**, then **OK** to confirm
7. *(Optional)* Enter a *short explanation for the status change*
8. Select **OK**

## Marking Jobs Finished OK

Marks the selected job as Finished OK. If marked before the job starts, both start and finish times in history equal the time of marking.

1. Complete [Steps 1 - 8 of the Synchronizing Data between List and Gantt Views](Synchronizing-Data-between-List-and-Gantt-Views.md)
2. Right-click on the preferred **job bar** in the **Gantt** display
3. Use menu path: **Job \> Mark Finished OK**. The **Marked Finished OK** dialog displays
4. *(Optional)* Enter a *short explanation for the status change*
5. Select **OK** to confirm

## Marking Jobs Failed

Marks the selected job as Failed. If marked before the job starts, both start and finish times in history equal the time of marking.

1. Complete [Steps 1 - 8 of the Synchronizing Data between List and Gantt Views](Synchronizing-Data-between-List-and-Gantt-Views.md)

2. Right-click on the preferred **job bar** in the **Gantt** display
3. Use menu path: **Job \> Mark Failed**. The **Marked Failed** dialog displays
4. *(Optional)* Enter a *short explanation for the status change*
5. Select **OK** to confirm

## Marking Jobs Under Review

Marks the selected job as Under Review.

1. Complete [Steps 1 - 8 of the Synchronizing Data between List and Gantt Views](Synchronizing-Data-between-List-and-Gantt-Views.md)

2. Right-click on the preferred **job bar** in the **Gantt** display
3. Use menu path: **Job \> Under Review**. The **Under Review** dialog displays
4. *(Optional)* Enter a *short explanation for the status change*
5. Select **OK** to confirm

## Marking Jobs Fixed

Marks the selected job as Fixed.

1. Complete [Steps 1 - 8 of the Synchronizing Data between List and Gantt Views](Synchronizing-Data-between-List-and-Gantt-Views.md)

2. Right-click on the preferred **job bar** in the **Gantt** display
3. Use menu path: **Job \> Fixed**. The **Fixed** dialog displays
4. *(Optional)* Enter a *short explanation for the status change*
5. Select **OK** to confirm

## Monitoring SAP Child Processes

1. Complete [Steps 1 - 8 of the Synchronizing Data between List and Gantt Views](Synchronizing-Data-between-List-and-Gantt-Views.md)
2. Right-click on the preferred **SAP R/3 or CRM job bar**
3. Use menu path: **Job \> SAP Child Processes**. The **SAP Child Processes** dialog displays

4. View the child processes
5. *(Optional)* Unselect options at the top to filter specific statuses, or type in **Filter Text** to find a child process by name
6. *(Optional)* Move the dialog aside to continue working in the **Gantt** tab while monitoring
7. Select **Close**

## Restarting SAP Child Processes

1. Complete [Steps 1 - 8 of the Synchronizing Data between List and Gantt Views](Synchronizing-Data-between-List-and-Gantt-Views.md)
2. Right-click on the preferred **SAP R/3 or CRM job bar**

3. Use menu path: **Job \> SAP Child Processes**. The **SAP Child Processes** dialog displays
4. *(Optional)* Unselect options to filter statuses, or type in **Filter Text** to find a child process
5. Select the option(es) next to the child process(es) to restart
6. Select **Restart**. The **Restart SAP Child Processes** dialog displays
7. Select **OK** to confirm

## Viewing SAP Job Spools

1. Complete [Steps 1 - 8 of the Synchronizing Data between List and Gantt Views](Synchronizing-Data-between-List-and-Gantt-Views.md)
2. Right-click on the preferred **SAP R/3 or CRM job bar**
3. Use menu path: **Job \> SAP Job Spools**. The **SAP Login** dialog displays

4. Enter the *SAP login credentials* and select **OK**. The **View SAP Job's Spools** dialog displays
5. *(Optional)* Select **Refresh** to update the list
6. Select the *job spool* to retrieve. The **SAP Spool Details** dialog displays
7. View the spool details
8. *(Optional)* Select **Copy To Clipboard** or **Open external editor**
9. Select **Close** to close the **SAP Spool Details** dialog, then **Close** again to close the **View SAP Job's Spools** dialog

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: How many steps does the Performing Job Procedures when Working in Gantt View procedure involve?**

The Performing Job Procedures when Working in Gantt View procedure involves 128 steps. Complete all steps in order and save your changes.

**Q: What does Performing Job Procedures when Working in Gantt View cover?**

This page covers Adding Job Completion Comments, Viewing Job Output, Opening Window to Host.

## Glossary

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**Subschedule**: A schedule that runs as a child process within a Container job, allowing hierarchical, nested workflow automation where a parent schedule can trigger and monitor an entire child schedule.

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
