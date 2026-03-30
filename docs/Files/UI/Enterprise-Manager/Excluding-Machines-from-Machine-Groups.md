---
title: Excluding Machines from Machine Groups
description: "A machine can be excluded from a group by moving it from the Assigned Machines list back to Unassigned Machines in Enterprise Manager."
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

# Excluding Machines from Machine Groups

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Machine groups in Enterprise Manager assign machines to logical groups for job routing. A machine can be excluded from a group by moving it from the Assigned Machines list back to Unassigned Machines. OpCon prevents removing the last machine from a group.

:::note
OpCon prevents the removal of the last machine from a group.
:::

To exclude a machine from a machine group, complete the following steps:

1. Select on **Machine Groups** under the **Administration** topic. The **Machine Groups** screen displays
2. Select the **machine group** in the list
3. Select a **machine** in the **Assigned Machines** list to move it to **Unassigned Machines**. To move multiple machines, use Shift+select or Ctrl+select to select them, then select the **left arrow**
4. Select **Close ☒** to close the **Machine Groups** screen

## When Would You Use It?

- To exclude a machine from a machine group:

## Why Would You Use It?

- **Excluding Machines**: To exclude a machine from a machine group:

## FAQs

**Q: How many steps does the Excluding Machines from Machine Groups procedure involve?**

The Excluding Machines from Machine Groups procedure involves 4 steps. Complete all steps in order and save your changes.

## Glossary

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
