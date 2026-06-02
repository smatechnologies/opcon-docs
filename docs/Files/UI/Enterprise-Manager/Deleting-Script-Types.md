---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Deleting Script Types
description: "How to delete a script type in Enterprise Manager using the Remove Type button."
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

# Deleting Script Types

A script type defines the file extension and runtime environment for scripts managed in OpCon. You can delete a script type from the **Script Types** editor in Enterprise Manager when it is no longer needed.

:::warning
Deletion is permanent. OpCon does not retain a deleted script type record. Verify the script type is no longer in use before proceeding.

If the script type is referenced by existing scripts, runners, or jobs, Enterprise Manager displays a cross-reference dialog instead of deleting the record. Resolve those references before attempting deletion.
:::

## Before you begin

You must have the **Maintain Scripts** privilege (or **All Administration Functions** or **All User Interface Functions**) to remove a script type.

## Delete a script type

To delete a script type, complete the following steps:

1. In Enterprise Manager, select **Types** under the **Scripts** topic. The **Script Types** editor opens.
2. Select the script type you want to delete from the list.
3. Select the **Remove Type** button on the toolbar. The **Confirm Remove** dialog opens.
4. Select **Yes** to confirm the deletion.

**Result:** The script type is permanently removed from OpCon and no longer appears in the list.
