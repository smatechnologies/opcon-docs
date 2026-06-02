---
title: Notification Definitions
description: "The Notification Definitions frame in Enterprise Manager provides a General tab and notification-type tabs for configuring how OpCon delivers alerts when a Machine, Schedule, or Job changes status."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Reference
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: reference
---

# Notification Definitions

The **Notification Definitions** frame appears on the right side of the Notification Manager view in Enterprise Manager. When you select a trigger in the **Notification Triggers** panel, the frame displays the **General** tab for that trigger's notification action, along with any notification-type tabs that have been enabled.

:::note
ENS allows the insertion of any OpCon property in all notification fields. Use the Global Property Selector (**Ctrl+T**) to find and insert tokens for Global Properties, or type a token manually in the format `[[PropertyName]]`. For more information, refer to [Tokens](../../../objects/using-properties.md#tokens).
:::

## General tab fields

The **General** tab is always visible when a notification action is selected. It contains the following fields and controls.

| Field / Control | Description |
|---|---|
| **Description** | A free-text description of the notification action. Maximum 255 characters. |
| **Send Email (SMTP)** | Select to enable email notifications. Selecting this option adds an **Send Email (SMTP)** tab and enables the **Escalation Rule** field. |
| **Send Short Text Message** | Select to enable SMS/short text message notifications. Selecting this option adds a **Send Short Text Message** tab. |
| **Send OpCon/xps Events** | Select to enable OpCon event notifications. Selecting this option adds a **Send OpCon/xps Events** tab. |
| **Send Windows Event Log** | Select to enable Windows Event Log notifications. Selecting this option adds a **Send Windows Event Log** tab. |
| **Send Network Message** | Select to enable network message notifications. Selecting this option adds a **Send Network Message** tab. |
| **Send SNMP Trap** | Select to enable SNMP trap notifications. Selecting this option adds a **Send SNMP Trap** tab. |
| **Send SPO Event Report** | Select to enable SPO event report notifications. Selecting this option adds a **Send SPO Event Report** tab. |
| **Run Command** | Select to enable run-command notifications. Selecting this option adds a **Run Command** tab. |
| **Include Internal Job Number in Job Name** | Determines whether the job name included in the notification prefix is unique for each notification processed. When set to **Yes**, the job name combines the original job name with a SAM-generated job number. Defaults to **Yes**. |
| **Escalation Rule** | Specifies an optional escalation rule to apply to an email notification. This field is disabled until **Send Email (SMTP)** is selected. Defaults to `<None>`. |
| Active/Inactive toggle | The power symbol to the left of each notification-type option indicates whether that notification is **Active** or **Inactive**. Select the symbol to toggle status. Symbols are gray until the notification type is enabled. |

## Buttons

| Button | Description |
|---|---|
| **Save** | Saves changes to all defined notification tabs. Active only when new notification details are being defined or unsaved changes exist. |
| **Cancel** | Discards all unsaved changes without writing them to the database. |
| **Test All** | Sends a test notification for all active notification types defined on the **General** tab. On each individual notification-type tab, a **Test** button sends a test for that type only. The Event Trigger value is set to `Test Notification` when default information is used. Inactive notification types are not tested. |

## Notification-type tabs

Selecting a notification type on the **General** tab opens a corresponding tab where you configure the details for that delivery method. Refer to the following pages for field-level instructions:

- [Send Email (SMTP)](Sending-Emails.md)
- [Send Short Text Message](Sending-Short-Text-Messages.md)
- [Send OpCon/xps Events](Sending-OpCon-Events.md)
- [Send Windows Event Log](Sending-Windows-Event-Logs.md)
- [Send Network Message](Sending-Network-Messages.md)
- [Send SNMP Trap](Sending-SNMP-Traps.md)
- [Send SPO Event Report](Sending-SPO-Event-Reports.md)
- [Run Command](Running-Commands.md)
- [Activating and Inactivating Notifications](Activating_Inactivating-Notifications.md)

## Related topics

- [Entering Notification Definition Information](Entering-Notification-Definition-Info.md)
- [Deleting Notification Definition Information](Deleting-Notification-Definition-Info.md)
- [Sending Notification Tests](Sending-Notification-Tests.md)
