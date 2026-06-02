---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Showing Script Cross References
description: "View which jobs reference a specific script in the Script Repository."
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

# Showing Script Cross References

Use the **Cross References** feature in the Script Repository to identify which Master and Daily jobs reference a specific embedded script.

To view the cross references for a script, complete the following steps:

1. In Enterprise Manager, select **Repository** under the **Scripts** topic. The **Script Repository** screen opens.
2. Select a script in the list.
3. Select the **Cross References** button on the toolbar. The **Cross Reference Details** dialog opens.

   :::note
   If no jobs reference the selected script, an information message appears instead of the dialog.
   :::

4. Select the **Master Jobs** tab or the **Daily Jobs** tab to view jobs that reference the script.
5. Select **OK** to close the dialog.
6. Select **Close** to close the **Script Repository** screen.

**Result:** You have identified which Master and Daily jobs reference the selected script.
