---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Showing Script Version Cross References
description: "View which jobs use a specific embedded script version in Enterprise Manager."
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

# Showing Script Version Cross References

Use the Script Repository in Enterprise Manager to view which jobs reference a specific version of an embedded script. The **Cross References** dialog lists both master jobs and daily jobs that use the selected version.

:::note
The **Cross References** button is available only to users with the **Maintain Scripts** function privilege. Users with only the **View Script Contents** privilege cannot access this feature.
:::

To view cross references for a script version, complete the following steps:

1. In the navigation pane, select **Repository** under the **Scripts** topic.

   The **Script Repository** screen opens.

2. Select a script from the list.

3. Select **Show/Create Versions** on the toolbar.

   The **Versions** dialog opens, showing all versions of the selected script.

4. Select the script version you want to inspect.

5. Select **Cross References**.

   The **Cross References** dialog opens. If the version has no cross references, an information message is displayed instead.

6. Review the **Master Jobs** and **Daily Jobs** tabs to identify which jobs use this script version.

7. Select **OK** to close the **Cross References** dialog.

8. Select **Close** to close the **Versions** dialog.

9. Select **Close** to close the **Script Repository** screen.

**Result:** You have confirmed which jobs are assigned to the selected script version.
