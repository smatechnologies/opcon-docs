---
title: Jobs Section Overview
description: "A job is the individual unit of work in OpCon."
product_area: Core Concepts
audience: Automation Engineer, Application Owner
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - Automation Engineer
  - Application Owner
  - Getting Started
last_updated: 2026-03-18
doc_type: conceptual
---

**Theme:** Overview | **Who is it for?** Administrators and automation engineers who define and manage OpCon jobs

## What Is It?

A job is the individual unit of work in OpCon. Jobs are assigned to a schedule, run on a target agent, and connect to other jobs through dependencies. The job object model covers all supported job types, the distinction between master and daily job definitions, and the full set of automation components that control job behavior.

## When would you use this section?

- Designing a new automated workflow and choosing the right job type
- Understanding how master job definitions relate to daily instances
- Adding a new platform (SAP, IBM i, UNIX, SQL, etc.) and needing job type details
- Troubleshooting job behavior and understanding the job lifecycle

## What is in this section?

| Page | Description |
|------|-------------|
| Jobs | The job object — properties, platforms, and how jobs relate to schedules |
| Job Types | Platform-specific job configuration for all supported agent types |
| Master vs. Daily | How master definitions become daily instances and what can be edited in each |
| Edit Master vs. Daily | The rules governing which fields can be changed in master vs. daily |

## Glossary

| Term | Definition |
| --- | --- |
| Job | A task or activity defined in OpCon, such as running a program on a remote machine, transferring files, or running a sub-schedule. |
| Role | A named collection of privileges that can be assigned to one or more user accounts. Users in a role inherit all of that role's privileges. |
| Schedule | A named group of jobs in OpCon that represents a business process. Schedules are built each day based on their defined frequencies and calendars. |

## FAQs

**Q: Who manages Jobs in OpCon?**

Administrators and automation engineers configure jobs, manage user access, and monitor related processes.

**Q: Where should I start in the Jobs section?**

Begin with the overview pages in the sidebar. If you are new to this area, review access and role requirements with your OpCon system administrator before making configuration changes.
