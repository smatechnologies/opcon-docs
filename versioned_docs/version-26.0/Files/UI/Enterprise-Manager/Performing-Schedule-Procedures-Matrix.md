---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Performing Schedule Procedures when Working in Matrix View
description: "Use this procedure to perform Schedule Procedures when Working in Matrix View in the Enterprise Manager."
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

# Performing Schedule Procedures when Working in Matrix View

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to perform Schedule Procedures when Working in Matrix View in the Enterprise Manager.

## When Would You Use It?

- A Schedule Procedures when Working in Matrix View action needs to be carried out in Enterprise Manager

## Why Would You Use It?

- **Ensure consistent operations**: Performing Schedule Procedures when Working in Matrix View actions through OpCon creates a centralized, auditable record of all operational changes

## Placing Schedules On Hold

This action suspends processing of the selected schedule. Currently running jobs continue, but no new jobs start.

To perform this procedure, complete the following steps:

1. Select on **Matrix** under the **Operation** topic. The **Matrix** screen displays
2. Select the **number** for the day in the calendar that contains the schedule(s)
3. Right-click on the **schedule** to place on hold
4. Select **Hold** from the menu. The **HOLD** dialog displays
5. *(Optional)* Enter a *short explanation for the status change* in the text box provided
6. Select the **OK** button to confirm the schedule status change

## Releasing Held Schedules

This action releases the selected schedule from a Held state. The SAM processes jobs on the schedule from the point where they were stopped.

To perform this procedure, complete the following steps:

1. Select on **Matrix** under the **Operation** topic. The **Matrix** screen displays
2. Select the **number** for the day in the calendar that contains the schedule(s)
3. Right-click on the **schedule** to release
4. Select **Release** from the menu. The **Release** dialog displays
5. *(Optional)* Enter a *short explanation for the status change* in the text box provided
6. Select the **OK** button to confirm the schedule status change

## Starting Schedules

This action overrides a schedule's start date and time. The SAM begins processing as soon as this option is selected.

To perform this procedure, complete the following steps:

1. Select on **Matrix** under the **Operation** topic. The **Matrix** screen displays
2. Select the **number** for the day in the calendar that contains the schedule(s)
3. Right-click on the **schedule** to start
4. Select **Start** from the menu. The **Start** dialog displays
5. *(Optional)* Enter a *short explanation for the status change* in the text box provided
6. Select the **OK** button to confirm the schedule status change

## Closing Schedules

This action cannot be performed if the schedule has jobs that are currently running, qualifying, or have dependencies involved.

To perform this procedure, complete the following steps:

1. Select on **Matrix** under the **Operation** topic. The **Matrix** screen displays
2. Select the **number** for the day in the calendar that contains the schedule(s)
3. Right-click on the **schedule** to close
4. Select **Close** from the menu. The **Close** dialog displays
5. *(Optional)* Enter a *short explanation for the status change* in the text box provided
6. Select the **OK** button to confirm the schedule status change

## Updating Job Statuses for Jobs on Schedules

To perform this procedure, complete the following steps:

1. Select on **Matrix** under the **Operation** topic. The **Matrix** screen displays
2. Select the **number** for the day in the calendar that contains the schedule(s)
3. Right-click on the **schedule** to update
4. Select **Update Job Statuses** from the menu. The **Update Job statuses** dialog displays
5. Select the **job status** in the **Change all jobs statuses to** list
6. *(Optional)* Select the **Check All** option to select all available job statuses in the **Jobs to update** frame
7. Select the **job status** option(es) to update
8. *(Optional)* Enter a *short explanation for the status change* in the text box provided
9. Select the **OK** button to confirm the job status change

## Editing Daily Schedules

This option allows you to edit the Daily schedule and make required changes.

To perform this procedure, complete the following steps:

1. Select on **Matrix** under the **Operation** topic. The **Matrix** screen displays
2. Select the **number** for the day in the calendar that contains the schedule(s)
3. Right-click on the **schedule** to edit
4. Hover over **Maintenance** in the menu
5. Select **Edit Daily Schedule** from the second menu. The **Schedule Daily** screen displays
6. Select the tabs and change the *information*. For more information, refer to [Using Daily Maintenance View](Using-Daily-Maintenance-View.md)
7. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Schedule Daily** toolbar
8. Select the **x** to the right of the **Schedule Daily** tab to close the **Schedule Daily** screen

## Editing Master Schedules

This option allows you to edit the Master schedule and make required changes.

To perform this procedure, complete the following steps:

1. Select on **Matrix** under the **Operation** topic. The **Matrix** screen displays
2. Select the **number** for the day in the calendar that contains the schedule(s)
3. Right-click on the **schedule** to edit
4. Hover over **Maintenance** in the menu
5. Select **Edit Master Schedule** from the second menu. The **Schedule Master** screen displays
6. Select the tabs and change the *information*. For more information, refer to [Using Daily Maintenance View](Using-Daily-Maintenance-View.md)
7. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Schedule Master** toolbar
8. Select the **x** to the right of the **Schedule Master** tab to close the **Schedule Master** screen

## Checking Schedules

This option runs a check of a schedule in the Daily tables.

To perform this procedure, complete the following steps:

1. Select on **Matrix** under the **Operation** topic. The **Matrix** screen displays
2. Select the **number** for the day in the calendar that contains the schedule(s)
3. Right-click on the **schedule** to check
4. Hover over **Maintenance** in the menu
5. Select **Check Schedule** from the second menu. The **Check Schedule** dialog displays
6. Select the **Normal (No Circular)**, **Slow (Circular)**, or **Fast (Requires Only)** button. The **Schedule Check** dialog displays
7. Note the *log file name* for later access if required
8. Select the **OK** button to close the **Schedule Check** dialog

## Deleting Schedules

This action deletes a schedule from the Daily tables.

To perform this procedure, complete the following steps:

1. Select on **Matrix** under the **Operation** topic. The **Matrix** screen displays
2. Select the **number** for the day in the calendar that contains the schedule(s)
3. Right-click on the **schedule** to delete
4. Hover over **Maintenance** in the menu
5. Select **Delete Schedule** from the second menu. The **Delete Schedule** dialog displays
6. Select the **Yes** button to confirm the deletion or select the **No** button to cancel

## Adding Jobs

This action adds job(s) to the Daily schedule. For more information, refer to [Adding Jobs to Daily Schedules](../../../operations/adding-jobs.md) in the **Concepts** online help.

To perform this procedure, complete the following steps:

1. Select on **Matrix** under the **Operation** topic. The **Matrix** screen displays
2. Select the **number** for the day in the calendar that contains the schedule(s)
3. Right-click on the **schedule** and hover over **Maintenance** in the menu
4. Select **Add Jobs** from the second menu. The **Add Jobs to <Schedule Name\>** dialog displays
5. Select the **Job** option(es) to add to the schedule, or select a job directly
6. Select the **Add Job** button. The **Confirm Add Job to Schedule** dialog displays
7. In the **Build Status** frame, select **On Hold** to add the job in a held state, or select **Released** to add and release the job
8. In the **Frequencies** frame, select the **frequency**
9. *(Optional)* Select the **Instance Properties** tab and/or the **Instance Machines** tab:
   - Enter the *name* and *value* for the property in the specified format
   - Select a **machine** from the list, or select **<None\>** to build an instance for each machine in the defined machine group

:::note
If no properties are defined for the schedule, OpCon will still submit the build request, but no properties will be defined.
:::

10. Select the **Yes** button to confirm the request or select **Cancel** to cancel
11. If multiple jobs were selected, repeat steps 6–10 for each additional job
12. Select the **Close** button to close the **Add Jobs to <Schedule Name\>** dialog
13. Select the **x** to the right of the **Matrix** tab to close the **Matrix** screen
:::

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: How many steps does the Performing Schedule Procedures when Working in Matrix View procedure involve?**

The Performing Schedule Procedures when Working in Matrix View procedure involves 76 steps. Complete all steps in order and save your changes.

**Q: What does Performing Schedule Procedures when Working in Matrix View cover?**

This page covers Placing Schedules On Hold, Releasing Held Schedules, Starting Schedules.

## Glossary

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Calendar**: A named collection of dates in OpCon used by schedules and frequencies to determine when automation runs or is excluded. Calendars can represent holidays, working days, or any custom date set.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
