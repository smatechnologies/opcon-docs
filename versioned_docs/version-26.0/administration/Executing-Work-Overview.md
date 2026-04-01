---
title: Running Work Overview
description: "Before OpCon can submit jobs to an agent, the agent must be connected and configured, and the appropriate batch user credentials must be available."
product_area: Administration
audience: System Administrator
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - System Configuration
last_updated: 2026-03-18
doc_type: conceptual
---

**Theme:** Overview | **Who is it for?** Administrators who configure how OpCon connects to agents and authenticates job submissions

## What Is It?

Before OpCon can submit jobs to an agent, the agent must be connected and configured, and the appropriate batch user credentials must be available. The Running Work section covers agent management, batch user configuration, and relay communication settings required to enable job execution.

## When would you use this section?

- Adding a new agent and configuring the connection in OpCon
- Creating or updating batch user credentials for job submission
- Setting up a relay server for network communication
- Diagnosing agent connectivity issues

## What is in this section?

| Topic | Description |
|-------|-------------|
| Agents | View agent status, start and stop communication, and perform status updates |
| Batch Users | Configure the OS-level user credentials used to run jobs on agents |
| Relay | Network relay communication configuration for distributed environments |

## Glossary

| Term | Definition |
| --- | --- |
| Job | A task or activity defined in OpCon, such as running a program on a remote machine, transferring files, or running a sub-schedule. |
| Role | A named collection of privileges that can be assigned to one or more user accounts. Users in a role inherit all of that role's privileges. |

## FAQs

**Q: What does the Executing Work section cover?**

Agent management, batch user configuration, and relay communication settings needed to connect OpCon to agents and authenticate job submissions.

**Q: Who manages this area in OpCon?**

System administrators configure agent connections, batch user credentials, and relay settings.

**Q: Where should I start in the Administration section?**

Begin with the overview pages in the sidebar. Each page covers a distinct feature or workflow. Review access and role requirements with your OpCon system administrator before making configuration changes.

