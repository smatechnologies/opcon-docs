---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Adding Machines
description: "Use this procedure to add Machines in the Enterprise Manager."
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

#  Adding Machines

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to add Machines in the Enterprise Manager.

To add a machine, complete the following steps:

1. Select on **Machines** under the **Administration** topic
2. Select ![Add icon](../../../Resources/Images/EM/EMadd.png "Add icon") **Add** on the **Machines** toolbar
3. Enter the *official host name* or *alias* based on the agent machine
4. Enter any relevant documentation for this agent machine in the **Documentation** text box
5. Select the appropriate **operating system** in the **Machine Type** list
6. Leave the socket value set to 3100 in the **Socket Number** box unless the agent has been configured on another socket
7. Enter the maximum number of jobs allowed by the OpCon server
8. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Machines** toolbar

## FAQs

**Q: How do you save a new machines record?**

After completing the required fields, select the **Save** button on the toolbar to save the machines record.

## Glossary

**LSAM (Local Schedule Activity Monitor)**: An agent installed on a target platform that runs jobs in the native language of that platform and communicates results back to SAM via SMANetCom over TCP/IP.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
