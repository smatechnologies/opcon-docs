---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Forcing Password Changes at Next Logon
description: "Use this procedure to require a user to change their password the next time they log in to OpCon."
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

# Forcing Password Changes at Next Logon

When you enable the **Force user to change password at next logon** option on a user account, OpCon requires that user to set a new password the next time they log in. Use this procedure to enable that option in Enterprise Manager.

To force a password change at next logon, complete the following steps:

1. In Enterprise Manager, go to **Security** and select **User Accounts**. The **User Accounts** screen opens.
2. Select the user account from the **Select User** list, or use the **Find** (Ctrl+F) function to locate the account.
3. In the **Options** section, select **Force user to change password at next logon**.
4. Select the **Save** button on the **User Accounts** toolbar.
5. Select **Close** to close the **User Accounts** screen.

**Result:** The next time the user logs in to OpCon, they are prompted to set a new password before they can continue.
