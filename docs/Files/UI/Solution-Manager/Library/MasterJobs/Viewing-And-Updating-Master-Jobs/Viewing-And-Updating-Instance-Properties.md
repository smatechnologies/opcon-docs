---
title: Viewing and Updating Instance Properties
description: "The Instance Properties panel in Master Job Definition displays and allows you to manage the instance properties defined for a job."
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

# Viewing and Updating Instance Properties

The **Instance Properties** panel in **Master Job Definition** displays the instance properties defined for a job. Instance properties are name-value pairs that pass variable data into a job at runtime.

- A blue circular indicator appears to the right of the panel name showing the count of defined property sets.
- Select the full-screen button on the far right of the panel bar to enter or exit full-screen mode.

:::note
Only users with the appropriate privileges can select the **Lock** button and modify job properties. For details, refer to [Required Privileges](Accessing-Master-Jobs.md#Required) in **Accessing Master Job Definition**.
:::

## Adding or Updating Instance Properties

In **Admin** mode, you can add, modify, and delete instance properties. To edit properties, you must first switch to **Admin** mode using the **Lock** button in the toolbar. For instructions, refer to [Switch to Admin Mode](Accessing-Master-Jobs.md#Switch-to-Admin-Mode).

To add or update instance properties, complete the following steps:

1. Go to the master job definition page. For instructions, refer to [Accessing Master Jobs](Accessing-Master-Jobs.md).
2. Select the **Instance Properties** panel to expand it.
3. To add a new property to an existing set, select **New Property** within the property set.
4. Enter a value in the **Name** field and a value in the **Value** field for the new property.
5. To add a new property set (available only when the job has multi-instance enabled), select **New Property Set**.
6. To remove a property set, select **Delete Property Set** on the set you want to remove.
7. Select **Save**.

**Result**: The instance properties are saved to the master job definition.

## Field Validation

The following rules apply to instance property names and values:

| Field | Rules |
|---|---|
| **Name** | Required. Cannot begin or end with a space. Cannot contain the characters `' ( ) \ , = ; |`. |
| **Value** | Required. Cannot contain the character `;`. |
| **Name + Value combined** | The combined length of Name and Value cannot exceed 3,999 characters. |

:::note
Property names within the same job must be unique. You cannot have two properties with the same name in a single property set.
:::
