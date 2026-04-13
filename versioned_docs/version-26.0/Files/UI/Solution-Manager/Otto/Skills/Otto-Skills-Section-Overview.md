---
title: Otto Skills Overview
description: "Skills are the specific actions Otto can perform in OpCon on your behalf."
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

**Theme:** Overview | **Who is it for?** Cloud customers who want to use Otto skills to automate operational tasks

## What Is It?

Skills are the specific actions Otto can perform in OpCon on your behalf. Each skill maps to a common operational task — building schedules, restarting jobs, updating statuses, retrieving logs — and can be triggered by natural language requests to Otto.

## When would you use this section?

- Identifying what actions Otto can take so you can phrase requests correctly
- Looking up detailed parameters and behavior for a specific skill
- Reviewing skill requirements after unexpected execution

## Available Skills

| Skill | Description |
|-------|-------------|
| Add Daily Job | Add a job to a schedule in the daily queue |
| Build Schedule | Trigger a schedule build for a specified date |
| Delete Daily Job | Remove a job from the daily queue |
| Get Failed Jobs | Retrieve a list of currently failed jobs |
| Get Failed Schedules | Retrieve a list of currently failed schedules |
| Perform a Fast Schedule Check | Run a schedule integrity check |
| Retrieve Application Log | Fetch the OpCon application log |
| Restart Failed Jobs | Restart all currently failed jobs in a schedule |
| Summarize Schedule Build | Get a summary of a recent schedule build |
| Update Job Status | Change the status of a specific job |
| Update Machine Status | Change the communication status of an agent |
| Update Schedule Status | Change the status of a schedule |
| Retrieve Job Output | Fetch the output from a completed job |

## Glossary

| Term | Definition |
| --- | --- |
| Job | A task or activity defined in OpCon, such as running a program on a remote machine, transferring files, or running a sub-schedule. |
| Machine (Machine (Agent)) | An execution target for OpCon jobs. Each machine runs an agent that communicates with the OpCon server and runs submitted jobs. |
| Role | A named collection of privileges that can be assigned to one or more user accounts. Users in a role inherit all of that role's privileges. |
| Schedule | A named group of jobs in OpCon that represents a business process. Schedules are built each day based on their defined frequencies and calendars. |
| Schedule Build | The process by which OpCon creates daily schedule instances from master schedule definitions, applying frequencies, calendars, and properties. |
| Solution Manager (SM) | The browser-based web interface for OpCon. Provides access to operations, self-service, vision dashboards, and configuration. |

## FAQs

**Q: What does the Otto Skills Overview cover?**

Skills are the specific actions Otto can perform in OpCon — building schedules, restarting jobs, updating statuses, and retrieving logs — triggered by natural language requests.

**Q: Who manages Solution Manager - Otto in OpCon?**

Operations staff and administrators manage Solution Manager - Otto, including settings, user access, and monitoring.

**Q: Where should I start in the Solution Manager - Otto section?**

Begin with the overview pages in the sidebar. If you are new to this area, review access and role requirements with your OpCon system administrator before making configuration changes.
