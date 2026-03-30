---
title: Performing Job Procedures when Working in List View
description: "Use this procedure to perform Job Procedures when Working in List View in the Enterprise Manager."
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

# Performing Job Procedures when Working in List View

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to perform Job Procedures when Working in List View in the Enterprise Manager.

## When Would You Use It?

- A Job Procedures when Working in List View action needs to be carried out in Enterprise Manager

## Why Would You Use It?

- **Ensure consistent operations**: Performing Job Procedures when Working in List View actions through OpCon creates a centralized, auditable record of all operational changes

## Viewing Job Information

To view Job Information, complete the following steps:

1. Select on **List** under the **Operation** topic. The **Daily list** screen displays
2. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **schedule**
4. Select the **job** to open the **Job Information** dialog. Alternatively, right-click on the **Jobs** icon and select **Job Information** from the menu
5. Select **OK** to close the dialog

## Viewing Job History

1. Select on **List** under the **Operation** topic. The **Daily list** screen displays
2. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **schedule**
4. Right-click on the **Jobs** icon and select **Job History** from the menu
5. Select **Close** to close the dialog

## Adding Job Completion Comments

:::note
This menu option is only available when the job is Finished OK, Marked Finished OK, Failed, or Marked Failed.
:::

To add Job Completion Comments, complete the following steps:

1. Select on **List** under the **Operation** topic. The **Daily list** screen displays
2. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **schedule**
4. Right-click on the **Jobs** icon and select **Comment** from the menu. The **Job Completion Comment** dialog displays
5. Enter a *short comment* for the job
6. Select **OK** or press **Enter** to save, or select **Cancel** to abort

## Viewing Job Output

This action opens a job's output file when the job is complete. Before proceeding, refer to [Viewing a Job Output File](../../../operations/job-output.md) in the **Concepts** online help.

1. Select on **List** under the **Operation** topic. The **Daily list** screen displays
2. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **schedule**
4. Right-click on the **job** and select **View Job Output** from the menu. The **Job Output Retriever** dialog displays
5. Select the **Output File(s)** name to retrieve the output. The **Log Viewer** dialog displays
6. *(Optional)* Select **Copy To Clipboard** or **Open external editor** to open the file in an external editor (e.g., Notepad)
7. Select **Close** to close the **Log Viewer** dialog, then **Close** again to close the **Job Output Retriever** dialog

## Opening Window to Host

:::note
This action requires a configured emulator. For details, refer to [Preferences for Window To Host](Preferences-for-Windows-To-Host.md).
:::

1. Select on **List** under the **Operation** topic. The **Daily list** screen displays
2. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **schedule**
4. Right-click on the **job** and select **Window to Host** from the menu. The **Window to Host Emulator** dialog displays
5. Log in to the machine to manage the content

## Editing Daily Jobs

This action allows editing job information in the Daily tables.

1. Select on **List** under the **Operation** topic. The **Daily list** screen displays

2. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **schedule**
4. Right-click on the **job** and select **Maintenance > Edit Daily Job** from the menu. The **Job Daily** dialog displays
5. *(Optional)* Enter the *changes*
6. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Daily** toolbar
7. Select **Close ☒** to close the **Job Daily** screen

## Editing Master Jobs

This action allows editing job information in the Master tables.

1. Select on **List** under the **Operation** topic. The **Daily list** screen displays

2. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **schedule**
4. Right-click on the **job** and select **Maintenance > Edit Master Job** from the menu. The **Job Master** dialog displays
5. *(Optional)* Enter the *changes*
6. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar
7. Select **Close ☒** to close the **Job Master** screen

## Deleting Jobs

1. Select on **List** under the **Operation** topic. The **Daily list** screen displays
2. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **schedule**
4. Right-click on the **job** and select **Maintenance > Delete Job** from the menu. The **Delete Job** dialog displays
5. Select **Yes** to confirm or **No** to cancel
6. Select **Close ☒** to close the **Daily list** screen

## Placing Jobs on Hold

This action suspends processing of the selected job. A job already submitted to start cannot be held.

:::note
If performed when a schedule is selected, all jobs on the schedule are affected.
:::

1. Select on **List** under the **Operation** topic. The **Daily list** screen displays

2. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **schedule**
4. Right-click on the **job** and select **Hold** from the menu. The **Hold** dialog displays
5. *(Optional)* Enter a *short explanation for the status change*
6. Select **OK** to confirm

## Canceling Jobs

This action cancels the job. Dependent jobs will not have their dependencies met.

:::note
If performed when a schedule is selected, all jobs on the schedule are affected.
:::

To cancel Jobs, complete the following steps:

1. Select on **List** under the **Operation** topic. The **Daily list** screen displays
2. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **schedule**
4. Right-click on the **job** and select **Cancel** from the menu. The **Cancel** dialog displays
5. *(Optional)* Enter a *short explanation for the status change*
6. Select **OK** to confirm

## Skipping Jobs

This action places the job in a Job to be Skipped state until it qualifies to start. When the job qualifies, it is skipped and subsequent job dependencies are met.

1. Select on **List** under the **Operation** topic. The **Daily list** screen displays
2. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **schedule**
4. Right-click on the **job** and select **Skip** from the menu. The **Skip** dialog displays
5. *(Optional)* Enter a *short explanation for the status change*
6. Select **OK** to confirm

## Killing Jobs

This action sends a request to kill the job. Dependent jobs will not have their dependencies met. To enable or disable the kill feature, refer to [Administrative Machine Information](../../../objects/machines.md#Administ) in the **Concepts** online help.

:::note
This option is not available for the BIS, OpenVMS, IBM i, and OS 2200 platforms.
:::

1. Select on **List** under the **Operation** topic. The **Daily list** screen displays

2. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **schedule**
4. Right-click on the **job** and select **Kill** from the menu. The **Kill** dialog displays
5. *(Optional)* Enter a *short explanation for the status change*
6. Select **OK** to confirm

## Releasing Held Jobs

This action places the job back in a Qualifying state. The job processes when all dependencies are met.

:::note
If performed when a schedule is selected, all jobs on the schedule are affected.
:::

To release Held Jobs, complete the following steps:

1. Select on **List** under the **Operation** topic. The **Daily list** screen displays
2. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **schedule**
4. Right-click on the **job** and select **Release** from the menu. The **Release** dialog displays
5. *(Optional)* Enter a *short explanation for the status change*
6. Select **OK** to confirm

## Force Starting Jobs

This action causes the job to ignore its start time and all dependencies. The job starts immediately as long as a machine is available.

1. Select on **List** under the **Operation** topic. The **Daily list** screen displays
2. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **schedule**
4. Right-click on the **job** and select **Force Start** from the menu. The **Force Start** dialog displays
5. *(Optional)* Enter a *short explanation for the status change*
6. Select **OK** to confirm

## Restarting Jobs

This action places the job back in a Qualifying state. The job starts as soon as all dependencies are met.

:::note
During restart qualifying, the SAM uses current details from the Daily tables and the **Job Configuration** screen unless **Re-build the SubSchedule** is selected, in which case SAM re-builds the subschedule before restarting.
:::

:::note
If a job is configured to "Run Again" when Finished OK, the actual run count is maintained across manual restarts. To reset the run count to zero, delete the job from the Daily and re-add it. See [Deleting Jobs](#Deleting).
:::

1. Select on **List** under the **Operation** topic. The **Daily list** screen displays
2. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **schedule**
4. Right-click on the **job** and select **Restart** from the menu. The **Restart** dialog displays
5. *(Optional)* Enter a *short explanation for the status change*
6. Select **OK** to confirm

## Force Restarting Jobs

This action causes the job to restart and ignore its start time and all dependencies. The job restarts immediately as long as a machine is available.

1. Select on **List** under the **Operation** topic. The **Daily list** screen displays
2. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **schedule**
4. Right-click on the **job** and select **Force Restart** from the menu. The **Force Restart** dialog displays
5. *(Optional)* Enter a *short explanation for the status change*
6. Select **OK** to confirm

## Restarting Without Prerun

This action places the selected job back into a qualifying state.

:::note
Not available for SAP R/3, SAP BW, File Transfer, Container, and Null platforms.
:::

1. Select on **List** under the **Operation** topic. The **Daily list** screen displays

2. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **schedule**
4. Right-click on the **job** and select **Restart Without Prerun** from the menu. The **Restart Without Prerun** dialog displays
5. *(Optional)* Enter a *short explanation for the status change*
6. Select **OK** to confirm

## Restarting On Step

This action allows you to select a step on which to restart (when supported by the job type).

1. Select on **List** under the **Operation** topic. The **Daily list** screen displays
2. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **schedule**
4. Right-click on the **job** and select **Restart On Step** from the menu. The **Restart On Step** dialog displays
5. Select the specific **Start step** to restart
6. Select the specific **End step** (only for platforms that support it)
7. Select **Restart On Step**, then select **OK**
8. *(Optional)* Enter a *short explanation for the status change*
9. Select **OK**

## Restarting Entire Jobs

To restart Entire Jobs, complete the following steps:

1. Select on **List** under the **Operation** topic. The **Daily list** screen displays
2. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **schedule**
4. Right-click on the **job** and select **Restart On Step** from the menu. The **Restart On Step** dialog displays
5. Select **Restart Entire Job**
6. *(Optional)* Enter a *short explanation for the status change*
7. Select **OK**

## Marking Jobs Finished OK

This action marks the selected job as Finished OK. If marked before the job starts, the start and finish times saved in history both equal the time the job is marked.

1. Select on **List** under the **Operation** topic. The **Daily list** screen displays
2. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **schedule**
4. Right-click on the **job** and select **Mark Finished OK** from the menu. The **Marked Finished OK** dialog displays
5. *(Optional)* Enter a *short explanation for the status change*
6. Select **OK** to confirm

## Marking Jobs Failed

This action marks the selected job as Failed. If marked before the job starts, the start and finish times saved in history both equal the time the job is marked.

1. Select on **List** under the **Operation** topic. The **Daily list** screen displays

2. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **schedule**
4. Right-click on the **job** and select **Mark Failed** from the menu. The **Marked Failed** dialog displays
5. *(Optional)* Enter a *short explanation for the status change*
6. Select **OK** to confirm

## Marking Jobs Under Review

This action marks the selected job as Under Review.

1. Select on **List** under the **Operation** topic. The **Daily list** screen displays

2. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **schedule**
4. Right-click on the **job** and select **Under Review** from the menu. The **Under Review** dialog displays
5. *(Optional)* Enter a *short explanation for the status change*
6. Select **OK** to confirm

## Marking Jobs Fixed

This action marks the selected job as Fixed.

1. Select on **List** under the **Operation** topic. The **Daily list** screen displays

2. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **schedule**
4. Right-click on the **job** and select **Fixed** from the menu. The **Fixed** dialog displays
5. *(Optional)* Enter a *short explanation for the status change*
6. Select **OK** to confirm

## Monitoring SAP Child Processes

1. Select on **List** under the **Operation** topic. The **Daily list** screen displays
2. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **schedule**
4. Right-click on the **SAP R/3 or CRM job** and select **SAP Child Processes** from the menu. The **SAP Child Processes** dialog displays
5. View the child processes
6. *(Optional)* Clear options at the top to filter specific statuses, or type in **Filter Text** to find a process by name
7. *(Optional)* Move the dialog aside to continue work while monitoring
8. Select **Close**

## Restarting SAP Child Processes

1. Select on **List** under the **Operation** topic. The **Daily list** screen displays
2. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **schedule**
4. Right-click on the **SAP R/3 or CRM job** and select **SAP Child Processes** from the menu. The **SAP Child Processes** dialog displays
5. Select the option(es) next to the child process(es) to restart
6. *(Optional)* Clear options at the top to filter specific statuses, or type in **Filter Text** to find a process by name
7. Select **Restart**
8. *(Optional)* Move the dialog aside to continue work while processes restart
9. Select **Close**

## Viewing SAP Job Spools

1. Select on **List** under the **Operation** topic. The **Daily list** screen displays
2. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **schedule**
4. Right-click on the **SAP R/3 or CRM job** and select **SAP Job Spools** from the menu. The **SAP Login** dialog displays
5. Enter the *SAP login credentials* and select **OK**. The **View SAP Job's Spools** dialog displays
6. *(Optional)* Select **Refresh** to update the list
7. Select the *job spool* to retrieve. The **SAP Spool Details** dialog displays
8. View the spool details
9. *(Optional)* Select **Copy To Clipboard** or **Open external editor** to open in an external editor (e.g., Notepad)
10. Select **Close** to close the **SAP Spool Details** dialog, then **Close** again to close the **View SAP Job's Spools** dialog

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: How many steps does the Performing Job Procedures when Working in List View procedure involve?**

The Performing Job Procedures when Working in List View procedure involves 169 steps. Complete all steps in order and save your changes.

**Q: What does Performing Job Procedures when Working in List View cover?**

This page covers Viewing Job Information, Viewing Job History, Adding Job Completion Comments.

## Glossary

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**Subschedule**: A schedule that runs as a child process within a Container job, allowing hierarchical, nested workflow automation where a parent schedule can trigger and monitor an entire child schedule.

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Master Tables**: The OpCon database tables that hold the permanent definitions of schedules and jobs. Changes to master tables affect all future schedule builds.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
