---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Notification Groups
description: "Available Notification Groups in OpCon are shown in the grid under Library > Triggers > Manage Notification Groups."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: conceptual
---

# Notification Groups

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Available Notification Groups in OpCon are shown in the grid under **Library > Triggers > Manage Notification Groups**.

![Notification Groups Grid](../../../../../Resources/Images/SM/Library/NotificationGroups/NotificationGroups-Grid.png "Notification Groups Grid")

Selecting **Add** or selecting a record in the grid enables the bottom panel:

![Notification Group Add and Edit](../../../../../Resources/Images/SM/Library/NotificationGroups/NotificationGroups-AddEdit.png "Editable panel for Notification Groups")

:::note
The **Name** field must be unique when adding a notification group.
:::

When **Included** is selected, all items selected in the list — plus all new Jobs, Machines, and Schedules (depending on the group type) — are included in the notification.

![Notification Group Jobs/Machines](../../../../../Resources/Images/SM/Library/NotificationGroups/Included.png "Notification Group Jobs/Machines")

When **Excluded** is selected, all items selected in the list are included, but all new Jobs, Machines, and Schedules (depending on the group type) are excluded from the notification.

![Notification Group Jobs/Machines](../../../../../Resources/Images/SM/Library/NotificationGroups/Excluded.png "Notification Group Jobs/Machines")

- If the group type is **Job** or **Machine**, a tree view shows all available items

  ![Notification Group Jobs/Machines](../../../../../Resources/Images/SM/Library/NotificationGroups/TreeView.png "Notification Group Jobs/Machines")

- If the group type is **Schedule**, a checklist shows all available schedules

  ![Notification Group Jobs/Machines](../../../../../Resources/Images/SM/Library/NotificationGroups/SchedulesCheckList.png "Notification Group Jobs/Machines")

The **Categories** checklist shows all categories available for the Notification Group.

![Notification Group Jobs/Machines](../../../../../Resources/Images/SM/Library/NotificationGroups/CategoriesList.png "Notification Group Jobs/Machines")

Select the **Add** button to quickly add a new category to the list.

![Notification Group Jobs/Machines](../../../../../Resources/Images/SM/Library/NotificationGroups/AddCategory.png "Notification Group Jobs/Machines")

## When Would You Use It?

- Use this feature when Included is selected

## Why Would You Use It?

- **Operational value**: Enables the bottom panel: When Included is selected, all items selected in the list — pl

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What does Notification Groups do?**

title: Notification Groups

**Q: Where can you find Notification Groups in OpCon?**

Access Notification Groups through the appropriate section in the Enterprise Manager or Solution Manager navigation.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
