---
title: Machines/Schedules/Jobs Group Definitions
description: "The Notification Trigger Type frame provides options for selecting all or specific machines, schedules, and jobs for the notification group."
product_area: Enterprise Manager
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

# Machines/Schedules/Jobs Group Definitions

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **<Notification Trigger Type\>** frame provides options for selecting all or specific machines, schedules, and jobs for the notification group.

- **By default, ENS will treat all Items as**: Determines whether all Machines, Schedules, or Jobs are included or excluded from the notification group by default
  - **Included**: Includes all items by default, including new items added in the future. Deselect specific items to exclude them
  - **Excluded**: Excludes all items by default. Select the specific items to include in the group
- **Show**: Filters what items appear in the selection list
  - **All**: Shows all items (default)
  - **Selected**: Shows only selected items
  - **Not Selected**: Shows only unselected items

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| By default, ENS will treat all Items as | Determines whether all Machines, Schedules, or Jobs are included or excluded from the notification group by default | — | — |
## FAQs

**Q: What does Machines/Schedules/Jobs Group Definitions do?**

The **<Notification Trigger Type\>** frame provides options for selecting all or specific machines, schedules, and jobs for the notification group.

**Q: Where can you find Machines/Schedules/Jobs Group Definitions in OpCon?**

Access Machines/Schedules/Jobs Group Definitions through the appropriate section in the Enterprise Manager or Solution Manager navigation.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
