---
title: Containers Overview
description: "OpCon supports three specialized job types with dedicated operational procedures: Container jobs, Window to Host sessions, and SAP Job Menu Options."
product_area: Operations
audience: Operations Staff, System Administrator
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - Operations Staff
  - System Administrator
  - Schedules
last_updated: 2026-03-18
doc_type: conceptual
---

**Theme:** Overview | **Who is it for?** Operations staff who work with container jobs, remote access sessions, and SAP job menus

## What Is It?

OpCon supports three specialized job types with dedicated operational procedures: Container jobs run embedded sub-schedules and can be monitored at the sub-schedule level; Window to Host sessions provide terminal-based access to legacy agents; and SAP Job Menu Options support SAP R3 and CRM background job management directly from Operations.

## When would you use this section?

- A container job has failed and you need to investigate its sub-schedule
- You need to access a legacy terminal system through Window to Host
- You are managing SAP background jobs using the SAP Job Menu Options

## What is in this section?

| Page | Description |
|------|-------------|
| Containers | How container jobs work and how to manage sub-schedules from Operations |
| Window to Host | Connecting to terminal-based systems from within OpCon |
| SAP Job Menu Options | Available menu options for SAP R3 and CRM job management |

## Glossary

| Term | Definition |
| --- | --- |
| Container Job | An OpCon job type that runs a subschedule. Used to make a job dependent on a schedule, or to organize large schedules into reusable components. |
| Job | A task or activity defined in OpCon, such as running a program on a remote machine, transferring files, or running a sub-schedule. |
| Role | A named collection of privileges assigned to one or more user accounts. Users in a role inherit all of that role's privileges. |
| Schedule | A named group of jobs in OpCon representing a business process. Schedules are built each day based on their defined frequencies and calendars. |
| Sub-Schedule | A schedule embedded inside another schedule and called by a Container job. The SAM force-starts the subschedule when the Container job qualifies. |

## FAQs

**Q: What does the Containers Overview cover?**

Operational procedures for Container jobs (embedded sub-schedules), Window to Host sessions (terminal-based agent access), and SAP Job Menu Options (SAP R3 and CRM background job operations).

**Q: Who manages Operations in OpCon?**

Operations staff and administrators manage Operations, including configuring settings, managing user access, and monitoring related components.

**Q: Where should I start in the Operations section?**

Begin with the overview pages in the sidebar. If you are new to this area, review access and role requirements with your OpCon system administrator before making configuration changes.
