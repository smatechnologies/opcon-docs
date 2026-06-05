---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Machine Information
description: "The Machine Information dialog provides read-only details about a selected machine."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Reference
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-05-29
doc_type: reference
---

# Machine Information

## What Is It?

The **Machine Information** dialog provides read-only details about a selected machine, including its communication settings, status, concurrent job limits, time zone, and TLS configuration. Use it to review how a machine is configured and to confirm its current operating state without opening the **Machines** editor.

To open the dialog, right-click a machine on the **Table** tab or the **Map** tab of the **Machine Status** view and select **Machine Information**.

The dialog presents machine details in a set of read-only fields, followed by three tabs: **Machine Groups**, **Machine Properties**, and **Documentation**.

## Fields

| Field | Description |
|---|---|
| **Machine Name** | Name of the selected machine. |
| **Protocol** | Communication protocol in use. |
| **Status** | Current status of the machine. |
| **Last Update** | Time of the last status change. |
| **LSAM Type** | Operating system type of the machine. |
| **Running Jobs** | Number of jobs currently running, with the configured maximum. |
| **Domain Name** | Fully qualified domain name defined for the machine. |
| **Max Concurrent Jobs (Agent)** | Maximum concurrent jobs allowed by the Agent. |
| **Netcom Name** | Netcom name of the machine. |
| **Max Concurrent Jobs (Server)** | Maximum concurrent jobs for the machine, as defined in the database. |
| **LSAM Socket Number** | Socket number defined for the machine. |
| **IP Address** | IP address of the machine. |
| **Supports Kill Job** | Whether the machine supports the *Kill* option. Shows **Yes** or **No**. |
| **Gateway** | Gateway machine, if defined. |
| **Supports File Transfer** | Whether the machine is configured for File Transfer. Shows **Yes** when a File Transfer port number greater than zero is defined. |
| **JORS Socket Number** | JORS socket number defined for the machine. |
| **Time Zone** | Time zone name configured for the machine. Appears only when a time zone name or time offset is stored for the machine, and is shown as `name (+/-offset)` when an offset from UTC is also stored. |
| **Time Offset from SAM** | Calculated difference between the machine's time offset from UTC and SAM's time offset from UTC. Appears only when the time zone is shown for the machine and SAM's time zone and offset from UTC are stored in the database. |
| **TLS** | Whether this machine uses TLS for scheduling communication. Shows **Yes** or **No**. |
| **TLS Certificate S/N** | Serial number of the Agent certificate verified by the OpCon server. |

## Tabs

| Tab | Description |
|---|---|
| **Machine Groups** | Machine groups the machine belongs to, sorted by name. |
| **Machine Properties** | Properties available for the machine. |
| **Documentation** | Documentation captured for the machine on the **Machines** editor dialog. |

## Glossary

**JORS (Job Output Retrieval System)**: The system used to retrieve and display job output — logs and reports — from machines directly within the OpCon graphical interfaces.

**TLS (Transport Layer Security)**: An encryption protocol used to secure TCP/IP communications between SMANetCom and Agents, ensuring that job start and status data is transmitted safely.

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workload automation. SAM monitors schedule and job start times, dependencies, and user commands to determine when jobs run, and processes OpCon events.

**Agent**: An application installed on a target platform that runs jobs in the native language of that platform and reports results back to OpCon. Agents are defined as machines in OpCon.

**Machine**: A platform defined in the OpCon database that has an Agent installed. OpCon routes job run requests to machines through SMANetCom, and machines report job completion status back to SAM.

## Related Topics

