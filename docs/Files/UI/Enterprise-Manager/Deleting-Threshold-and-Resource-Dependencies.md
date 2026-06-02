---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Deleting Threshold/Resource Dependencies
description: "How to delete a threshold or resource dependency from a job in Enterprise Manager."
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

# Deleting Threshold/Resource Dependencies

A threshold/resource dependency defines a condition a job must meet before it can run, based on a threshold value or resource availability. Deleting a dependency permanently removes it from the job definition; this action cannot be undone.

## Delete a Threshold/Resource Dependency

To delete a threshold or resource dependency from a job, complete the following steps:

1. Select **Job Master** under the **Administration** topic. The **Job Master** screen opens.
2. Select the schedule in the **Schedule** list.
3. Select the job in the **Job** list.
4. Select the **Dependencies** tab in the **Job Properties** frame.
5. Select the **Threshold/Resource Dependency** tab.
6. Select the **Job Related** option, the **Frequency Related** option, or both, depending on the dependency type you want to delete.
7. If you selected **Frequency Related**, select the frequency in the **Frequency List**. If you selected only **Job Related**, proceed to the next step.
8. Select the dependency to delete.
9. Select **Remove**. A confirmation dialog opens with the title **Delete**.
10. Select **Yes** to confirm the deletion, or select **No** to cancel.
11. Select **Close** to close the **Job Master** screen.

**Result:** The selected dependency is permanently removed from the job definition.
