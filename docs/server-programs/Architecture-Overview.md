---
title: Architecture Overview
description: "The OpCon server consists of the Schedule Activity Monitor (SAM) and supporting services (SAM-SS). Each component handles a specific role in processing schedules, communicating with agents, sending notifications, and routing requests."
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
# Architecture Overview


## Overview

The OpCon server consists of the Schedule Activity Monitor (SAM) and supporting services (SAM-SS). Each component handles a specific role in processing schedules, communicating with agents, sending notifications, and routing requests.

Use this section to:

- Install or configure an OpCon server
- Diagnose connectivity or processing issues between components
- Configure service startup, logging, or failover behavior
- Understand component roles before making changes

## Components

| Component | Description |
|-----------|-------------|
| [SMA Service Manager (SMAServMan)](service-manager.md) | Controls startup, shutdown, and monitoring of all OpCon services. In failover configurations, coordinates the transition from the primary to the secondary machine. |
| [Schedule Activity Monitor (SAM)](schedule-activity-monitor.md) | Core engine that processes schedules, determines when jobs qualify for submission, and processes OpCon events. |
| [SMA Network Communications Module (SMANetCom)](network-communications.md) | Handles all TCP/IP communication between SAM and all agents. Sends job start information to agents and writes agent responses back to the database. |
| [SMA Notify Handler](notify-handler.md) | Reads the OpCon database notification queue and routes notifications via email, text message, Windows Event Log, SNMP trap, and other channels. |
| [SMA Request Router](request-router.md) | Routes requests between the OpCon database and designated request handlers, including schedule maintenance and job output retrieval. |
| [SMA Start Time Calculator](start-time-calculator.md) | Periodically recalculates estimated start times for jobs in the OpCon Daily tables and updates the database. |
| [Optional Components](optional.md) | Additional server modules available for specific deployments. |
| [Configuration](configuration.md) | Server-level configuration file reference. |
| [Logging](logging.md) | Log file locations, log levels, and log rotation settings. |
