---
title: Add Jobs Overview
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

**Theme:** Overview | **Who is it for?** Automation engineers who create and manage master job definitions

## What Is It?

Master jobs are the permanent definitions that OpCon copies into the daily queue during schedule build. They can be added from scratch, copied from existing jobs, moved between schedules, or reviewed for cross-references before deletion.

## When would you use this section?

- Add a new job to a master schedule
- Copy an existing job to create a similar one with minimal rework
- Move a job from one schedule to another
- See all places a job is referenced before deleting it

## What is in this section?

| Page | Description |
|------|-------------|
| Add Master Jobs | Create a new job definition in a master schedule |
| Copy Master Jobs | Duplicate a job and place it in the same or different schedule |
| Move Master Jobs | Reassign a job to a different master schedule |
| Delete Master Jobs | Permanently remove a job definition |
| View Cross-References | See all schedules and jobs that reference the selected job |
| View and Update Master Jobs | Configure all job settings — task details, frequencies, dependencies, and more |

## Glossary

| Term | Definition |
| --- | --- |
| Job | A task or activity defined in OpCon, such as running a program on a remote machine, transferring files, or running a sub-schedule. |
| Master Schedule | The template definition of a schedule stored in OpCon's master tables. Changes to the master affect all future builds but not already-built daily schedules. |
| Role | A named collection of privileges that can be assigned to one or more user accounts. Users in a role inherit all of that role's privileges. |
| Schedule | A named group of jobs in OpCon that represents a business process. Schedules are built each day based on their defined frequencies and calendars. |
| Schedule Build | The process by which OpCon creates daily schedule instances from master schedule definitions, applying frequencies, calendars, and properties. |
| Solution Manager (SM) | The browser-based web interface for OpCon. Provides access to operations, self-service, vision dashboards, and configuration. |

## FAQs

**Q: What does the Add Jobs Overview cover?**

Master jobs are the permanent definitions that OpCon copies into the daily queue during schedule build. They can be added from scratch, copied from existing jobs, moved between schedules, or reviewed for cross-references before deletion.

**Q: Who manages Solution Manager - Library in OpCon?**

Automation engineers and administrators are responsible for Solution Manager - Library in OpCon.

**Q: Where should I start in the Solution Manager - Library section?**

Begin with the overview pages in the sidebar. Each page covers a distinct feature or workflow. If you are new to this area, review access and role requirements with your OpCon system administrator before making configuration changes.
