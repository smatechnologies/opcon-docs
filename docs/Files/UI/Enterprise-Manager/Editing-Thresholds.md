---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Editing Thresholds
description: "How to edit an existing threshold in Enterprise Manager."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Editing Thresholds

A threshold is a numeric variable stored in the OpCon database that jobs can depend on or update at runtime. Use the **Thresholds** editor in Enterprise Manager to change a threshold's name, value, or documentation.

:::note
Changes saved to a threshold in the master records take effect the next time the record is built or referenced. Edits made directly to daily table records apply only to the current instance.
:::

## Edit a threshold

To edit a threshold, complete the following steps:

1. In Enterprise Manager, select **Thresholds** under the **Administration** topic. The **Thresholds** screen opens.
2. Select an existing threshold from the **Select Threshold** list.
3. Update any of the following fields as needed:

   | Field | Description |
   |---|---|
   | **Name** | The threshold name. Maximum 20 characters. |
   | **Threshold** | The current numeric value. Must be 0 or greater. |
   | **Documentation** | Optional notes about the threshold. Maximum 4000 characters. |

4. Select **Save** on the **Thresholds** toolbar.
5. Select **Close** to close the **Thresholds** screen.

The threshold is updated and any jobs that reference it will use the new values on their next build or reference.
