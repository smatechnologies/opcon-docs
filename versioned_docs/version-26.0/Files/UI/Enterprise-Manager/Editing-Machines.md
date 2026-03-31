---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Editing Machines
description: "Use this procedure to edit Machines in the Enterprise Manager."
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

#  Editing Machines

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to edit Machines in the Enterprise Manager.

To edit a machine, complete the following steps:

1.  Select on **Machines** under the **Administration** topic. The **Machines** screen displays
2.  Select the **machine** in the **Select Machine** list
3.  Right-click over the graphic in the **Communication Status** frame and select **Stop Communication** to stop communication with the agent
4.  Enter the *changes* to the **Name**, **Documentation**, or **General Settings** boxes
5.  Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Machines** toolbar
6.  Right-click over the graphic in the **Communication Status** frame and select **Start Communication** to resume communication with the agent
7.  Select **Close ☒** (to the right of the **Machines** tab) to close the **Machines** screen

## FAQs

**Q: Do edits to machines take effect immediately?**

Changes saved to machines in the Job Master take effect the next time the record is built or referenced. Edits to Daily table records apply only to the current instance.

## Glossary

**LSAM (Local Schedule Activity Monitor)**: An agent installed on a target platform that runs jobs in the native language of that platform and communicates results back to SAM via SMANetCom over TCP/IP.

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
