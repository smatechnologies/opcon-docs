---
title: Information Bar
description: "The Information Bar appears at the bottom of the Enterprise Manager window and displays SAM status, connection details, escalation alerts, and system notifications."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-06-01
doc_type: conceptual
---

# Information Bar

The Information Bar is the status strip at the bottom of the Enterprise Manager window. It is always visible when you are working in any editor or view. Reading left to right, it displays escalation alerts, system notifications, SAM status, and connection details.

## Information Bar components

The bar contains the following components, displayed in left-to-right order.

### Escalation Acknowledgment

The **Escalation Acknowledgment** indicator appears only when one or more escalations are pending acknowledgment for the logged-in user. When active, it shows the count of pending acknowledgments (for example, `(3)`) and displays a timed pop-up above the bar. The pop-up closes automatically after approximately 4 seconds, or immediately when you click it.

Double-click the indicator to open the **[Escalation Acknowledgment](Using-Escalation-Acknowlegement.md)** view.

When no escalations are pending, this area is hidden.

### Notifications

The **Notifications** indicator displays license-related or other system messages. When a notification is active, a pop-up appears above the bar; the pop-up closes automatically after approximately 5 seconds, or when you move the pointer away from the indicator. Multiple notifications are shown together. The most severe message (error before warning before information) determines the indicator's icon color.

Hover over the indicator to redisplay notifications. When no active notifications exist, this area is hidden.

### SAM Pulse

The **SAM Pulse** indicator shows the health of the SAM (Schedule Activity Monitor) connection:

| Indicator color | Meaning |
|---|---|
| Green (animated) | SAM is running and the pulse is updating normally |
| Red (animated) | SAM is not running, the pulse has not updated within the expected interval, or the pulse check encountered an error |

Enterprise Manager checks the SAM pulse in the database every 60 seconds. Hover over the indicator to see the last SAM pulse timestamp and SAM time zone. Double-click the indicator to open a dialog with the full pulse details, including any additional status message.

### Connection Information

The **Connection Information** area shows the currently logged-in user and database in the format `username@server/database`. When no user is logged in, this area displays a disconnected state.

