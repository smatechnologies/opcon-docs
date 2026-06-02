---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Deleting Tags
description: "Remove a tag from a job in Enterprise Manager Job Master."
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

# Deleting Tags

Tags are labels you assign to jobs in Job Master to help organize and filter your automation. Removing a tag from a job does not delete the tag from OpCon — it only removes the association between that job and the tag.

:::warning
This action cannot be undone. Verify the tag is no longer needed on the job before you remove it.
:::

To remove a tag from a job, complete the following steps:

1. Select **Job Master** under the **Administration** topic. The **Job Master** screen opens.
2. Select the schedule in the **Schedule** list.
3. Select the job in the **Job** list.
4. Select the **Tags** tab in the **Job Properties** frame.
5. Select the tag you want to remove in the **Tags** frame.
6. Select the **Remove** button to the right of the **Choose Tag** field.
7. Select the **Save** button on the **Job Master** toolbar.
8. Select **Close** to close the **Job Master** screen.

**Result:** The tag is removed from the job. The tag itself remains available in OpCon and can still be assigned to other jobs.

## Related topics

- [Adding Tags](Adding-Tags.md)
- [Tag Manager](Tag-Manager.md)
