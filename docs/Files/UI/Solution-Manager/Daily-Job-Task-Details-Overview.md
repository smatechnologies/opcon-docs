---
title: Daily Job Task Details Overview
description: "Daily Job Task Details show the platform-specific execution settings for a job currently in the daily queue."
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

**Theme:** Overview | **Who is it for?** Operations staff who review or temporarily modify platform-specific job settings in the daily queue

## What Is It?

Daily Job Task Details show the platform-specific execution settings for a job currently in the daily queue. These settings reflect the master job definition at build time and can be temporarily modified for the current day's run.

## When Would You Use It?

- Daily Job Task Details show the platform-specific execution settings for a job currently in the daily queue

## Why Would You Use It?

- **Centralized control**: Daily Job Task Details show the platform-specific execution settings for a job currently in the daily queue

## When would you use this section?

- You need to verify what command line or script a job will run today
- You need to make a temporary parameter change for today's execution only
- A job failed because of a configuration issue and you want to correct it before restarting

## Supported Task Detail Types (Daily)

| Type | Description |
|------|-------------|
| View and Update Job Task Details | General daily job task configuration |
| View Null Job Details | Null job — no task settings |
| Update IBM i Job Details | IBM i-specific settings for the daily instance |
| Update SAP BW Job Details | SAP BW process chain settings for the daily instance |
| Update SAP R3 Job Details | SAP R3 job class and variant for the daily instance |
| View Container Job Details | Sub-schedule assignment for the daily container job |
| Update Windows Job Details | Command line and working directory for the Windows daily job |
| Update UNIX Job Details | Shell command and environment for the UNIX daily job |
| Update File Transfer Job Details | Source/destination and transfer options for the daily file transfer job |
| Update MCP Job Details | Job initiation string for the MCP daily job |

## Glossary

| Term | Definition |
| --- | --- |
| Container Job | An OpCon job type that runs a subschedule. Used to make a job dependent on a schedule, or to organize large schedules into reusable components. |
| File Transfer Job | An OpCon job type that moves files between machines across supported platforms as part of an automated workflow. |
| Job | A task or activity defined in OpCon, such as running a program on a remote machine, transferring files, or running a sub-schedule. |
| Null Job | An OpCon job type that generates events and sets threshold values without running any task on an agent. It always completes with a Finished OK status. |
| Role | A named collection of privileges that can be assigned to one or more user accounts. Users in a role inherit all of that role's privileges. |
| Schedule | A named group of jobs in OpCon that represents a business process. Schedules are built each day based on their defined frequencies and calendars. |
| Solution Manager (SM) | The browser-based web interface for OpCon. Provides access to operations, self-service, vision dashboards, and configuration. |
| Sub-Schedule (Sub-Schedule (Subschedule)) | A schedule that is embedded inside another schedule and called by a Container job. The SAM force-starts the subschedule when the Container job qualifies. |

## FAQs

**Q: Do task detail changes in the daily queue affect the master job?**

No. Changes made here apply only to the current day's run. To update the master definition, use Copy Daily Job to Master from the Daily Job Definition panel.

**Q: Who can modify daily task details?**

Operations staff and administrators with the appropriate role privileges. Review access and role requirements with your OpCon system administrator before making changes.
