---
title: Adding Machines to Machine Groups
description: "Use this procedure to add Machines to Machine Groups in the Enterprise Manager."
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

# Adding Machines to Machine Groups

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to add Machines to Machine Groups in the Enterprise Manager.

To add a machine to a machine group, complete the following steps:

1. Select on **Machines** under the **Administration** topic
2. Select the **machine group** in the **Unassigned** list box
3. Select the **right arrow** (green) to move the machine group to the **Assigned** list box
4. Repeat step 3 to assign additional machine groups
5. Select **Close ☒** (to the right of the **Machines** tab) to close the **Machines** screen

## FAQs

**Q: How do you save a new machines to machine groups record?**

After completing the required fields, select the **Save** button on the toolbar to save the machines to machine groups record.

## Glossary


**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.
