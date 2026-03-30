---
title: Deleting Notification Definition Information
description: "Use this procedure to delete Notification Definition Information in the Enterprise Manager."
product_area: Enterprise Manager
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

# Deleting Notification Definition Information

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to delete Notification Definition Information in the Enterprise Manager.

To delete notification definition information, complete the following steps:

1. Select on **Notification Manager** under the **Management** topic
2. Select the **Machines**, **Schedules**, or **Jobs** tab in the **Notification Triggers** frame
3. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the **Machines**, **Schedules**, or **Jobs** information
4. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the **Notification Group** containing the trigger
5. Select the **trigger** containing the notification definition information
6. Clear the option to the left of the notification
7. Select the **Save** button. The **Delete** dialog displays
8. Select **Yes** to confirm or **No** to cancel

## When Would You Use It?

- An existing Notification Definition Information in Enterprise Manager is no longer needed
- The Notification Definition Information has been decommissioned or replaced and should be removed to keep the configuration clean

## Why Would You Use It?

- **Maintain a clean environment**: Removing unused Notification Definition Information definitions reduces clutter and prevents accidental use of outdated or obsolete configurations
- Deletions are recorded in the OpCon audit log, providing traceability for compliance and change management reviews

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: Can a notification definition information record be recovered after deletion?**

No. Deleting a notification definition information record permanently removes it from OpCon. Verify the record is no longer needed before deleting it.

**Q: How many notification definition information records can you delete at once?**

Select the specific notification definition information record you want to delete, then select the **Delete** button on the toolbar. Confirm the deletion when prompted.

## Glossary

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
