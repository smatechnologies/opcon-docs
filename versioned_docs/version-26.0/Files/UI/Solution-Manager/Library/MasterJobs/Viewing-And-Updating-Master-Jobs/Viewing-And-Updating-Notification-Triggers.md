---
title: Viewing and Updating Notification Triggers
description: "The Notification Triggers panel in Master Job Definition displays notification triggers for the job."
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

The **Notification Triggers** panel in **Master Job Definition** displays notification triggers for the job.

- Select the full-screen icon (![Full Screen Panel Icon](../../../../../../Resources/Images/SM/Full-Screen-Mode-Icon.png "Full Screen Panel Icon")) on the far-right of the panel bar to enter or exit **Full Screen** mode
- A blue circular indicator (![Job Properties Indicator](../../../../../../Resources/Images/SM/Daily-Job-Definition-Properties-Indicator.png "Job Properties Indicator")) appears to the right of the panel name showing the count of defined properties

## When Would You Use It?

- You need to inspect or audit and Updating Notification Triggers records in Solution Manager
- An audit, compliance review, or operational check requires inspection of current and Updating Notification Triggers state

## Why Would You Use It?

- **Improve operational visibility**: Inspecting and Updating Notification Triggers records in Solution Manager supports informed decision-making and provides an audit trail for compliance reviews
- Information in Solution Manager reflects the live database state, ensuring that the data reviewed is current at the time of inspection

## Adding or Updating Notification Triggers

**Notification Triggers** can be modified in the Notification Triggers page.

:::note
Only those with the appropriate permissions will have access to the **Lock** button and can update job properties. For details about privileges, refer to [Required Privileges](Accessing-Master-Jobs.md#Required) in the **Accessing Master Job Definition** topic.
:::

To perform this procedure, complete the following steps:

1. See [Accessing Master Jobs](Accessing-Master-Jobs.md) to Go to the master job definition page
2. Expand the **Notification Triggers** panel to expose its content
3. Select the (![Manage Notification Triggers](../../../../../../Resources/Images/SM/Library/MasterJobs/manage-notification-triggers.png "Manage Notification Triggers Button")) button to Go to the Notification Triggers page


## FAQs

**Q: How many steps does the Viewing and Updating Notification Triggers procedure involve?**

The Viewing and Updating Notification Triggers procedure involves 3 steps. Complete all steps in order and save your changes.

**Q: What does Viewing and Updating Notification Triggers cover?**

This page covers Adding or Updating Notification Triggers.

## Glossary

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
