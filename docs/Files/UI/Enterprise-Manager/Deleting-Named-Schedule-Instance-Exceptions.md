---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Deleting Named Schedule Instance Exceptions
description: "Use this procedure to delete job patterns and exception rules from a Named Schedule Instance in Enterprise Manager."
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

# Deleting Named Schedule Instance Exceptions

Named Schedule Instance Exceptions consist of job patterns and exception rules. A job pattern determines which jobs the exception rules apply to (wildcard support). Deleting a job pattern also removes all exception rules associated with it. Deleting an individual exception rule removes only that rule while leaving the job pattern intact.

## Delete a Job Pattern

Deleting a job pattern permanently removes it and all associated exception rules from the named schedule instance.

To delete a job pattern, complete the following steps:

1. Select **Schedule Master** under the **Administration** topic.
2. Select the schedule in the **Schedule Selection** list.
3. Select the **Instance Definition** tab in the **Schedule Details** frame.
4. Select the instance name associated with the job pattern you want to delete.
5. Select the job pattern you want to delete in the **Job Patterns** list.
6. Select **Remove**.
7. Select ![Green circle with white checkmark inside](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Schedule Master** toolbar.
8. Select **Close ☒** to close **Schedule Master**.

**Result:** The job pattern and all exception rules associated with it are permanently removed from the named schedule instance.

## Delete an Exception Rule

To delete an exception rule, complete the following steps:

1. Select **Schedule Master** under the **Administration** topic.
2. Select the schedule in the **Schedule Selection** list.
3. Select the **Instance Definition** tab in the **Schedule Details** frame.
4. Select the instance name associated with the exception rule you want to delete.
5. Select the **Exceptions** tab in the **Instance Details** frame.
6. Select the job pattern associated with the exception rule you want to delete.
7. Select the exception rule you want to delete in the **Exception Rules** table.
8. Select **Remove**.
9. Select ![Green circle with white checkmark inside](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Schedule Master** toolbar.
10. Select **Close ☒** to close **Schedule Master**.

**Result:** The exception rule is permanently removed. The job pattern and any remaining exception rules associated with it are unaffected.

## Related information

- Deleting a named schedule instance exceptions record is permanent. Verify the record is no longer needed before proceeding.
- You can only delete one exception rule at a time. To remove all exception rules for a job pattern at once, delete the job pattern instead.
