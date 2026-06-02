---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Editing Schedule Completion Events
description: "How to edit an existing Schedule Completion Event on a schedule definition in Enterprise Manager."
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

# Editing Schedule Completion Events

Schedule Completion Events are OpCon events attached to a schedule definition that trigger when the schedule completes. Use this procedure to modify an existing event on a schedule in Enterprise Manager.

To edit a schedule completion event, complete the following steps:

1. Select **Schedule Master** under the **Administration** topic. The **Schedule Master** screen displays.
2. Select the schedule in the **Schedule Selection** list.
3. Select the **Events** tab in the **Schedule Details** frame.
4. Select the existing event in the **Schedule Completion Events** list.
5. Select **Edit**. The **Event Definition Wizard** displays.
6. Update the event parameters as needed. For details on event parameter syntax, refer to [Adding Schedule Completion Events](Adding-Schedule-Completion-Events.md).
7. Select **Finish** to save the changes, or select **Cancel** to discard them.
8. Select **Close** (to the right of the **Schedule Master** tab) to close the **Schedule Master** screen.

**Result:** The updated event is saved to the Schedule Master. Changes take effect the next time the schedule record is built or referenced.

:::note
If you edit a schedule completion event on a daily schedule record (an already-built instance), the change applies only to that current instance and does not affect the Schedule Master definition.
:::

## Related topics

- [Adding Schedule Completion Events](Adding-Schedule-Completion-Events.md)
