---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Notification Triggers
description: "Notification Triggers in Solution Manager let you define conditions that send alerts when a Machine, Schedule, or Job changes status. Each trigger belongs to a group and can deliver one or more notification types."
product_area: Solution Manager
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

# Notification Triggers

A Notification Trigger defines the conditions and delivery methods that alert you when a Machine, Schedule, or Job changes to a specific status. Each trigger belongs to a notification group and can deliver notifications through one or more channels simultaneously.

Notification Triggers are available in Solution Manager under **Library > Notification Triggers** and in Enterprise Manager through Notification Manager.

## Notification Triggers grid

The **Notification Triggers** page displays all configured triggers in a grid.

<!--
![Notification Triggers Grid](../../../../../Resources/Images/SM/Library/NotificationTriggers/NotificationTriggers-Grid.png "Notification Triggers Grid")
-->

Selecting **Add** or selecting a row in the grid opens the edit panel below the grid.

<!--
![Notification Trigger Add and Edit](../../../../../Resources/Images/SM/Library/NotificationTriggers/NotificationTriggers-AddEdit.png "Editable panel for Notification Triggers")
-->

:::note
The **Group Name** and **Trigger Name** combination must be unique. You cannot save a trigger that duplicates an existing name within the same group.
:::

## Trigger settings

The edit panel contains the following settings for each trigger.

**Description** — An optional description of the trigger's purpose.

**Include Internal Job Number in Job Name frame** — When enabled, OpCon combines the original job name with a SAM-generated job number to produce a unique job name in the notification prefix. Use this option when the same job runs multiple times concurrently and you need to distinguish individual instances in notification output.

**Escalation Rule** — An optional escalation rule for email notifications. The search field appears only when at least one Email notification type is configured for the trigger. An escalation rule can only be assigned when the trigger includes at least one Email notification.

:::note
Selecting **Save** is required for any modifications to take effect.
:::

## Notification types

Each trigger supports one or more of the following notification types. Select a notification type to add or edit its configuration.

- Select **Add** to add a notification for the selected trigger.
- Select **Edit** to edit an existing notification.
- Select **Delete** to remove a notification.

The toggle to the left of each notification type indicates its active status. An active notification (![Active Notification](../../../../../Resources/Images/SM/Library/NotificationTriggers/active.png "Active")) is sent when the trigger fires. An inactive notification (![Inactive Notification](../../../../../Resources/Images/SM/Library/NotificationTriggers/inactive.png "Inactive")) is retained but not sent. Select the toggle to switch between states.

Select a notification type for configuration details:

- [Send Email (SMTP)](./NotificationTypes/Email)
- [Send Short Text Message](./NotificationTypes/Text-Message)
- [Send OpCon Events](./NotificationTypes/OpCon-Events)
- [Send Windows Event Log](./NotificationTypes/Windows-Event-Log)
- [Send Network Message](./NotificationTypes/Network-Message)
- [Send SNMP Trap](./NotificationTypes/SNMP-Trap)
- [Send SPO Event Report](./NotificationTypes/SPO-Event-Report)
- [Run Command](./NotificationTypes/Run-Command)

## Lookup dialog

To reverse-look up the source of a notification event, you need the Notification ID. This ID is available in the notification message or in `SMANotifyHandler.log`.

Select the Lookup button to open the Lookup dialog.

- [Lookup Dialog](./NotificationTypes/Look-up-Notification-Sources)

## Copy dialog

Select the Copy button to open the Copy dialog and duplicate an existing trigger.

- [Copy Dialog](./NotificationTypes/Copy-Notification-Trigger)

## Advanced filtering

Use **Advanced Filters** (top-right of the screen) to narrow the triggers displayed in the grid.

![Advanced Filtering](../../../../../Resources/Images/SM/Library/NotificationTriggers/advanced-filtering.png "Advanced Filtering")

| Filter | Behavior |
|---|---|
| **Contents** | Shows triggers that contain the specified text in any configured notification. |
| **Notification Type** | Shows triggers that have all selected notification types configured. |
| **Categories** | Shows triggers associated with all selected categories. |

![Filter By Notification Type](../../../../../Resources/Images/SM/Library/NotificationTriggers/filter-by-notification-type.png "Filter By Notification Type")

<!--
![Filter By Categories](../../../../../Resources/Images/SM/Library/NotificationTriggers/filter-by-categories.png "Filter By Categories")
-->

:::note
For customers who migrated from versions prior to 21.6: Enterprise Manager organized notifications through a parent group tree in Notification Manager. In Solution Manager, use the **Categories** filter and select categories that correspond to the former parent group names. This migration is backward compatible — Notification Manager in Enterprise Manager remains available.

![Notification Manager EM](../../../../../Resources/Images/SM/Library/NotificationTriggers/notification-manager-em.png "Notification Manager EM")
:::
