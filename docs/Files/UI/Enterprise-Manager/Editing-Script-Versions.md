---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Editing Script Versions
description: "In the Script Repository, you can edit a script version and save it as a new version in the database."
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

# Editing Script Versions

In the Script Repository, you can edit a script version and save the changes as a new version in the database. Each edit creates an incremental version number and preserves the previous version.

To edit a script version, complete the following steps:

1. In Enterprise Manager, select **Repository** under the **Scripts** topic. The **Script Repository** screen displays.
2. Select a script in the list.
3. Select **Show/Create Versions** on the toolbar. The **Versions** dialog displays, listing all versions with their version number, timestamp, author, and comments.
4. Select the script version you want to edit.
5. Select **Edit**. The **Edit Version** dialog displays.
6. Modify the script content as needed.
7. Enter comments describing the changes.
8. Select **Commit New Version**.
9. Select **Close** in the **Versions** dialog.
10. Select **Close** to close the **Script Repository** screen.

**Result:** The edited content is saved as a new, incremented version in the database. The previous version remains available in the **Versions** dialog.

:::note
The **Edit** button is available only to users whose role has the **Maintain Scripts** function privilege. Users without this privilege see a **View** button and can review script content but cannot create new versions.
:::
