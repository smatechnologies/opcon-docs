---
title: Sending OpCon Events
description: "The Event tab provides the following fields for defining an OpCon event launched for the selected trigger: - Event Command: The Event Command definition."
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

# Sending OpCon Events

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Event** tab provides the following fields for defining an OpCon event launched for the selected trigger:

- **Event Command**: The Event Command definition. Refer to the [OpCon Events](../../../events/introduction.md) online help for additional information
- **Parameters**: The event parameters associated with the Event Command
- **Test**: Sends a test for the activated notification of the trigger

:::tip Example Notification Message
03/11/08 09:41:23 Logged [NTLOG] EventID= 77777 | Schedule Date= Mar 11 2008 | Sched/Job Info= TestSched:Conversion:12345 | Machine Name= machine01 | Message= The conversion failed.
:::

## Adding Events

To add Events, complete the following steps:

1. Select on **Notification Manager** under the **Management** topic. The **Notification Manager** screen displays
2. Select the **Machines**, **Schedules**, or **Jobs** tab in the **Notification Triggers** frame
3. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the **Machines**, **Schedules**, or **Jobs** information
4. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the **Notification Group** information
5. Select the appropriate **machine/schedule/job trigger**
6. In the **General** tab under **Notification Definitions**, select the option for **Send OpCon Events**
7. Select the **Event** tab, then select the **Add** button. The **Event Definition Wizard** displays
8. Select the **event** in the **Event Template** list
9. In the **Event Parameters** frame, place your cursor at the beginning of a **\<syntax placeholder\>** in the **Event Parameters** text box, then drag to select the entire placeholder, excluding surrounding commas (for example: ,\<schedule name\>,)
10. Replace the selected placeholder with valid OpCon event information. To use a token instead:
    - Select the placeholder as described in step 9
    - Select the ![Insert Token button](../../../Resources/Images/EM/EMinserttoken.png "Insert Token button") **Insert token** button or press **Ctrl+T** to list available global properties
    - Locate the property by scrolling or using the search field (Windows wildcards supported; filter by property name, value, or both)
    - Select the **global property** (e.g., $SCHEDULE DATE)

    :::note
    Double brackets are automatically placed around the token placeholder.
    :::

    :::tip Example
    ```shell
    $JOB:ADD,\[\[$SCHEDULE DATE\]\],Payroll,Emp1,15thofMonth
    ```
    :::


11. Select the **Finish** button when all event parameters are complete
12. Select **Save** to save, or **Cancel** to discard

## Editing Events

1. Select on **Notification Manager** under the **Management** topic. The **Notification Manager** screen displays
2. Select the **Machines**, **Schedules**, or **Jobs** tab in the **Notification Triggers** frame
3. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the **Machines**, **Schedules**, or **Jobs** information
4. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the **Notification Group** information
5. Select the appropriate **machine/schedule/job trigger**
6. Select the **Event** tab, then select the **event** to edit
7. Select the **Edit** button. The **Event Definition Wizard** displays
8. Apply the changes, then select the **Finish** button
9. Select **Save** to save the change, or **Cancel** to discard

## Copying Events

1. Right-click on the **event** to copy in the **Events** table and select **Copy**
2. Select the **Machines**, **Schedules**, or **Jobs** tab in the **Notification Triggers** frame
3. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the **Machines**, **Schedules**, or **Jobs** information
4. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the **Notification Group** information
5. Select the appropriate **machine/schedule/job trigger**
6. Select the **Event** tab
7. Right-click on the **Events** table and select **Paste**

## Deleting Events

To delete Events, complete the following steps:

1. Select on **Notification Manager** under the **Management** topic. The **Notification Manager** screen displays
2. Select the **Machines**, **Schedules**, or **Jobs** tab in the **Notification Triggers** frame
3. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the **Machines**, **Schedules**, or **Jobs** information
4. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the **Notification Group** information
5. Select the appropriate **machine/schedule/job trigger**
6. Select the **Event** tab, then select the **event** to delete
7. Select the **Remove** button. The **Remove** dialog displays
8. Select **Yes** to confirm the deletion, or **No** to cancel

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Event Command | The Event Command definition. | — | — |
| Parameters | The event parameters associated with the Event Command | — | — |
## FAQs

**Q: How many steps does the Sending OpCon Events procedure involve?**

The Sending OpCon Events procedure involves 36 steps. Complete all steps in order and save your changes.

**Q: What does Sending OpCon Events cover?**

This page covers Adding Events, Editing Events, Copying Events.

## Glossary

**OpCon Event**: A command sent to OpCon that triggers an automated action, such as adding a job to a schedule, updating a property value, sending a notification, or changing a job or schedule status.

**Token (Global Property)**: A named value stored in the OpCon database, referenced in job definitions and events using [[PropertyName]] syntax. Tokens pass dynamic values — such as dates, file paths, or counts — into automation workflows.

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
