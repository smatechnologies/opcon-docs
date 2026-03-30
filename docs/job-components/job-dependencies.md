---
title: Job Dependencies
description: "Each OpCon job can depend on one or more OpCon jobs."
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

# Job Dependencies

**Theme:** Configure  
**Who Is It For?** Automation Engineer

## What Is It?

Each OpCon job can depend on one or more OpCon jobs. Dependencies help maintain workflow and can be internal to one schedule, defined across schedules, or defined across schedule dates.

The following fields apply to defining job dependencies:

- **Predecessor Schedule Name**: The name of the schedule containing the Predecessor Job. The dependent schedule can be the same schedule or any other single- or multi-instance schedule or subschedule
- **Predecessor Job Name**: The name of the job the Successor Job depends on. In most cases, the Predecessor Job Name must differ from the Job Name. If a job needs to depend on itself across days, set the Offset to a value other than zero — in that case, the Predecessor Job Name can match the Job Name

  ```shell
  If a job depends on a multi-instance job, the dependency applies to all instances of the dependent job that exist when the job processes.
  ```

- **Predecessor Instance Name**: The schedule instance to use for the Predecessor Job

  ```shell
  The Instance Name list is only available for Multi-Instance Schedules. The * (asterisk) option represents all instances.
  ```

- **Dependency Type**: The type of job dependency. Refer to the [Dependency Types](#Dependency_Types) table
- **Options**: The options set for the defined dependency. Refer to the [Dependency Options Details](#Dependency_Options_Details) table
- **Successor Frequency Name**: The frequency name if the job dependency applies to a specific frequency
  - Leave blank to associate the dependency at the job level for all runs
  - Select a frequency name to apply the dependency only when the job runs with that frequency
- **Successor Instance Name**: The schedule instance name for the job

| Dependency Type | Description |
| --- | --- |
| After | The job waits until the dependent job completes.<ul><li>If the dependent job does not exist in the Daily tables, the dependency is resolved immediately.</li><li>If the dependent job exists in the Daily tables, it must complete before the dependency is resolved.</li></ul> |
| Conflict | The job cannot start if the dependent job is running.<ul><li>Define the Conflict dependency for all jobs involved in the conflict.</li></ul>**Example**<br />If Job A has a Conflict dependency on Job B, Job B should also have a Conflict dependency on Job A. |
| Exclude | The job removes the dependent job from the Daily schedule during the Schedule Build process.<ul><li>If the excluded job is a Container job and the subschedule is already built, the subschedule is also removed.</li><li>If the job to be excluded is already running or finished, exclusion is no longer possible. Build all related schedules before their start time to ensure exclusions are handled before any schedule starts.</li></ul>|
| Requires | The job waits until the dependent job exists in the Daily tables and completes.<ul><li>If the dependent job does not exist in the Daily tables, the dependency cannot be resolved. The job remains in a Wait Job Dependency status until a user force starts it or the dependent job is added to the Daily schedule and completes.</li></ul>|

| Dependency Option | Description |
| --- | --- |
| Check All Days (C) | <ul><li>Enables the SAM to check all days listed in Schedule Operations.</li><li>Only available with the Conflict dependency type.</li></ul> |
| Failed | <ul><li>The dependency resolves when the dependent job fails.</li><li>Only available with the After or Requires dependency types.</li></ul> |
| Finished OK | <ul><li>The dependency resolves when the dependent job finishes OK.</li><li>Only available with the After or Requires dependency types.</li></ul> |
| Ignore Exit Code (E) | <ul><li>The dependency resolves whether the dependent job finishes OK or fails.</li><li>Only available with the After or Requires dependency types.</li></ul> |
| Job Name Like (L) | <ul><li>For Conflict dependencies, enables the SAM to check all jobs beginning with the characters specified for the dependent Job Name.</li><li>Use underscores (_) as single-character wildcards for a wider search.</li><li>Only available with the Conflict dependency type.</li></ul>**Example**<br />If "JobA" is defined for the dependent job, "JobA12," "JobAspecial," and "JobAbc" are all checked for a Conflict dependency. |
| Offset | <ul><li>The number of days offset from the schedule date to check for the dependent schedule and job. A positive offset checks future schedule dates; a negative offset checks past schedule dates.</li><li>Default: 000. Valid range: 000–999.</li><li>Available with all dependency types except Excludes. Not available for job dependencies within a multi-instance schedule.</li></ul>*Note: If the Schedule Name is a multi-instance schedule and the dependent schedule is the same schedule, the Day Offset is not available. Multi-instance schedules only support internal same-day dependencies or valid cross-schedule dependencies.* |

## When Would You Use It?

- You need to configure job dependency relationships in OpCon

## Why Would You Use It?

- **Job Dependencies**: Each OpCon job can depend on one or more OpCon jobs

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Predecessor Schedule Name | The name of the schedule containing the Predecessor Job. | — | — |
| Predecessor Job Name | The name of the job the Successor Job depends on. | — | — |
| Predecessor Instance Name | The schedule instance to use for the Predecessor Job | — | — |
| Dependency Type | The type of job dependency. | — | — |
| Options | The options set for the defined dependency. | — | — |
| Successor Frequency Name | The frequency name if the job dependency applies to a specific frequency | — | — |
| Successor Instance Name | The schedule instance name for the job | — | — |
## Exception Handling

**Requires dependency cannot be resolved when the predecessor job does not exist in the Daily tables** — A Requires dependency keeps the successor job in a Wait Job Dependency status indefinitely if the predecessor job is not present in the Daily tables, because the dependency requires both existence and completion — Either force start the successor job to bypass the dependency, or add the predecessor job to the Daily schedule so it can run and complete.

**Exclude dependency fails if the job to be excluded is already running or finished** — An Exclude dependency removes the specified job during the Schedule Build process; if the target job has already started running or finished before the build, exclusion is no longer possible — Build all related schedules before their start time to ensure exclusions are processed before any schedule starts.

**Conflict dependency is not bidirectional unless explicitly defined on both jobs** — A Conflict dependency prevents a job from starting if the conflicting job is running, but this restriction only applies to the job that has the dependency defined — Define a Conflict dependency on both Job A and Job B if both jobs must be prevented from running concurrently.

## FAQs

**Q: Can a job dependency span across schedules or dates?**

Yes. Dependencies can be defined within the same schedule, across different schedules, or across schedule dates using a positive or negative day offset value.

**Q: What is the difference between the After and Requires dependency types?**

After resolves immediately if the predecessor job does not exist in the Daily tables. Requires keeps the dependent job waiting even if the predecessor job does not exist.

**Q: How does a Conflict dependency work?**

A Conflict dependency prevents a job from starting if the specified predecessor job is currently running. For the conflict to work both ways, both jobs must define a Conflict dependency on each other.

## Glossary

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**Subschedule**: A schedule that runs as a child process within a Container job, allowing hierarchical, nested workflow automation where a parent schedule can trigger and monitor an entire child schedule.

**Container Job**: A job type that runs a subschedule. Container jobs enable hierarchical schedule structures and support properties and events just like standard jobs.

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
