---
title: SNMP Trap
description: "Reference for the SNMP Trap notification type in OpCon, including the Event ID, Severity, and Message fields used to define an outbound SNMP trap."
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

# SNMP Trap

The **SNMP Trap** notification type sends an outbound SNMP trap to a third-party network management system when a Machine, Schedule, or Job changes to a specific status. SMA Notify Handler processes and routes the trap through a named pipe connection on Windows.

:::note
SNMP trap notifications are supported on Windows only. SMA Notify Handler does not process SNMP traps on non-Windows platforms.
:::

![SNMP Trap](../../../../../../Resources/Images/SM/Library/NotificationTriggers/snmp-dialog.png "SNMP Trap")

## Field reference

| Field | Required | Description |
|---|---|---|
| **Event ID** | No | A user-defined identifier, up to 64 characters, that third-party notification filters can use as search criteria. SMA Notify Handler prepends this value to the outbound message as `EventID= <value>`. The following characters are not allowed: `~` `!` `@` `#` `$` `%` `^` |
| **Severity** | Yes | The severity level of the trap. Accepted values: **Information** (default), **Warning**, **Minor**, **Major**, **Critical**. |
| **Message** | No | A user-defined message up to 250 characters. The outbound trap also includes default trigger information: Event ID, trigger type, and the triggering status-change event. |
