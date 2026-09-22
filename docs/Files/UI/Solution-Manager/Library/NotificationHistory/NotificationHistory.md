---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Notification History
description: "Notification History in Solution Manager keeps a searchable record of notification toasts — including Agent and Relay upgrade completions — so an alert is never lost once it disappears."
product_area: Solution Manager
audience: System Administrator, Automation Engineer, Operations Staff
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Operations Staff
  - Solution Manager
last_updated: 2026-09-22
doc_type: conceptual
---

# Notification History

Solution Manager displays brief pop-up notifications, or toasts, when events such as an Agent or Relay upgrade complete. Previously, a toast that you dismissed or missed entirely was gone for good. Notification History keeps a searchable, filterable record of these notifications so you can review what happened even if you were not watching Solution Manager at the time.

## Where to find it

Notification History is available in Solution Manager under **Library** > **Notification History**, in the same list as **Notification Triggers**.

<!--
![Notification History tile on the Library home page](../../../../../Resources/Images/SM/Library/NotificationHistory/NotificationHistory-Tile.png "Notification History tile on the Library home page")
-->

You can also select the **Notification History** button in the top bar to open the page directly.

<!--
![Notification History button in the top bar](../../../../../Resources/Images/SM/Library/NotificationHistory/NotificationHistory-Indicator.png "Notification History button in the top bar")
-->

:::note
Notification History requires the **All Notification Manager Functions** privilege, the same privilege required for Notification Triggers. Without it, the Library home page tile, the top bar button, and the page itself are not available.
:::

## Notification History grid

The **Notification History** page displays a filterable, paginated grid of every notification recorded for your account. Administrators see notifications recorded for every user; all other users see only their own.

<!--
![Notification History grid](../../../../../Resources/Images/SM/Library/NotificationHistory/NotificationHistory-Grid.png "Notification History grid")
-->

Each row includes the following information.

| Column | Description |
|---|---|
| **Time** | The date and time the notification was recorded. |
| **Category** | The area of OpCon the notification relates to: **General**, **Agents**, **Relay**, or **Integrations**. Most notifications are recorded as **General** today; Agent and Relay upgrade completions are recorded under their own category, and a failed Integration upgrade is recorded under **Integrations**. Continuous expects to record additional notification types under their own categories over time. |
| **Type** | The severity of the notification: **Info**, **Success**, **Warning**, or **Error**. |
| **Title** | The notification's title, as it appeared in the original toast. |
| **Message** | The notification's full message text. |
| **User** | The user the notification was recorded for. |

Select the **Columns** button to show or hide columns. Your column selections are saved and applied the next time you open the page.

Select the **Refresh** button to reload the grid with the latest notifications.

## Filtering Notification History

Use the following filters to narrow the notifications displayed in the grid.

| Filter | Behavior |
|---|---|
| **Category** | Select a category from the list to show only notifications recorded under that category. |
| **Type** | Select a type from the list to show only notifications of that severity. |
| **Title** | Enter text to show only notifications whose title contains that text. |

## Agent and Relay upgrade notifications

Agent and Relay upgrade-completion notifications are recorded in Notification History as soon as the upgrade finishes, independent of whether anyone was viewing Solution Manager at the time. If you start an upgrade and close Solution Manager before it finishes, you can still find the completion notification in Notification History afterward.

Agent and Relay upgrade toasts, and their corresponding Notification History entries, name the specific machine or relay and the version it upgraded to.

An Integration upgrade that fails is also recorded in Notification History, under the **Integrations** category. A successful Integration upgrade is not currently recorded here — the Integrations page itself confirms success when an upgrade completes.

<!--
![Sample Agent upgrade-completion entry in Notification History](../../../../../Resources/Images/SM/Library/NotificationHistory/NotificationHistory-UpgradeEntry.png "Sample Agent upgrade-completion entry in Notification History")
-->
