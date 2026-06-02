---
title: Job Frequency
description: "The Frequency specifies the weeks, days, and calendar information for when a job is scheduled to run."
product_area: Job Components
audience: Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Reference
  - Automation Engineer
  - Jobs
last_updated: 2026-03-18
doc_type: reference
---

# Job Frequency

A **Frequency** specifies the weeks, days, and calendar information that determines when a job is scheduled to run. Frequency information is defined in the Job Master. For conceptual background, refer to [Job and Schedule Frequencies](../automation-concepts/frequencies.md).

The following settings make up a frequency definition:

- **Frequency Name**: The unique name of the frequency.
- **Frequency Details**: The days that qualify for the frequency. Refer to [Frequency Definition](../automation-concepts/frequencies.md#frequency-definition).
- **Priority**: The priority of this frequency relative to other frequencies defined for the same job. Refer to [Multiple Frequencies and Frequency Priority](../automation-concepts/frequencies.md#multiple-frequencies-and-frequency-priority).
- **Advanced Frequency Settings**: Advanced frequency features applied to the job. Refer to [Advanced Frequency Settings](../automation-concepts/frequencies.md#advanced-frequency-settings).

## Other Job Details

Other job details are attached to a defined frequency, which provides the flexibility to apply different criteria across different sets of dates. Other job detail sections include:

- [Job Build Status](#job-build-status)
- [Start Offset](#start-offset)
- [Latest Start Offset](#latest-start-offset)
- [Late-To-Start / Late-To-Finish](#late-to-start--late-to-finish)
- [Start Time Estimation](#start-time-estimation)
- [Job Execution](#job-execution)
- [Retry on Failure](#retry-on-failure)
- [Job Recurrence](#job-recurrence)

### Job Build Status

The **Job Build Status** determines the default status of the job when it is built into the schedule for the associated frequency. Available options are:

- **On Hold**: The Schedule Activity Monitor (SAM) does not automatically start the job when the schedule becomes active, even if all other requirements (dependencies, start time, and so on) are met.
- **Released**: The job starts when the schedule becomes active and all other requirements are met.
- **Do Not Schedule**: The job is not built with the schedule when the associated frequency qualifies.
  - To ignore a frequency entirely, place the **Do Not Schedule** frequency at the lowest priority.
  - To exclude specific dates, place the **Do Not Schedule** frequency at a higher priority than the frequency containing the dates to exclude.
- **To Be Skipped**: The job is built with a default status of **To Be Skipped**.
- **Disable Frequency**: OpCon does not evaluate the selected frequency when forecasting or building schedules.

### Start Offset

The **Start Offset** defines the positive number of hours and minutes to offset the job's start time from the schedule's start time. The offset format determines how OpCon calculates the offset:

- **Absolute**: The job's start time is calculated from the **assigned** start time of the schedule.
- **Relative**: The job's start time is calculated from the time the schedule was **released** to run.

### Latest Start Offset

The **Latest Start Offset** defines the positive number of hours and minutes to offset the latest allowable start time from the schedule's start time. If the latest start time passes before the job qualifies to run, the job is set to a **Missed Latest Start Time** status and does not automatically run. A value of `00:00` disables this feature. The offset format determines how OpCon calculates the offset:

- **Absolute**: The job's latest start time is calculated from the **assigned** start time of the schedule.
- **Relative**: The job's latest start time is calculated from the time the schedule was **released** to run.

### Late-To-Start / Late-To-Finish

The **Late-To-Start Offset** and **Late-To-Finish Offset** settings define the time at which OpCon flags a job as late. When a configured late time arrives, OpCon can fire events on the job, update thresholds, and trigger Notification Manager alerts. For more information, refer to [Threshold/Resource Updates](./threshold-resource-updates.md), [Defining Events](../events/defining.md), and [Using Notification Manager](../Files/UI/Enterprise-Manager/Using-Notification-Manager.md).

- **Late-To-Start Offset**: Defines the positive number of hours and minutes to offset the Late-To-Start time from the job's Start Offset (accounting for Absolute or Relative format). If the time arrives and the job has not yet started, the job is set to **Late to Start**. The time is calculated as: Schedule Start Time + Job Start Offset + Late-To-Start Offset. A value of `00:00` disables this feature.
- **Late-To-Finish Offset**: Defines the positive number of hours and minutes to offset the Late-To-Finish time from the job's Start Offset (accounting for Absolute or Relative format). If the time arrives and the job is still running, the job is set to **Running; Late to Finish**. The time is calculated as: Schedule Start Time + Job Start Offset + Late-To-Finish Offset. A value of `00:00` disables this feature.

### Start Time Estimation

- **Estimated Source**: Defines the method the SMA Start Time Calculator uses to predict the job's estimated start time. Options include:
  - **Calculated** (Default): Uses the job's start offset value and dependency chain to calculate the estimated start time. This option works best when a job has no external dependencies.
  - **History**: Uses the job's average start time by frequency from history as the estimated start time. This option is useful when a job depends on external events or user interaction to start.
  - **User Defined**: Uses a hard-coded predicted start time defined in days, hours, and minutes offset from the schedule's start time. This option is useful when the **History** option does not produce an accurate enough estimate.
- **Estimated Run Time**: Defines the estimated runtime in minutes for the job. This value can be set manually; however, Continuous recommends setting up a job to run the SMA_JOBAVG stored procedure to calculate the value automatically on a regular basis. For information on job averaging, refer to [SMA Job Average](../objects/schedules.md#smautility-schedule).

### Job Execution

- **SAM Priority**: Defines a number for the job's priority, where `0` is the lowest. If SAM can submit more jobs to a machine simultaneously than the machine allows, SAM uses priority values to submit the most important jobs first.
- **Max Run Time**: Defines the maximum run time in minutes for the job. If the job runs for longer than the specified time, the job is left running but set to a status of **Exceeded Max Run Time**. If configured, OpCon events, threshold updates, and Notification Manager triggers can process for the job. Refer to [Threshold/Resource Updates](./threshold-resource-updates.md), [Defining Events](../events/defining.md), and [Using Notification Manager](../Files/UI/Enterprise-Manager/Using-Notification-Manager.md). A value of `0` disables this feature.

### Retry on Failure

The **Retry on Failure** feature is useful for situations where a job may fail due to timing, such as when a database is temporarily unavailable or a file has not yet arrived. OpCon processes events, threshold/resource updates, and subsequent job dependencies only upon job failure after the final retry attempt.

:::note
If the job finishes with a status of Finished OK, all configured automation features for Finished OK jobs process normally.
:::

:::note
For jobs that can restart at a step (for example, z/OS jobs), an automatically restarted job starts at whatever restart step is specified at the time of restart.
:::

- **Retry**: Determines whether a job is automatically restarted after a failure. If the job fails due to an initialization error, OpCon does not restart the job. Initialization errors typically occur because the information required to start the job is invalid. Continuous recommends using Event Notification to trigger an alert for job initialization errors. Refer to [Event Notification](../events/introduction.md).

:::note
For Container-type jobs, SAM restarts all jobs on the subschedule when the Container job qualifies for **Retry on Failure**.
:::

- **Minutes Between Attempts**: Defines the interval in minutes between restart attempts. Valid range: `0`–`1440`.
- **Maximum Attempts**: Defines the maximum number of restart attempts. OpCon events, threshold updates, and Notification Manager triggers run only when the job fails after the last attempt. Valid range: `1`–`999`. Refer to [Threshold/Resource Updates](./threshold-resource-updates.md), [Defining Events](../events/defining.md), and [Using Notification Manager](../Files/UI/Enterprise-Manager/Using-Notification-Manager.md).

### Job Recurrence

The **Job Recurrence** feature is useful for situations where a job needs to run at regular intervals or at absolute times throughout the day, such as backing up files or processing batches of transactions. OpCon processes events and threshold/resource updates each time the job finishes with a status of Finished OK; however, subsequent job dependencies process only after the last run of the day.

:::note
If the job fails, all configured automation features for failed jobs process normally.
:::

- **Run Again**: Determines whether a job is automatically rescheduled after a successful run. Options are: **None**, **Recurring Instances**, or **Restart Offset**.

:::note
For Container-type jobs, SAM restarts all jobs on the subschedule when the Container job qualifies for **Run Again** after finishing OK.
:::

**None**

Specifies that no job rescheduling occurs after a successful run.

**Recurring Instances**

Reschedules a successful job to run at fixed times throughout the day.

- **Add**: Adds a new restart time in days, hours, and minutes. Specified times appear in the **Recurring Instance Time(s)** list in chronological order.

  :::tip Example
  To schedule a restart two additional days later at a specific time, enter `2` in the days field, enter the hour and minutes, and select **Add**.
  :::

- **Remove**: Removes an existing restart time.
- **Update**: Updates an existing restart time.
- **Action on Overlap of Job Recurrence**: Determines what happens when a previous job run overlaps the next scheduled start time. Options are:
  - **Start On Completion** (Default): Starts the next scheduled time as soon as the previous run finishes successfully.
  - **Skip**: Skips the run for that scheduled time after the previous run finishes successfully.

**Restart Offset**

Reschedules a successful job to run at regular intervals throughout the day.

- **Minutes from Start to Start**: Defines the number of minutes from the start time of one job iteration to the start time of the next iteration.

  :::caution
  **Minutes from Start to Start** must be longer than the job's run time. If the job runs longer than this interval, the job restarts immediately upon successful completion, which causes inconsistent start times over time.
  :::

- **Minutes from End to Start**: Defines the number of minutes from the end of one job iteration to the start time of the next iteration.
- **Latest Run Time (Offset)**: Defines the latest possible start time for the recurring job, expressed as an offset added to the schedule's date and scheduled start time in the daily tables.
- **Number of Runs**: Defines the total number of times the recurring job runs. Valid range: `2`–`999`.

:::note
If both **Latest Run Time (Offset)** and **Number of Runs** are configured, whichever condition is reached first stops the recurring job for that day.
:::

## Exception Handling

**Latest Start Offset passes before the job qualifies and the job does not run** — If the latest start time is exceeded before the job meets all conditions to start, the job is set to a **Missed Latest Start Time** status and does not automatically run. Either force-start the job manually or review and adjust the **Latest Start Offset** value to allow sufficient time for dependencies to resolve before the latest start window closes.

**Retry on Failure does not restart a job that failed due to an initialization error** — If a job fails due to an initialization error, such as invalid start information, OpCon does not automatically retry the job even when **Retry on Failure** is configured. Use Event Notification to alert administrators when a job initialization error occurs. Initialization errors typically indicate an invalid command line, missing batch user, or unresolvable token.

**Minutes from Start to Start shorter than the job's run time causes the job to restart immediately** — If the **Minutes from Start to Start** interval is shorter than the actual run time, the recurring job restarts immediately after each successful completion instead of at the intended interval, causing inconsistent start times. Set this value to a duration longer than the expected maximum run time.

## FAQs

**Q: What is a Job Frequency?**

A Job Frequency specifies the weeks, days, and calendar rules that determine when a job runs. Frequency information is always defined in the Job Master and controls which dates the job appears in the daily schedule.

**Q: Can a job have multiple frequencies?**

Yes. Multiple frequencies can be defined for a job. When more than one frequency qualifies for the same date, the highest-priority frequency is used and all others are ignored for that date.

**Q: What are Other Job Details in the context of a frequency?**

Other Job Details are additional scheduling settings — such as start offset, latest start offset, late-to-start/finish times, and recurring run settings — that are attached to a specific frequency, allowing different timing criteria to apply on different sets of dates.
