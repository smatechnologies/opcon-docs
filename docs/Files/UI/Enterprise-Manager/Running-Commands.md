---
title: Running Commands
description: "Reference for the Run Command tab in Notification Manager, which configures a command that OpCon runs on the OpCon server when a notification trigger fires."
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

# Running Commands

The **Run Command** tab in Notification Manager configures a command that OpCon runs on the OpCon server when a notification trigger fires. This notification type is available on Windows only; it is disabled on Linux installations. Notifications defined before release 20.0.0 will be disabled.

## Run Command tab fields

| Field | Required | Description | Limit |
|---|---|---|---|
| **Command** | Yes | Full path and file name of the program to run on the OpCon server. | 4,000 characters |
| **Working Directory** | No | Working directory used by the program during running. | 255 characters |
| **Batch User** | Yes | Windows batch user with permission to run the program. The list is filtered to Windows batch users defined in OpCon. | — |

## Configure a Run Command notification

To configure a Run Command notification for a trigger, complete the following steps:

1. Go to **Notification Manager** under the **Management** topic.
2. Select the **Machines**, **Schedules**, or **Jobs** tab in the **Notification Triggers** frame.
3. Select the arrow to expand the group containing the trigger you want.
4. Select the trigger.
5. Select the **Run Command** option in the notification type list.
6. Select the **Run Command** tab.
7. Enter the full path and file name of the program in the **Command** field.
8. (Optional) Enter the working directory in the **Working Directory** field.
9. Select a Windows batch user from the **Batch User** field.
10. Select **Save**.

**Result:** OpCon saves the Run Command notification. When the trigger fires, the SMA Notify Handler runs the specified command under the selected batch user account.
