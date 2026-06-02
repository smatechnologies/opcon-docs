---
title: Editing Job Master Details
description: Edit job master details in Enterprise Manager to update job configuration, change the job type, or modify other job-level settings.
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

# Editing Job Master Details

Use this procedure to edit job master details in Enterprise Manager. Changes saved to master records take effect the next time the schedule or job is built or referenced. To modify the current day's job instance instead, edit the record in the Daily tables.

## Edit job master details

To edit job master details, complete the following steps:

1. Select **Job Master** under the **Administration** topic. The **Job Master** screen displays.
2. Select the schedule in the **Schedule** list.
3. Select the job in the **Job** list.
4. Select the **Job Details** tab in the **Job Properties** frame.
5. Edit the **Job Details** fields. For descriptions of individual fields, see [Adding Jobs](Adding-Jobs.md).
6. Select **Save** on the **Job Master** toolbar.

**Result:** The updated job master details are saved to the OpCon database.

7. Select **Close** (to the right of the **Job Master** tab) to close the **Job Master** screen.

## Change the job type

To change the job type for an existing job, complete the following steps:

1. Select **Job Master** under the **Administration** topic. The **Job Master** screen displays.
2. Select the schedule in the **Schedule** list.
3. Select the job in the **Job** list.
4. Select **Reset Job Type** in the toolbar. A confirmation dialog asks whether you want to reset the job to a Null Job.
5. Select **OK** to confirm. The job is reset to a Null Job and all platform-specific configuration is removed.
6. Select the new job type in the **Job Type** list.
7. Complete the **Job Details** fields for the new job type. For field descriptions, see [Adding Jobs](Adding-Jobs.md).
8. Select **Save** on the **Job Master** toolbar.

**Result:** The job is saved with the updated job type. The previous platform-specific configuration is not retained.

9. Select **Close** (to the right of the **Job Master** tab) to close the **Job Master** screen.

## Related topics

- [Adding Jobs](Adding-Jobs.md)
