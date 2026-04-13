---
title: Introduction
description: "The SAM and supporting services (SAM-SS) are the central components of OpCon."
product_area: Server Programs
audience: System Administrator
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - System Configuration
last_updated: 2026-03-18
doc_type: conceptual
---

# Introduction

**Theme:** Overview  
**Who Is It For?** System Administrator

## What Is It?

The SAM and supporting services (SAM-SS) are the central components of OpCon.

OpCon SAM and Supporting Services

![SAM and Supporting Services](../Resources/Images/Server-Programs/sam&supportingsrvs.png "SAM and Supporting Services")

| Component Name | Description |
|--- |--- |
| SMA Service Manager (SMAServMan) | A service responsible for the startup, shutdown, and failover of the SAM-SS. |
| Schedule Activity Monitor (SAM) | A background process communicating with the database to manage job submissions and process OpCon events. |
| SMA Network Communications Module (SMANetCom) | A background process communicating with the database and with all agents to send and receive job information and other communications. |
| SMA Notify Handler | A background process communicating with the database to send notifications from OpCon Events or from the ENS Manager. |
| SMA Request Router | A background process responsible for routing requests between the OpCon database and the various Request Handlers. |
| SMA Start Time Calculator | A background process responsible for periodically recalculating start times for jobs in the OpCon Daily tables. |
| Optional Components | Additional optional components installed with the SAM that may be configured at any time. |

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What is the SAM-SS?**

SAM-SS stands for the Schedule Activity Monitor and Supporting Services — the central components of OpCon. They include SMAServMan, SAM, SMANetCom, SMA Notify Handler, SMA Request Router, and SMA Start Time Calculator.

**Q: What is the role of SMAServMan?**

SMAServMan (SMA Service Manager) is responsible for the startup, shutdown, and failover of the SAM-SS components. It ensures the core services are running and manages recovery if a component fails.

**Q: What does SMANetCom do?**

SMANetCom (SMA Network Communications Module) communicates with the OpCon database and all agents to send and receive job information and other communications between the SAM and the agents running on target machines.

## Glossary

**SMANetCom (SMA Network Communications Module)**: Handles TCP/IP communication of platform-specific automation information between SAM and all agents. Uses database tables to maintain reliable communication and data integrity.

**SMAServMan (SMA Service Manager)**: Manages the starting, stopping, and restarting of all OpCon server programs. Monitors configured applications and restarts them automatically if they fail unexpectedly.

**SMA Notify Handler**: Processes notifications triggered by Machine, Schedule, and Job status changes. Can send emails, text messages, Windows Event Log entries, SNMP traps, and SPO notifications.

**SMA Request Router**: Sends requests to designated Request Handlers and writes completion information back to the OpCon database. Manages tasks such as schedule maintenance and job output retrieval.

**SMA Start Time Calculator**: Periodically recalculates estimated start times for all jobs in the OpCon daily tables and updates the database to keep start time estimates current.

**SAM-SS (SAM and Supporting Services)**: The collective term for the OpCon server-side processing programs: SAM, SMANetCom, SMA Notify Handler, SMA Request Router, and SMA Start Time Calculator.

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.
