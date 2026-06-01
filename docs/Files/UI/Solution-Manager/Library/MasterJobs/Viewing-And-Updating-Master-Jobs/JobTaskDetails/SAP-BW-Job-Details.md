---
title: Viewing, Adding, and Editing SAP BW Job Details
description: "SAP BW job details define the Process Chain Name that OpCon submits to the SAP Business Warehouse system. Configure these details in the Task Details panel of an SAP BW master job in Solution Manager."
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

# Viewing, Adding, and Editing SAP BW Job Details

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

SAP BW job details define the Process Chain Name that OpCon submits to the SAP Business Warehouse system. These details are configured in the **Task Details** panel of an SAP BW master job in Solution Manager.

To view, add, or edit an SAP BW job, you must have the required privileges as defined in [Required Privileges](../Accessing-Master-Jobs.md#required-privileges).

---

## Viewing SAP BW Job Details

To view SAP BW job details, complete the following steps:

1. Go to **Library** > **Master Jobs**.
1. Select an SAP BW job in the list.
1. Select **Edit**.
1. Expand the **Task Details** panel.

---

## Adding SAP BW Job Details

To add SAP BW job details, complete the following steps:

1. Create the job and enter general information as described in [Adding a Job](../../Adding-Master-Jobs.md).
1. Expand the **Task Details** panel.
1. Enter or search for the **Process Chain Name**. See [SAP BW Definition](#sap-bw-definition) for field details.
1. Select **Save**.

---

## Editing SAP BW Job Details

To edit SAP BW job details, complete the following steps:

1. Go to **Library** > **Master Jobs**.
1. Select an SAP BW job in the list.
1. Select **Edit**.
1. Expand the **Task Details** panel.
1. Update the **Process Chain Name** as needed. See [SAP BW Definition](#sap-bw-definition) for field details.
1. Select **Save**.

:::note
Select **Undo** to discard unsaved changes.
:::

---

## SAP BW Definition

:::note
All required fields are designated by a red asterisk.
:::

- **Process Chain Name** (required): The name of the Business Warehouse process chain as defined in the SAP Business Warehouse system. Enter the name directly or select the search button to open the **SAP Query** dialog and search for a chain.

### SAP Query Dialog

Select the search button next to **Process Chain Name** to open the SAP Query dialog. The dialog uses the agent machine selected on the job and the configured language from the SAP session.

**In the Process Chain List panel:**

| Field | Description |
|---|---|
| **Chain** | Text matching the desired process chain name. Use wildcards (`*`) for partial matches. Defaults to `*`. |
| **Description** | Text matching the desired process chain description. Use wildcards (`*`) for partial matches. Defaults to `*`. |

Select **Query SAP** to retrieve all matching process chains from the SAP Business Warehouse system. Results display with **Chain ID** and **Description** columns.

Select a process chain from the results list and select **OK** to assign it to the **Process Chain Name** field.

---

## More Information

For conceptual information, refer to [SAP BW Jobs](../../../../../../../job-types/sap-bw.md) in the **Concepts** online help.
