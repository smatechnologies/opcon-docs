---
title: Deleting Job Dependencies
description: "Use this procedure to delete job dependencies in Enterprise Manager."
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Jobs
---

# Deleting Job Dependencies

Job dependencies define predecessor-successor relationships between jobs. Use the **Job Master** screen in Enterprise Manager to permanently remove a job dependency. The dependency type — job-related or frequency-related — determines the steps you follow.

## Deleting a job-related job dependency

To delete a job-related dependency, complete the following steps:

1. Select **Job Master** under the **Administration** topic. The **Job Master** screen displays.
2. Select the schedule in the **Schedule** list.
3. Select the job in the **Job** list.
4. Select the **Dependencies** tab in the **Job Properties** frame.
5. Select the **Job Dependency** tab.
6. Select the **Job Related** option.
7. Select the dependency to delete.
8. Select **Remove**. A confirmation dialog displays.
9. Select **Yes** to confirm the deletion or **No** to cancel.
10. Select **Close** to close the **Job Master** screen.

**Result:** The dependency is permanently removed from the job definition.

## Deleting a frequency-related job dependency

To delete a frequency-related dependency, complete the following steps:

1. Select **Job Master** under the **Administration** topic. The **Job Master** screen displays.
2. Select the schedule in the **Schedule** list.
3. Select the job in the **Job** list.
4. Select the **Dependencies** tab in the **Job Properties** frame.
5. Select the **Job Dependency** tab.
6. Select the **Frequency Related** option.
7. Select the frequency in the **Frequency List**.
8. Select the dependency to delete.
9. Select **Remove**. A confirmation dialog displays.
10. Select **Yes** to confirm the deletion or **No** to cancel.
11. Select **Close** to close the **Job Master** screen.

**Result:** The dependency is permanently removed from the job definition for the selected frequency.

:::caution
Deleting a job dependency is permanent. Verify the dependency is no longer needed before proceeding, as deletion may affect jobs that depend on this predecessor relationship.
:::
