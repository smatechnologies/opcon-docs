---
title: Performing Schedule Procedures when Working in List View
description: "Use this procedure to perform Schedule Procedures when Working in List View in the Enterprise Manager."
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

# Performing Schedule Procedures when Working in List View

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to perform Schedule Procedures when Working in List View in the Enterprise Manager.

:::note
If a completed schedule contains failed jobs, it displays in red with the text `ScheduleName (Completed -- Contains Failed Jobs)`. If the schedule is still in progress with failed jobs, it displays as `ScheduleName (In Progress -- Contains Failed Jobs)`.
:::

## Viewing Schedule Information

To view Schedule Information, complete the following steps:

1. Select on **List** under the **Operation** topic
2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Right-click on the **schedule** to view
4. Select on **Schedule Information** from the menu
5. Select the **OK** button to close the **Schedule Information** dialog

## Viewing SubSchedule Information

1. Select on **List** under the **Operation** topic
2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the **schedule** containing the subschedule
4. Right-click on the **subschedule** to view
5. Select on **SubSchedule Information** from the menu
6. View the information
7. Select the **OK** button to close the **SubSchedule Information** dialog

To view Jobs in a SubSchedule:

1. Select on **List** under the **Operation** topic
2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the **schedule** containing the subschedule
4. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the **subschedule**
5. View the subschedule jobs under the subschedule

## Viewing Schedule History

1. Select on **List** under the **Operation** topic
2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Right-click on the **schedule** to view
4. Select on **Schedule History** from the menu
5. *(Optional)* Change the **Start Date** or **End Date**
6. *(Optional)* Select the **View Detailed History** button
7. *(Optional)* Select the **View Archived History** button
8. View the schedule history
9. Select the **Close** button to close the **Schedule History** dialog

## Placing All Schedules for Selected Schedule Date On Hold

1. Select on **List** under the **Operation** topic
2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Right-click on the **Date**
4. Hover over **Schedules** in the menu
5. Select **Hold Schedules** from the second menu. The **Change Schedule Statuses** dialog displays
6. Select the option(es) for the schedule statuses to update
7. *(Optional)* Enter a *short explanation for the status change* in the text box provided
8. Select the **OK** button to confirm the schedule status change

## Releasing All Held Schedules for Selected Schedule Date

1. Select on **List** under the **Operation** topic
2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Right-click on the **Date**
4. Hover over **Schedules** in the menu
5. Select **Release Schedules** from the second menu. The **Change Schedule Statuses** dialog displays
6. Select the option(es) for the schedule statuses to update
7. *(Optional)* Enter a *short explanation for the status change* in the text box provided
8. Select the **OK** button to confirm the schedule status change

## Starting All Schedules for Selected Schedule Date

1. Select on **List** under the **Operation** topic
2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Right-click on the **Date**
4. Hover over **Schedules** in the menu
5. Select **Start Schedules** from the second menu. The **Change Schedule Statuses** dialog displays
6. Select the option(es) for the schedule statuses to update
7. *(Optional)* Enter a *short explanation for the status change* in the text box provided
8. Select the **OK** button to confirm the schedule status change

## Checking all Schedules for Specific Date

1. Select on **List** under the **Operation** topic
2. Right-click on the **date** to check all schedules
3. Hover over **Schedules** in the menu
4. Select on **Check Schedules** from the second menu. The **Check Schedules** dialog displays
5. Select **Normal (No Circular)**, **Slow (Circular)**, or **Fast (Requires Only)**. The **Schedule Check** dialog displays
6. Note the *log file name* for later access if required
7. Select the **OK** button

## Deleting All Schedules for Selected Schedule Date

To delete All Schedules for Selected Schedule Date, complete the following steps:

1. Select on **List** under the **Operation** topic
2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Right-click on the **Date**
4. Hover over **Schedules** in the menu
5. Select **Delete all Schedules** from the second menu. The **Delete** dialog displays
6. Select the **OK** button to confirm the deletion

## Changing Job Statuses for Jobs on Particular Schedule Date

1. Select on **List** under the **Operation** topic
2. Right-click on the **Date**
3. Hover over **Jobs** in the menu

4. Select **Update Job Statuses** from the second menu. The **Update Job statuses** dialog displays
5. Select the **job status** in the **Change all jobs statuses to** list
6. *(Optional)* Select the **Check All** option to select all available job statuses in the **Jobs to update** frame
7. Select the **job status** option(es) to update
8. *(Optional)* Enter a *short explanation for the status change* in the text box provided
9. Select the **OK** button to confirm the job status change

## Placing Schedules On Hold

Suspends processing of the selected schedule. Running jobs continue, but no new jobs start.

1. Select on **List** under the **Operation** topic

2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Right-click on the **schedule** to place on hold
4. Select on **Hold** from the menu. The **HOLD** dialog displays
5. *(Optional)* Enter a *short explanation for the status change* in the text box provided
6. Select the **OK** button to confirm the schedule status change

## Releasing Held Schedules

Releases the selected schedule from a Held state. The SAM resumes processing jobs from where they were stopped.

1. Select on **List** under the **Operation** topic

2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Right-click on the **schedule** to release
4. Select on **Release** from the menu. The **Release** dialog displays
5. *(Optional)* Enter a *short explanation for the status change* in the text box provided
6. Select the **OK** button to confirm the schedule status change

## Starting Schedules

Overrides a schedule's start date and time. The SAM begins processing immediately.

1. Select on **List** under the **Operation** topic

2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Right-click on the **schedule** to start
4. Select on **Start** from the menu. The **Start** dialog displays
5. *(Optional)* Enter a *short explanation for the status change* in the text box provided
6. Select the **OK** button to confirm the schedule status change

## Closing Schedules

Use **Close** to mark a schedule as Completed when it is still In Process only because it contains failed jobs.

:::note
This feature is not available for subschedules.
:::

1. Select on **List** under the **Operation** topic

2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Right-click on the **schedule** to close
4. Select on **Close** from the menu. The **Close** dialog displays
5. *(Optional)* Enter a *short explanation for the status change* in the text box provided
6. Select the **OK** button to confirm the schedule status change

## Canceling All Jobs on Schedules

Cancels all jobs for the selected schedule based on a filter. Jobs dependent on canceled jobs will not have those dependencies met.

1. Select on **List** under the **Operation** topic

2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Right-click on the **schedule**
4. Select on **Update Job Statuses** from the menu. The **Update Job statuses** dialog displays
5. Select **Cancel** in the **Change all job statuses to** list
6. *(Optional)* Select the **Check All** option to select all available job statuses in the **Jobs to update** frame
7. Select the options for the preferred changes for jobs to update
8. *(Optional)* Enter a *short explanation for the status change* in the text box provided
9. Select the **OK** button to confirm the job status change

## Holding All Jobs on Schedules

Suspends processing of all jobs on the selected schedule based on a filter.

:::note
Jobs already submitted for starting cannot be held.
:::

1. Select on **List** under the **Operation** topic
2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Right-click on the **schedule**
4. Select on **Update Job Statuses** from the menu. The **Update Job statuses** dialog displays
5. Select **Hold** in the **Change all job statuses to** list
6. *(Optional)* Select the **Check All** option to select all available job statuses in the **Jobs to update** frame
7. Select the options for the preferred changes for jobs to update
8. *(Optional)* Enter a *short explanation for the status change* in the text box provided
9. Select the **OK** button to confirm the job status change

## Marking All Jobs Failed on Schedules

Marks all jobs on the selected schedule as Failed based on a filter.

1. Select on **List** under the **Operation** topic

2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Right-click on the **schedule**
4. Select on **Update Job Statuses** from the menu. The **Update Job statuses** dialog displays
5. Select **Mark Failed** in the **Change all job statuses to** list
6. *(Optional)* Select the **Check All** option to select all available job statuses in the **Jobs to update** frame
7. Select the options for the preferred changes for jobs to update
8. *(Optional)* Enter a *short explanation for the status change* in the text box provided
9. Select the **OK** button to confirm the job status change

## Marking All Jobs Finished OK on Schedules

Marks all jobs on the selected schedule as Finished OK based on a filter.

1. Select on **List** under the **Operation** topic

2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Right-click on the **schedule**
4. Select on **Update Job Statuses** from the menu. The **Update Job statuses** dialog displays
5. Select **Mark Finished OK** in the **Change all job statuses to** list
6. *(Optional)* Select the **Check All** option to select all available job statuses in the **Jobs to update** frame
7. Select the options for the preferred changes for jobs to update
8. *(Optional)* Enter a *short explanation for the status change* in the text box provided
9. Select the **OK** button to confirm the job status change

## Releasing All Held Jobs on Schedules

Places all held jobs on a schedule back into a Qualifying state based on a filter. Jobs start as soon as all dependencies are met.

1. Select on **List** under the **Operation** topic
2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Right-click on the **schedule**
4. Select on **Update Job Statuses** from the menu. The **Update Job statuses** dialog displays
5. Select **Release** in the **Change all job statuses to** list
6. *(Optional)* Select the **Check All** option to select all available job statuses in the **Jobs to update** frame
7. Select the options for the preferred changes for jobs to update
8. *(Optional)* Enter a *short explanation for the status change* in the text box provided
9. Select the **OK** button to confirm the job status change

## Restarting All Jobs on Schedules

Places all jobs on the selected schedule back in a Qualifying state based on a filter. Jobs start as soon as all dependencies are met.

1. Select on **List** under the **Operation** topic

2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Right-click on the **schedule**
4. Select on **Update Job Statuses** from the menu. The **Update Job statuses** dialog displays
5. Select **Restart** in the **Change all job statuses to** list
6. *(Optional)* Select the **Check All** option to select all available job statuses in the **Jobs to update** frame
7. Select the options for the preferred changes for jobs to update
8. *(Optional)* Enter a *short explanation for the status change* in the text box provided
9. *(Optional)* Select the **Place job on hold during restart** option
10. Select the **OK** button to confirm the job status change

## Restarting Jobs when SubSchedules are Included

Container jobs with statuses matching the filters in the **Jobs to update** frame display with option choices to:
- Delete and rebuild completed subschedules
- Leave the subschedules alone
- Restart jobs with matching statuses in the subschedule

1. Select on **List** under the **Operation** topic
2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Right-click on the **schedule**
4. Select on **Update Job Statuses** from the menu. The **Update Job statuses** dialog displays
5. Select **Restart** in the **Change all job statuses to** list
6. *(Optional)* Select the **Check All** option to select all available job statuses in the **Jobs to update** frame
7. Select the options for the preferred changes for jobs to update
8. *(Optional)* Enter a *short explanation for the status change* in the text box provided
9. *(Optional)* Select the **Place job on hold during restart** option
10. Select the **option** for the Container job(s) to delete and rebuild completed subschedules
11. Deselect the **option** for the Container job(s) to leave the subschedules alone
12. Leave the **option(es)** gray (default) to restart jobs with matching statuses in the subschedules
13. Select the **OK** button to confirm the job status change

## Skipping All Jobs on Schedules

Places all jobs on the selected schedule in a Job to be Skipped state until they qualify to start. When jobs qualify, they are skipped and downstream job dependencies are met.

1. Select on **List** under the **Operation** topic
2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Right-click on the **schedule**
4. Select on **Update Job Statuses** from the menu. The **Update Job statuses** dialog displays
5. Select **Skip** in the **Change all job statuses to** list
6. *(Optional)* Select the **Check All** option to select all available job statuses in the **Jobs to update** frame
7. Select the options for the preferred changes for jobs to update
8. *(Optional)* Enter a *short explanation for the status change* in the text box provided
9. Select the **OK** button to confirm the job status change

## Editing Daily Schedules

1. Select on **List** under the **Operation** topic
2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Right-click on the **schedule**
4. Hover over **Maintenance** in the menu
5. Select on **Edit Daily Schedule** from the second menu. The **Schedule Daily** screen displays
6. Select the tabs and change the *information*. For more information, refer to [Using Daily Maintenance View](Using-Daily-Maintenance-View.md)
7. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Schedule Daily** toolbar
8. Select the **x** to the right of the **Schedule Daily** tab to close the screen

## Editing Master Schedules

1. Select on **List** under the **Operation** topic
2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Right-click on the **schedule**
4. Hover over **Maintenance** in the menu
5. Select on **Edit Master Schedule** from the second menu. The **Schedule Master** screen displays
6. Select the tabs and change the *information*. For more information, refer to [Using Daily Maintenance View](Using-Daily-Maintenance-View.md)
7. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Schedule Master** toolbar
8. Select the **x** to the right of the **Schedule Master** tab to close the screen

## Checking Schedules

Runs a check of a schedule in the Daily tables.

1. Select on **List** under the **Operation** topic

2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Right-click on the **schedule**
4. Hover over **Maintenance** in the menu
5. Select on **Check Schedule** from the second menu. The **Check Schedule** dialog displays
6. Select **Normal (No Circular)**, **Slow (Circular)**, or **Fast (Requires Only)**. The **Schedule Check** dialog displays
7. Note the *log file name* for later access if required
8. Select the **OK** button to close the **Schedule Check** dialog

## Deleting Schedules

Deletes a schedule from the Daily tables.

1. Select on **List** under the **Operation** topic

2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Right-click on the **schedule**
4. Hover over **Maintenance** in the menu
5. Select on **Delete Schedule** from the second menu. The **Delete Schedule** dialog displays
6. Select **Yes** to confirm or **No** to cancel

## Adding Jobs

Adds a job or jobs to the Daily schedule. For more information, refer to [Adding Jobs to Daily Schedules](../../../operations/adding-jobs.md) in the **Concepts** online help.

1. Select on **List** under the **Operation** topic
2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Right-click on the **schedule** and hover over **Maintenance** in the menu
4. Select on **Add Jobs** from the second menu. The **Add Jobs to \<Schedule Name\>** dialog displays
5. Select the **Job** option(es) to add, or select directly on the job to select it
6. Select the **Add Job** button. The **Confirm Add Job to Schedule** dialog displays
7. In the **Build Status** frame:
   - *(Optional)* Select **On Hold** to add the job in an On Hold state, **- or -**
   - *(Optional)* Select **Released** to add the job as Released
8. In the **Frequencies** frame, select the **frequency**
9. *(Optional)* Select the **Instance Properties** tab and/or the **Instance Machines** tab:
   - Define the **Job Instance Properties** by entering the *name* and *value* in the specified format
   - Select a **machine** from the list, or select **\<None\>** to build an instance for each machine in the defined machine group

:::note
If no properties are defined for the schedule, OpCon will still request the build but no properties will be defined.
:::

10. Select **Yes** to confirm the request or **Cancel** to cancel
11. If multiple jobs were selected, repeat steps 7–10 for each additional job
12. If additional property definitions are needed, repeat steps 6–10
13. Select the **Close** button to close the **Add Jobs to \<Schedule Name\>** dialog
14. Select the **x** to the right of the **Daily list** tab to close the screen

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: How many steps does the Performing Schedule Procedures when Working in List View procedure involve?**

The Performing Schedule Procedures when Working in List View procedure involves 217 steps. Complete all steps in order and save your changes.

**Q: What does Performing Schedule Procedures when Working in List View cover?**

This page covers Viewing Schedule Information, Viewing SubSchedule Information, Viewing Schedule History.

## Glossary

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**Subschedule**: A schedule that runs as a child process within a Container job, allowing hierarchical, nested workflow automation where a parent schedule can trigger and monitor an entire child schedule.

**Container Job**: A job type that runs a subschedule. Container jobs enable hierarchical schedule structures and support properties and events just like standard jobs.

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.
