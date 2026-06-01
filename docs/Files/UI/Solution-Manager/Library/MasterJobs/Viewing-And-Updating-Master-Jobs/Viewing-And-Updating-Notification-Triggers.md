---
title: Viewing and Updating Notification Triggers
description: "The Notification Triggers panel in Master Job Definition displays notification triggers associated with the job and provides access to the Notification Triggers page."
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

# Viewing and Updating Notification Triggers

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Notification Triggers** panel in **Master Job Definition** displays the notification triggers associated with the job.

- Select the full-screen icon (![Full Screen Panel Icon](../../../../../../Resources/Images/SM/Full-Screen-Mode-Icon.png "Full Screen Panel Icon")) on the far-right of the panel bar to enter or exit **Full Screen** mode
- A blue circular indicator (![Job Properties Indicator](../../../../../../Resources/Images/SM/Daily-Job-Definition-Properties-Indicator.png "Job Properties Indicator")) appears to the right of the panel name showing the count of defined properties

For conceptual information about notification triggers, refer to [Notification Triggers](../../../../../../notifications/Notification-Triggers.md) in the **Concepts** online help.

## Managing Notification Triggers

Notification triggers are managed on the **Notification Triggers** page in the **Library** module.

:::note
Only those with the appropriate permissions will have access to the **Lock** button and can update job properties. For details about privileges, refer to [Required Privileges](Accessing-Master-Jobs.md#Required) in the **Accessing Master Job Definition** topic.
:::

To manage notification triggers for a job, complete the following steps:

1. Follow the steps in [Accessing Master Job Definition](Accessing-Master-Jobs.md) to open the **Master Job Definition** page.
2. Expand the **Notification Triggers** panel to view its content.
3. Select the **Manage Notification Triggers** button (![Manage Notification Triggers](../../../../../../Resources/Images/SM/Library/MasterJobs/manage-notification-triggers.png "Manage Notification Triggers Button")) to go to the **Notification Triggers** page.

**Result:** The **Notification Triggers** page opens, where you can add, edit, or remove notification triggers for the job. For instructions, refer to [Notification Triggers](../../../../../UI/Solution-Manager/Library/NotificationTriggers/NotificationTriggers.md).

## Glossary

**Notification trigger**: A configuration that fires when the status of one or more items in a notification group changes. When the trigger fires, OpCon writes notification information to the database, and the SMA Notify Handler delivers the notification. Notifications can be sent as emails, text messages, Windows Event Log entries, SNMP traps, and SPO notifications.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
