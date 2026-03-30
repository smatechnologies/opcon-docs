---
title: Threshold/Resource Dependencies
description: "Threshold and resource dependencies allow a job to wait until a threshold reaches a specified numeric value or a resource pool has enough available units before it is eligible to start. These dependencies are defined at the job level or at a specific frequency level."
product_area: Job Components
audience: Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - Automation Engineer
  - Jobs
last_updated: 2026-03-18
doc_type: conceptual
---

# Threshold/Resource Dependencies

**Theme:** Configure  
**Who Is It For?** Automation Engineer

## What Is It?

Threshold and resource dependencies allow a job to wait until a threshold reaches a specified numeric value or a resource pool has enough available units before it is eligible to start. These dependencies are defined at the job level or at a specific frequency level.

## When Would You Use It?

- You need to configure or manage Threshold/Resource Dependencies in OpCon

## Why Would You Use It?

- **Centralized control**: Managing Threshold/Resource Dependencies through OpCon provides consistent oversight and a full audit trail for all changes

## Threshold Dependencies

Each OpCon job can depend on the numeric value of a defined *threshold*. Refer to [Thresholds](../objects/thresholds.md) for additional information. OpCon stores threshold dependencies in the database after they are defined for a job.

Fields for defining threshold dependencies:

- **Schedule Name**: The name of the schedule
- **Job Name**: The name of the job
- **Frequency Name**: The name of the frequency if the threshold dependency applies to a specific frequency
  - Leave blank to associate the dependency at the job level and always include it for the job
  - Select a frequency name to associate the dependency only when the job runs with that frequency
- **Threshold Name**: The threshold whose current value must meet the Operator and Value requirements when SAM performs the dependency check
- **Operator**: The operator SAM uses to compare the current threshold value to the dependent Value. Valid operators: EQ (equal), GT (greater than), LT (less than), GE (greater than or equal to), LE (less than or equal to), NE (not equal)
- **Value**: The dependent value SAM applies the Operator to when comparing against the current threshold value

## Resource Dependencies

Each OpCon job can depend on a specific number of resources being available, requiring one or more resources from the total allocated to the resource object. Refer to [Resources](../objects/resources.md) for additional information. OpCon stores resource dependencies in the database after they are defined for a job.

Fields for defining resource dependencies:

- **Schedule Name**: The name of the schedule
- **Job Name**: The name of the job
- **Frequency Name**: The name of the frequency if the resource dependency applies to a specific frequency
  - Leave blank to associate the dependency at the job level and always include it for the job
  - Select a frequency name to associate the dependency only when the job runs with that frequency
- **Resource**: The resource that must have enough available to meet the Value requirement
- **Value**: The number of resources the job requires
  - SAM checks that the number of available resources exceeds the number required before the dependency is met
  - If the value is **All**, the job must consume all resources when it runs. SAM locks the resource when the job qualifies so no additional jobs with the same or lower priority can use it, then waits until Resources In Use is zero before starting the job

:::note
If the job is placed On Hold for more than two minutes while waiting for the value to become zero, the SAM will release the lock.
:::

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Schedule Name | The name of the schedule | — | — |
| Job Name | The name of the job | — | — |
| Frequency Name | The name of the frequency if the threshold dependency applies to a specific frequency | — | — |
| Threshold Name | The threshold whose current value must meet the Operator and Value requirements when SAM performs the dependency check | — | — |
| Operator | The operator SAM uses to compare the current threshold value to the dependent Value. | — | — |
| Value | The dependent value SAM applies the Operator to when comparing against the current threshold value | — | — |
## FAQs

**Q: What is a threshold dependency used for?**

A threshold dependency causes a job to wait until a named threshold's current value meets a specified condition (such as equal to, greater than, or less than a target value). This is useful for coordinating jobs based on conditions that external systems can control.

**Q: Can a threshold or resource dependency apply only to a specific frequency?**

Yes. Leave the Frequency Name blank to apply the dependency for all runs. Select a specific frequency name to apply the dependency only when the job runs under that frequency.

**Q: How does a resource dependency work?**

A resource dependency requires a certain number of resources to be available before the job can start. The job waits until the required count of the specified resource is available, helping prevent overloading shared resources across schedules and machines.

## Glossary

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Threshold**: A numeric variable stored in the OpCon database used to control job execution. Jobs can be made dependent on threshold values, and OpCon events can update threshold values at runtime.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
