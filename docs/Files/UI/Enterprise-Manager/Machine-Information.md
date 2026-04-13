---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Machine Information
description: "The Machine Information dialog provides details about the selected machine."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Reference
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: reference
---

#  Machine Information

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Machine Information** dialog provides details about the selected machine. Access it by selecting **Machine Information** from the right-click menu on the **Table** tab or the **Map** tab of the **Machine Status** view.

The dialog contains the following fields:

-   **Machine Name**: Name of the selected machine
-   **Protocol**: Communication protocol in use
-   **Status**: Current status of the machine
-   **Last Update**: Time of the last status change
-   **LSAM Type**: OS type of the machine
-   **Running Jobs**: Number of jobs currently running and the configured maximum
-   **Domain Name**: Domain name defined in the machine configuration
-   **Max Concurrent Jobs (Agent)**: Maximum concurrent jobs allowed by the agent
-   **Netcom Name**: Netcom name of the machine
-   **Max Concurrent Jobs (Server)**: Maximum concurrent jobs for the machine, as defined in the database
-   **LSAM Socket Number**: Socket number defined for the machine
-   **IP Address**: IP address of the machine
-   **Supports Kill Job**: Whether the *Kill* option is available
-   **Gateway**: Gateway machine, if defined
-   **Supports File Transfer**: Whether the machine is configured for File Transfer runs
-   **JORS Socket Number**: JORS socket number defined for the machine
-   **Time Zone**: (Optional) User-defined name for the machine's physical time zone
-   **Time Offset from SAM**: Read-only calculated difference between the machine's time and SAM's time. Appears only when Time Zone Name and Time Offset from UTC are configured on both the machine and SAM
-   **TLS**: Whether this machine uses TLS
-   **TLS Certificate S/N**: Identifier for the agent certificate verified by the OpCon server
-   **Machine Groups tab**: Machine group(s) the machine belongs to
-   **Machine Properties tab**: Machine properties for this machine
-   **Documentation tab**: Documentation captured on the **Machines** editor dialog

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Machine Name | Name of the selected machine | — | — |
| Protocol | Communication protocol in use | — | — |
| Status | Current status of the machine | — | — |
| Last Update | Time of the last status change | — | — |
| agent Type | OS type of the machine | — | — |
| Running Jobs | Number of jobs currently running and the configured maximum | — | — |
| Domain Name | Domain name defined in the machine configuration | — | — |
| Max Concurrent Jobs (Agent) | Maximum concurrent jobs allowed by the agent | — | — |
| Netcom Name | Netcom name of the machine | — | — |
| Max Concurrent Jobs (Server) | Maximum concurrent jobs for the machine, as defined in the database | — | — |
| agent Socket Number | Socket number defined for the machine | — | — |
| IP Address | IP address of the machine | — | — |
| Supports Kill Job | Whether the *Kill* option is available | — | — |
| Gateway | Gateway machine, if defined | — | — |
| Supports File Transfer | Whether the machine is configured for File Transfer runs | — | — |
| JORS Socket Number | JORS socket number defined for the machine | — | — |
| Time Zone | (Optional) User-defined name for the machine's physical time zone | — | — |
| Time Offset from SAM | Read-only calculated difference between the machine's time and SAM's time. | — | — |
| TLS Certificate S/N | Identifier for the agent certificate verified by the OpCon server | — | — |
| Machine Groups tab | Machine group(s) the machine belongs to | — | — |
| Machine Properties tab | Machine properties for this machine | — | — |
| Documentation tab | Documentation captured on the **Machines** editor dialog | — | — |
## FAQs

**Q: What does Machine Information do?**

title: Machine Information

**Q: Where can you find Machine Information in OpCon?**

Access Machine Information through the appropriate section in the Enterprise Manager or Solution Manager navigation.

## Glossary

**JORS (Job Output Retrieval System)**: The system used to retrieve and display job output — logs and reports — from agent machines directly within the OpCon graphical interfaces.

**TLS (Transport Layer Security)**: An encryption protocol used to secure TCP/IP communications between SMANetCom and agents, ensuring that job start and status data is transmitted safely.

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**LSAM (Local Schedule Activity Monitor)**: An agent installed on a target platform that runs jobs in the native language of that platform and communicates results back to SAM via SMANetCom over TCP/IP.

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
