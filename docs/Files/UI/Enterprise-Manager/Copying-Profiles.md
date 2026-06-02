---
title: Copying Profiles
description: "Copy an existing Connection Profile in Enterprise Manager to reuse its settings as the starting point for a new profile."
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

# Copying Profiles

A Connection Profile stores the database server, database name, credentials, local and remote OpCon install paths, and an identifying color used by Enterprise Manager. Copying a profile duplicates all of those settings under a new name, giving you a ready-made starting point when the new profile shares most configuration values with an existing one.

## Copy a Connection Profile

To copy a Connection Profile, complete the following steps:

1. Open Enterprise Manager.
2. Go to **EnterpriseManager > Preferences**. The **Preferences** dialog opens.
3. Select the expand arrow next to **Enterprise Manager** in the Preferences tree to expand the list.
4. Select **Connection Profiles**. The **Connection Profiles** settings appear on the right.
5. Select the profile you want to copy from the list.
6. Select **Copy**. The **Copy** dialog opens and prompts: *Please enter the new profile name*.
7. Enter a unique name for the new profile and select **OK**.

**Result:** The copied profile appears in the Connection Profiles list with all settings from the original profile. You can now select the new profile and select **Edit** to modify it as needed.

:::note
The new profile name must be unique. If the name already exists, the dialog displays a validation error and does not create the profile.
:::
