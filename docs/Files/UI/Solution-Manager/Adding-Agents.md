---
title: Adding Agents
description: "Use this procedure to add Agents in Solution Manager."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-05-28
doc_type: procedural
---

# Adding Agents

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to add an Agent (Machine) in Solution Manager. An Agent represents a platform that has the OpCon agent software installed and that OpCon routes job execution requests to.

Add an agent when you:

- Install the OpCon agent software on a new platform and need OpCon to communicate with it
- Bring additional capacity online to run jobs

For conceptual information, refer to [Machines](../../../objects/machines.md) in the **Concepts** online help.

## Administration

### Required Privileges

To add an agent, your role must have one of the following privileges:

- **Function Privilege**: Maintain Machines
- **Function Privilege**: All Function Privileges

For more information, refer to [Managing Roles and Privileges](Library/AccessManagement/Roles/Managing-Roles-And-Privileges.md).

## Adding an Agent

To add a new agent, complete the following steps:

1. Open the **Agents** administration section.
2. Select the **Add** button.
3. Enter the official host name or alias of the agent machine in the **Name** field. The name must be resolvable to a TCP/IP address.
4. Select the platform type in the **Machine Type** list.
5. Enter the socket number in the **Socket Number** field. The default value is `3100`. Use a different value only if the agent has been configured on a different socket.
6. Enter the maximum number of concurrent jobs the OpCon server allows on this agent in the **Max Concurrent Jobs (Server)** field.
7. _(Optional)_ Enter notes about the agent in the **Documentation** field.
8. Select **Save** to add the agent or **Cancel** to discard the changes.

**Result:** The agent is added to OpCon and appears in the Agents list. Communication with the agent starts after the agent software on the target machine is installed and configured to use the matching socket number.

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Name | Official host name or alias of the agent machine | — | Must be resolvable to a TCP/IP address |
| Machine Type | Platform type of the agent | — | Select from the supported platforms list |
| Socket Number | Socket (port) used for SAM-to-agent communication | 3100 | Must match the value configured on the agent software |
| Max Concurrent Jobs (Server) | Maximum concurrent jobs allowed by the OpCon server | — | Smaller of this value and the agent's local value is enforced |
| Documentation | Free-text notes about the agent | _blank_ | Optional |

## FAQs

**Q: What happens if the Name does not resolve to a TCP/IP address?**

SAM cannot send job requests to the agent. Verify the host name in DNS or use a valid IP address as the Name.

**Q: Why must the Socket Number match the agent software?**

SAM and the agent communicate over the configured socket. If the values do not match, the connection fails and the agent appears offline.

**Q: Can the Documentation field be updated after the agent is added?**

Yes. Edit the agent at any time to update the Documentation field. Changes do not interrupt communication.

## Related Topics

- [Managing Agents](Managing-Agents.md)
- [Performing Agent Status Updates](Performing-Agent-Status-Updates.md)
- [Machines](../../../objects/machines.md)

## Glossary

**Agent**: An application installed on a target platform that runs jobs in the native language of that platform and reports results back to OpCon. Agents are defined as Machines in OpCon.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**SMANetCom (SMA Network Communications Module)**: Handles TCP/IP communication of platform-specific automation information between SAM and all agents.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type.
