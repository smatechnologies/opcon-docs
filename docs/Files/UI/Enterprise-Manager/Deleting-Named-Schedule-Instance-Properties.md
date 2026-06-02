---
title: Deleting Named Schedule Instance Properties
description: "Use this procedure to delete one or more Named Schedule Instance Properties from a schedule in Enterprise Manager."
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

# Deleting Named Schedule Instance Properties

Named Schedule Instance Properties define the key-value pairs passed to a named schedule instance at build time. This procedure removes individual properties from a named instance without deleting the instance itself.

To delete a Named Schedule Instance property, complete the following steps:

1. Select **Schedule Master** under the **Administration** topic. The **Schedule Master** screen displays.
2. Select the schedule in the **Schedule Selection** list.
3. Select the **Instance Definition** tab in the **Schedule Details** frame.
4. Select the instance name that has the property to remove.
5. Select the property to remove from the **Properties** tab.
6. Select **Remove**.
7. Repeat steps 5 and 6 to delete additional properties for the selected instance name.
8. Select **Save** on the **Schedule Master** toolbar to save the changes.
9. Select **Close** to close the **Schedule Master** screen.

**Result:** The selected properties are permanently removed from the named schedule instance.

:::note
If an instance has cross-schedule job dependencies, Enterprise Manager prevents removing it. The message "This named instance has cross-schedule job dependencies and cannot be removed." displays.
:::

## Frequently Asked Questions

**Can a deleted Named Schedule Instance property be recovered?**

No. Deleting a Named Schedule Instance property permanently removes it from OpCon. Verify the property is no longer needed before you delete it.

**Can you delete multiple properties at once?**

No. Select and remove properties one at a time using the **Remove** button. Repeat steps 5 and 6 for each property you want to delete.
