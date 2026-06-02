---
title: SAP BW Job Details
description: "Field reference for defining an SAP BW job in OpCon, including machine selection, process chain name, and the Process Chain List search dialog."
product_area: Job Types
audience: Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Reference
  - Automation Engineer
  - Jobs
last_updated: 2026-03-18
doc_type: reference
---

# SAP BW Job Details

This page describes the fields available when defining an SAP BW job in OpCon. For platform-specific features and Agent configuration, refer to [SAP BW Agent Getting Started](https://help.smatechnologies.com/opcon/agents/sap-bw/) in the **SAP BW Agent** online help.

## Machine Selection

- **Machines or Machine Group**: The SAP BW Agent machine or machine group on which the job runs. For information on adding an Agent machine to OpCon, refer to [Adding Machines](../Files/UI/Enterprise-Manager/Adding-Machines.md) in the **Enterprise Manager** online help.

## SAP BW Definition

- **Process Chain Name**: The name of the Business Warehouse process chain as defined in the SAP Business Warehouse system. This field is required and read-only; use **Query SAP** to search for and select a process chain name from the connected SAP BW system.

## Process Chain List

Select **Query SAP** next to the **Process Chain Name** field to open the **Process Chain List** dialog. Use this dialog to search the SAP BW system and select a process chain.

| Field | Description |
|---|---|
| **Machine** | The SAP BW Agent machine to query. Defaults to the machine selected in the job definition. |
| **Language** | A two-character language abbreviation (for example, `EN` for English). Maximum 2 characters. |
| **Chain** | Text matching the desired process chain name. Use wildcards (`*`) if the full name is unknown. Defaults to `*`. |
| **Description** | Text matching the desired process chain description. Use wildcards (`*`) if the full description is unknown. Defaults to `*`. |

Select **Query SAP** in the dialog to retrieve all process chains from the SAP BW system that match the search criteria. Results display in a grid showing **Chain Id** and **Description**. Select a row and then select **OK** to populate the **Process Chain Name** field, or double-click a row to select it directly.

:::note
Using `*` for both **Chain** and **Description** queries all process chains. For faster results, provide a more specific value in at least one field.
:::
