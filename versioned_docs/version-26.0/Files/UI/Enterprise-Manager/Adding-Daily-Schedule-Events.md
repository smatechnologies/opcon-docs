---
title: Adding Daily Schedule Events
description: "Use this procedure to add Daily Schedule Events in the Enterprise Manager."
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

# Adding Daily Schedule Events

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to add Daily Schedule Events in the Enterprise Manager.

To perform this procedure, complete the following steps:

1. Select **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays
2. Select the ![Expand Arrow](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date** for the schedule
3. Select the **schedule**
4. Select **Edit Daily** in the **Maintenance** frame. The **Schedule Daily** screen displays
5. Select the **Events** tab
6. Select **Add** in the **Events** frame. The **Event Definition Wizard** displays
7. Select an **OpCon event template** from the **Event Template** list. Refer to [OpCon Events](../../../events/introduction.md) for more information

   :::tip Example
   $JOB:ADD,<schedule date\>,<schedule name\>,<job name\>,<frequency name\>.
   :::

8. In the **Event Parameters** text box, place the cursor at the beginning of a **\<syntax placeholder\>**, then drag right to select the entire placeholder, excluding surrounding commas (e.g., ,[<schedule name\>],)
9. Replace the selected placeholder with valid OpCon event information

To replace a placeholder with a token, complete the following steps:

1. Select the syntax placeholder as described in step 8
2. Select the ![Insert Token button](../../../Resources/Images/EM/EMinserttoken.png "Insert Token button") **Insert token** button or press **Ctrl+T** to list available global properties
3. Locate the global property by scrolling or using the search field. Use Windows wildcard characters to filter by property name, property value, or both
4. Select the **global property** (e.g., $SCHEDULE DATE)

   :::note
   Double brackets are automatically placed around the token placeholder.
   :::

   :::tip Example
   $JOB:ADD,\[\[$SCHEDULE DATE\]\],Payroll,Emp1,15thofMonth.
   :::

5. Select **Reset** to restore parameters to their original states
6. Select **Finish** to save the event, or **Cancel** to discard changes
7. Select **Close ☒** to close the **Schedule Daily** screen
8. Select **Close ☒** to close the **Daily Maintenance** screen

## FAQs

**Q: Where do you access Daily Schedule Events in the Enterprise Manager?**

Select **Daily Maintenance** under the **Operation** topic in the Enterprise Manager navigation pane.

**Q: How do you save a new daily schedule events record?**

After completing the required fields, select the **Save** button on the toolbar to save the daily schedule events record.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**OpCon Event**: A command sent to OpCon that triggers an automated action, such as adding a job to a schedule, updating a property value, sending a notification, or changing a job or schedule status.

**Token (Global Property)**: A named value stored in the OpCon database, referenced in job definitions and events using [[PropertyName]] syntax. Tokens pass dynamic values — such as dates, file paths, or counts — into automation workflows.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
