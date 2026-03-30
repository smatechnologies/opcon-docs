---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Managing Event Driven Automation
description: "Use this procedure to manage Event Driven Automation in the Enterprise Manager."
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

# Managing Event Driven Automation

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to manage Event Driven Automation in the Enterprise Manager.

To add a trigger, complete the following steps:

1. Select on **Machines Status** under the **Operation** topic
2. Right-click on the preferred **SAP R/3 and CRM machine name**
3. Hover over **SAP Machine** in the right-click menu and select **Event Driven Automation**. The **SAP Event Driven Automation** dialog displays
4. Select the **Add** button. The **Create New Trigger** dialog displays
5. Enter a *trigger name*, then select **OK**. The **SAP Event Driven Automation** dialog displays
6. Select an *event* in the **Event Id** menu
7. *(Optional)* Enter any *required parameters* in the **Parameters** text box
8. Add the *OpCon Events*, then select **OK**
9. Select the **Save** button

To edit a trigger, complete the following steps:

1. Select on **Machines Status** under the **Operation** topic
2. Right-click on the preferred **SAP R/3 and CRM machine name**
3. Hover over **SAP Machine** in the right-click menu and select **Event Driven Automation**. The **SAP Event Driven Automation** dialog displays
4. Select the **trigger** in the list, then select **Edit**
5. Edit the *settings*, then select **OK**
6. Select the **Save** button

To remove a trigger, complete the following steps:

1. Select on **Machines Status** under the **Operation** topic
2. Right-click on the preferred **SAP R/3 and CRM machine name**
3. Hover over **SAP Machine** in the right-click menu and select **Event Driven Automation**. The **SAP Event Driven Automation** dialog displays
4. Select the **trigger** in the list, then select **Remove**
5. Select the **Save** button
:::

## When Would You Use It?

- You need to review or update Event Driven Automation settings in Enterprise Manager
- Event Driven Automation needs to be reviewed as part of routine system maintenance or a compliance audit

## Why Would You Use It?

- **Reduce administrative overhead**: Centralizing Event Driven Automation management in Enterprise Manager reduces the time needed to locate and update settings across the environment
- All Event Driven Automation changes are captured in the OpCon audit system, supporting change management and compliance processes

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: What does managing event driven automation involve?**

Managing event driven automation includes adding, editing, and deleting records. Access event driven automation through the Enterprise Manager navigation pane.

**Q: Who can manage event driven automation in OpCon?**

Users with the appropriate privileges assigned through their role can manage event driven automation. Contact your OpCon system administrator if you do not have access.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**OpCon Event**: A command sent to OpCon that triggers an automated action, such as adding a job to a schedule, updating a property value, sending a notification, or changing a job or schedule status.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
