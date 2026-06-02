---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Editing Resources
description: "Step-by-step instructions for editing an existing resource in Enterprise Manager, including updating the resource name, maximum value, documentation, and the current in-use count."
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

# Editing Resources

A resource is a numeric variable that represents a finite pool of units. Jobs can be configured to require a set number of resource units to run, which limits concurrent job execution and prevents resource contention. Use the **Resources** editor in Enterprise Manager to update a resource's name, maximum value, documentation, or current in-use count.

## Edit a resource

To edit a resource, complete the following steps:

1. In Enterprise Manager, select **Resources** under the **Administration** topic.

   The **Resources** screen opens.

2. In the **Select Resource** list, select the resource you want to edit.

3. Update one or more of the following fields:

   | Field | Description |
   |---|---|
   | **Resource Name** | The name of the resource. Maximum 20 characters. |
   | **Max Resources** | The total number of resource units available to jobs. |
   | **Documentation** | Optional notes about the resource. Maximum 4000 characters. |

4. Select **Save** on the **Resources** toolbar.

   **Result:** The resource record is updated.

5. Select **Close** (to the right of the **Resources** tab) to close the **Resources** screen.

## Edit the current in-use value

The **Resources In Use** section displays the number of resource units currently in use alongside the maximum, shown as a fraction and a progress bar. You can manually adjust the in-use count without changing the maximum.

To edit the current in-use value, complete the following steps:

1. Select the resource in the **Select Resource** list.

2. Save or cancel any unsaved changes to the resource before proceeding.

   :::note
   The **Edit Resource In Use value** button is disabled while the editor has unsaved changes.
   :::

3. In the **Resources In Use** section, select the **Edit Resource In Use value** button.

   The update dialog opens.

4. Enter the new in-use value and confirm.

   **Result:** The in-use count is updated immediately for the current daily instance.

## Additional information

- Changes saved to a resource in the Job Master take effect the next time the affected schedule or job record is built or referenced.
- Edits to daily table records apply only to the current instance and do not affect the master record.
- If the resource is locked, Enterprise Manager displays the date, schedule, and job name of the locking dependency in red within the **Resources In Use** section.
