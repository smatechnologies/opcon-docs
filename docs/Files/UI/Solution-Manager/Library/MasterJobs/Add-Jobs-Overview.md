---
title: Master Jobs Overview
description: "Master jobs are the permanent definitions that OpCon copies into the daily queue during schedule build."
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

# Master Jobs Overview

Master jobs are the permanent definitions that OpCon copies into the daily queue during schedule build. From the **Library** > **Master Jobs** page you can add new jobs, copy an existing job to reuse its configuration, move a job to a different schedule, view all places a job is referenced before deleting it, and permanently delete jobs that are no longer needed.

## In This Section

| Page | Description |
|------|-------------|
| [Adding Master Jobs](Adding-Master-Jobs.md) | Create a new job definition in a master schedule |
| [Copying Master Jobs](Copying-Master-Jobs.md) | Duplicate a job and place it in the same or a different schedule |
| [Moving Master Jobs](Moving-Master-Jobs.md) | Reassign a job to a different master schedule |
| [Deleting Master Jobs](Deleting-Master-Jobs.md) | Permanently remove a job definition |
| [Viewing Master Job Cross References](Viewing-Master-Jobs-Cross-References.md) | See all schedules and jobs that reference the selected job |
| [View and Update Master Jobs Overview](Viewing-And-Updating-Master-Jobs/Viewing-Updating-Overview.md) | Configure all job settings — job details, frequencies, dependencies, and more |

## Glossary

| Term | Definition |
| --- | --- |
| Access Code | A named object used to apply record-level security to individual job records, restricting which roles can view or modify specific jobs. |
| Department | A named object used to apply function-level security to individual job records. A single department can secure as many jobs as necessary. |
| Frequency | A named rule that specifies the recurring days on which a schedule or job runs. OpCon uses frequencies during the schedule build process. |
| Job | The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. |
| Master Schedule | The template definition of a schedule stored in OpCon's master tables. Changes to the master affect all future builds but not already-built daily schedules. |
| Role | A named collection of privileges that can be assigned to one or more user accounts. Users in a role inherit all of that role's privileges. |
| Schedule | A named group of jobs in OpCon that represents a business process. Schedules are built each day based on their defined frequencies and calendars. |
| Schedule Build | The process by which OpCon creates daily schedule instances from master schedule definitions, applying frequencies, calendars, and properties. |
| Solution Manager | The browser-based web interface for OpCon. Provides access to operations, self-service, vision dashboards, and configuration. |
