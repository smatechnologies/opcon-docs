---
sidebar_label: 'OpCon on Docker'
title: OpCon on Docker Installation
description: "OpCon's server components can be installed and run in a Docker container."
product_area: Installation
audience: System Administrator
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Installation
last_updated: 2026-03-18
doc_type: conceptual
---

# OpCon on Docker Installation

**Theme:** Configure  
**Who Is It For?** System Administrator

## What Is It?

OpCon's server components can be installed and run in a Docker container. The image and installation instructions are available at the [opcon-server repository](https://hub.docker.com/r/smatechnologies/opcon-server) on Docker Hub.

The **opcon-server** Docker image includes:

- SMA OpCon Database Scripts
- SMA OpCon RestAPI
- SMA OpCon Service Manager
- SMA OpCon Solution Manager

## When Would You Use It?

- OpCon's server components can be installed and run in a Docker container

## Why Would You Use It?

- **OpCon on**: OpCon's server components can be installed and run in a Docker container

## Known Limitations

- SQL Server must have SQL authentication enabled
- SMA OpCon Solution Manager does not support Windows Authentication
- The following notifications are not supported:
  - Windows Event Log
  - Network Message
  - SNMP Trap
  - SPO Event Report
  - Run Command
- The \[\[$DATE\]\] Global Property uses the "Short Date" format. The default on Windows is mm/dd/yyyy, but Linux resolves to a different format. Update the $DATE value to mm/dd/yyyy to avoid issues

## SMAUtility Schedule

If no SMAUtility schedule is detected in the database, a Linux-based SMAUtility schedule is added automatically.

The following Global Properties must be set for the schedule to run:

- SMADBCredentials
- SQLMaintUser
- SQLMaintPassword

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## Operations

### Monitoring

- If no SMAUtility schedule is detected in the database at startup, a Linux-based SMAUtility schedule is added automatically. Verify that the `SMADBCredentials`, `SQLMaintUser`, and `SQLMaintPassword` Global Properties are set for this schedule to run correctly.
- The `[[$DATE]]` Global Property uses the "Short Date" format. On Linux containers, the date resolves differently than the Windows default (`mm/dd/yyyy`); update the `$DATE` Global Property value to `mm/dd/yyyy` to prevent date-related automation failures.

### Alerts and Log Files

- The following notification types are not supported in Docker deployments and will not deliver: Windows Event Log, Network Message, SNMP Trap, SPO Event Report, and Run Command. Plan alternative alerting mechanisms for these notification types.
- SQL Server must have SQL authentication enabled; Windows Authentication is not supported for the SMA OpCon Solution Manager in Docker.

## FAQs

**Q: What components are included in the opcon-server Docker image?**

The Docker image includes SMA OpCon Database Scripts, SMA OpCon RestAPI, SMA OpCon Service Manager, and SMA OpCon Solution Manager.

**Q: What notification types are not supported in the Docker deployment?**

Windows Event Log, Network Message, SNMP Trap, SPO Event Report, and Run Command notifications are not supported in the Docker container environment.

**Q: What date format issue should be addressed when running OpCon on Docker with Linux?**

The `[[$DATE]]` Global Property uses the "Short Date" format. On Linux, this resolves to a different format than the Windows default (mm/dd/yyyy). Update the $DATE value to mm/dd/yyyy to avoid date-related issues.

## Glossary

**SMAUtility Schedule**: A pre-built OpCon schedule installed during setup that contains standard maintenance jobs for audit history cleanup, job history cleanup, and BIRT report generation.

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
