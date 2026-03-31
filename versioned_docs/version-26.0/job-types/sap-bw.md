---
title: SAP BW Job Details
description: "Use this section to define an SAP BW job."
product_area: Job Types
audience: Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - Automation Engineer
  - Jobs
last_updated: 2026-03-18
doc_type: conceptual
---

# SAP BW Job Details

**Theme:** Configure  
**Who Is It For?** Automation Engineer

## What Is It?

Use this section to define an SAP BW job. For platform details, refer to [SAP BW Agent Getting started](https://help.smatechnologies.com/opcon/agents/sap-bw/) in the **SAP BW Agent** online help.

## When Would You Use It?

- You need to define an SAP BW job using Use this section to

## Why Would You Use It?

- **SAP BW**: Use this section to define an SAP BW job

## SAP Query

- **Machine**: Defines the SAP BW agent Machine name. For information on adding an agent machine to OpCon, refer to [Adding Machines](../Files/UI/Enterprise-Manager/Adding-Machines.md) in the **Enterprise Manager** online help
- **Language**: Defines the two-character language abbreviation (e.g., enter EN for English)

## General Data

- **Process Chain Name**: Defines the name of the Business Warehouse job as defined in the SAP Business Warehouse system

## Process Chain List

- **Chain**: Text matching the desired Process Chain name. Use wildcards (\*) if the full name is unknown
- **Description**: Text matching the desired Process Chain description
- **Search SAP**: Retrieves all Process Chain names from the SAP BW system matching the search criteria

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Language | Defines the two-character language abbreviation (e.g., enter EN for English) | — | — |
| Process Chain Name | Defines the name of the Business Warehouse job as defined in the SAP Business Warehouse system | — | — |
| Chain | Text matching the desired Process Chain name. | — | — |
| Description | Text matching the desired Process Chain description | — | — |
| Search SAP | Retrieves all Process Chain names from the SAP BW system matching the search criteria | — | — |
## FAQs

**Q: What does an SAP BW job run?**

An SAP BW job triggers and monitors SAP Business Warehouse process chains, identified by their Process Chain Name as defined in the SAP Business Warehouse system.

**Q: Can you search for a Process Chain if you don't know the exact name?**

Yes. Use wildcards (*) in the Chain or Description fields when searching. Select **Search SAP** to retrieve all Process Chain names from the SAP BW system matching the criteria.

**Q: What information is needed to define an SAP BW job?**

You need the SAP BW agent Machine name, the Language abbreviation (e.g., EN for English), and the Process Chain Name.

## Glossary

**LSAM (Local Schedule Activity Monitor)**: An agent installed on a target platform that runs jobs in the native language of that platform and communicates results back to SAM via SMANetCom over TCP/IP.

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
