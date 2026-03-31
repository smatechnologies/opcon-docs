---
title: Architecture Overview
description: "The OpCon server consists of the Schedule Activity Monitor (SAM) and supporting services (SAM-SS)."
product_area: Server Programs
audience: System Administrator
version_introduced: "[see release notes]"
tags:
  - Reference
  - System Administrator
  - System Configuration
last_updated: 2026-03-18
doc_type: reference
---

**Theme:** Overview | **Who is it for?** System administrators who install, configure, or troubleshoot the OpCon server

## What Is It?

The OpCon server consists of the Schedule Activity Monitor (SAM) and supporting services (SAM-SS). Each component handles a specific role in processing schedules, communicating with agents, sending notifications, and routing requests.

## When Would You Use It?

- The OpCon server consists of the Schedule Activity Monitor (SAM) and supporting services (SAM-SS)

## Why Would You Use It?

- **Centralized control**: The OpCon server consists of the Schedule Activity Monitor (SAM) and supporting services (SAM-SS)

## When would you use this section?

- Installing or configuring an OpCon server
- Diagnosing connectivity or processing issues between components
- Configuring service startup, logging, or failover behavior
- Understanding component roles before making changes

## What is in this section?

| Component | Description |
|-----------|-------------|
| SAM and Supporting Services | Overview of all server components and how they interact |
| Licensing | License configuration and management for OpCon |
| SMA Service Manager | Controls startup, shutdown, and monitoring of all OpCon services |
| Schedule Activity Monitor | Core engine that processes schedules and submits jobs |
| Notify Handler | Routes and sends notifications via email, text, SNMP, and other channels |
| Request Router | Handles REST API and event requests from external systems |
| Start Time Calculator | Computes estimated start times for queued jobs |
| Optional Components | Additional server modules available for specific deployments |
| Configuration | Server-level configuration file reference |
| Logging | Log file locations, log levels, and log rotation settings |

## Glossary

| Term | Definition |
| --- | --- |
| API (Application Programming Interface) | A set of endpoints that allows external applications to interact with OpCon programmatically to trigger jobs, retrieve status, or manage objects. |
| Event (OpCon Event) | A command string that OpCon runs when a defined condition is met, such as a job finishing, a threshold being updated, or a schedule completing. |
| REST API | OpCon's HTTP-based API that allows external systems to manage schedules, jobs, and automation objects using standard HTTP methods. |
| Role | A named collection of privileges that can be assigned to one or more user accounts. Users in a role inherit all of that role's privileges. |
| SAM (Schedule Activity Monitor) | The logical processor for OpCon workflow automation. It monitors schedule and job start times, dependencies, and user commands to determine when to run each job. |
| SAM-SS (SAM and Supporting Services) | The SAM and its supporting services that together manage all automation processing on the OpCon server. |
| Schedule | A named group of jobs in OpCon that represents a business process. Schedules are built each day based on their defined frequencies and calendars. |

## FAQs

**Q: Who manages Server Programs in OpCon?**

System administrators configure Server Programs settings, manage user access, and monitor related processes and components.

**Q: Where should I start in the Server Programs section?**

Begin with the overview pages in the sidebar. Each page covers a distinct feature or workflow. Review access and role requirements with your OpCon system administrator before making configuration changes.

**Q: What is the role of SMA Service Manager (SMAServMan) in the OpCon server architecture?**

SMAServMan controls the startup, shutdown, and monitoring of all OpCon server-side services. In failover configurations, it coordinates the transition from the primary to the secondary machine and manages when the secondary application group starts.
