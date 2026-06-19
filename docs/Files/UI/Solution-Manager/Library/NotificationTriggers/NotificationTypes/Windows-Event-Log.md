---
title: Windows Event Log
description: "Configure a Windows Event Log notification to write entries to the Windows Application log when Machine, Schedule, or Job status changes occur in OpCon."
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

# Windows Event Log

The **Windows Event Log** notification type writes an entry to the Windows Application event log when a Machine, Schedule, or Job status change triggers a notification. Any third-party monitoring product that reads the Windows Application log can then send its own alerts based on these entries.

<!--
![Windows Event Log dialog](../../../../../../Resources/Images/SM/Library/NotificationTriggers/windows-event-log-dialog.png "Windows Event Log")
-->

## Fields

| Field | Required | Description |
|---|---|---|
| **Event ID** | Optional | A user-defined identifier usable as search criteria in third-party notification filters. Maximum 64 characters. Disallowed characters: `~ # % ! @ $ ^`. SMA Notify Handler prefixes the value in the written message as `EventID= XXXXXX`. |
| **Severity** | Required | The severity level written to the event log. Options: **Information**, **Warning**, or **Error**. |
| **Custom Event Source** | Optional | Enables the **Event Source** field. When set, SMA Notify Handler prepends `OPCON:` to the value and uses it as the Source ID in the Windows event log entry. Maximum 64 characters. Allowed characters: `a-Z`, `0-9`, `-`, `_`, space, `,`, `.`, `=`, `(`, `)`. When not set, the source defaults to `OPCON_ENS`. |
| **Message** | Required | A user-defined message up to 3,000 characters. OpCon also prepends default trigger information to the message — including Event ID, trigger type, and the triggering status change event. |

## Behavior

- SMA Notify Handler writes the entry to the **Application** log on the OpCon server.
- When **Custom Event Source** is not set, the entry is written under the source `OPCON_ENS`.
- When **Custom Event Source** is set, SMA Notify Handler registers a new source (if it does not already exist) formatted as `OPCON:<your value>` before writing the entry.
- Windows Event Log notifications are only supported when the OpCon server is running on Windows. Notifications attempted on non-Windows platforms are logged as invalid and not written.

## Related topics

- [Notification Triggers Overview](./Notification-Types-Overview.md)
- [Look Up Notification Sources](./Look-up-Notification-Sources.md)
