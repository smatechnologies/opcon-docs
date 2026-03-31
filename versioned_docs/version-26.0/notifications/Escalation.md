---
title: Escalation
description: "An escalation in OpCon is a notification marked for recurring delivery, with an escalation rule, to one or more groups of people defined in escalation groups."
product_area: Notifications
audience: Operations Staff, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - Operations Staff
  - Automation Engineer
  - Notifications
last_updated: 2026-03-18
doc_type: conceptual
---

# Escalation

**Theme:** Configure  
**Who Is It For?** Operations Staff, Automation Engineer

## What Is It?

An escalation in OpCon is a notification marked for recurring delivery, with an escalation rule, to one or more groups of people defined in escalation groups. The escalation must be acknowledged to stop the process. Acknowledging an escalation signals to OpCon that the user read the notification; the customer is then responsible for taking any required action.

:::tip Example
A group of critical jobs requires immediate attention if any fail. The OpCon administrator sets up the following:

- In Escalation Manager, the administrator:
  - Defines three escalation groups representing **First**, **Second**, and **Third** level contacts
  - Defines an escalation rule named **Three Level** where:
    - The delay between repeat notifications is 5 minutes
    - The **First** group has 3 chances to acknowledge. If not acknowledged in time, the **Second** group is notified
    - The **Second** group has 3 chances to acknowledge. If not acknowledged in time, the **Third** group is notified
    - The **Third** group has 5 chances to acknowledge. If not acknowledged in time, the escalation process is exhausted
- In Notification Manager, the administrator:
  - Defines a Job Group with the critical jobs
  - Defines a trigger on the Job Group for a "Job Failed" event
  - Defines an email with details explaining the required action
  - Applies the **Three Level** escalation rule to the trigger

As a result:

- When any job in the Job Group fails, notifications go to the **First** level escalation group immediately
- Anyone who can see the escalation in the Escalation Acknowledgment view in the EM can acknowledge it
- The person who stops the escalation should then address the failed job
- If not acknowledged in time, the process continues to the **Second** and **Third** groups

:::

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What is escalation in OpCon?**

Escalation is a notification marked for recurring delivery to one or more groups. The notification repeats at a configured interval until someone acknowledges it. If the first group does not acknowledge within the allotted chances, the next group is notified.

**Q: Does acknowledging an escalation automatically resolve the underlying issue?**

No. Acknowledging an escalation signals to OpCon that the user has read the notification, but the customer is then responsible for taking any required action to address the root cause.

**Q: Who can acknowledge an escalation?**

Anyone who can see the escalation in the Escalation Acknowledgment view in the Enterprise Manager can acknowledge it.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
