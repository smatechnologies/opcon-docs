---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Adding Machine Groups
description: "Step-by-step instructions for adding a Machine Group in Enterprise Manager, including assigning machines to the group."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Machine Groups
last_updated: 2026-06-02
doc_type: procedural
---

# Adding Machine Groups

A Machine Group is a named collection of agents that share the same operating system type. Jobs and schedules can target a Machine Group instead of a specific agent, letting OpCon balance work across the group.

To add a Machine Group, complete the following steps:

1. In the **Administration** navigation list, select **Machine Groups**.
2. On the **Machine Groups** toolbar, select **Add**.
3. In the **Name** field, enter a name for the group (maximum 20 characters).
4. *(Optional)* In the **Documentation** field, enter notes about the group (maximum 4,000 characters).
5. In the **Machine Type** list, select the operating system type for the group.
6. To assign machines to the group, use one of the following methods in the **Machine Assignment** section:
   - Select a machine in the **Unassigned Machines** list to move it to **Assigned Machines**.
   - Use Shift+select or Ctrl+select to select multiple machines, then select the right-arrow button to move them to **Assigned Machines**.

   :::note
   At least one machine must be assigned before the group can be saved. Only machines that match the selected machine type appear in the **Unassigned Machines** list.
   :::

7. On the **Machine Groups** toolbar, select **Save**.
8. Select **Close** (to the right of the **Machine Groups** tab) to close the editor.

**Result:** The new Machine Group is saved to the OpCon database. It is now available for selection on jobs and schedules that use a Machine Group instead of a specific agent.

## Required fields

| Field | Required | Limit |
|---|---|---|
| **Name** | Yes | 20 characters |
| **Machine Type** | Yes | — |
| **Assigned Machines** (at least one) | Yes | — |
| **Documentation** | No | 4,000 characters |
