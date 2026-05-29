---
title: Adding Agents
description: "Agents (Machines) are added in Enterprise Manager. This page explains where to add them and links to the procedure."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-05-29
doc_type: procedural
---

# Adding Agents

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

An Agent represents a platform that has the OpCon agent software installed and that OpCon routes job execution requests to. Agents are defined as Machines in the OpCon database.

A new agent is added in **Enterprise Manager**. The Solution Manager Agents area does not add agents — it is used to monitor agent status and manage communication with existing agents.

Add an agent when you:

- Install the OpCon agent software on a new platform and need OpCon to communicate with it
- Bring additional capacity online to run jobs

For conceptual information, refer to [Machines](../../../objects/machines.md) in the **Concepts** online help.

## Administration

### Required Privileges

To add an agent (Machine), your role must have one of the following privileges:

- **Function Privilege**: Maintain Machines
- **Function Privilege**: All Function Privileges

For more information, refer to [Managing Roles and Privileges](Library/AccessManagement/Roles/Managing-Roles-And-Privileges.md).

## Adding an Agent

Agents (Machines) are added in **Enterprise Manager**, under the **Administration** topic. For the step-by-step procedure, refer to [Adding Machines](../Enterprise-Manager/Adding-Machines.md) in the **Enterprise Manager** online help.

To monitor agent status or manage communication in Solution Manager, refer to [Performing Agent Status Updates](Performing-Agent-Status-Updates.md).

## FAQs

**Q: Can an agent be added from Solution Manager?**

No. Agents (Machines) are added in Enterprise Manager, under the **Administration** topic. Refer to [Adding Machines](../Enterprise-Manager/Adding-Machines.md). The Solution Manager Agents area is used to monitor agent status and manage communication with existing agents.

**Q: What is the difference between an Agent and a Machine?**

They refer to the same thing. The agent is the software installed on a target platform; the Machine is how that platform is defined in the OpCon database. OpCon routes job execution requests to the Machine.

**Q: How do you change an agent's communication status?**

Use [Performing Agent Status Updates](Performing-Agent-Status-Updates.md) in Solution Manager.

## Related Topics

- [Adding Machines](../Enterprise-Manager/Adding-Machines.md)
- [Managing Agents](Managing-Agents.md)
- [Performing Agent Status Updates](Performing-Agent-Status-Updates.md)
- [Machines](../../../objects/machines.md)

## Glossary

**Agent**: An application installed on a target platform that runs jobs in the native language of that platform and reports results back to OpCon. Agents are defined as Machines in OpCon.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type.
