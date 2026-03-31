---
title: Deleting Un-used User-defined Calendars
description: "Use this procedure to delete Un-used User-defined Calendars in the Enterprise Manager."
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

# Deleting Un-used User-defined Calendars

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to delete Un-used User-defined Calendars in the Enterprise Manager.

:::note
Continuous recommends deleting user-defined calendars no longer in use to control the size of database tables. Holiday calendars are automatically deleted when the associated schedule is deleted.
:::

To delete an un-used calendar:

Remove the Calendar from the Schedule Master Tables

To remove the Calendar from the Schedule Master Tables, complete the following steps:

1. Select on **Schedule Master** under the **Administration** topic. The **Schedule Master** screen displays
2. Select the **Schedule** in the **Schedule** list
3. Select the **Frequency** tab
4. Select the **frequency** with the user-defined calendar to delete and select the **Remove** button
5. Select the **Yes** button to confirm the deletion or **No** to cancel
6. Repeat Steps 4 and 5 for all jobs using the calendar to delete

Remove the Calendar from the Job Master Tables

To remove the Calendar from the Job Master Tables, complete the following steps:

1. Select on **Job Master** under the **Administration** topic. The **Job Master** screen displays
2. Select the **schedule name** in the **Schedule** list
3. Select the **job name** in the **Job** list
4. Select the **Frequency** tab
5. Select the **frequency** with the user-defined calendar to delete and select the **Remove** button
6. Select the **Yes** button to confirm the deletion or **No** to cancel
7. Repeat Step 6 for all jobs using the calendar to be deleted
8. Select **Close ☒** (to the right of the **Job Master** tab) to close the **Job Master** screen

Delete the Calendar

To delete the Calendar, complete the following steps:

1. Select on **Calendars** under the **Administration** topic. The **Calendars** screen displays
2. Select the calendar in the **Selection** list
3. Ensure no schedules are using the calendar. If the box contains a schedule, refer to [Remove the Calendar from the Job Master Tables](#Remove_the_Calendar_from_the_Job_Master_Tables)
4. Ensure no jobs are using the calendar. If the box contains a job, refer to [Remove the Calendar from the Job Master Tables](#Remove_the_Calendar_from_the_Job_Master_Tables)
5. Select ![Remove icon](../../../Resources/Images/EM/EMdelete.png "Remove icon") **Remove** on the **Calendars** toolbar
6. Select the **Yes** button to confirm the deletion or **No** to cancel
7. Select **Close ☒** (to the right of the **Calendars** tab) to close the **Calendars** screen

## When Would You Use It?

- An existing Un-used User-defined Calendars in Enterprise Manager is no longer needed
- The Un-used User-defined Calendars has been decommissioned or replaced and should be removed to keep the configuration clean

## Why Would You Use It?

- **Maintain a clean environment**: Removing unused Un-used User-defined Calendars definitions reduces clutter and prevents accidental use of outdated or obsolete configurations
- Deletions are recorded in the OpCon audit log, providing traceability for compliance and change management reviews

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: Can a un-used user-defined calendars record be recovered after deletion?**

No. Deleting a un-used user-defined calendars record permanently removes it from OpCon. Verify the record is no longer needed before deleting it.

**Q: What should you check before deleting un-used user-defined calendars?**

Verify the un-used user-defined calendars is not currently in use or assigned to other records before deleting it, as deletion may affect dependent objects.

## Glossary

**Master Tables**: The OpCon database tables that hold the permanent definitions of schedules and jobs. Changes to master tables affect all future schedule builds.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Calendar**: A named collection of dates in OpCon used by schedules and frequencies to determine when automation runs or is excluded. Calendars can represent holidays, working days, or any custom date set.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
