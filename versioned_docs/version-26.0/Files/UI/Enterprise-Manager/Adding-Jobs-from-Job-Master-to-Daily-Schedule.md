---
title: Adding Jobs from Job Master to Daily Schedule
description: "Use this procedure to add Jobs from Job Master to Daily Schedule in the Enterprise Manager."
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

# Adding Jobs from Job Master to Daily Schedule

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to add Jobs from Job Master to Daily Schedule in the Enterprise Manager.

:::note
Jobs can be added from the Job Master to the Daily Schedules regardless of the daily schedule's status or the Job's build status. For more information, refer to [Adding Jobs to Daily Schedules](../../../operations/adding-jobs.md) in the **Concepts** online help.
:::

To perform this procedure, complete the following steps:

1. Select on **Daily Maintenance** under the **Operation** topic
2. Select the ![Expand Arrow](../../../Resources/Images/EM/EMarrowtoexpand.png)**arrow** to expand the **date** for the schedule, then select the **Schedule** that has the job to be added

:::note
If a **schedule date** is selected, the jobs in the **Master** frame come from the **Adhoc** schedule. If a **schedule** is selected, that schedule's jobs display.
:::

3. In the **Master** frame, select the **Job** option(es) to add

:::note
If the job name is not visible, scroll through the list or enter the first few letters in the **Type Filter Text** box to narrow the search.
:::

4. Select the **Add Job** button. The **Confirm Add Job To Schedule** dialog displays
5. In the **Build Status** frame, select **On Hold** or **Released**
6. In the **Frequencies** frame, select the **frequency**
7. *(Optional)* Select the **Instance Properties** tab and/or **Instance Machines** tab:
   - Enter the property *name* and *value* in the specified format
   - Select a **machine** from the list, or select **\<None\>** to build an instance for each machine in the defined Machine Group
8. Select **Yes** to confirm or **Cancel** to cancel
9. If multiple jobs were selected, repeat steps 4–8 for each additional job
10. Select the **x** to the right of the **Daily Maintenance** tab to close the screen

## FAQs

**Q: How do you save a new jobs from job master to daily schedule record?**

After completing the required fields, select the **Save** button on the toolbar to save the jobs from job master to daily schedule record.

**Q: Is documentation required when adding jobs from job master to daily schedule?**

No. The Documentation field is optional. You can enter notes about the jobs from job master to daily schedule to track its purpose, but it is not required to save the record.

## Glossary

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
