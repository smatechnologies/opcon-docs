---
title: Performing Job Procedures when Working in Matrix View
description: "Use this procedure to perform Job Procedures when Working in Matrix View in the Enterprise Manager."
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

# Performing Job Procedures when Working in Matrix View

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to perform Job Procedures when Working in Matrix View in the Enterprise Manager.

## Adding Job Completion Comments

:::note
This menu option is only available when the job is Finished OK, Marked Finished OK, Failed, or Marked Failed.
:::

To perform this procedure, complete the following steps:

1. Select on **Matrix** under the **Operation** topic
2. Select the **number** for the day in the calendar that contains the schedule(s)
3. Select the **schedule** that contains the job(s)
4. Right-click on the **job** in the **Job** table
5. Select **Comment** from the menu. The **Job Completion Comment** dialog displays

6. Enter a *short comment* for the job
7. Select **OK** to save the comment, or select **Cancel** to abort

## Viewing Job Output

This action opens a job's output file when the job is complete. Before attempting to view a job's output file, refer to [Viewing a Job Output File](../../../operations/job-output.md) in the **Concepts** online help.

To perform this procedure, complete the following steps:

1. Select on **Matrix** under the **Operation** topic
2. Select the **number** for the day in the calendar that contains the schedule(s)
3. Select the **schedule** that contains the job(s) for viewing output
4. Right-click on the **job** in the **Job** table
5. Select **View Job Output** from the menu. The **Job Output Retriever** dialog displays

6. Select the **Output File(s)** name to retrieve the output. The **Log Viewer** dialog displays
7. *(Optional)* Select **Copy To Clipboard**
8. *(Optional)* Select **Open external editor** to open the file in an external editor (e.g., Notepad)
9. Select **Close** to close the **Log Viewer** dialog
10. Select **Close** to close the **Job Output Retriever** dialog

## Opening Window to Host

:::
This action requires the configuration emulator for the connection to the machine. For information on configuring an emulator, refer to [Preferences for Window To Host](Preferences-for-Windows-To-Host.md).
:::

To perform this procedure, complete the following steps:

1. Select on **Matrix** under the **Operation** topic
2. Select the **number** for the day in the calendar that contains the schedule(s)
3. Select the **schedule** that contains the job(s)
4. Right-click on the **job** in the **Job** table
5. Select **Window to Host** from the menu. The **Window to Host Emulator** dialog displays
6. Log in to the machine to manage the content

## Editing Daily Jobs

This action allows you to edit job information in the Daily tables.

To perform this procedure, complete the following steps:

1. Select on **Matrix** under the **Operation** topic
2. Select the **number** for the day in the calendar that contains the schedule(s)
3. Select the **schedule** that contains the job(s) to edit
4. Right-click on the **job** in the **Job** table
5. Select **Maintenance** from the menu
6. Select **Edit Daily Job** from the second menu. The **Job Daily** dialog displays
7. *(Optional)* Enter the *changes*
8. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Daily** toolbar
9. Select **Close ☒** to close the **Job Daily** screen

## Editing Master Jobs

This action allows you to edit job information in the Master tables.

To perform this procedure, complete the following steps:

1. Select on **Matrix** under the **Operation** topic
2. Select the **number** for the day in the calendar that contains the schedule(s)
3. Select the **schedule** that contains the job(s) to edit
4. Right-click on the **job** in the **Job** table
5. Select **Maintenance** from the menu
6. Select **Edit Master Job** from the second menu. The **Job Master** dialog displays
7. *(Optional)* Enter the *changes*
8. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar
9. Select **Close ☒** to close the **Job Master** screen

## Deleting Jobs

To perform this procedure, complete the following steps:

1. Select on **Matrix** under the **Operation** topic
2. Select the **number** for the day in the calendar that contains the schedule(s)
3. Select the **schedule** that contains the job(s) to delete
4. Right-click on the **job** in the **Job** table
5. Select **Maintenance** from the menu
6. Select **Delete Job** from the second menu. The **Delete Job** dialog displays
7. Select **Yes** to confirm the deletion, or select **No** to cancel
8. Select **Close ☒** to close the **Matrix** screen

## Placing Jobs on Hold

This action suspends processing of the selected job. A job that has been submitted to start cannot be held.

:::note
If the action is performed when a schedule is selected, all jobs on the schedule are affected.
:::

To perform this procedure, complete the following steps:

1. Select on **Matrix** under the **Operation** topic
2. Select the **number** for the day in the calendar that contains the schedule(s)
3. Select the **schedule** that contains the job(s) to place on hold
4. Right-click on the **job** in the **Job** table
5. Select **Hold** from the menu. The **Hold** dialog displays
6. *(Optional)* Enter a *short explanation for the status change*
7. Select **OK** to confirm the job status change

## Canceling Jobs

This action cancels the job. Any jobs dependent on this job will not have their dependencies met.

:::note
If the action is performed when a schedule is selected, all jobs on the schedule are affected.
:::

To perform this procedure, complete the following steps:

1. Select on **Matrix** under the **Operation** topic
2. Select the **number** for the day in the calendar that contains the schedule(s)
3. Select the **schedule** that contains the job(s) to cancel
4. Right-click on the **job** in the **Job** table
5. Select **Cancel** from the menu. The **Cancel** dialog displays
6. *(Optional)* Enter a *short explanation for the status change*
7. Select **OK** to confirm the job status change

## Skipping Jobs

This action places the job in a Job to be Skipped state until the job qualifies to start. When the job qualifies, it is skipped and the dependency of all subsequent jobs is met.

To perform this procedure, complete the following steps:

1. Select on **Matrix** under the **Operation** topic
2. Select the **number** for the day in the calendar that contains the schedule(s)
3. Select the **schedule** that contains the job(s) to skip
4. Right-click on the **job** in the **Job** table
5. Select **Skip** from the menu. The **Skip** dialog displays
6. *(Optional)* Enter a *short explanation for the status change*
7. Select **OK** to confirm the job status change

## Killing Jobs

This action sends a request to kill the job. Any jobs dependent on killed jobs will not have their dependencies met.

:::note
This option is not available for the BIS, OpenVMS, IBM i, and OS 2200 platforms.
:::

To perform this procedure, complete the following steps:

1. Select on **Matrix** under the **Operation** topic
2. Select the **number** for the day in the calendar that contains the schedule(s)
3. Select the **schedule** that contains the job(s) to kill
4. Right-click on the **job** in the **Job** table
5. Select **Kill** from the menu. The **Kill** dialog displays
6. *(Optional)* Enter a *short explanation for the status change*
7. Select **OK** to confirm the job status change

## Releasing Held Jobs

This action places the job back in a Qualifying state. The job processes when all dependencies have been met.

:::note
If the action is performed when a schedule is selected, all jobs on the schedule are affected.
:::

To perform this procedure, complete the following steps:

1. Select on **Matrix** under the **Operation** topic
2. Select the **number** for the day in the calendar that contains the schedule(s)
3. Select the **schedule** that contains the job(s) to release
4. Right-click on the **job** in the **Job** table
5. Select **Release** from the menu. The **Release** dialog displays
6. *(Optional)* Enter a *short explanation for the status change*
7. Select **OK** to confirm the job status change

## Force Starting Jobs

This action causes the job to ignore the start time and all dependencies. The job starts as soon as this option is selected, as long as a machine is available.

To perform this procedure, complete the following steps:

1. Select on **Matrix** under the **Operation** topic
2. Select the **number** for the day in the calendar that contains the schedule(s)
3. Select the **schedule** that contains the job(s) to start
4. Right-click on the **job** in the **Job** table
5. Select **Force Start** from the menu. The **Force Start** dialog displays
6. *(Optional)* Enter a *short explanation for the status change*
7. Select **OK** to confirm the job status change

## Restarting Jobs

This action places the job back in a Qualifying state. The job starts as soon as all dependencies are met.

:::note
During the restart qualifying process, the SAM uses all current details from the Daily tables and from the **Job Configuration** screen unless **Re-build the SubSchedule** is selected. If selected, SAM re-builds the subschedule before restarting the jobs.
:::

To perform this procedure, complete the following steps:

1. Select on **Matrix** under the **Operation** topic
2. Select the **number** for the day in the calendar that contains the schedule(s)
3. Select the **schedule** that contains the job(s) to restart
4. Right-click on the **job** in the **Job** table
5. Select **Restart** from the menu. The **Restart** dialog displays
6. *(Optional)* Enter a *short explanation for the status change*
7. Select **OK** to confirm the job status change

## Force Restarting Jobs

This action causes the job to restart and ignore the start time and all dependencies. The job restarts as soon as this option is selected, as long as a machine is available.

To perform this procedure, complete the following steps:

1. Select on **Matrix** under the **Operation** topic
2. Select the **number** for the day in the calendar that contains the schedule(s)
3. Select the **schedule** that contains the job(s) to force restart
4. Right-click on the **job** in the **Job** table
5. Select **Force Restart** from the menu. The **Force Restart** dialog displays
6. *(Optional)* Enter a *short explanation for the status change*
7. Select **OK** to confirm the job status change

## Restarting Without Prerun

This action places the selected job back into a qualifying state. The job is submitted without the associated Prerun. All dependencies must be met before the job is submitted.

To perform this procedure, complete the following steps:

1. Select on **Matrix** under the **Operation** topic
2. Select the **number** for the day in the calendar that contains the schedule(s)
3. Select the **schedule** that contains the job(s) to restart without prerun
4. Right-click on the **job** in the **Job** table
5. Select **Restart Without Prerun** from the menu. The **Restart Without Prerun** dialog displays
6. *(Optional)* Enter a *short explanation for the status change*
7. Select **OK** to confirm the job status change

## Restarting On Step

This action allows you to select a step on which to restart (when the job type supports this).

To perform this procedure, complete the following steps:

1. Select on **Matrix** under the **Operation** topic
2. Select the **number** for the day in the calendar that contains the schedule(s)
3. Select the **schedule** that contains the job(s) to restart on step
4. Right-click on the **job** in the **Job** table
5. Select **Restart On Step** from the menu. The **Restart On Step** dialog displays
6. Select the specific **Start step** to restart
7. Select the specific **End step** to restart (only for platforms that support the End step)
8. Select the **Restart On Step** button
9. Select **OK** to confirm
10. *(Optional)* Enter a *short explanation for the status change*
11. Select **OK**

## Marking Jobs Finished OK

This action marks the selected job as Finished OK. If the job is marked Finished OK before it starts, both the start time and finish time saved in history equal the time the job is marked.

To perform this procedure, complete the following steps:

1. Select on **Matrix** under the **Operation** topic
2. Select the **number** for the day in the calendar that contains the schedule(s)
3. Select the **schedule** that contains the job(s) to mark
4. Right-click on the **job** in the **Job** table
5. Select **Mark Finished OK** from the menu. The **Marked Finished OK** dialog displays
6. *(Optional)* Enter a *short explanation for the status change*
7. Select **OK** to confirm the job status change

## Marking Jobs Failed

This action marks the selected job as Failed. If the job is marked Failed before it starts, both the start and finish time saved in history equal the time the job is marked.

To perform this procedure, complete the following steps:

1. Select on **Matrix** under the **Operation** topic
2. Select the **number** for the day in the calendar that contains the schedule(s)
3. Select the **schedule** that contains the job(s) to mark
4. Right-click on the **job** in the **Job** table
5. Select **Mark Failed** from the menu. The **Marked Failed** dialog displays
6. *(Optional)* Enter a *short explanation for the status change*
7. Select **OK** to confirm the job status change

## Marking Jobs Under Review

This action marks the selected job as Under Review.

To perform this procedure, complete the following steps:

1. Select on **Matrix** under the **Operation** topic
2. Select the **number** for the day in the calendar that contains the schedule(s)
3. Select the **schedule** that contains the job(s) to mark
4. Right-click on the **job** in the **Job** table
5. Select **Under Review** from the menu. The **Under Review** dialog displays
6. *(Optional)* Enter a *short explanation for the status change*
7. Select **OK** to confirm the job status change

## Marking Jobs Fixed

This action marks the selected job as Fixed.

To perform this procedure, complete the following steps:

1. Select on **Matrix** under the **Operation** topic
2. Select the **number** for the day in the calendar that contains the schedule(s)
3. Select the **schedule** that contains the job(s) to mark
4. Right-click on the **job** in the **Job** table
5. Select **Fixed** from the menu. The **Fixed** dialog displays
6. *(Optional)* Enter a *short explanation for the status change*
7. Select **OK** to confirm the job status change

## Monitoring SAP Child Processes

To perform this procedure, complete the following steps:

1. Select on **Matrix** under the **Operation** topic
2. Select the **number** for the day in the calendar that contains the schedule(s)
3. Select the **schedule** that contains the job(s) to monitor
4. Right-click on the preferred **SAP R/3 or CRM job** in the **Job** table
5. Select **SAP Child Processes** from the menu. The **SAP Child Processes** dialog displays
6. View the child processes
7. *(Optional)* Unselect the options at the top to filter out specific statuses
8. *(Optional)* Type **Filter Text** above the table to find a specific child process by name
9. *(Optional)* Move the **SAP Child Processes** dialog aside to continue work in the **Matrix** tab or other screens
10. Select **Close**

## Restarting SAP Child Processes

To perform this procedure, complete the following steps:

1. Select on **Matrix** under the **Operation** topic
2. Select the **number** for the day in the calendar that contains the schedule(s)
3. Select the **schedule** that contains the job(s) to restart
4. Right-click on the **job** in the **Job Status** table
5. Select **SAP Child Processes** from the menu. The **SAP Child Processes** dialog displays
6. *(Optional)* Unselect the options at the top to filter out specific statuses
7. *(Optional)* Type **Filter Text** above the table to find a specific child process by name
8. Select the option(es) next to the child process(es) to restart
9. Select **Restart**. The **Restart SAP Child Processes** dialog displays
10. Select **OK** to confirm the restart

## Viewing SAP Job Spools

To perform this procedure, complete the following steps:

1. Select on **Matrix** under the **Operation** topic
2. Select the **number** for the day in the calendar that contains the schedule(s)
3. Select the **schedule** that contains the job(s)
4. Right-click on the **job** in the **Job Status** table
5. Select **SAP Job Spools** from the menu. The **SAP Login** dialog displays

6. Enter the *SAP login credentials* and select **OK**. The **View SAP Job's Spools** dialog displays
7. *(Optional)* Select **Refresh** to update the list
8. Select the *job spool* to retrieve. The **SAP Spool Details** dialog displays
9. View the spool details
10. *(Optional)* Select **Copy To Clipboard**
11. *(Optional)* Select **Open external editor** to open the file in an external editor (e.g., Notepad)
12. Select **Close** to close the **SAP Spool Details** dialog
13. Select **Close** to close the **View SAP Job's Spools** dialog

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: How many steps does the Performing Job Procedures when Working in Matrix View procedure involve?**

The Performing Job Procedures when Working in Matrix View procedure involves 184 steps. Complete all steps in order and save your changes.

**Q: What does Performing Job Procedures when Working in Matrix View cover?**

This page covers Adding Job Completion Comments, Viewing Job Output, Opening Window to Host.

## Glossary

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**Subschedule**: A schedule that runs as a child process within a Container job, allowing hierarchical, nested workflow automation where a parent schedule can trigger and monitor an entire child schedule.

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Master Tables**: The OpCon database tables that hold the permanent definitions of schedules and jobs. Changes to master tables affect all future schedule builds.

**Calendar**: A named collection of dates in OpCon used by schedules and frequencies to determine when automation runs or is excluded. Calendars can represent holidays, working days, or any custom date set.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.
