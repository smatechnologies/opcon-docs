---
title: Agents Section Overview
description: "Agents (referred to as machines in OpCon) are the execution targets for jobs."
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

**Theme:** Overview | **Who is it for?** Administrators who manage agent connections and targeting

## What Is It?

Agents (referred to as machines in OpCon) are the execution targets for jobs. Each agent runs an OpCon agent that communicates with the OpCon server and runs submitted jobs. Machine groups pool agents so jobs can target any available machine in the group.

## When would you use this section?

- Adding a new agent to the OpCon environment
- Configuring machine communication settings
- Creating a machine group for load-balanced job execution
- Understanding the relationship between machines, groups, and job assignment

## What is in this section?

| Page | Description |
|------|-------------|
| Machines | Machine object properties, communication settings, and advanced configuration |
| Machine Groups | Grouping agents for dynamic job targeting and load balancing |
| Machine Groups (concept) | How machine group selection works at runtime |

## Glossary

| Term | Definition |
| --- | --- |
| Job | A task or activity defined in OpCon, such as running a program on a remote machine, transferring files, or running a sub-schedule. |
| LSAM (Local Schedule Activity Monitor) | An agent that resides on the platform where jobs run. LSAMs communicate with SMANetCom for job processing and to send OpCon events. |
| Machine (Machine (Agent)) | An execution target for OpCon jobs. Each machine runs an agent that communicates with the OpCon server and runs submitted jobs. |
| Machine Group | A pool of machines (agents) that allows jobs to target any available machine in the group, enabling load balancing and failover. |
| Role | A named collection of privileges that can be assigned to one or more user accounts. Users in a role inherit all of that role's privileges. |
| Schedule | A named group of jobs in OpCon that represents a business process. Schedules are built each day based on their defined frequencies and calendars. |

## FAQs

**Q: Who manages Agents in OpCon?**

Administrators and automation engineers configure agents, manage user access, and monitor related processes.

**Q: Where should I start in the Agents section?**

Begin with the overview pages in the sidebar. If you are new to this area, review access and role requirements with your OpCon system administrator before making configuration changes.

**Q: What is the difference between a machine and a machine group in OpCon?**

A machine (agent) is a single execution target where OpCon runs jobs. A machine group is a pool of machines that allows jobs to target any available machine in the group, enabling load balancing and failover without changing individual job definitions.
