---
title: Setting Preferences for External Tools
description: Configure the OpCon installation directory in Enterprise Manager to enable access to the Import Export utility and other external tools.
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

# Setting Preferences for External Tools

The **External Tools** preference specifies the OpCon installation directory that Enterprise Manager uses to locate utilities such as the Import Export tool (`ImpEx.exe`). You must set this path before Enterprise Manager can open those utilities from the navigation view.

## Set the External Tools directory

To configure the External Tools preference, complete the following steps:

1. Open Enterprise Manager.
2. Go to **Enterprise Manager** > **Preferences**. The **Preferences** dialog opens.
3. Select the expand arrow next to **Enterprise Manager** in the Preferences tree to expand the list.
4. Select **External Tools**. The External Tools settings appear on the right.
5. In the **Opcon/xps installation directory** field, enter the path to the OpCon installation directory. Alternatively, select **Browse** and select the directory.
6. Select **Apply** to save the changes without closing the dialog, or select **OK** to save and close.

**Result:** Enterprise Manager stores the directory path. External tools that depend on this path, such as **Import Export**, become available in the navigation view.

:::note
Select **Restore Defaults** to clear the **Opcon/xps installation directory** field and reset it to the empty default.
:::
