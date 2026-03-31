---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Defining Escalation Rules
description: "Use this procedure to define Escalation Rules in the Enterprise Manager."
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

# Defining Escalation Rules

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to define Escalation Rules in the Enterprise Manager.

To define a rule, complete the following steps:

1. Select on **Escalation Manager** under the **Management** topic. The **Escalation Manager** screen displays
2. Select ![Add icon](../../../Resources/Images/EM/EMadd.png "Add icon") **Add Rule** on the **Rules** toolbar. The **Escalation Rule Add/Edit** dialog displays
3. Enter a *rule name* (e.g., Mission Critical) in the **Rule Name** field
4. Select the **Add** button. The **Escalation Group Entry Add/Edit** dialog displays
5. Specify a *value* in the **Number of Times To Be Notified** field
6. Specify a *value* in the **Time between Notifications (minutes)** field
7. Select an **escalation user group** from the **Group to Notify on Escalation** list or select **Find** (Ctrl+F) to use the [Quick Search](Using-Quick-Search.md)
8. Select **Add**
9. Repeat Steps 4–8 until all desired rule sequences are added
10. Select **Save** in the **Escalation Rule Add/Edit** dialog

## When Would You Use It?

- A new Escalation Rules definition needs to be established in Enterprise Manager

## Why Would You Use It?

- **Establish reusable definitions**: Defining Escalation Rules in OpCon creates a reusable reference that schedules, jobs, and events can share

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What is the purpose of defining escalation rules?**

Defining escalation rules establishes the configuration or properties that OpCon uses when processing the related job, schedule, or automation object.

## Glossary

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
