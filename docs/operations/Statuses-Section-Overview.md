---
title: Job and Schedule Statuses Overview
description: "Every job and schedule in the daily queue has a status reflecting its current state, and understanding those statuses helps you monitor and control automation workflows."
product_area: Operations
audience: Operations Staff, System Administrator
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - Operations Staff
  - System Administrator
  - Schedules
  - Jobs
last_updated: 2026-03-18
doc_type: conceptual
---
# Job and Schedule Statuses Overview


Every job and schedule in the daily queue has a status reflecting its current state. Understanding status values helps you interpret the daily queue and take corrective action when something fails, stalls, or must be held.

## What are status categories?

Job statuses are grouped into categories that reflect the lifecycle of a job from initial qualification through completion. The categories are:

| Category | What it means |
|---|---|
| Held | The job is suspended and will not start until released. |
| Waiting | The job has not yet started and is waiting on a dependency, time, machine availability, or conflict resolution. |
| Running | The job is actively being started, started, or running on an agent. |
| Finished OK | The job completed successfully, either naturally or as manually marked. |
| Failed | The job ended with an error, failed initialization, or was manually marked failed. |
| Cancelled | The job is disabled and will not run unless manually restarted. |
| Skipped | The job was skipped; downstream job dependencies are met as if the job ran. |
| Missed Start Time | The latest allowed start time passed before the job started. |
| Under Review | A user marked the job to indicate corrective action is in progress. |
| Fixed | A user marked the job to indicate corrective action is complete. |

Schedule statuses follow a simpler lifecycle: **Wait to Start**, **Wait Container Job**, **On Hold**, **Parent Hold**, **Starting**, **In Process**, **Started by User**, **Started by Container Job**, and **Completed**.

## What is in this section?

| Page | Description |
|---|---|
| [Schedule and Job Status Descriptions](./status-descriptions.md) | Complete list of all job and schedule statuses with definitions and allowed status changes |
| [Status Change Commands](./status-change-commands.md) | Actions available to change job and schedule status, including Hold, Release, Start, Restart, Cancel, Kill, Skip, Mark Finished OK, Mark Failed, Under Review, and Fixed |

## Related topics

- [Building Schedules](./building-schedules.md)
- [Editing Schedules](./editing-schedules.md)
