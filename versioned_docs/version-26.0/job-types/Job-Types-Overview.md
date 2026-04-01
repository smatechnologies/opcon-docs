---
title: Job Types Overview
description: "OpCon supports jobs across a wide range of platforms."
product_area: Job Types
audience: Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Reference
  - Automation Engineer
  - Jobs
last_updated: 2026-03-18
doc_type: reference
---

**Theme:** Overview | **Who is it for?** Automation engineers who need to configure platform-specific job settings

## What Is It?

OpCon supports jobs across a wide range of platforms. Each job type has platform-specific settings that control how the job is submitted, monitored, and completed on the target agent. Select the job type matching the platform where the work runs.

## When would you use this section?

- Adding a new job and configuring platform-specific settings
- Setting up automation for a new agent platform
- Referencing available fields and options for a specific job type

## Supported Job Types

| Job Type | Description |
|----------|-------------|
| BIS | Unisys BPS/BIS job submission |
| Container | Runs a sub-schedule as a single unit within a parent schedule |
| File Transfer | Moves files between agents using the OpCon file transfer protocol |
| IBM i | Submits batch jobs on IBM i (AS/400) systems |
| Java | Runs Java-based programs via the Java Agent |
| MCP | Submits jobs on Unisys MCP systems |
| Null | Placeholder job used for dependency chaining without running a process |
| OS 2200 | Submits jobs on Unisys OS 2200 systems |
| SAP BW | Triggers and monitors SAP Business Warehouse process chains |
| SAP R3/CRM | Runs SAP R3 and CRM background jobs |
| SQL | Runs SQL scripts and stored procedures on database servers |
| Tuxedo ART | Submits jobs through the Tuxedo ART connector |
| UNIX | Runs shell commands and scripts on UNIX/Linux agents |
| Windows | Runs programs, scripts, and commands on Windows agents |
| z/OS | Submits JCL jobs on IBM z/OS mainframe systems |

## Glossary

| Term | Definition |
| --- | --- |
| Dependency (Job Dependency) | A condition that must be met before a job is allowed to start. OpCon supports job dependencies, threshold dependencies, resource dependencies, and expression dependencies. |
| Job | A task or activity defined in OpCon, such as running a program on a remote machine, transferring files, or running a sub-schedule. |
| Role | A named collection of privileges that can be assigned to one or more user accounts. Users in a role inherit all of that role's privileges. |
| Schedule | A named group of jobs in OpCon that represents a business process. Schedules are built each day based on their defined frequencies and calendars. |
| Sub-Schedule (Sub-Schedule (Subschedule)) | A schedule that is embedded inside another schedule and called by a Container job. The SAM force-starts the subschedule when the Container job qualifies. |

## FAQs

**Q: Who manages Job Types in OpCon?**

Automation engineers and administrators configure Job Types, manage user access, and monitor related processes.

**Q: Where should I start in the Job Types section?**

Begin with the overview pages in the sidebar. If you are new to this area, review access and role requirements with your OpCon system administrator before making configuration changes.
