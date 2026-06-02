---
title: Deleting Job Instance Properties
description: "Use this procedure to delete Job Instance Properties in Enterprise Manager."
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

# Deleting Job Instance Properties

Job Instance Properties are predefined property values assigned to a job in Job Master. Deleting a property removes it permanently from the job definition. Verify the property is no longer needed before proceeding.

To delete a job instance property, complete the following steps:

1. In Enterprise Manager, select **Job Master** under the **Administration** topic.
2. Select the schedule in the **Schedule** list.
3. Select the job in the **Job** list.
4. Select the **Instance Definition** tab in the **Job Properties** frame.
5. Select the property you want to remove.
6. Select **Remove**.
7. Repeat steps 5–6 for each additional property to delete.
8. Select **Save** on the **Job Master** toolbar.
9. Select **Close** to close the **Job Master** screen.

**Result:** The selected properties are permanently removed from the job definition and will not be present when the job runs.

## Frequently Asked Questions

**Can a deleted job instance property be recovered?**

No. Deleting a job instance property permanently removes it from OpCon. Verify the property is no longer needed before deleting it.

**Can you delete more than one property at a time?**

No. You must select and remove one property at a time. Repeat steps 5–6 for each property you want to delete.
