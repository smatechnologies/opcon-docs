---
title: Using Escalation Acknowledgment
description: "The Escalation Acknowledgment view lists unacknowledged escalations and lets you acknowledge them individually or as a group."
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

# Using Escalation Acknowledgment

The **Escalation Acknowledgment** view lists escalations that are pending acknowledgment for the logged-in user. Acknowledging an escalation stops further escalation notifications for that event. To set up escalation rules, refer to [Using Escalation Manager](Using-Escalation-Manager.md).

:::note
The `ocadm` user sees all pending escalations across all users. Other users see only escalations assigned to them.
:::

## Opening the view

To open the **Escalation Acknowledgment** view, use either of the following methods:

- In Enterprise Manager, go to **Operation** and select **Escalation Acknowledgment**.
- Select the **Escalation Acknowledgment** button on the [information bar](Information-Bar.md).

If escalations are waiting when you log in to Enterprise Manager, the **Escalation Acknowledgment** dialog opens automatically.

## Columns

The view displays the following columns for each unacknowledged escalation:

| Column | Description |
|---|---|
| **Date** | The date and time the escalation was generated. |
| **Notification** | The subject of the email notification pending acknowledgment. |
| **Escalation Level** | The current level of the escalation, as defined in the rule sequence. |
| **Status** | The current acknowledgment state. See [Status values](#status-values) below. |

## Status values

| Status | Description |
|---|---|
| **Pending** | The escalation is awaiting acknowledgment and has been sent to one or more user groups defined in the escalation rule. |
| **Exhausted** | The escalation has been sent to all user groups in the rule sequence but has not been acknowledged. |

## Actions

- **Select a row** — Highlights the escalation. Select the option in the **Date** column to mark it for acknowledgment.
- **Double-click a row** — Opens the full notification message in a details dialog. You can copy the message to the clipboard or open it in an external text editor.
- **Acknowledge button** — Acknowledges all selected escalations and removes them from the list. The button is enabled only when at least one escalation is selected.

## Related topics

- [Acknowledging Escalations](Acknowledging-Escalations.md)
- [Viewing Notification Details](Viewing-Notification-Details.md)
