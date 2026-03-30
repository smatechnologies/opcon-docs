---
title: Job Frequency
description: "The Frequency specifies the weeks, days, and calendar information for when a job is to be run."
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

**Theme:** Configure  
**Who Is It For?** Automation Engineer

## What Is It?

The **Frequency** specifies the weeks, days, and calendar information for when a job is to be run. For additional information, refer to [Job and Schedule Frequencies](../automation-concepts/frequencies.md). Frequency information is defined in the Job Master.

The following information applies to defining a frequency:

- **Frequency Name**: Defines the unique name of the frequency
- **Frequency Details**: Defines the days that qualify for the frequency. For additional information, refer to [Frequency Definition](../automation-concepts/frequencies.md#frequency-definition)
- **Priority**: Defines the priority of the frequency regarding other frequencies defined for the job. For additional information, refer to [Multiple Frequencies and Frequency Priority](../automation-concepts/frequencies.md#multiple-frequencies-and-frequency-priority)
- **Advanced Frequency Settings**: Defines the advanced frequency features applied to a job. For additional information, refer to [Advanced Frequency Settings](../automation-concepts/frequencies.md#advanced-frequency-settings)

## When Would You Use It?

- Use this feature when a job is to be run

## Why Would You Use It?

- **Job Frequency**: The **Frequency** specifies the weeks, days, and calendar information for when a job is to be run

## Other Job Details

The other job details are attached to a defined frequency. This provides the flexibility to define different criteria on different sets of dates. Other job detail information includes:

- [Job Build Status](#Job)
- [Start Offset](#Start)
- [Latest Start Offset](#Latest)
- [Late to Start/Late to Finish](#Late)
- [Start Time Estimation](#Start2)
- [Job Execution](#Job2)
- [Retry on Failure](#Retry)
- [Job Recurrence](#Job3)

### Job Build Status

The Job Build Status determines the default status of the job when it is built with the schedule for the associated frequency. Status choices include:

- **On Hold**: Indicates that the SAM will not automatically start the job when the schedule becomes active, even if all other requirements (dependencies, start time, etc.) have been met
- **Released**: Indicates that the job will start when the schedule becomes active and all other requirements have been met
- **Do Not Schedule**: Indicates that the job will not be built with the schedule when the associated frequency qualifies
  - To use the "Do Not Schedule" feature to ignore a frequency, place the associated frequency as the lowest priority
  - To use the "Do Not Schedule" feature to exclude specific dates, place the associated frequency with a higher priority than the frequency containing the dates needing exclusion
- **To Be Skipped**: The job will be built with a default status of To Be Skipped
- **Disable Frequency**: If set, OpCon will not evaluate the selected frequency when forecasting or building

### Start Offset

Defines the positive number of hours and minutes to offset the start time of the job from the start time of the schedule. To correctly calculate the offset, the Absolute or Relative option must be set for the Start Offset:

- **Absolute**: Indicates that the job's Start Time will be calculated from the **assigned** start time of the schedule
- **Relative**: Indicates that the job's Start Time will be calculated from the time the schedule was **released** for execution

### Latest Start Offset

Defines the positive number of hours and minutes to offset the latest start time of the job from the start time of the schedule. If the latest start time is passed before the job qualifies for execution, the job is set to a Missed Latest Start Time status and will not automatically run. The default value of 00:00 disables the feature. To correctly calculate the offset, the Absolute or Relative option must be set for the Latest Start:

- **Absolute**: Indicates that the job's Latest Start Time will be calculated from the **assigned** start time of the schedule
- **Relative**: Indicates that the job's Latest Start Time will be calculated from the time the schedule was **released** for execution

### Late to Start/Late to Finish

The Late to Start and Late to Finish settings determine the time to flag a job as late. If these options are configured, and the late time arrives, then OpCon events on the job, Threshold Updates on the job, and Notification Manager triggers can send notification. For additional information, refer to [Threshold/Resource Updates](./threshold-resource-updates.md) and [Defining Events](../events/defining.md) in the **OpCon Event** online help, and [Using Notification Manager](../Files/UI/Enterprise-Manager/Using-Notification-Manager.md) in the **Enterprise Manager** online help.

- **Late to Start Offset**: Defines the positive number of hours and minutes to offset the Late to Start time from the job Start Offset (taking into consideration the Absolute or Relative setting). If the time arrives and the job has not yet started, it will be set to a status of Late to Start. The time at which the job will be set to a status of Late to Start is calculated by adding the **Schedule Start Time + Job Start Offset + Late to Start**. The default value of 00:00 disables this feature
- **Late to Finish Offset**: Defines the positive number of hours and minutes to offset the Late to Finish time from the job Start Offset (taking into consideration the Absolute or Relative setting). If the time arrives and the job is still running, it will be set to a status of Running; Late to Finish. The time at     which the job will be set to a status of Late to Finish is calculated by adding the **Schedule Start Time + Job Start Offset + Late to Finish**. The default value of 00:00 disables this feature

### Start Time Estimation

- **Estimation Source**: Defines the method for the SMA Start Time Calculator to use when predicting the job's Estimated Start Time. Options include:
  - **Calculated**: (Default) Use the job's start offset value and dependency chain to calculate the estimated start time. When a job has no external dependencies, this is the best option
  - **History**: Use the job's average start time by frequency from history as the estimated start time. The History option is useful when a job depends on external events or user interaction to start the job
  - **User Defined**: Use a hard-coded Predicted Start Time in days, hours, and minutes offset from the schedule's start time. The User Defined option is useful when the History option does not prove to be an accurate enough estimated start time
- **Estimated Run Time**: Defines the estimated runtime in minutes for the job. This value can be manually configured; however, Continuous recommends setting up a job to run the SMA_JOBAVG stored procedure to automatically calculate the value on a regular basis. For information on job averaging, refer to [SMA Job Average](../objects/schedules.md#smautility-schedule)

### Job Execution

- **SAM Priority**: Defines a number for the job's priority, zero (0) being the lowest. If the SAM can submit more jobs at the same time to a machine than the machine allows, the SAM uses the priority values to submit the most important jobs first
- **Max Run Time**: Defines the maximum run time in minutes for the
    job. If the job has run for the specified amount of time, it is left running, but set to a status of Exceeded Max Run Time. If this option is configured and the job runs too long, then OpCon events, threshold updates, and Notification Manager triggers can be processed for the job. For additional information, refer to [Threshold/Resource Updates](./threshold-resource-updates.md) and [Defining Events](../events/defining.md) in the **OpCon Events** online help, and [Using Notification     Manager](../Files/UI/Enterprise-Manager/Using-Notification-Manager.md) in the **Enterprise Manager** online help. The default value of 0 disables this feature.

### Retry on Failure

The Retry on Failure feature is useful for situations where a job may fail because of timing (e.g., a database is currently unavailable, or a file has not yet arrived). OpCon will process the events, threshold/resource updates, and subsequent job dependencies only upon job failure after the maximum retry.

:::note
If the job finishes OK, any configured OpCon automation features for Finished OK jobs will process.
:::

:::note
For jobs that can restart at a step (e.g., z/OS jobs), a job that is automatically restarted after a failure starts at whatever restart step is specified at the time.
:::

- **Retry Information**: Determines if a job is automatically restarted after a job failure. If the job fails because of an initialization error, OpCon does not restart the job. Initialization errors usually occur because the information to start the job is invalid. Continuous recommends using Event Notification to trigger a notification for Job Initialization errors. For more information, refer to [Event Notification](../events/introduction.md)

:::note
If the job is a "Container" type job, the SAM restarts all jobs on the subschedule when the Container job qualifies to "Retry on Failure."
:::

- **Minutes Between Attempts**: Defines the interval between restart attempts in minutes
- **Maximum Attempts**: Defines the maximum number of restart attempts. OpCon events on the job, threshold updates on the job, and Notification Manager triggers will only run when the job fails after the last attempt. For additional information, refer to [Threshold/Resource Updates](./threshold-resource-updates.md) and [Defining Events](../events/defining.md) in the **OpCon Events** online help, and [Using Notification Manager](../Files/UI/Enterprise-Manager/Using-Notification-Manager.md) in the **Enterprise Manager** online help

### Job Recurrence

The Job Recurrence feature is useful for situations where a job needs to run at regular intervals and/or absolute times throughout the day (e.g., backing up files, processing groups of credit card transactions). OpCon will process the events, and threshold/resource updates every time the job finishes OK; however, subsequent job dependencies will only process after the last run of the day.

:::note
If the job fails, any configured OpCon automation features for Failed jobs will process.
:::

- **Run Again**: Determines if a job is automatically rescheduled after a successful run. Available options are: None, Recurring Instances, or Restart Offset

:::note
If the job is a "Container" type job, the SAM restarts all jobs on the subschedule when the Container job qualifies to "Run Again" when the job finishes OK.
:::

- **None**: Specifies that no job reschedule will take place after a successful run

- **Recurring Instances**: Allows you to reschedule a successful job to run at fixed times throughout the day. Available options are:

  - **Add**: Adds new restart times in days, hours, and minutes. Specified times appear in the Recurring Instance Time(s) list box in chronological order
    :::tip Example
    If you want a particular restart time to run two additional days, then enter "2" in the field to the left of day(s) at, enter the absolute hour and/or minutes in the entry field to the right of days at, and select **Add**.
    :::
  - **Remove**: Deletes existing restart times
  - **Update**: Updates existing restart times
  - **Action on Overlap of Job Recurrence**: Indicates what happens if a previous job run time overlaps the next scheduled start time. Available options are:
    - **Start on Completion** (Default): Starts the next scheduled time as soon as the previous run finishes successfully
    - **Skip**: Skips the run for \[that\] scheduled time after the previous run finishes successfully

- **Restart Offset**: Allows you to reschedule a successful job to run at regular intervals throughout the day. Available options are:

  - **Minutes from Start to Start**: Defines the number of minutes from the start time of one iteration of the job to the start time for the next iteration of the job
    :::caution
    Minutes from Start to Start should be longer than the run time of the job. If the job runs for longer than this interval, the job restarts immediately upon a successful completion. As a consequence, reoccurring jobs may not start consistently over time.
    :::
  - **Minutes from End to Start**: Defines the number of minutes from the end of one iteration of the job to the start time for the next iteration of the job
  - **Latest Run Time**: Defines the latest possible start time for the recurring job based on the schedule's start time. This value is an offset that will be added to the schedule's defined Schedule Date and scheduled Start Time in the Daily tables
  - **Number of Runs**: Defines the total number of times for the recurring job to run

  :::note
  If both the **Latest Run Time** and **Number of Runs** are configured for a job, the one that occurs first will cause the end of the recurring job for that day.
  :::

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Frequency Name | Defines the unique name of the frequency | — | — |
| Frequency Details | Defines the days that qualify for the frequency. | — | — |
| Priority | Defines the priority of the frequency regarding other frequencies defined for the job. | — | — |
| Advanced Frequency Settings | Defines the advanced frequency features applied to a job. | — | — |
| On Hold | Indicates that the SAM will not automatically start the job when the schedule becomes active, even if all other requirements (dependencies, start time... | status of To Be Skipped | — |
| Released | Indicates that the job will start when the schedule becomes active and all other requirements have been met | status of To Be Skipped | — |
| Do Not Schedule | Indicates that the job will not be built with the schedule when the associated frequency qualifies | status of To Be Skipped | must be set for the Start Offset: |
| To Be Skipped | The job will be built with a default status of To Be Skipped | status of To Be Skipped | must be set for the Start Offset:  - **Absolute**: Indicates that the job's Start Time w |
| Disable Frequency | If set, OpCon will not evaluate the selected frequency when forecasting or building | — | must be set for the Start Offset:  - **Absolute**: Indicates that the job's Start Time w |
| Absolute | Indicates that the job's Start Time will be calculated from the **assigned** start time of the schedule | — | must be set for the Latest Start:  - **Absolute**: Indicates that the job's Latest Start |
| Relative | Indicates that the job's Start Time will be calculated from the time the schedule was **released** for execution | — | must be set for the Latest Start:  - **Absolute**: Indicates that the job's Latest Start |
| Late to Start Offset | Defines the positive number of hours and minutes to offset the Late to Start time from the job Start Offset (taking into consideration the Absolute or... | 00:00 disables this feature | — |
| Late to Finish Offset | Defines the positive number of hours and minutes to offset the Late to Finish time from the job Start Offset (taking into consideration the Absolute o... | 00:00 disables this feature | — |
| Estimation Source | Defines the method for the SMA Start Time Calculator to use when predicting the job's Estimated Start Time. | — | — |
| Estimated Run Time | Defines the estimated runtime in minutes for the job. | 0 disables this feature | — |
| SAM Priority | Defines a number for the job's priority, zero (0) being the lowest. | 0 disables this feature | — |
| Max Run Time | Defines the maximum run time in minutes for the | 0 disables this feature | — |
| Retry Information | Determines if a job is automatically restarted after a job failure. | — | — |
| Minutes Between Attempts | Defines the interval between restart attempts in minutes | — | — |
| Maximum Attempts | Defines the maximum number of restart attempts. | — | — |
| Run Again | Determines if a job is automatically rescheduled after a successful run. | — | — |
| None | Specifies that no job reschedule will take place after a successful run | — | — |
| Recurring Instances | Allows you to reschedule a successful job to run at fixed times throughout the day. | — | — |
| Restart Offset | Allows you to reschedule a successful job to run at regular intervals throughout the day. | — | — |
## Exception Handling

**Latest Start Offset passes before the job qualifies and the job does not run** — If the latest start time is exceeded before the job meets all its conditions to start, the job is set to a Missed Latest Start Time status and will not automatically run — Either force-start the job manually or review and adjust the Latest Start Offset value to allow sufficient time for dependencies to resolve before the latest start window closes.

**Retry on Failure does not restart a job that failed due to an initialization error** — If a job fails due to an initialization error (such as invalid start information), OpCon does not automatically retry it, even when Retry on Failure is configured — Use Event Notification to trigger an alert when a job initialization error occurs so administrators can investigate and correct the configuration; initialization errors typically indicate an invalid command line, missing batch user, or unresolvable token.

**Minutes from Start to Start shorter than the job's run time causes the job to restart immediately upon completion** — If the Minutes from Start to Start interval is shorter than the actual run time of the job, the recurring job restarts immediately after each successful completion instead of at the intended interval, causing inconsistent start times over time — Set the Minutes from Start to Start value to a duration longer than the expected maximum run time of the job.

## FAQs

**Q: What is a Job Frequency?**

A Job Frequency specifies the weeks, days, and calendar rules that determine when a job is run. Frequency information is always defined in the Job Master and controls which dates the job appears in the Daily schedule.

**Q: Can a job have multiple frequencies?**

Yes. Multiple frequencies can be defined for a job. When more than one frequency qualifies for the same date, the highest-priority frequency is used and all others are ignored for that date.

**Q: What are Other Job Details in the context of a frequency?**

Other Job Details are additional scheduling settings (such as start offset, latest start offset, late-to-start/finish times, and recurring run settings) that are attached to a specific frequency, allowing different timing criteria to apply on different sets of dates.

## Glossary

**SMA Start Time Calculator**: Periodically recalculates estimated start times for all jobs in the OpCon daily tables and updates the database to keep start time estimates current.

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Subschedule**: A schedule that runs as a child process within a Container job, allowing hierarchical, nested workflow automation where a parent schedule can trigger and monitor an entire child schedule.

**Container Job**: A job type that runs a subschedule. Container jobs enable hierarchical schedule structures and support properties and events just like standard jobs.

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Threshold**: A numeric variable stored in the OpCon database used to control job execution. Jobs can be made dependent on threshold values, and OpCon events can update threshold values at runtime.
