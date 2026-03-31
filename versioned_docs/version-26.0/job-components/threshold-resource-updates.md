---
title: Threshold/Resource Updates
description: "Threshold and resource updates cause OpCon to change a threshold value or resource count when a job enters a specific status — such as Finished OK or Failed. These updates are defined at the job level or at a specific frequency level."
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

# Threshold/Resource Updates

**Theme:** Configure  
**Who Is It For?** Automation Engineer

## What Is It?

Threshold and resource updates cause OpCon to change a threshold value or resource count when a job enters a specific status — such as Finished OK or Failed. These updates are defined at the job level or at a specific frequency level.

## Threshold Updates

When a job enters a specific status, OpCon processes a *threshold update* to change the value of a defined threshold and stores it in the database.

The following fields apply to threshold updates:

- **Schedule Name**: The schedule name
- **Job Name**: The job name
- **Frequency Name**: The frequency name if the threshold update applies to a specific frequency
  - Leave blank to associate the update at the job level for all runs
  - Select a frequency to associate the update only when the job runs with that frequency
- **Job Status**: The job status that triggers the threshold update. Valid statuses:
  - **Exceeded Max Run Time**: The job ran longer than the specified Max Run Time
  - **Finished OK**: The job terminated successfully
  - **Late to Start**: Time passed the late to start time and the job has not started
  - **Late to Finish**: Time passed the late to finish time and the job is still running
  - **Job Still Attempting Start**: The job remains in Start Attempted status when SAM checks again after the configured interval
  - **Failed**: The job failed
  - **Missed Latest Start Time**: The job missed its latest start time
  - **Skipped**: The job was skipped
  - **Start Attempted**: Occurs just before job start information is sent to the agent. If the update is not processed, SAM puts the job On Hold
- **Threshold**: The threshold to update based on the job status
- **Value**: The value to assign to the threshold during the update

## Resource Updates

When a job enters a specific status, OpCon processes a *resource update* to change the maximum number of resources for a defined resource and stores it in the database.

The following fields apply to resource updates:

- **Schedule Name**: The schedule name
- **Job Name**: The job name
- **Frequency Name**: The frequency name if the resource update applies to a specific frequency
  - Leave blank to associate the update at the job level for all runs
  - Select a frequency to associate the update only when the job runs with that frequency
- **Job Status**: The job status that triggers the resource update. Valid statuses:
  - **Exceeded Max Run Time**: The job ran longer than the specified Max Run Time
  - **Finished OK**: The job terminated successfully
  - **Late to Start**: Time passed the late to start time and the job has not started
  - **Late to Finish**: Time passed the late to finish time and the job is still running
  - **Job Still Attempting Start**: The job remains in Start Attempted status when SAM checks again after the configured interval
  - **Failed**: The job failed
  - **Missed Latest Start Time**: The job missed its latest start time
  - **Skipped**: The job was skipped
- **Resource**: The resource to update based on the job status
- **Value**: The Max Resources value to set for the resource during the update

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Schedule Name | The schedule name | — | — |
| Job Name | The job name | — | — |
| Frequency Name | The frequency name if the threshold update applies to a specific frequency | — | — |
| Job Status | The job status that triggers the threshold update. | — | — |
| Value | The value to assign to the threshold during the update | — | — |
## FAQs

**Q: What is a threshold update used for?**

A threshold update changes the value of a named threshold when a job reaches a specific status. This allows job completion or failure to signal downstream jobs or external systems by updating threshold values they depend on.

**Q: Can a threshold or resource update be limited to a specific frequency?**

Yes. Leave the Frequency Name blank to apply the update for all runs. Select a specific frequency name to apply the update only when the job runs under that frequency.

**Q: What job statuses can trigger a threshold or resource update?**

Updates can be triggered by Finished OK, Failed, Exceeded Max Run Time, Late to Start, Late to Finish, Missed Latest Start Time, Skipped, Job Still Attempting Start, or Start Attempted.

## Glossary

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**LSAM (Local Schedule Activity Monitor)**: An agent installed on a target platform that runs jobs in the native language of that platform and communicates results back to SAM via SMANetCom over TCP/IP.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Threshold**: A numeric variable stored in the OpCon database used to control job execution. Jobs can be made dependent on threshold values, and OpCon events can update threshold values at runtime.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
