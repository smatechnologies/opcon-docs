---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Using Profile
description: "The Profile link in Enterprise Manager opens the Profile page in Solution Manager, where you can update your account settings."
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

# Using Profile

The **Profile** link in Enterprise Manager opens the **Profile** page in Solution Manager. From the **Profile** page, you can update your own user account settings, including your full name, password, and event password.

:::note
The **E-mail** field is read-only and cannot be changed from this page.
:::

To open the Profile page from Enterprise Manager, complete the following steps:

1. In the Enterprise Manager navigation panel, under **Solution Manager**, select **Profile**.

   The **Profile** page opens in Solution Manager.

2. Update any of the following fields:

   | Field | Description |
   |---|---|
   | **Login** | Read-only. Your OpCon login name. |
   | **Full User Name** | Your display name. Required. |
   | **E-mail** | Read-only.|
   | **Notes** | Optional notes associated with your account. |
   | **Comments** | Optional comments associated with your account. |
   | **User Password** | Your OpCon login password. |
   | **Confirm User Password** | Confirm the new password. |
   | **Event Password** | The password used to authenticate OpCon events submitted under your account. |
   | **Confirm Event Password** | Confirm the new event password. |

3. Select **Save**.

   **Result:** Your account settings are updated in the OpCon database.

For full details on configuring account settings, refer to [Configuring Account Settings](../Solution-Manager/Configuring-Account-Settings.md).
