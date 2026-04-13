---
title: Job Actions Overview
description: "Job actions let you view job configuration, status history, output logs, and dependency maps — and change job status, add jobs to running schedules, or delete jobs from the queue."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: conceptual
---

**Theme:** Overview | **Who is it for?** Operations staff who monitor and control individual jobs in the daily queue

## What Is It?

Job actions let you view job configuration, status history, output logs, and dependency maps — and change job status, add jobs to running schedules, or delete jobs from the queue.

## When would you use this section?

- A job has failed and you need to review its output and restart it
- You need to view a job's dependency chain before making changes
- You want to add a job to a schedule that is already running today
- You need to change a job's status (Hold, Release, Skip, Cancel, Force Finish, etc.)

## What is in this section?

| Topic | Description |
|-------|-------------|
| View Job Configuration | Review the current job settings from within Operations |
| Access Job Summary | Quick summary of a job's current status and last run |
| Use PERT View | Visualize the full dependency graph for a job |
| View Job Output | Access the real-time and historical output for a completed or running job |
| Access Job Executions History | Review the execution history for a job across multiple dates |
| Perform Job Status Changes | Change job status — Hold, Release, Skip, Cancel, Restart, and more |
| Daily Job Definition | View and edit the daily instance of a job's definition |
| Add Jobs to Daily Schedules | Insert a new job into a schedule that is already running |
| Delete Schedules and Jobs | Remove a job or schedule from the daily queue |

## Glossary

| Term | Definition |
| --- | --- |
| Dependency (Job Dependency) | A condition that must be met before a job is allowed to start. OpCon supports job dependencies, threshold dependencies, resource dependencies, and expression dependencies. |
| Job | A task or activity defined in OpCon, such as running a program on a remote machine, transferring files, or running a sub-schedule. |
| Role | A named collection of privileges that can be assigned to one or more user accounts. Users in a role inherit all of that role's privileges. |
| Schedule | A named group of jobs in OpCon that represents a business process. Schedules are built each day based on their defined frequencies and calendars. |
| Solution Manager (SM) | The browser-based web interface for OpCon. Provides access to operations, self-service, vision dashboards, and configuration. |

## FAQs

**Q: What job statuses can I set from Job Actions?**

You can Hold, Release, Skip, Cancel, Restart, and Force Finish a job. See Perform Job Status Changes for the full list and required privileges.

**Q: Who can perform job actions?**

Operations staff and administrators with the appropriate role privileges. Review access and role requirements with your OpCon system administrator before making changes.
