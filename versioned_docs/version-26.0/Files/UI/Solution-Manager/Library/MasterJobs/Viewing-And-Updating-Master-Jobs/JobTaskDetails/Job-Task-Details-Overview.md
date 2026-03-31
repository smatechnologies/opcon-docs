---
title: Job Task Details Overview
description: "Job Task Details contain the platform-specific settings that control how a job runs on its target agent — the command, script, parameters, user credentials, and platform-specific options."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Reference
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: reference
---

**Theme:** Overview | **Who is it for?** Automation engineers who configure platform-specific job execution settings

## What Is It?

Job Task Details contain the platform-specific settings that control how a job runs on its target agent — the command, script, parameters, user credentials, and platform-specific options. Each job type has a unique Task Details panel.

## When would you use this section?

- Set up a job for a specific platform and need to know which fields are required
- Update a job's command line, script reference, or execution parameters
- Troubleshoot a job failure by reviewing its task configuration

## Supported Task Detail Types

| Type | Description |
|------|-------------|
| Container Job Details | Settings for jobs that run a sub-schedule |
| File Transfer Job Details | Source, destination, and transfer options for file movement jobs |
| IBM i Job Details | Job description, library list, and IBM i-specific parameters |
| Null Job Details | No execution settings — Null jobs complete immediately |
| SAP BW Job Details | Process chain and variant settings for SAP BW jobs |
| OS 2200 Job Details | Run ID and ECL settings for Unisys OS 2200 jobs |
| SAP R3/CRM Job Details | Job class, variant, and scheduling settings for SAP R3 jobs |
| SQL Job Details | Connection, query, and output settings for SQL jobs |
| UNIX Job Details | Command line, shell, and environment settings for UNIX jobs |
| Windows Job Details | Command line, working directory, and Windows-specific settings |
| MCP Job Details | Job initiation string and MCP-specific settings |
| z/OS Job Details | JCL and execution settings for IBM mainframe jobs |
| BIS Job Details | Run ID and Unisys BIS-specific settings |

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

**Q: What does the Job Task Details Overview cover?**

Job Task Details contain the platform-specific settings that control how a job runs on its target agent — the command, script, parameters, user credentials, and platform-specific options. Each job type has a unique Task Details panel.

**Q: Who manages Solution Manager - Library in OpCon?**

Automation engineers and administrators are responsible for Solution Manager - Library in OpCon.

**Q: Where should I start in the Solution Manager - Library section?**

Begin with the overview pages in the sidebar. Each page covers a distinct feature or workflow. If you are new to this area, review access and role requirements with your OpCon system administrator before making configuration changes.
