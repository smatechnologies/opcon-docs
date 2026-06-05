---
title: Sending SNMP Traps
description: "Define an SNMP trap notification in Enterprise Manager so OpCon sends a trap when a job, schedule, or machine status change occurs."
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

# Sending SNMP Traps

**Theme:** Configure
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

An SNMP trap notification sends a trap message from OpCon when a Job, Schedule, or Machine changes to a specific status. The SMA Notify Handler builds the trap and sends it for delivery to a third-party monitoring system.

You define the trap on the **SNMP** tab of a notification definition in Enterprise Manager. The **SNMP** tab appears after you select **Send SNMP Trap** on the **General** tab of the notification.

The **SNMP** tab provides three fields: **Event ID**, **Severity**, and **Message**. For field details and limits, see [SNMP Trap Fields](#snmp-trap-fields).

:::note
SNMP trap notifications are processed on Windows only. On non-Windows platforms, the SMA Notify Handler does not send the trap and the notification fails.
:::

## Required Privileges

## Define an SNMP Trap Notification

To define an SNMP trap notification, complete the following steps:

1. In Enterprise Manager, open the notification definition you want to edit, or create a new notification definition.
2. On the **General** tab, select **Send SNMP Trap**.

   The **SNMP** tab is added to the notification definition.
3. Select the **SNMP** tab.
4. In the **Event ID** field, enter an optional identifier for the trap. See [SNMP Trap Fields](#snmp-trap-fields) for the length limit and disallowed characters.
5. In the **Severity** field, select the severity level for the trap: **Information**, **Warning**, **Minor**, **Major**, or **Critical**.
6. In the **Message** field, enter the message text for the trap.
7. Save the notification definition.

**Result:** When a Job, Schedule, or Machine reaches the status defined in the notification, OpCon sends an SNMP trap that contains the severity, message, and (if specified) the Event ID.

## SNMP Trap Fields

| Field | Required | What It Does | Limits |
|---|---|---|---|
| **Event ID** | Optional | A user-defined identifier you can use as search criteria in a third-party notification filter. The SMA Notify Handler adds it to the message as `EventID=<value>`. | Maximum 64 characters. The following characters are not allowed: `~` `!` `@` `#` `$` `%` `^` |
| **Severity** | Required | The severity level of the trap. | One of: **Information**, **Warning**, **Minor**, **Major**, **Critical**. Default is **Information**. |
| **Message** | Required | The user-defined message text for the trap. | Maximum 250 characters. |

## FAQs

**Q: When is an SNMP trap notification sent?**

OpCon sends the trap when a Job, Schedule, or Machine changes to the status defined in the notification definition.

**Q: Why does my SNMP trap notification not send?**

SNMP trap notifications are processed on Windows only. On a non-Windows platform, the SMA Notify Handler does not send the trap and the notification fails.

## Related Topics

## Glossary

**SMA Notify Handler**: Processes notifications triggered by Machine, Schedule, and Job status changes. Can send emails, short text messages, network messages, Windows Event Log entries, SNMP traps, and other notification types.

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status.

**Machine**: A platform defined in the OpCon database that has an Agent installed. OpCon routes job run requests to machines and machines report job completion status back to OpCon.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services, and graphical user interfaces. Agents installed on target platforms run jobs and report results.
