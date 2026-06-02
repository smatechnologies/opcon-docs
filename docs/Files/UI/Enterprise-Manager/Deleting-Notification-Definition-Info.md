---
title: Deleting Notification Definition Information
description: "Use this procedure to delete a notification definition from a trigger in Enterprise Manager Notification Manager."
product_area: Enterprise Manager
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Deleting Notification Definition Information

To delete a notification definition from a trigger in Enterprise Manager, complete the following steps:

1. Select **Notification Manager** under the **Management** topic.
2. Select the **Machines**, **Schedules**, or **Jobs** tab in the **Notification Triggers** frame.
3. Select the expand arrow to expand the **Machines**, **Schedules**, or **Jobs** tree.
4. Select the expand arrow to expand the notification group that contains the trigger.
5. Select the trigger that contains the notification definition you want to delete.
6. In the **Notification Definitions** frame, clear the option next to the notification type you want to remove (for example, **Send Email (SMTP)** or **Send Windows Event Log**).
7. Select **Save**.

   A **Delete** confirmation dialog appears listing the notification types that will be removed.

8. Select **Yes** to confirm the deletion, or **No** to cancel.

**Result:** The selected notification definition is permanently removed from the trigger. The trigger remains in place; only the cleared notification type is deleted.

:::warning
Deleting a notification definition cannot be undone. Verify the definition is no longer needed before confirming deletion.
:::

## Related topics

- Adding Notification Triggers
- Editing Notification Definition Information
