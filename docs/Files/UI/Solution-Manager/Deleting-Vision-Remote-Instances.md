---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Deleting Vision Remote Instances
description: "Use this procedure to delete one or more Vision Remote Instances in Solution Manager."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Deleting Vision Remote Instances

A Vision Remote Instance represents a connection to a separate OpCon environment that Vision can monitor. Deleting a remote instance permanently removes it from OpCon. You can delete one or more remote instances at a time.

:::note
You must have OCADM privilege to access the Remote Instances page. The **Remote Instances** button is only visible to OCADM users.
:::

:::warning
You cannot delete a remote instance that is referenced by one or more Vision cards. Remove all card references before deleting the instance.
:::

## Delete one or more Vision Remote Instances

To delete one or more Vision Remote Instances, complete the following steps:

1. In Solution Manager, go to **Vision Settings**.
2. Select **Remote Instances** from the Vision Settings toolbar.
3. In the Remote Instances list, select one or more remote instances to delete.
4. Select **Delete**.
5. In the confirmation dialog, select **OK**.

**Result:** The selected remote instances are permanently removed from OpCon. The list refreshes to reflect the deletion.

If a selected remote instance is referenced by one or more Vision cards, OpCon displays an error notification and does not delete the instance. Review and remove the card references, then repeat the deletion.

## Frequently asked questions

**Can a deleted remote instance be recovered?**

No. Deleting a remote instance permanently removes it from OpCon. Verify the instance is no longer needed before deleting it.

**Can you delete more than one remote instance at a time?**

Yes. Select multiple remote instances in the list before selecting **Delete**. OpCon prompts for confirmation and then removes all selected instances that are not referenced by Vision cards.
