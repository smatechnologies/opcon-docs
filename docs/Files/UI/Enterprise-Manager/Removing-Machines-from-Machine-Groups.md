---
title: Removing Machines from Machine Groups
description: "Use this procedure to remove Machines from Machine Groups in Enterprise Manager."
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

# Removing Machines from Machine Groups

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to remove machines from machine groups in Enterprise Manager.

To remove a machine from a machine group, complete the following steps:

1. Select **Machines** under the **Administration** topic.
2. Select the **machine group** in the **Assigned** list box.
3. Select the **left arrow** (red) to move the machine group to the **Unassigned** list box.
4. Repeat step 3 for any additional machine groups to unassign.
5. Select **Close ☒** (to the right of the **Machines** tab) to close the **Machines** screen.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Machine**: A platform defined in the OpCon database that has an Agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.
