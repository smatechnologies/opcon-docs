---
title: Concepts Overview
description: "This section explains the core building blocks of OpCon automation — the objects, rules, and behaviors that define how work is scheduled, run, and tracked."
product_area: Automation Concepts
audience: Automation Engineer, Business Analyst
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - Automation Engineer
  - Business Analyst
  - Jobs
last_updated: 2026-03-18
doc_type: conceptual
---

**Theme:** Overview | **Who is it for?** Administrators, automation engineers, and business analysts who need to understand how OpCon models work

## What Is It?

This section explains the core building blocks of OpCon automation — the objects, rules, and behaviors that define how work is scheduled, run, and tracked. Understanding these concepts is essential before building or operating any automated workflow.

## When would you use this section?

- Learning how OpCon works before building automation
- Explaining OpCon's model to a colleague or stakeholder
- Designing a new automated workflow and selecting the right object types
- Troubleshooting unexpected job or schedule behavior

## What is in this section?

| Topic | Description |
|-------|-------------|
| Schedules | How OpCon groups jobs into business processes that build and run on a calendar |
| Jobs | The individual units of work OpCon submits to agents and platforms |
| Job Types | Platform-specific job definitions (Windows, UNIX, IBM i, SAP, SQL, and more) |
| Master vs. Daily | The difference between master definitions and daily runtime instances |
| Schedule Dates | How OpCon names, numbers, and manages schedule dates |
| Frequencies | Calendar rules that control when jobs and schedules qualify to run |
| Agents | The machines and machine groups that run jobs |
| Properties | Global and instance-level variables used in job and schedule definitions |
| Instances | Named schedule instances and multi-instance behavior |
| Job and Schedule Statuses | The status lifecycle for jobs and schedules in the daily queue |
| Thresholds and Resources | Numeric counters and resource pools used to coordinate job execution |
| Job Components | Frequencies, events, dependencies, tags, and other job-level settings |
| Embedded Scripts | Reusable scripts stored in OpCon and deployed to agents at runtime |
| Job Tracking | Tracking externally-initiated jobs within OpCon |
| File Transfer Jobs | How OpCon manages file movement between machines |
| Null Jobs | Placeholder jobs used for dependency organization |
| Time Zones | How OpCon handles time zone offsets across agents and schedules |

## Glossary

| Term | Definition |
| --- | --- |
| Calendar | An OpCon object that defines non-working days (Holiday Calendar) or specific run dates (Annual Plan Calendar) used by job and schedule frequencies. |
| Dependency (Job Dependency) | A condition that must be met before a job is allowed to start. OpCon supports job dependencies, threshold dependencies, resource dependencies, and expression dependencies. |
| Job | A task or activity defined in OpCon, such as running a program on a remote machine, transferring files, or running a sub-schedule. |
| Machine (Machine (Agent)) | An execution target for OpCon jobs. Each machine runs an agent that communicates with the OpCon server and runs submitted jobs. |
| Resource | A user-defined object with a name and a numeric limit. Used to restrict how many jobs run concurrently across schedules and machines in OpCon. |
| Role | A named collection of privileges that can be assigned to one or more user accounts. Users in a role inherit all of that role's privileges. |
| Schedule | A named group of jobs in OpCon that represents a business process. Schedules are built each day based on their defined frequencies and calendars. |

## FAQs

**Q: What does the Concepts Overview cover?**

This section explains the core building blocks of OpCon automation — the objects, rules, and behaviors that define how work is scheduled, run, and tracked. Understanding these concepts is essential before building or operating any automated workflow.
