---
title: Applying Escalation Rules to Triggers
description: "Use this procedure to apply Escalation Rules to Triggers in the Enterprise Manager."
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

# Applying Escalation Rules to Triggers

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to apply Escalation Rules to Triggers in the Enterprise Manager.

To apply a rule to a trigger, complete the following steps:

1. Select on **Notification Manager** under the **Management** topic
2. Select the **Machines**, **Schedules**, or **Jobs** tab in the **Notification Triggers** frame
3. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand a folder and select the desired **trigger**
4. Select the **option** to the left of **Send Email (SMTP)**. The **Email** tab appears and the **Escalation Rule** sub-frame activates
5. Select an **escalation rule** from the list in the **Escalation Rule** sub-frame, or select **Find** (Ctrl+F) to use the [Quick Search](Using-Quick-Search.md)
6. Select the **Email** tab
7. Enter an *email address* in the **To** field and a *subject* in the **Subject** field
8. *(Optional)* Enter values for the **CC** and/or **Bcc** fields
9. Select the **Message** tab and add a *message*
10. *(Optional)* Select the **Attachments** tab and add *attachments*
11. Select **Save**

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: How many steps does the Applying Escalation Rules to Triggers procedure involve?**

The Applying Escalation Rules to Triggers procedure involves 11 steps. Complete all steps in order and save your changes.

## Glossary

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
