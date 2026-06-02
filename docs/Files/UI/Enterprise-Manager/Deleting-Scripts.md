---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Deleting Scripts
description: "How to permanently delete a script from the Script Repository in Enterprise Manager."
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

# Deleting Scripts

Deleting a script permanently removes it from the OpCon database. The deletion cannot be undone. If the script is currently assigned to any jobs — in either the master schedule or daily schedule — Enterprise Manager blocks the deletion and displays a Cross References dialog showing which jobs are using the script.

You must have the **Maintain Scripts** function privilege (or **All Administration Functions** or **All User Interface Functions**) to delete scripts.

To delete a script, complete the following steps:

1. In Enterprise Manager, go to **Scripts** and select **Repository**. The **Script Repository** screen opens.
2. Select the script you want to delete from the list.
3. Select **Remove Script** on the toolbar.
4. Select **Yes** to confirm the deletion.

**Result:** The script is permanently removed from the Script Repository. If the script is assigned to one or more jobs, the deletion is blocked and a **Cross References** dialog appears listing the jobs that reference the script. Reassign or remove those jobs from the script before retrying.
