---
title: Deleting Job Events
description: "Use this procedure to delete job events from a job definition in Enterprise Manager."
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

# Deleting Job Events

Job events trigger OpCon actions when a job reaches a specific state or when a frequency condition is met. Use this procedure to permanently remove a job event from a job definition in Enterprise Manager.

:::warning
Deleting a job event is permanent. OpCon does not retain the event definition after deletion. Verify the event is no longer needed before you proceed.
:::

To delete a job event, complete the following steps:

1. Go to **Administration** and select **Job Master**. The **Job Master** screen opens.
2. Select the schedule in the **Schedule** list.
3. Select the job in the **Job** list.
4. Select the **Events** tab in the **Job Properties** frame.
5. Select the **Job Related** or **Frequency Related** option, depending on the type of event to delete.
   - If **Frequency Related**: Select the frequency in the **Frequency** list, then continue to the next step.
   - If **Job Related**: Continue to the next step.
6. Select the event in the **Events** list.
7. Select **Remove**.
8. Select **Yes** to confirm the deletion, or **No** to cancel.

**Result:** The event is permanently removed from the job definition. The **Events** list refreshes to reflect the change.

9. Select **Close** (to the right of the **Job Master** tab) to close **Job Master**.
