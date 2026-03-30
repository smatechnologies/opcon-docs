---
title: Changing Case of Machine Names
description: "Use this procedure to change Case of Machine Names in the Enterprise Manager."
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

# Changing Case of Machine Names

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to change Case of Machine Names in the Enterprise Manager.

:::note
If the database being used by OpCon is not binary, the case of a machine name cannot be changed. A non-binary database considers the entry to be the same. Complete the following steps if the case of the machine name needs to be changed.
:::

To change the case of a machine name:

1. Select on **Machines** under the **Administration** topic. The
    **Machines** screen displays.
2. Select the **machine** in the **Select Machine** list
3. Right-click over the graphic to enable the menu in the
    **Communication Status** frame.
4. Select on **Stop Communication** to stop the communication
    with the agent.
5. Change the case of the machine name and append an additional
    character (e.g., change TESTMACH to testmach1) in the **Name** text
    box.
6. Select ![Save     icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save**
    on the **Machines** toolbar.
7. Delete the **additional character** from the machine name
8. Select ![Save     icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save**
    on the **Machines** toolbar.
9. Right-click over the graphic to enable the menu in the
    **Communication Status** frame.
10. Select on **Start Communication**
11. Select **Close ☒** (to the right of the **Machines** tab) to close
    the **Machines** screen.

## When Would You Use It?

- To change the case of a machine name:

## Why Would You Use It?

- **Changing Case**: To change the case of a machine name:

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: How many steps does the Changing Case of Machine Names procedure involve?**

The Changing Case of Machine Names procedure involves 11 steps. Complete all steps in order and save your changes.

## Glossary

**LSAM (Local Schedule Activity Monitor)**: An agent installed on a target platform that runs jobs in the native language of that platform and communicates results back to SAM via SMANetCom over TCP/IP.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
