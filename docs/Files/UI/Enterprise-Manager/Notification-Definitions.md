---
title: Notification Definitions
description: "The Notification Definitions frame provides tabs for configuring notification types."
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

# Notification Definitions

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Notification Definitions** frame provides tabs for configuring notification types.

:::note
ENS allows the insertion of any OpCon Property in all notification fields. For additional information, refer to [Defining Global Properties](Defining-Global-Properties.md).
:::

Initially, the frame displays a **General** tab with information on the defined notifications for the selected trigger. The tab has the following options:

- **Description**: A description and purpose for the notification triggers to be sent
- **Notification Types**: options to specify notification types. Each selection enables a tab for defining the notification details

:::note
For fields supporting Tokens, use the Global Property Selector by pressing **Ctrl/t** to find and define Tokens for Global Properties. You may also type a Token manually. For more on Tokens, refer to [Tokens](../../../objects/using-properties.md#tokens) in the **Concepts** online help.
:::

Select any of the following to access instructions for defining and sending that notification type:

- [Send Email (SMTP)](Sending-Emails.md)
- [Send Short Text Message](Sending-Short-Text-Messages.md)
- [Send OpCon Events](Sending-OpCon-Events.md)
- [Send Windows Event Log](Sending-Windows-Event-Logs.md)
- [Send Network Message](Sending-Network-Messages.md)
- [Send SNMP Trap](Sending-SNMP-Traps.md)
- [Send SPO Event Report](Sending-SPO-Event-Reports.md)
- [Run Command](Running-Commands.md)

- **[Active/Inactive Notification Status](Activating_Inactivating-Notifications.md)**: The power symbol to the left of each option indicates *Active* (green) or *Inactive* (red) status. By default, power symbols are gray. Select the power symbol to toggle between *Active* and *Inactive*

- **Include Internal Job Number in Job Name frame**: Determines whether the job name in the Prefix Information is unique each time a notification is processed. The unique job name comprises the original job name and a SAM-generated job number

- **Escalation Rule**: Specifies an optional escalation rule for an email notification. Disabled by default; activates only when **Send Email (SMTP)** is selected

- **Save**: Saves changes to all defined notification tabs. Active only when new notification details are being defined or changes have been made

- **Cancel**: Cancels all changes without committing them to the database

- **[Test All](Sending-Notification-Tests.md)**: Sends a test for all active notifications. On each specific notification tab, a **Test** button sends a test for that tab only. If the notification has default information, the Event Trigger value is set to *Test Notification*

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Entering Notification Definition Information](Entering-Notification-Definition-Info.md)
- [Deleting Notification Definition Information](Deleting-Notification-Definition-Info.md)
:::

## When Would You Use It?

- You need to provide tabs for configuring notification types using The **Notification Definitions** frame

## Why Would You Use It?

- **Operational value**: Provides tabs for configuring notification types

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Description | A description and purpose for the notification triggers to be sent | — | — |
| Notification Types | options to specify notification types. | — | — |
| Include Internal Job Number in Job Name frame | Determines whether the job name in the Prefix Information is unique each time a notification is processed. | information | — |
| Escalation Rule | Specifies an optional escalation rule for an email notification. | information | — |
| [Test All](Sending-Notification-Tests.md) | Sends a test for all active notifications. | information | — |
## FAQs

**Q: What does Notification Definitions do?**

The **Notification Definitions** frame provides tabs for configuring notification types.

**Q: Where can you find Notification Definitions in OpCon?**

Access Notification Definitions through the appropriate section in the Enterprise Manager or Solution Manager navigation.

## Glossary

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**OpCon Event**: A command sent to OpCon that triggers an automated action, such as adding a job to a schedule, updating a property value, sending a notification, or changing a job or schedule status.

**Token (Global Property)**: A named value stored in the OpCon database, referenced in job definitions and events using [[PropertyName]] syntax. Tokens pass dynamic values — such as dates, file paths, or counts — into automation workflows.

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
