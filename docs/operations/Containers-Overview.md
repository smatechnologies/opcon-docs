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

# Containers Overview

This section covers three specialized job types in OpCon that have dedicated operational procedures: Container jobs, Window to Host sessions, and SAP Job Menu Options.

## In This Section

| Page | Description |
|------|-------------|
| [Container Jobs and SubSchedules](./containers.md) | How Container jobs work, how sub-schedules relate to their parent jobs, and how to manage them from Operations |
| [Open Window to Host](./window-to-host.md) | Opening an emulator for a remote connection to a machine defined in OpCon |
| [SAP Job Menu Options](./SAP-Job-Menu-Options.md) | Context menu options for monitoring and restarting SAP Child Processes and viewing SAP Job Spools from Enterprise Manager |

## Key Concepts

**Container jobs** are a job type in OpCon that run a sub-schedule as their program. When a Container job qualifies to start, SAM sets the sub-schedule to In Process and the Container job to Running. The Container job finishes successfully only when all jobs on the sub-schedule finish successfully. If any job on the sub-schedule fails, the Container job also fails.

**Window to Host** opens a terminal emulator for a remote connection to a machine defined in OpCon. You configure the emulator command for each platform in Enterprise Manager preferences.

**SAP Job Menu Options** are available from the context menu on SAP R3 and CRM jobs in Enterprise Manager Operation views. They provide access to SAP Child Processes and SAP Job Spools for monitoring and restarting background jobs.

## When to Use This Section

- A Container job has failed and you need to investigate its sub-schedule.
- You need to connect to a legacy terminal system through Window to Host.
- You are monitoring or restarting SAP background jobs using SAP Job Menu Options.
