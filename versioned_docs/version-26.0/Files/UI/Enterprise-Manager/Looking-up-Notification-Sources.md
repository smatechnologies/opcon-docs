---
title: Looking up Notification Sources
description: "The Notification Lookup tool performs a reverse lookup — given a Notification ID, it identifies the trigger, group, and notification type that sent it."
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

# Looking up Notification Sources

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The Notification Lookup tool in Notification Manager performs a reverse lookup — given a Notification ID from a log or notification message, it identifies the trigger, group, and notification type that sent it.

:::note
To perform a reverse lookup, you need the Notification ID. Obtain it from a notification message or from the SMANotifyHandler.log.
:::

To look up a notification source, complete the following steps:

1. Select on **Notification Manager** under the **Management** topic. The **Notification Manager** screen displays
2. Select **Notification Lookup** on the **Notification Manager** toolbar. The **Notification Lookup** dialog displays
3. Enter the *Notification ID* number
4. Select **Lookup** to search for the notification source record
5. View the **Results** table showing Notification ID, Notification Type, Group Type, Group Name, and Trigger information
6. Select **OK** to close the dialog

## FAQs

**Q: How many steps does the Looking up Notification Sources procedure involve?**

The Looking up Notification Sources procedure involves 6 steps. Complete all steps in order and save your changes.

## Glossary


**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a defined status. Notifications can be sent as email, text message, Windows event log, SNMP trap, or OpCon events.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.
