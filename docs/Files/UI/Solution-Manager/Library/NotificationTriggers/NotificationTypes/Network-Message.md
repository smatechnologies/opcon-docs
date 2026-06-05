---
title: Network Message
description: "Field reference for the Network Message notification type in Notification Triggers. Use this type to send pop-up messages to Windows machines or users when a Machine, Schedule, or Job changes status."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Reference
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: reference
---

# Network Message

A Network Message notification sends a Windows pop-up message to one or more recipients when a Machine, Schedule, or Job changes to a triggered status. SMA Notify Handler delivers the message using `Msg.exe` on Windows Server 2008 and later, or falls back to `net send` on earlier operating systems.

:::caution
SMA Notify Handler always attempts to use `Msg.exe` first. When SMA Notify Handler runs as the SYSTEM account, **Authentication User (UNC Access)** and **Authentication Encrypted Password (UNC Access)** must be configured in Server Options so the handler can impersonate a user account with rights to send messages. You must have Administrator rights on the SAM application server and on every target machine. For more information, see [Server Options](../../../../../../administration/server-options.md).
:::

## Fields

![Network Message dialog](../../../../../../Resources/Images/SM/Library/NotificationTriggers/network-message-dialog.png "Network Message dialog")

| Field | Required | Description |
|---|---|---|
| **Recipient Name(s)** | Yes | One or more machine host names, TCP/IP addresses, or Windows user names. Separate multiple recipients with semicolons (`;`). To target a specific user on a remote machine, use the format `machinename\username`. Maximum 3,000 characters. |
| **Message** | No | A user-defined message up to 3,000 characters. The delivered message prepends a default prefix that includes the trigger type and triggering status-change event. |

## How SMA Notify Handler sends the message

SMA Notify Handler parses the **Recipient Name(s)** field on semicolons to build a recipient list. For each recipient:

- If the value contains a backslash (`\`), the handler constructs a `MSG username /SERVER:machinename` command targeting that specific user on that machine.
- If the value does not contain a backslash, the handler constructs a `MSG * /SERVER:machinename` command to reach all sessions on the machine.

If `Msg.exe` fails and the operating system version is earlier than Windows Server 2008 (version < 6), the handler retries using `net send`.

If **Authentication User (UNC Access)** is not configured and SMA Notify Handler runs as SYSTEM, the handler falls back to `net send` without impersonation.

