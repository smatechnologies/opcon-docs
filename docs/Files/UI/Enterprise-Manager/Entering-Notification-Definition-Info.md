---
title: Entering Notification Definition Information
description: "Notification definition information specifies what action OpCon takes when a trigger fires, such as sending an email, running a command, or writing to the Windows Event Log."
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

# Entering Notification Definition Information

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Notification definition information specifies what action OpCon takes when a trigger fires — for example, sending an email, running a command, or writing to the Windows Event Log. Each notification type has its own settings that must be configured under the appropriate trigger.

To enter notification definition information, complete the following steps:

1. Select on **Notification Manager** under the **Management** topic. The **Notification Manager** screen displays
2. Select the **Machines**, **Schedules**, or **Jobs** tab in the **Notification Triggers** frame
3. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the **Machines**, **Schedules**, or **Jobs** information
4. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the **Notification Group** containing the appropriate trigger
5. Select the **trigger**
6. Select the **option** to the left of the **Notification type**
7. Select the **Notification** tab for the **Notification type**
8. Enter the notification information
9. Select **Save**

## When Would You Use It?

- To enter notification definition information:

## Why Would You Use It?

- **Entering Notification**: To enter notification definition information:

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: How many steps does the Entering Notification Definition Information procedure involve?**

The Entering Notification Definition Information procedure involves 9 steps. Complete all steps in order and save your changes.

## Glossary

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
