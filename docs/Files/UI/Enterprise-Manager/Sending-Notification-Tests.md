---
title: Sending Notification Tests
description: "Use this procedure to send Notification Tests in the Enterprise Manager."
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

# Sending Notification Tests

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to send Notification Tests in the Enterprise Manager.

To send a notification test, complete the following steps:

1. Select on **Notification Manager** under the **Management** topic. The **Notification Manager** screen displays
2. Select the options for the **Notification Definitions** to test
3. Select the **Test All** button

Alternatively, to test a specific notification:

a. Select the option for the specific **Notification Definition** to test.
b. Select the specific **Notification** tab.
c. Select the **Test** button.

:::note
If the notification has "default information," the Event Trigger value will be set to Test Notification.
:::

## FAQs

**Q: How many steps does the Sending Notification Tests procedure involve?**

The Sending Notification Tests procedure involves 3 steps. Complete all steps in order and save your changes.

## Glossary


**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a defined status. Notifications can be sent as email, text message, Windows event log, SNMP trap, or OpCon events.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.
