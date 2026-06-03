---
title: Daily Job Events
description: "The Events panel in Daily Job Definition displays and lets you edit the OpCon events defined for the selected daily job instance."
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Solution Manager
doc_type: procedural
last_updated: 2026-06-02
---

# Daily Job Events

The **Events** panel in **Daily Job Definition** displays the OpCon events defined for the selected daily job instance and lets you add, edit, or remove them. Events defined here apply to the selected daily instance. To apply an event to every run of a job, configure it on the master job instead.

For background on event types and event syntax, refer to [Job Events](../Enterprise-Manager/Job-Events.md).

## Events panel fields

The **Events** panel lists the events defined for the daily job in a grid with the following columns.

| Column | Description |
|---|---|
| **Event** | The event command that OpCon sends when the trigger condition is met. |
| **Trigger** | The condition that fires the event (for example, job status, agent feedback, exit description, or job completion expression). |
| **Match** | The condition or value the trigger matches on. |
| **User** | The OpCon user who created the event. |

## Required privileges

To edit daily job events, you must be in the `ocadm` role or hold the privileges required to edit the daily job. For details, refer to [Accessing Daily Job Definition](Accessing-Daily-Job-Definition.md).

## Add or update a daily job event

:::note
Changes made in **Daily Job Definition** take effect immediately. If the job has already run, the changes apply the next time the job runs.
:::

To add or update an event for a daily job instance, complete the following steps:

1. Open the job in **Daily Job Definition** and enter **Admin** mode. For the full navigation procedure, refer to [Viewing and Updating Expression Dependencies](Viewing-and-Updating-Expression-Dependencies.md).
2. Expand the **Events** panel.
3. Select **Add** to define a new event, or select an existing event to edit it.
4. Select the trigger type and complete the trigger details.
5. Specify the event command to send when the trigger condition is met.
6. Select **Save**.

The event is saved to the daily job record and applies only to this instance.

## Remove a daily job event

To remove an event from a daily job instance, complete the following steps:

1. Open the job in **Daily Job Definition** and enter **Admin** mode.
2. Expand the **Events** panel.
3. Select the event you want to remove and delete it.
4. Select **Save**.

The event is removed from this daily instance only. The master job definition is not changed.
