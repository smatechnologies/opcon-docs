---
title: Viewing SAP BW Job Details
description: "Use this procedure to view SAP BW Job Details in Solution Manager."
product_area: Solution Manager
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

# Viewing SAP BW Job Details

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to view SAP BW Job Details in Solution Manager.

To view an SAP BW job, you must have the required privileges as defined in [Required Privileges](../Accessing-Master-Jobs.md#required-privileges).

## When Would You Use It?

- You need to inspect or audit SAP BW Job Details records in Solution Manager
- An audit, compliance review, or operational check requires inspection of current SAP BW Job Details state

## Why Would You Use It?

- **Improve operational visibility**: Inspecting SAP BW Job Details records in Solution Manager supports informed decision-making and provides an audit trail for compliance reviews
- Information in Solution Manager reflects the live database state, ensuring that the data reviewed is current at the time of inspection

## Editing SAP BW Job Details

To edit SAP BW Job Details, complete the following steps:

1. To edit a SAP BW job, go to **Library** > **Master Jobs**
1. Select a SAP BW job in the list
1. Select **Edit**
1. Expand the **Task Details** panel to expose its content

**In the SAP BW Definition frame:**

- **Process Chain Name**: Defines the name of the Business Warehouse job as defined in the SAP Business Warehouse system
- Select the search button to open the SAP Query dialog

**In the SAP Query dialog:**

- **Machine**: Defines the SAP BW agent Machine name
- **Language**: Defines the two-character language abbreviation (e.g., EN for English)
- **Chain**: Defines text matching the desired Process Chain name. Use wildcards (\*) if the full name is unknown
- **Description**: Defines text matching the desired Process Chain description. Use wildcards (\*) if the full description is unknown
- Select the search button to retrieve all matching Process Chain names from the SAP BW system
- Select a process chain from the list and select **Ok** to assign it to the SAP BW Daily Job Definition

:::note
Select the **Undo** button to discard your changes.
:::
Select the **Save** button to apply any changes on this screen.

---

## More Information

For conceptual information, refer to [SAP BW Jobs](../../../../../../../job-types/sap-bw.md) in the **Concepts** online help.

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Process Chain Name | Defines the name of the Business Warehouse job as defined in the SAP Business Warehouse system | — | — |
| Language | Defines the two-character language abbreviation (e.g., EN for English) | — | — |
| Chain | Defines text matching the desired Process Chain name. | — | — |
| Description | Defines text matching the desired Process Chain description. | — | — |

## FAQs

**Q: How many steps does the Viewing SAP BW Job Details procedure involve?**

The Viewing SAP BW Job Details procedure involves 4 steps. Complete all steps in order and save your changes.

**Q: What does Viewing SAP BW Job Details cover?**

This page covers Editing SAP BW Job Details, More Information.

## Glossary

**LSAM (Local Schedule Activity Monitor)**: An agent installed on a target platform that runs jobs in the native language of that platform and communicates results back to SAM via SMANetCom over TCP/IP.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
