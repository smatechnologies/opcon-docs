# Performing Job Procedures when Working in Gantt View

## Adding Job Completion Comments

:::note
This menu option is only available when the job is Finished OK, Marked Finished OK, Failed, or Marked Failed.
:::

To perform this procedure:

1. Complete [Steps 1 - 8 of the Synchronizing Data between List and
    Gantt
    Views](Synchronizing-Data-between-List-and-Gantt-Views.md)
    procedure. Then, proceed to Step 2 of this procedure.
2. Right-click on the preferred **job bar** in the **Gantt** display.
3. Use menu path: **Job \> Comment**. The **Job Completion Comment**
    dialog displays.
4. Enter a *short comment* for the job.
5. Click **OK** or press **Enter** on the keyboard to save the comment
    or click **Cancel** to abort the operation.

## Viewing Job Output

This action will open a job's output file when the job is complete.
Before attempting to view a job's output file, first refer to [Viewing a Job Output File](../../../operations/job-output.md) in the **Concepts** online help.

To perform this procedure:

1. Complete [Steps 1 - 8 of the Synchronizing Data between List and
    Gantt
    Views](Synchronizing-Data-between-List-and-Gantt-Views.md)
    procedure. Then, proceed to Step 2 of this procedure.
2. Right-click on the preferred **job bar** in the **Gantt** display.
3. Use menu path: **Job \> View Job Output**. The **Job Output
    Retriever** dialog displays.
4. Double-click on the **Output File(s)** name to retrieve the output
    file information. The **Log Viewer** dialog displays.
5. *(Optional)* Click the **Copy To Clipboard** button.
6. *(Optional)* Click the **Open external editor**
    button to open the file in an external editor (e.g., Notepad).
7. Click the **Close** button to close the **Log Viewer** dialog.
8. Click the **Close** button to close the **Job Output Retriever**
    dialog.

## Opening Window to Host

:::note
This action requires the configuration emulator for the connection to the machine. For information on configuring an emulator, refer to [Preferences for Window To Host](Preferences-for-Windows-To-Host.md).
:::

To perform this procedure:

1. Complete [Steps 1 - 8 of the Synchronizing Data between List and
    Gantt
    Views](Synchronizing-Data-between-List-and-Gantt-Views.md)
    procedure. Then, proceed to Step 2 of this procedure.
2. Right-click on the preferred **job bar** in the **Gantt** display.
3. Use menu path: **Job \> Window to Host**. The **Window to Host
    Emulator** dialog displays.
4. Log in to the machine to manage the content.

## Editing Daily Jobs

This action allows the user to edit job information in the Daily tables.

To perform this procedure:

1. Complete [Steps 1 - 8 of the Synchronizing Data between List and
    Gantt
    Views](Synchronizing-Data-between-List-and-Gantt-Views.md)
    procedure. Then, proceed to Step 2 of this procedure.
2. Right-click on the preferred **job bar** in the **Gantt** display.
3. Use menu path: **Job \> Maintenance \> Edit Daily**. The **Job
    Daily** dialog displays.
4. *(Optional)* Enter the *changes*.
5. Click ![Save     icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save**
    on the **Job Daily** toolbar.
6. Click **Close ☒** (to the right of the **Job Daily** tab) to close
    the **Job Daily** screen.

## Editing Master Jobs

This action allows the user to edit job information in the Master
tables.

To perform this procedure:

1. Complete [Steps 1 - 8 of the Synchronizing Data between List and
    Gantt
    Views](Synchronizing-Data-between-List-and-Gantt-Views.md)
    procedure. Then, proceed to Step 2 of this procedure.
2. Right-click on the preferred **job bar** in the **Gantt** display.
3. Use menu path: **Job \> Maintenance \> Edit Master Job**. The **Job
    Master** dialog displays.
4. *(Optional)* Enter the *changes*.
5. Click ![Save     icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save**
    on the **Job Master** toolbar.
6. Click **Close ☒** (to the right of the **Job Master** tab) to close
    the **Job Master** screen.

## Deleting Jobs

To perform this procedure:

1. Complete [Steps 1 - 8 of the Synchronizing Data between List and
    Gantt
    Views](Synchronizing-Data-between-List-and-Gantt-Views.md)
    procedure. Then, proceed to Step 2 of this procedure.
2. Right-click on the preferred **job bar** in the **Gantt** display.
3. Use menu path: **Job \> Maintenance \> Delete Job**. The **Delete
    Job** dialog displays.
4. Click the **Yes** button to confirm the deletion or click the **No**
    button to cancel the deletion.
5. Click **Close ☒** (to the right of the **Gantt** tab) to close the
    **Gantt** screen.

## Placing Jobs on Hold

This action will suspend the processing of the selected job. A job that
has been submitted to start cannot be held.

:::note
If the action is performed when a schedule is selected, all jobs on a schedule are affected.
:::

To perform this procedure:

1. Complete [Steps 1 - 8 of the Synchronizing Data between List and
    Gantt
    Views](Synchronizing-Data-between-List-and-Gantt-Views.md)
    procedure. Then, proceed to Step 2 of this procedure.
2. Right-click on the preferred **job bar** in the **Gantt** display.
3. Use menu path: **Job \> Hold**. The **Hold** dialog displays.
4. *(Optional)* Enter a *short explanation for the
    status change* in the text box provided.
5. Click the **OK** button to confirm the job status change.

## Canceling Jobs

This action will cancel the job. Any jobs that were dependent on this
job will not have their dependencies met.

:::note
If the action is performed when a schedule is selected, all jobs on a schedule are affected.
:::

To perform this procedure:

1. Complete [Steps 1 - 8 of the Synchronizing Data between List and
    Gantt
    Views](Synchronizing-Data-between-List-and-Gantt-Views.md)
    procedure. Then, proceed to Step 2 of this procedure.
2. Right-click on the preferred **job bar** in the **Gantt** display.
3. Use menu path: **Job \> Cancel**. The **Cancel** dialog displays.
4. *(Optional)* Enter a *short explanation for the
    status change* in the text box provided.
5. Click the **OK** button to confirm the job status change.

## Skipping Jobs

This action will place the job in a Job to be Skipped state until the job qualifies to start. When
the job qualifies, it is skipped and the job dependency of all
subsequent jobs will be met.

To perform this procedure:

1. Complete [Steps 1 - 8 of the Synchronizing Data between List and
    Gantt
    Views](Synchronizing-Data-between-List-and-Gantt-Views.md)
    procedure. Then, proceed to Step 2 of this procedure.
2. Right-click on the preferred **job bar** in the **Gantt** display.
3. Use menu path: **Job \> Skip**. The **Skip** dialog displays.
4. *(Optional)* Enter a *short explanation for the
    status change* in the text box provided.
5. Click the **OK** button to confirm the job status change.

## Killing Jobs

This action will send a request to kill the job. Any jobs dependent on
killed jobs will not have the dependencies met.

:::note
This option is not available for the BIS, OpenVMS, IBM i, and OS 2200 platforms.
:::

To perform this procedure:

1. Complete [Steps 1 - 8 of the Synchronizing Data between List and
    Gantt
    Views](Synchronizing-Data-between-List-and-Gantt-Views.md)
    procedure. Then, proceed to Step 2 of this procedure.
2. Right-click on the preferred **job bar** in the **Gantt** display.
3. Use menu path: **Job \> Kill**. The **Kill** dialog displays.
4. *(Optional)* Enter a *short explanation for the
    status change* in the text box provided.
5. Click the **OK** button to confirm the job status change.

## Releasing Held Jobs

This action will place the job back in a Qualifying state, and the job will process when all dependencies have been met.

:::note
If the action is performed when a schedule is selected, all jobs on a schedule are affected.
:::

To perform this procedure:

1. Complete [Steps 1 - 8 of the Synchronizing Data between List and
    Gantt
    Views](Synchronizing-Data-between-List-and-Gantt-Views.md)
    procedure. Then, proceed to Step 2 of this procedure.
2. Right-click on the preferred **job bar** in the **Gantt** display.
3. Use menu path: **Job \> Release**. The **Release** dialog displays.
4. *(Optional)* Enter a *short explanation for the
    status change* in the text box provided.
5. Click the **OK** button to confirm the job status change.

## Force Starting Jobs

This action will cause the job to ignore the start time and all
dependencies. The job starts as soon as this option is selected as long
as a machine is available.

To perform this procedure:

1. Complete [Steps 1 - 8 of the Synchronizing Data between List and
    Gantt
    Views](Synchronizing-Data-between-List-and-Gantt-Views.md)
    procedure. Then, proceed to Step 2 of this procedure.
2. Right-click on the preferred **job bar** in the **Gantt** display.
3. Use menu path: **Job \> Force Start**. The **Force Start** dialog
    displays.
4. *(Optional)* Enter a *short explanation for the
    status change* in the text box provided.
5. Click the **OK** button to confirm the job status change.

## Restarting Jobs

This action will place the job back in a Qualifying state. The job starts as soon as all dependencies are met.

:::note
During the restart qualifying process, the SAM uses all current details from the Daily tables and from the **Job Configuration** screen unless the **Re-build the SubSchedule** option is selected. If **Re-build the SubSchedule** has been selected, SAM will re-build the subschedule before restarting the jobs.
:::

To perform this procedure:

1. Complete [Steps 1 - 8 of the Synchronizing Data between List and
    Gantt
    Views](Synchronizing-Data-between-List-and-Gantt-Views.md)
    procedure. Then, proceed to Step 2 of this procedure.
2. Right-click on the preferred **job bar** in the **Gantt** display.
3. Use menu path: **Job \> Restart**. The **Restart dialog** display.
4. *(Optional)* Enter a *short explanation for the
    status change* in the text box provided.
5. Click the **OK** button to confirm the job status change.

## Force Restarting Jobs

This action will cause the job to restart.

To perform this procedure:

1. Complete [Steps 1 - 8 of the Synchronizing Data between List and
    Gantt
    Views](Synchronizing-Data-between-List-and-Gantt-Views.md)
    procedure. Then, proceed to Step 2 of this procedure.
2. Right-click on the preferred **job bar** in the **Gantt** display.
3. Use menu path: **Job \> Force Restart**. The **Force Restart**
    dialog displays.
4. *(Optional)* Enter a *short explanation for the
    status change* in the text box provided.
5. Click the **OK** button to confirm the job status change.

## Restarting Without Prerun

This action will place the selected job back into a
Qualifying state. The job is submitted without the associated Prerun. All dependencies must be met before the job is
submitted.

To perform this procedure:

1. Complete [Steps 1 - 8 of the Synchronizing Data between List and
    Gantt
    Views](Synchronizing-Data-between-List-and-Gantt-Views.md)
    procedure. Then, proceed to Step 2 of this procedure.
2. Right-click on the preferred **job bar** in the **Gantt** display.
3. Use menu path: **Job \> Restart Without Prerun**. The **Restart
    Without Prerun** dialog displays.
4. *(Optional)* Enter a *short explanation for the
    status change* in the text box provided.
5. Click the **OK** button to confirm the job status change.

## Restarting On Step

This action will allow you to select a Step on which to restart
(whenever the job type supports this).

To perform this procedure:

1. Complete [Steps 1 - 8 of the Synchronizing Data between List and
    Gantt
    Views](Synchronizing-Data-between-List-and-Gantt-Views.md)
    procedure. Then, proceed to Step 2 of this procedure.
2. Right-click on the preferred **job bar** in the **Gantt** display.
3. Click **Job \> Restart On Step**. The **Restart On Step** dialog
    displays.
4. Click on the specific **Start step** to restart.
5. Click on the specific **End step** to restart (only for platforms
    that support the End step).
6. Click the **Restart On Step** button.
7. Click the **OK** button to confirm.
8. *(Optional)* Enter a *short explanation for the
    status change* in the text box provided.
9. Click the **OK** button.

## Marking Jobs Finished OK

The action marks the selected job as Finished OK. If the job is marked Finished OK before it starts,
both the start time and finish time saved in history equal the time the
job is marked.

To perform this procedure:

1. Complete [Steps 1 - 8 of the Synchronizing Data between List and
    Gantt
    Views](Synchronizing-Data-between-List-and-Gantt-Views.md)
    procedure. Then, proceed to Step 2 of this procedure.
2. Right-click on the preferred **job bar** in the **Gantt** display.
3. Use menu path: **Job \> Mark Finished OK**. The **Marked Finished
    OK** dialog displays.
4. *(Optional)* Enter a *short explanation for the
    status change* in the text box provided.
5. Click the **OK** button to confirm the job status change.

## Marking Jobs Failed

This action marks the selected job as Failed. If the job is marked Failed before it starts, both the
start and the finish time saved in history equal the time the job is
marked.

To perform this procedure:

1. Complete [Steps 1 - 8 of the Synchronizing Data between List and
    Gantt
    Views](Synchronizing-Data-between-List-and-Gantt-Views.md)
    procedure. Then, proceed to Step 2 of this procedure.
2. Right-click on the preferred **job bar** in the **Gantt** display.
3. Use menu path: **Job \> Mark Failed**. The **Marked Failed** dialog
    displays.
4. *(Optional)* Enter a *short explanation for the
    status change* in the text box provided.
5. Click the **OK** button to confirm the job status change.

## Marking Jobs Under Review

his action marks the selected job as Under Review.
To perform this procedure:

1. Complete [Steps 1 - 8 of the Synchronizing Data between List and
    Gantt
    Views](Synchronizing-Data-between-List-and-Gantt-Views.md)
    procedure. Then, proceed to Step 2 of this procedure.
2. Right-click on the preferred **job bar** in the **Gantt** display.
3. Use menu path: **Job \> Under Review**. The **Under Review** dialog
    displays.
4. *(Optional)* Enter a *short explanation for the
    status change* in the text box provided.
5. Click the **OK** button to confirm the job status change.

## Marking Jobs Fixed

This action marks the selected job as Fixed.
To perform this procedure:

1. Complete [Steps 1 - 8 of the Synchronizing Data between List and
    Gantt
    Views](Synchronizing-Data-between-List-and-Gantt-Views.md)
    procedure. Then, proceed to Step 2 of this procedure.
2. Right-click on the preferred **job bar** in the **Gantt** display.
3. Use menu path: **Job \> Fixed**. The **Fixed** dialog displays.
4. *(Optional)* Enter a *short explanation for the
    status change* in the text box provided.
5. Click the **OK** button to confirm the job status change.

## Monitoring SAP Child Processes

To perform this procedure:

1. Complete [Steps 1 - 8 of the Synchronizing Data between List and
    Gantt
    Views](Synchronizing-Data-between-List-and-Gantt-Views.md)
    procedure. Then, proceed to Step 2 of this procedure.
2. Right-click on the preferred **SAP R/3 or CRM job bar**.
3. Use menu path: **Job \> SAP Child Processes**. The **SAP Child
    Processes** dialog displays.
4. View the child processes.
5. *(Optional)* Unselect the checkboxes at the top of
    the screen to filter out specific statuses.
6. *(Optional)* Type **Filter Text** above the table to
    find a specific child process by name.
7. *(Optional)* Move the **SAP Child Processes** dialog
    aside and continue work in the **Gantt** tab or other screens while
    still monitoring the SAP child processes.
8. Click **Close**.

## Restarting SAP Child Processes

To perform this procedure:

1. Complete [Steps 1 - 8 of the Synchronizing Data between List and
    Gantt
    Views](Synchronizing-Data-between-List-and-Gantt-Views.md)
    procedure. Then, proceed to Step 2 of this procedure.

2. Right-click on the preferred **SAP R/3 or CRM job bar**.

3. Use menu path: **Job \> SAP Child Processes**. The **SAP Child
    Processes** dialog displays.

4. *(Optional)* Unselect the checkboxes at the top of
    the screen to filter out specific statuses.

5. *(Optional)* Type **Filter Text** above the table to
    find a specific child process by name.

6. Select the checkbox(es) next to the child process(es) you wish to
    restart.

7. Click the **Restart** button. The **Restart SAP Child Processes**
    dialog displays.

8. Click the **OK** button to confirm the restart.

## Viewing SAP Job Spools

To perform this procedure:

1. Complete [Steps 1 - 8 of the Synchronizing Data between List and
    Gantt
    Views](Synchronizing-Data-between-List-and-Gantt-Views.md)
    procedure. Then, proceed to Step 2 of this procedure.
2. Right-click on the preferred **SAP R/3 or CRM job bar**.
3. Use menu path: **Job \> SAP Job Spools**. The **SAP Login** dialog
    displays.
4. Enter the *SAP login credentials* then click **OK**. The **View SAP
    Job's Spools** dialog displays.
5. *(Optional)* Click the **Refresh** button to update
    the list.
6. Double-click on the *job spool* to retrieve. The **SAP Spool
    Details** dialog displays.
7. View the spool details.
8. *(Optional)* Click the **Copy To Clipboard** button.
9. *(Optional)* Click the **Open external editor**
    button to open the file in an external editor (e.g., Notepad).
10. Click the **Close** button to close the **SAP Spool Details**
    dialog.
11. Click the **Close** button to close the **View SAP Job's Spools**
    dialog.
