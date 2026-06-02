---
title: Sending Windows Event Logs
description: "Configure a Windows Event Log notification in Enterprise Manager to write an entry to the Windows Application log when a Machine, Schedule, or Job trigger fires."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Sending Windows Event Logs

The **Event Log** tab in the Notification Manager lets you write an entry to the Windows Application log when a Machine, Schedule, or Job trigger fires. Any notification product that can read the Windows Event Log can then forward those entries to downstream alerting systems.

:::note
This notification type is supported on Windows only. On Linux, the SMA Notify Handler marks the notification as failed and does not write an entry.
:::

## Event Log tab fields

| Field | Required | Description |
|---|---|---|
| **Event ID** | No | User-defined ID used as search criteria in third-party notification filters. Maximum 64 characters. The SMA Notify Handler formats it as `EventID= XXXXXX` in the event message. Prohibited characters: `~ # % ! @ $ ^` |
| **Severity** | Yes | Message severity level written to the event entry. Options: **Information**, **Warning**, **Error**. Default: **Information**. |
| **Custom Event Source** | No | When selected, displays the **Event Source** field for a custom source name. Deselect to use the default OpCon event source. |
| **Event Source** | No | Custom source name, visible only when **Custom Event Source** is selected. Maximum 64 characters. The SMA Notify Handler prepends `OPCON:` to this value to prevent conflicts with other sources. Allowed characters: alphanumeric (a–Z, 0–9), dash, underscore, space, comma, period, equal sign, parentheses. |
| **Message** | Yes | User-defined message text. Maximum 3,000 characters. The SMA Notify Handler prepends default trigger information — Event ID, trigger type, and triggering status change event — before writing the entry. |

## Configure a Windows Event Log notification

To configure a Windows Event Log notification, complete the following steps:

1. In Enterprise Manager, select **Notification Manager** under the **Management** topic.
2. In the **Notification Triggers** frame, select the **Machines**, **Schedules**, or **Jobs** tab.
3. Select the expand arrow to open the trigger group that contains the target trigger.
4. Select the trigger.
5. Select the option to the left of **Send Windows Event Log**.
6. Select the **Event Log** tab.
7. In **Severity**, select **Information**, **Warning**, or **Error**.
8. (Optional) In **Event ID**, enter a user-defined identifier of up to 64 characters.
9. (Optional) Select **Custom Event Source**, then enter a source name in **Event Source**.
10. In **Message**, enter the notification text of up to 3,000 characters.
11. Select **Save**.

**Result:** When the trigger fires, the SMA Notify Handler writes an entry to the Windows Application log using the configured severity, source, and message.
