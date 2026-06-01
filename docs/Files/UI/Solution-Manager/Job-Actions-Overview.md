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
  - Operations
last_updated: 2026-03-18
doc_type: conceptual
---

## Overview

Job actions let you view job configuration, status history, output logs, and dependency maps — and change job status, add jobs to running schedules, or delete jobs from the queue.

Common scenarios where job actions apply:

- A job has failed and you need to review its output and restart it.
- You need to view a job's dependency chain before making changes.
- You want to add a job to a schedule that is already running today.
- You need to change a job's status (Hold, Release, Skip, Cancel, Restart, and more).

## In This Section

| Topic | Description |
|-------|-------------|
| [Viewing Job Configuration](Viewing-Job-Configuration.md) | Review the current job settings from within Operations. |
| [Accessing Job Summary](Accessing-Job-Summary.md) | View a quick summary of a job's current status and last run. |
| [Using PERT View](Using-PERT-View.md) | Visualize the full dependency graph for a job. |
| [Viewing Job Output](Viewing-Job-Output.md) | Access the real-time and historical output for a completed or running job. |
| [Accessing Job Executions History](Accessing-Job-Executions-History.md) | Review the run history for a job across multiple dates. |
| [Performing Job Status Changes](Performing-Job-Status-Changes.md) | Change job status — Hold, Release, Skip, Cancel, Restart, and more. |
| [Accessing Daily Job Definition](Accessing-Daily-Job-Definition.md) | View and edit the daily instance of a job's definition. |
| [Adding Jobs to Daily Schedules](Adding-Jobs-to-Daily-Schedules.md) | Insert a new job into a schedule that is already running. |
| [Deleting Schedules and Jobs](Deleting-Schedules-and-Jobs.md) | Remove a job or schedule from the daily queue. |

## Glossary

| Term | Definition |
| --- | --- |
| Dependency (Job Dependency) | A condition that must be met before a job is allowed to start. OpCon supports job dependencies, threshold dependencies, resource dependencies, and expression dependencies. |
| Job | A named unit of work defined in OpCon, such as running a program on a remote machine, transferring files, or running a sub-schedule. |
| Role | A named collection of privileges that can be assigned to one or more user accounts. Users in a role inherit all of that role's privileges. |
| Schedule | A named group of jobs in OpCon that represents a business process. Schedules are built each day based on their defined frequencies and calendars. |
| Solution Manager | The browser-based web interface for OpCon. Provides access to operations, self-service, vision dashboards, and configuration. |

## FAQs

**Q: What job statuses can I set from Job Actions?**

You can Hold, Release, Skip, Cancel, Kill, Start, Restart, Restart on Hold, Force Restart, Restart On Step, Mark Finished OK, Mark Failed, Mark Under Review, and Mark Fixed a job. See [Performing Job Status Changes](Performing-Job-Status-Changes.md) for the full list and required privileges.

**Q: Who can perform job actions?**

Operations staff and administrators with the appropriate role privileges. Review access and role requirements with your OpCon system administrator before making changes.
