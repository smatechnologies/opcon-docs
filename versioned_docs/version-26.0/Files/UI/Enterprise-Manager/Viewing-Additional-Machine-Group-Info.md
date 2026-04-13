---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Viewing Additional Machine Groups Information
description: "Use this procedure to view Additional Machine Groups Information in the Enterprise Manager."
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

#  Viewing Additional Machine Groups Information

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to view Additional Machine Groups Information in the Enterprise Manager.

To view additional information, complete the following steps:

1.  Select on **Machine Groups** under the **Administration** topic. The **Machine Groups** screen displays
2.  Select the **machine group** in the **Select Machine Group** list
3.  Select the ![Cross Reference icon](../../../Resources/Images/EM/EMcrossref.png "Cross Reference icon") **Cross Reference** button on the toolbar to refer to a list of jobs using the machine group
4.  Select **OK**
5.  Select the ![View Audit icon](../../../Resources/Images/EM/EMviewaudit.png "View Audit icon") **View Audit** button to view audit records for changes to the machine group
6.  Select **Close**
:::

## FAQs

**Q: How many steps does the Viewing Additional Machine Groups Information procedure involve?**

The Viewing Additional Machine Groups Information procedure involves 6 steps. Complete all steps in order and save your changes.

## Glossary

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Audit Record**: An automatically created log entry recording every change made to an OpCon object. Each record captures the timestamp, the user or application that made the change, the item affected, and the original and final values.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
