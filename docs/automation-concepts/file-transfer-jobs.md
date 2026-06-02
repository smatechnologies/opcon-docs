---
title: File Transfer Jobs
description: "The SMA File Transfer (SMAFT) system transfers files across multiple platforms via an OpCon job."
product_area: Automation Concepts
audience: Automation Engineer, Business Analyst
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - Automation Engineer
  - Business Analyst
  - Jobs
last_updated: 2026-03-18
doc_type: conceptual
---

# File Transfer Jobs

The SMA File Transfer (SMAFT) system transfers files across multiple platforms via an OpCon job. The SMAFTAgent and SMAFTServer components are installed with FT-enabled agents on Microsoft, IBM i, MCP, OS 2200 and BIS, UNIX, and z/OS. Both source and destination machines must have these components installed.

:::note
SMAFT for Windows requires a .NET version to be installed.
:::

![File Transfer Job](../Resources/Images/Concepts/smaft.png "File Transfer Job")

After receiving instructions from the resident agent, the SMAFT component negotiates transfer settings with the SMAFT component on the destination machine, then transfers the file.

:::note
The file transfer port for the initiating machine must be open on the firewall. For more information, refer to [File Transfer Settings](../objects/machines.md#file).
:::

## Prerequisites

Before configuring a file transfer job, verify the following conditions are met:

- Both the source and destination machines have the SMAFTAgent and SMAFTServer components installed.
- The file transfer port for the initiating (source) machine is open on the firewall.
- Machine definitions are configured in OpCon for both source and destination machines with file transfer enabled.
- File transfer parameters are defined in each agent's configuration file. These parameters are co-located with the agent's JORS parameters.

For agent-specific configuration instructions, refer to the online help for each platform:

- **IBM i**: [The SMA File Transfer Process](https://help.smatechnologies.com/opcon/agents/ibmi/latest/Files/Agents/IBM-i/SMA-File-Transfer.md#The) in the **IBM i Agent** online help
- **MCP**: [Optional Modules (OPT)](https://help.smatechnologies.com/opcon/agents/mcp/latest/Files/Agents/MCP/Optional-Modules-(OPT).md#MCP_LSAM_Configuration_Settings:_Optional_Modules:_File_Transfer) in the **MCP Agent** online help
- **Microsoft**: [JORS Settings](https://help.smatechnologies.com/opcon/agents/windows/latest/Files/Agents/Microsoft/JORS-Settings.md) in the **Microsoft Agent** online help
- **UNIX**: [JORS and SMAFT Parameters](https://help.smatechnologies.com/opcon/agents/unix/latest/Files/Agents/UNIX/JORS-and-SMAFT-Parameters.md) in the **UNIX Agent** online help
- **OS 2200 and BIS**: [JORS and File Transfer Configuration](https://help.smatechnologies.com/opcon/agents/os2200/latest/Files/Agents/OS-2200/Configuration.md#JORS_and_File_Transfer_Configuration) in the **OS 2200 Agent** online help
- **z/OS**: [Standalone File Transfer](https://help.smatechnologies.com/opcon/agents/zos/latest/Files/Agents/zOS/Standalone-File-Transfer.md) in the **z/OS Agent** online help

## How It Works

When OpCon runs a file transfer job, it sends instructions to the resident agent on the initiating machine. The SMAFT component on that machine negotiates the transfer settings with the SMAFT component on the remote machine. The file is then transferred directly between the two machines.

The **Start Transfer On** setting in the job definition controls which machine initiates the transfer. When both machines support full file transfer, you can set this to **Source** or **Destination**.

## Agent File Transfer Settings

Each agent machine has a **File Transfer Settings** section in Solution Manager under **Agents**. These settings apply to all file transfer jobs that use the machine. The following settings are available for IBM i, MCP, UNIX, and Windows agents:

| Setting | Description |
|---|---|
| **File Transfer Role** | Defines whether the agent acts as source, destination, or both. |
| **File Transfer Port Number (TLS)** | The port used for TLS-secured SMAFT communications. Valid values are `0` or `1024`–`65535`. |
| **File Transfer Port Number (Non-TLS)** | The port used for non-TLS SMAFT communications. Valid values are `0` or `1024`–`65535`. |
| **Support non-TLS for SMAFT Agent Communications** | Determines whether the SMAFT Agent allows jobs to be requested over an unsecured connection. |
| **Support non-TLS for SMAFT Server Communications** | Determines whether the SMAFT Server accepts connections over an unsecured connection. |
| **Support TLS for SMAFT Agent Communications** | Determines whether the SMAFT Agent supports job requests over a TLS-secured connection. |
| **Support TLS for SMAFT Server Communications** | Determines whether the SMAFT Server accepts connections over a TLS-secured connection. |

:::note
The TLS port number and TLS communication settings are only available for agents that support TLS Security for SMA File Transfer jobs.
:::

For additional information, refer to [File Transfer Settings](../objects/machines.md#file).

## Job Definition

When you define a file transfer job, configure the source and destination settings to match the agent file transfer settings on both machines. For complete field descriptions, refer to [File Transfer Job Details](../job-types/file-transfer.md).

The job definition includes the following sections:

- **Source**: Machine, user, file path, and data type for the source file.
- **Destination**: Machine, user, file path, and data type for the destination file.
- **Options**: Settings such as compression, encryption, TLS security override, maximum transfer rate, and what to do if the destination file already exists.
- **Failure Criteria**: Whether the job fails if the configured transfer settings cannot be satisfied.

## Logging

Each agent logs file transfer activity differently. Use these logs to diagnose transfer failures.

| Platform | Log location |
|---|---|
| **IBM i** | SMAFT Agent logs to the SMAFT Agent logging system; SMAFT Server logs to the SMAFT Server logging system. Configure logging in the SMA File Transfer Menu. Refer to [SMA File Transfer Menu](https://help.smatechnologies.com/opcon/agents/ibmi/latest/Files/Agents/IBM-i/SMA-File-Transfer.md#SMA6) in the **IBM i Agent** online help. |
| **MCP** | SMAFTAgent logs general messages to the `PRT_FTAGENT` print file when SW2 is set for the agent. Refer to [Problem Resolution and Debugging](https://help.smatechnologies.com/opcon/agents/mcp/latest/Files/Agents/MCP/Problem-Resolution-and-Debugging.md) in the **MCP Agent** online help. |
| **Microsoft** | SMAFTAgent writes processing information to `SMAFTAgent.log` in `<Output Directory>\MSLSAM\Log\`. Logging is controlled by the agent's Debug Settings. Refer to [Debug Options](https://help.smatechnologies.com/opcon/agents/windows/latest/Files/Agents/Microsoft/Debug-Options.md) in the **Microsoft Agent** online help. |
| **UNIX** | SMAFTAgent logs general messages to the UNIX agent logfile and errors to the UNIX agent errfile. Refer to [JORS and SMAFT Parameters](https://help.smatechnologies.com/opcon/agents/unix/latest/Files/Agents/UNIX/JORS-and-SMAFT-Parameters.md) in the **UNIX Agent** online help. |
| **OS 2200** | SMAFT Agent logs to the SMAFT log file; SMAFT Server (JORS) logs to the `SMAJOR` log file. Logging is configured under Debug Mode in the agent's Advanced Options. Refer to [Configuration Settings -- Advanced Options](https://help.smatechnologies.com/opcon/agents/os2200/latest/Files/Agents/OS-2200/Configuration.md#Advanced_Options) in the **OS 2200 Agent** online help. |
| **z/OS** | File transfer runs as a job; the job log contains all logging information. |
