---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Copying User Accounts
description: "Copy an existing user account in Enterprise Manager to reuse its settings as the starting point for a new account."
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

# Copying User Accounts

Copying a user account duplicates all settings from an existing account into a new account. Use this approach when the new account requires the same role assignments and privileges as an existing one.

:::note
You cannot copy the `ocadm` built-in account.
:::

## Copy a user account

To copy a user account, complete the following steps:

1. In the **Security** topic, select **User Accounts**. The **User Accounts** screen opens.
2. In the **Select User** list, select the user account to copy.
3. On the **User Accounts** toolbar, select **Copy**. The **Copy User** dialog opens.
4. In the **New User Name** field, enter a unique name for the new account. Names may be up to 128 characters and cannot contain the characters `` [ ] : ; | = , + * ? < > " ``.
5. Select **OK**. Enterprise Manager creates the new account and prompts you to set a temporary password.
6. In the password prompt, confirm whether to copy the generated password to the clipboard, then select the appropriate option.
7. Select **Close** (to the right of the **User Accounts** tab) to close the **User Accounts** screen.

**Result:** The new user account appears in the **Select User** list with all settings copied from the original account. The new account requires a password change at first sign-in.
