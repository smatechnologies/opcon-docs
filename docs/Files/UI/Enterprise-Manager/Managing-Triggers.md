---
title: Managing Triggers
description: "Use this procedure to manage Triggers in the Enterprise Manager."
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

# Managing Triggers

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to manage Triggers in the Enterprise Manager.

## Adding Machine, Schedule, or Job Triggers

:::note
Triggers can only be placed on the lowest-level groups. If child groups exist within a parent group, triggers must be placed on the lowest-level child group. Parent groups without child groups can have triggers.
:::

To add a trigger, complete the following steps:

1. Select on **Notification Manager** under the **Management** topic
2. Select the **Machines**, **Schedules**, or **Jobs** tab in the **Notification Triggers** frame
3. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the **Machines**, **Schedules**, or **Jobs** information
4. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the **Notification Group** information
5. Check for any existing child groups
6. Right-click the appropriate **notification group**
7. Select **Add Machine/Schedule/Job Trigger**
8. Select the **trigger**

## Deleting Machine, Schedule, or Job Triggers

To delete a trigger, complete the following steps:

1. Select on **Notification Manager** under the **Management** topic
2. Select the **Machines**, **Schedules**, or **Jobs** tab in the **Notification Triggers** frame
3. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the **Machines**, **Schedules**, or **Jobs** information
4. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the **Notification Group** containing the trigger to delete
5. Right-click the **Machine**, **Schedule**, or **Job Notification Trigger**
6. Select **Delete Trigger**. The **Delete** dialog displays
7. Select **Yes** to confirm or **No** to cancel


## FAQs

**Q: What does managing triggers involve?**

Managing triggers includes Adding Machine, Schedule, or Job Triggers, Deleting Machine, Schedule, or Job Triggers. Access triggers through the Enterprise Manager navigation pane.

**Q: Who can manage triggers in OpCon?**

Users with the appropriate privileges assigned through their role can manage triggers. Contact your OpCon system administrator if you do not have access.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
