---
title: Sending Network Messages
description: "Configure a Network Pop-up Message notification in Enterprise Manager so OpCon sends a pop-up message to one or more Windows machines or users when a trigger event occurs."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-05-29
doc_type: procedural
---

# Sending Network Messages

**Theme:** Configure
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

A Network Pop-up Message notification sends a pop-up message to one or more Windows machines or users when a notification trigger fires. You define this notification type on the **Network** tab of a notification definition in Enterprise Manager. When the trigger event occurs, the SMA Notify Handler delivers the message to each recipient using the Windows `Msg.exe` program.

Use a Network Pop-up Message notification when you want operators or administrators at specific Windows machines to receive an immediate on-screen alert in response to a job, schedule, or machine status change.

:::caution
The SMA Notify Handler always attempts to use the **Msg.exe** program first. For the message to be sent successfully, the **Authentication User (UNC Access)** and **Authentication Encrypted Password (UNC Access)** values must be defined in Server Options. You must be an Administrator on the SAM application server and on every machine that receives messages. For more information, refer to **Authentication User (UNC Access)** and **Authentication Encrypted Password (UNC Access)** in [Server Options](../../../administration/server-options.md#smtp-server-settings) in the **Concepts** online help.
:::

:::note
This notification type is disabled on Linux. Notifications defined before Release 20.0.0 are disabled.
:::

## Required Privileges

<!-- GAP: No notification-specific privilege name was found in the Solution Manager or Enterprise Manager source. The caution above states the SAM service account must be an Administrator on the SAM application server and on each receiving machine; confirm the exact OpCon privilege required to define notifications with an SME. -->

## Before You Begin

The SMA Notify Handler sends network messages only on Windows. Confirm the following before you define the notification:

- The **Authentication User (UNC Access)** and **Authentication Encrypted Password (UNC Access)** values are defined in Server Options.
- The account that runs the SAM service is an Administrator on the SAM application server and on every machine that receives messages.

## Sending a Network Message

To define a Network Pop-up Message notification, complete the following steps:

1. Open the notification definition in Enterprise Manager and select **Send Network Message** to add the **Network** tab.
2. Select the **Network** tab.
3. In **Recipient Name(s)**, enter the machine host names, TCP/IP addresses, or Windows user names that receive the message. Separate multiple recipients with a semicolon (`;`). This field is required and accepts up to 3,000 characters.
4. In **Message**, enter the message text. This field accepts up to 895 characters. The message also includes default trigger information: the trigger type and the triggering status change event.
5. Save the notification definition.

**Result:** When the trigger event occurs, the SMA Notify Handler sends the message to each recipient using `Msg.exe`. If `Msg.exe` is unavailable on an older platform, the handler retries delivery using `net send`.

## FAQs

**Q: What is a Network Pop-up Message notification used for?**

It sends a pop-up message to one or more Windows machines or users when a notification trigger fires in response to a job, schedule, or machine status change event.

**Q: Why is my message limited to 895 characters when the Recipient field allows 3,000?**

The **Message** field accepts up to 895 characters and the **Recipient Name(s)** field accepts up to 3,000 characters. The two fields have different limits.

**Q: Why are my network messages not delivered on Linux?**

Network Pop-up Message notifications are supported on Windows only. The SMA Notify Handler delivers them through the Windows `Msg.exe` program, so this notification type is disabled on Linux.

## Related Topics

- [Server Options](../../../administration/server-options.md#smtp-server-settings)

## Glossary

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job start timing, and processes OpCon events.

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, network pop-up messages, Windows Event Log entries, SNMP traps, or other formats.

**Agent**: Software installed on a target platform that runs jobs and reports results back to OpCon.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.
