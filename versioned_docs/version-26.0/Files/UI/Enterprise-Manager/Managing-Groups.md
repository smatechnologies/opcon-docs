---
title: Managing Groups
description: "Use this procedure to manage Groups in the Enterprise Manager."
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

# Managing Groups

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to manage Groups in the Enterprise Manager.

## When Would You Use It?

- You need to review or update Groups settings in Enterprise Manager
- Groups needs to be reviewed as part of routine system maintenance or a compliance audit

## Why Would You Use It?

- **Reduce administrative overhead**: Centralizing Groups management in Enterprise Manager reduces the time needed to locate and update settings across the environment
- All Groups changes are captured in the OpCon audit system, supporting change management and compliance processes

## Adding Machine, Schedule, or Job Groups

To add a group, complete the following steps:

1. Select on **Notification Manager** under the **Management** topic. The **Notification Manager** screen displays
2. Select the **Machines**, **Schedules**, or **Jobs** tab in the **Notification Triggers** frame
3. Right-click on the **notification type** (e.g., Machines, Schedules, or Jobs)
4. Select **Add Group**. The **Add New Group** dialog displays
5. Type the new *group name* and select **OK**

:::note
(Optional) You can create child groups to further organize triggers.
:::

**Add Machines to a Group**

1. Select on the **group** in the **Machines** tab
2. In the Machines selection frame, use one of the following approaches:
   - **To add specific machines:** Confirm **By default, ENS will treat all machines as: Excluded**. Select the **option** for the platform to add all machines for that platform, or expand the platform using the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** and select individual machine options
   - **To remove specific machines:** Change the selection to **By default, ENS will treat all machines as: Included**. Select the **option** for the platform to remove all machines, or expand the platform and deselect individual machine options
3. Select the **Save** button

**Add Schedules to a Group**

1. Select on the **group** in the **Schedules** tab
2. In the Schedules selection frame, use one of the following approaches:
   - **To add schedules:** Confirm **By default, ENS will treat all schedules as: Excluded**. Select the **option** for each schedule to add
   - **To remove schedules:** Change the selection to **By default, ENS will treat all schedules as: Included**. Unselect the **option** for each schedule to remove
3. Select the **Save** button

**Add Jobs to a Group**

1. Select on the **group** in the **Jobs** tab
2. In the Jobs selection frame, use one of the following approaches:
   - **To add jobs:** Confirm **By default, ENS will treat all jobs as: Excluded**. Select the **option** for the schedule to add all jobs, or expand the schedule using the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png)**arrow** and select individual job options
   - **To remove jobs:** Change the selection to **By default, ENS will treat all jobs as: Included**. Select the **option** for the schedule to remove all jobs, or expand the schedule and deselect individual job options
3. Select the **Save** button

## Deleting Machine, Schedule, or Job Groups

To delete a group, complete the following steps:

1.  Select on **Notification Manager** under the **Management** topic. The **Notification Manager** screen displays
2.  Select the **Machines**, **Schedules**, or **Jobs** tab in the **Notification Triggers** frame
3.  Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the group information
4.  Right-click on the **group** to delete
5.  Select **Delete Group**. The **Delete** dialog displays
6.  Select **Yes** to confirm the deletion or **No** to cancel

## Renaming Machine, Schedule, or Job Groups

To rename a group, complete the following steps:

1.  Select on **Notification Manager** under the **Management** topic. The **Notification Manager** screen displays
2.  Select the **Machines**, **Schedules**, or **Jobs** tab in the **Notification Triggers** frame
3.  Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the group information
4.  Right-click on the **group** to rename
5.  Select **Rename**
6.  Type the new *group name* and select **OK**

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: What does managing groups involve?**

Managing groups includes Adding Machine, Schedule, or Job Groups, Deleting Machine, Schedule, or Job Groups, Renaming Machine, Schedule, or Job Groups. Access groups through the Enterprise Manager navigation pane.

**Q: Who can manage groups in OpCon?**

Users with the appropriate privileges assigned through their role can manage groups. Contact your OpCon system administrator if you do not have access.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
