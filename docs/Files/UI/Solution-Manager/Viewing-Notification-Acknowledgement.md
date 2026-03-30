---
title: Viewing Notification Acknowledgement
description: "The Notification Acknowledgement page is used to view and acknowledge escalations."
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

# Viewing Notification Acknowledgement

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Notification Acknowledgement** page is used to view and acknowledge escalations. For more conceptual information, refer to [Escalation](../../../notifications/Escalation.md) in the **Concepts** online help.

The screen lists unacknowledged escalations and shows the following information for each:

- **Date & Time**: The date and time of the escalation
- **Notification**: The subject of the email notification pending acknowledgment
- **Escalation Level**: The current level of the escalation, as defined in the rule sequence
- **Status**: The current state of the escalation's acknowledgment:
  - **Pending**: Awaiting acknowledgment; sent to one or more groups in the escalation rule
  - **Exhausted**: Sent to all groups in the rule, but not yet acknowledged
  - **Acknowledged**: Acknowledged; the notification will automatically disappear shortly

## When Would You Use It?

- You need to inspect or audit Notification Acknowledgement records in Solution Manager
- An audit, compliance review, or operational check requires inspection of current Notification Acknowledgement state

## Why Would You Use It?

- **Improve operational visibility**: Inspecting Notification Acknowledgement records in Solution Manager supports informed decision-making and provides an audit trail for compliance reviews
- Information in Solution Manager reflects the live database state, ensuring that the data reviewed is current at the time of inspection

## Acknowledging Escalations

:::note
The Notification indicator will not be visible if there are no notifications to acknowledge.
:::

:::note
The pop-up will only appear for new notifications.
:::

To view and acknowledge notifications, complete the following steps:

1. Perform one of the following:
   - Select the **Review** button on the **You have notifications to acknowledge** pop-up **- or -**
   - Select the **Notification** indicator (![Notification Icon](../../../Resources/Images/SM/NotificationIndicator.png "Notification Icon")) at the bottom-right of the page
2. Select the *notification* to view the **Notification Details** window
3. *(Optional)* Select **Acknowledge** to acknowledge the notification or **Close** to return to the **Notification Acknowledgement** page
4. Select the option(s) next to the notification(s) you want to acknowledge
5. Select the **Acknowledge** button (either next to a notification or at the top of the page for multi-select)
6. Select **Close**

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Date & Time | The date and time of the escalation | — | — |
| Escalation Level | The current level of the escalation, as defined in the rule sequence | — | — |
| Status | The current state of the escalation's acknowledgment: | — | — |

## FAQs

**Q: How many steps does the Viewing Notification Acknowledgement procedure involve?**

The Viewing Notification Acknowledgement procedure involves 6 steps. Complete all steps in order and save your changes.

**Q: What does Viewing Notification Acknowledgement cover?**

This page covers Acknowledging Escalations.

## Glossary

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.
