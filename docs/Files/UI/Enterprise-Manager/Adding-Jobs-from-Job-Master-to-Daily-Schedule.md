---
title: Adding Jobs from Job Master to Daily Schedule
description: "Use this procedure to add jobs from Job Master to a Daily Schedule in Enterprise Manager."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Adding Jobs from Job Master to Daily Schedule

You can add jobs from the Job Master to a Daily Schedule at any time, regardless of the Daily Schedule's status or the job's build status.

:::note
For background information on this operation, refer to [Adding Jobs to Daily Schedules](../../../operations/adding-jobs.md) in the **Concepts** online help.
:::

## Required privileges

Your role must have both of the following department-level function privileges to perform this procedure:

- **Add Jobs to Daily Schedules**
- **View Jobs in Master Schedules**

## Add a job from Job Master to a Daily Schedule

To add a job from Job Master to a Daily Schedule, complete the following steps:

1. Select **Daily Maintenance** under the **Operation** topic.
2. In the **Daily** frame, select the arrow to expand the date, then select the Schedule you want to add a job to.

   :::note
   If you select a schedule date rather than a specific schedule, the jobs listed in the **Master** frame come from the **AdHoc** schedule.
   :::

3. In the **Master** frame, select the job or jobs you want to add.

   :::tip
   If the job name is not visible, scroll through the list or enter the first few characters in the **Type Filter Text** field to narrow the results.
   :::

4. Select **Add Job**. The **Confirm Add Job To Schedule** dialog opens.
5. In the **Build Status** frame, select **On Hold** or **Released**.

   :::note
   The default selection is **On Hold**.
   :::

6. In the **Frequencies** frame, select a frequency. You must select a frequency before you can confirm the addition.

   :::note
   If the job has only one frequency defined, it is selected automatically.
   :::

7. (Optional) Select the **Instance Properties** tab to specify property values for the job instance:
   - Enter the property name and value in `PropertyName=Value` format.
   - Multiple properties must be separated by a semicolon (`;`).

8. (Optional) If the job is configured to run on each machine in a Machine Group, the **Instance Machines** tab appears. Select the **Instance Machines** tab and then select a machine from the list, or select **\<None\>** to build an instance for each machine in the Machine Group.

9. Select **Yes** to confirm or **No** to cancel.

   **Result:** The job is added to the Daily Schedule with the build status and frequency you selected.

10. If you selected multiple jobs, repeat steps 4–9 for each additional job.
11. Select the **x** on the **Daily Maintenance** tab to close the view.

## Glossary

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which Agent, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.
