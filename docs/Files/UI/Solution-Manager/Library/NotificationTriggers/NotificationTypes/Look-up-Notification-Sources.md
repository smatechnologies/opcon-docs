---
title: Look up Notification Sources
description: "The Look up Notification Sources dialog performs a reverse lookup — given a Notification ID, it identifies the trigger, group type, group name, and notification type that generated it."
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

# Look up Notification Sources

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Look up Notification Sources** dialog in Solution Manager performs a reverse lookup — given a Notification ID, it identifies the trigger, group type, group name, and notification type that generated the notification.

<!--
![Lookup Notification Source](../../../../../../Resources/Images/SM/Library/NotificationTriggers/lookup-dialog.png "Lookup Notification Source")
-->

## Looking up a Notification Source

To look up a notification source, complete the following steps:

1. Enter the **Notification ID** number.
2. Select **Lookup** to search for the notification source record.
3. Review the **Results** table, which shows the Notification ID, Notification Type, Group Type, Group Name, and Trigger information.
4. Select **Close** to close the dialog.

## Glossary

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.
