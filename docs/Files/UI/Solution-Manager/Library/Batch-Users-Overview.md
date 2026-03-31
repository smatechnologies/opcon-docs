---
title: Batch Users Overview
description: "Batch users are operating system credentials that OpCon uses to authenticate job submissions to agents."
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

**Theme:** Overview | **Who is it for?** Administrators who configure OS-level credentials for job execution

## What Is It?

Batch users are operating system credentials that OpCon uses to authenticate job submissions to agents. Each batch user is associated with a specific machine or platform type and holds the username and password the agent uses to run submitted jobs.

## When would you use this section?

- Configuring credentials for a new platform or agent
- Updating a batch user's password after it changes
- Granting or revoking a role's access to a specific batch user
- Auditing which batch users are configured and which roles can use them

## What is in this section?

| Page | Description |
|------|-------------|
| Manage Batch Users | View, add, and manage batch user credentials |
| Batch Users Privileges | Configure which roles can use each batch user |

## Glossary

| Term | Definition |
| --- | --- |
| Job | A task or activity defined in OpCon, such as running a program on a remote machine, transferring files, or running a sub-schedule. |
| LSAM (Local Schedule Activity Monitor) | An agent that resides on the platform where jobs run. LSAMs communicate with SMANetCom for job processing and to send OpCon events. |
| Machine (Machine (Agent)) | An execution target for OpCon jobs. Each machine runs an agent that communicates with the OpCon server and runs submitted jobs. |
| Role | A named collection of privileges that can be assigned to one or more user accounts. Users in a role inherit all of that role's privileges. |
| Solution Manager (SM) | The browser-based web interface for OpCon. Provides access to operations, self-service, vision dashboards, and configuration. |

## FAQs

**Q: Who manages batch users in OpCon?**

System administrators are responsible for configuring batch user credentials, managing role access, and monitoring related processes.

**Q: Where should I start?**

Review the overview pages in the sidebar. If you are new to this area, confirm access and role requirements with your OpCon system administrator before making changes.
