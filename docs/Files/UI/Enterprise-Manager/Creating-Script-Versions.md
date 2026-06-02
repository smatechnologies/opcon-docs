---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Creating Script Versions
description: "Step-by-step procedure for creating a new version of an embedded script in the Enterprise Manager Script Repository."
product_area: Enterprise Manager
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

# Creating Script Versions

Embedded scripts stored in the OpCon database are versioned. Each version captures the script content, a timestamp, the author, and optional comments. You must have the **Maintain Scripts** function privilege (or **All Administration Functions** / **All User Interface Functions**) to create a new version.

To create a new script version, complete the following steps:

1. In Enterprise Manager, select **Repository** under the **Scripts** topic. The **Script Repository** screen opens.
2. Select a script in the list.
3. Select **Show/Create Versions** on the toolbar. The **Versions** dialog opens, showing existing versions with their version number, timestamp, author, and comments.
4. Select **New**. The **Add Version** dialog opens.
5. Select **Open File ...** to browse to the script file you want to import. The file content loads into the script content area.
6. Optionally, enter notes or comments in the **Comments** field.
7. Select **OK**. The new version is saved to the Script Repository.
8. Select **Close** in the **Versions** dialog.
9. Select the close button to the right of the **Script Repository** tab to close the screen.

**Result:** The new script version appears in the **Versions** dialog with an auto-incremented version number, the current timestamp, and your user name as the author.
