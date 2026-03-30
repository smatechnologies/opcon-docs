---
title: Notification Triggers
description: "The Notification Triggers tab in the Job Master editor is a read-only view showing the triggers and OpCon events defined in the Notification Manager that will be triggered by the job's actions."
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

# Notification Triggers

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Notification Triggers** tab in the [**Job Master**](Using-Job-Master.md) editor is a read-only view showing the triggers and OpCon events defined in the **Notification Manager** that will be triggered by the job's actions.

## When Would You Use It?

- You need to work with The **Notification Triggers** tab in the [**Job Master**](Using-Job-Master.md) editor, a read-only view showing the triggers and OpCon events defined in the **Notification Manager** that will be triggered by the job's actions, in OpCon

## Why Would You Use It?

- **Notification Triggers**: The **Notification Triggers** tab in the [**Job Master**](Using-Job-Master.md) editor is a read-only view showing the triggers and OpCon events defined in the **Notification Manager** that will be triggered by the job's actions

## Viewing Job Event Notification Triggers

To view Job Event Notification Triggers, complete the following steps:

1. Select on **Job Master** under the **Administration** topic. The **Job Master** screen displays
2. Select the **schedule** in the **Schedule** list
3. Select the **job** in the **Job** list
4. Select the **Notification Triggers** tab in the **Job Properties** frame
5. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the **Job Group**, **Machine Group**, and/or **Schedules Group** information
6. View the **Trigger and Job Event** information

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: How many steps does the Notification Triggers procedure involve?**

The Notification Triggers procedure involves 6 steps. Complete all steps in order and save your changes.

**Q: What does Notification Triggers cover?**

This page covers Viewing Job Event Notification Triggers.

## Glossary

**OpCon Event**: A command sent to OpCon that triggers an automated action, such as adding a job to a schedule, updating a property value, sending a notification, or changing a job or schedule status.

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
