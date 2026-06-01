---
title: Adding Jobs to Daily Schedules
description: "Adding jobs to Daily schedules takes a job from the Job Master and adds it to a specific Daily schedule."
product_area: Operations
audience: Operations Staff, System Administrator
version_introduced: "[see release notes]"
tags:
  - Procedural
  - Operations Staff
  - System Administrator
  - Schedules
last_updated: 2026-06-01
doc_type: procedural
---

# Adding Jobs to Daily Schedules

Adding a job to a Daily schedule pulls the job definition from the Job Master and places it in a specific Daily schedule for a date that is already built. You must specify the schedule, job, and frequency. The frequency determines all frequency-related job components except **Build Status**, which you set to **Release** or **On Hold** at the time you add the job.

:::note
OpCon also supports adding jobs to Daily schedules through OpCon events. Use the `$JOB:ADD` event to add a job in Release status or the `$JOB:ADDHLD` event to add a job in On Hold status. For syntax and parameters, refer to [Job-Related Events](../events/types.md#job-related-events).
:::

## Requirements

- The schedule date must already be built before you can add a job to it.
- Your role must have the **Add Jobs To Daily Schedules** function privilege for the job's department.
- The job must have at least one frequency defined in the Job Master.
- A job that is currently running, waiting, or held cannot be added again. A job in a completed or failed state can be replaced.

## Instance and machine behavior

When you add a job, you can optionally configure instance properties and machine targeting:

- If the job has no defined instances, you can enter property definitions for a specific job instance.
- If the job has one or more Instance Definitions with predefined user properties, you can enter property definitions for a specific job instance. Refer to [Instance Definition](../job-components/instances.md).
- If the job is configured to run on each machine in a machine group, you can select a specific machine from the group.
- If you do not supply specific property definitions for a multi-instance job, OpCon adds all defined instances for the job.

## Add a job to a Daily schedule in Solution Manager

To add a job to a Daily schedule, complete the following steps:

1. In Solution Manager, go to **Operations**.
2. Select the Daily schedule you want to add a job to.
3. In the right panel, select the **Add Job(s)** button.

   The **Add Job(s)** dialog opens, showing the jobs defined in the Job Master for that schedule.

4. Optionally, type in the search field to filter jobs by name.
5. Select the option next to one or more jobs to add.

   :::note
   Jobs that are currently running, waiting, or held are unavailable for selection. A job shown as "Will Replace" is in a completed or failed state and will be replaced when added.
   :::

6. Select **Next**.

   The configuration step opens.

7. For each job, set the following fields:

   | Field | Description |
   |---|---|
   | **Build Status** | Select the **Release** option to allow the job to run immediately when conditions are met, or the **On Hold** option to add the job in a held state. |
   | **Frequency** | Select the frequency to use. The first frequency defined on the job is selected by default. |
   | **Instance Properties** | Enter instance property definitions in `key=value` format, separated by semicolons. For multi-instance jobs, select **All Instances** to add all defined instances. |
   | **Instance Machine** | Appears only when the job is configured to run on each machine in a machine group. Select a specific machine or select **All Machines** to add one job instance per machine. |

8. Select **Next**.

   The summary screen displays the configuration for each selected job.

9. Review the configuration, then select **Submit**.

**Result:** OpCon sends the add job request to the server. The jobs appear in the Daily schedule with the status you selected.

## Add a job via an OpCon event

You can add a job to a Daily schedule automatically by sending a `$JOB:ADD` or `$JOB:ADDHLD` event. Both events accept the same parameters.

**Syntax:**

```
$JOB:ADD,schedule-date,schedule-name,job-name,frequency-name[,job-properties][,reopen-schedule][,apply-exceptions]
$JOB:ADDHLD,schedule-date,schedule-name,job-name,frequency-name[,job-properties][,reopen-schedule][,apply-exceptions]
```

| Parameter | Required | Description |
|---|---|---|
| `schedule-date` | Yes | The date of the Daily schedule in which to add the job. |
| `schedule-name` | Yes | The name of the schedule. |
| `job-name` | Yes | The name of the job to add. |
| `frequency-name` | Yes | The frequency to use when adding the job. |
| `job-properties` | No | Semicolon-separated list of `name=value` property pairs for job instances. |
| `reopen-schedule` | No | `Y` to reopen the schedule if it is already complete; `N` (default) to leave it as-is. |
| `apply-exceptions` | No | `Y` to apply job exceptions when adding; `N` (default) to skip exceptions. |

For full event documentation and examples, refer to [Job-Related Events](../events/types.md#job-related-events).
