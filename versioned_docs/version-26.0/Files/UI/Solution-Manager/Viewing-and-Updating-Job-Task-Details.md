---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Viewing and Updating Job Task Details
description: "The Task Details panel in Daily Job Definition displays platform-specific properties."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Viewing and Updating Job Task Details

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Task Details** panel in **Daily Job Definition** displays platform-specific properties.

- Select the icon (![Full Screen Panel Icon](../../../Resources/Images/SM/Full-Screen-Mode-Icon.png "Full Screen Panel Icon")) on the far-right of the panel bar to enter **Full Screen** mode. Select it again to exit
- A blue indicator (![Job Type Indicator](../../../Resources/Images/SM/Daily-Job-Definition-Properties-Indicator2.png "Job Type Indicator")) showing the job type appears to the right of the panel name

Supported platforms:

- [Null Job](Viewing-Null-Job-Details.md)
- [IBMi](Updating-IBMi-Job-Details)
- [SAP BW](Updating-SAP-BW-Job-Details)
- [Container](Viewing-Container-Job-Details.md)
- [Windows](Updating-Windows-Job-Details.md)
- [UNIX](Updating-UNIX-Job-Details.md)
- [File Transfer](Updating-File-Transfer-Job-Details.md)
- [MCP](Updating-mcp-Job-Details.md)

## FAQs

**Q: What information does the and Updating Job Task Details view display?**

The and Updating Job Task Details view displays the current state and details for the selected item. Use this view to monitor status and take action as needed.

## Glossary

**Null Job**: A job type that performs no execution on any platform. Null jobs are used to hold dependencies, trigger OpCon events, and keep schedules open after all other jobs complete.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
