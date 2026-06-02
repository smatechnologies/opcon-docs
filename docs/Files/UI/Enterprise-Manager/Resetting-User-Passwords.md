---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Resetting User Passwords
description: "How to reset a user account password in Enterprise Manager."
product_area: Enterprise Manager
audience: System Administrator
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Resetting User Passwords

Use this procedure when a user is locked out or cannot recover their own password. Enterprise Manager generates a random password, then either displays it for you to copy to the clipboard or sends it to the user's email address if SMTP is configured. The user's account is also flagged to require a password change at next logon.

To reset a user password, complete the following steps:

1. In the **Security** topic, select **User Accounts**. The **User Accounts** screen opens.
2. In the **Select User** list, select the user account whose password you want to reset. You can also use **Find** (Ctrl+F) to locate the user by name.
3. Select **Reset User Password**. Enterprise Manager generates a random password and resets the account.

**Result:** If the user's email address is on file and SMTP is configured, Enterprise Manager sends the new password to that address and displays a confirmation message. If email is not configured, a dialog appears showing the new password and asking whether you want to copy it to the clipboard. The account is flagged to require a password change at next logon.
