---
sidebar_label: 'Overview'
title: Utilities Overview
description: "OpCon utilities are organized into the following sections: - Command-line Utilities - Graphical Utilities - SMA Dynamic Data Input - SMA Resource Monitor."
product_area: Utilities
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - System Configuration
last_updated: 2026-03-18
doc_type: conceptual
---

# Utilities Overview

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

OpCon utilities are organized into the following sections:

- [Command-line Utilities](./Command-line-Utilities/Introduction.md)
- [Graphical Utilities](./Graphical-Utilities/Introduction.md)
- [SMA Dynamic Data Input](./SMA-Dynamic-Data-Input/Introduction.md)
- [SMA Resource Monitor](./SMA-Resource-Monitor/Introduction.md)

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What categories of utilities does OpCon provide?**

OpCon utilities are organized into four categories: Command-line Utilities, Graphical Utilities, SMA Dynamic Data Input, and SMA Resource Monitor.

**Q: What are Command-line Utilities used for?**

Command-line utilities perform specific OpCon tasks from the command line, such as generating reports, importing/exporting schedules, and managing data. They can be automated by calling them from OpCon jobs.

**Q: What is the SMA Resource Monitor?**

SMA Resource Monitor (SMARM) monitors files, counters, and services on Windows machines. When a monitored condition is met, it sends OpCon events to trigger automation actions such as releasing a job or adding a job to a schedule.

## Glossary

**SMADDI (SMA Dynamic Data Input)**: An optional OpCon component that dynamically updates the OpCon database using XML text files placed in monitored input directories. SMADDI uses a Windows service and stored procedures to validate and commit the data.

**SMA Resource Monitor (SMARM)**: A Windows service that monitors files, counters, services, and processes on Windows machines. When a monitored condition is met, it sends OpCon events to trigger automation actions.

**OpCon Event**: A command sent to OpCon that triggers an automated action, such as adding a job to a schedule, updating a property value, sending a notification, or changing a job or schedule status.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
