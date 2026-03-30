---
title: Activating/Inactivating Notifications
description: "Notifications in Enterprise Manager can be individually activated or inactivated without deleting them."
product_area: Enterprise Manager
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

# Activating/Inactivating Notifications

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Notifications in Enterprise Manager can be individually activated or inactivated without deleting them. This lets administrators temporarily suspend a notification type for a specific trigger while keeping the definition intact.

To activate or inactivate a notification, complete the following steps:

1. Select **Notification Manager** under the **Management** topic. The **Notification Manager** screen displays
2. Select the **Machines**, **Schedules**, or **Jobs** tab in the **Notification Triggers** frame
3. Select the ![Expand Arrow](../../../Resources/Images/EM/EMarrowtoexpand.png)**arrow** to expand the **Machines**, **Schedules**, or **Jobs** information
4. Select the ![Expand Arrow](../../../Resources/Images/EM/EMarrowtoexpand.png)**arrow** to expand the **Notification Group** containing the appropriate trigger
5. Select the **trigger**
6. Select the option to the left of the preferred notification
7. Select the **green** Power symbol to the left of the **Notification** option

## When Would You Use It?

- To activate or inactivate a notification:

## Why Would You Use It?

- **Activating/Inactivating Notifications**: To activate or inactivate a notification:

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: Where is Activating/Inactivating Notifications located in the Enterprise Manager?**

Select **Notification Manager** under the **Management** topic in the Enterprise Manager navigation pane.

**Q: How many steps does the Activating/Inactivating Notifications procedure involve?**

The Activating/Inactivating Notifications procedure involves 7 steps. Complete all steps in order and save your changes.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
