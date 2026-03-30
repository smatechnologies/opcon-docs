---
title: Viewing a Job Output File
description: "When OpCon runs a job, the agent on the target machine captures job output and saves it to one or more files."
product_area: Operations
audience: Operations Staff, System Administrator
version_introduced: "[see release notes]"
tags:
  - Procedural
  - Operations Staff
  - System Administrator
  - Schedules
last_updated: 2026-03-18
doc_type: procedural
---

# Viewing a Job Output File

**Theme:** Configure  
**Who Is It For?** Operations Staff, System Administrator

## What Is It?

When OpCon runs a job, the agent on the target machine captures job output and saves it to one or more files. The files vary by platform based on operating system behavior (for example, UNIX saves standard out and standard error). OpCon graphical interfaces retrieve these files using the Job Output Retrieval System (JORS), accessed via the **View Job Output** menu option from a job in Operations.

:::note
Configuring job scheduling for TLS Security also secures JORS communications using the same digital certificate configuration. Refer to [TLS Security](../server-programs/network-communications.md#tls) in the **Server Programs** online help for details.
:::

To view job output successfully, complete the following setup:

- On the target machine:
  - The agent must be running
  - The JORS component must be running
- In the agent's configuration file:
  - Enable "Capture Job Output"
  - Set the JORS port number to match the value in the OpCon database for that machine
- In the **Enterprise Manager**:
  - Set the **JORS Port number** in *Advanced Machine Properties* to match the agent's configuration file. Refer to [Set JORS Port Number for the Machine](../Files/UI/Enterprise-Manager/Configuring-Advanced-Machine-Properties.md#Set_JORS_Port_Number_for_the_Machine) in the **Enterprise Manager** online help

## When Would You Use It?

- You need to inspect or audit a Job Output File records in OpCon Operations
- An audit, compliance review, or operational check requires inspection of current a Job Output File state

## Why Would You Use It?

- **Improve operational visibility**: Inspecting a Job Output File records in OpCon Operations supports informed decision-making and provides an audit trail for compliance reviews
- Information in OpCon Operations reflects the live database state, ensuring that the data reviewed is current at the time of inspection

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: What is JORS?**

JORS (Job Output Retrieval System) is the OpCon component that retrieves job output files from the agent on the target machine. It is accessed via the View Job Output menu option from a job in Operations.

**Q: What must be configured before job output can be viewed?**

The agent and JORS component must be running on the target machine, "Capture Job Output" must be enabled in the agent configuration, and the JORS port number must match between the agent configuration file and the OpCon database entry for that machine.

**Q: Is job output communication secured by TLS?**

Yes. Configuring TLS Security for job scheduling also secures JORS communications using the same digital certificate configuration.

## Glossary

**JORS (Job Output Retrieval System)**: The system used to retrieve and display job output — logs and reports — from agent machines directly within the OpCon graphical interfaces.

**TLS (Transport Layer Security)**: An encryption protocol used to secure TCP/IP communications between SMANetCom and agents, ensuring that job start and status data is transmitted safely.

**LSAM (Local Schedule Activity Monitor)**: An agent installed on a target platform that runs jobs in the native language of that platform and communicates results back to SAM via SMANetCom over TCP/IP.

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
