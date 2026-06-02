---
title: Setting Preferences for Log Viewer
description: "Configure Log Viewer display options in Enterprise Manager, including line limits, background colors, character set, and regular expression highlighting."
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

# Setting Preferences for Log Viewer

The **Log Viewer** preferences in Enterprise Manager control how log files are displayed, including line visibility limits, background colors per log file, character encoding, and color highlighting for regular expression matches.

To set Log Viewer preferences, complete the following steps:

1. Open Enterprise Manager.
2. Go to **EnterpriseManager \> Preferences**. The **Preferences** dialog opens.
3. Select the expand arrow next to **Enterprise Manager** in the **Preferences** tree to expand the list.
4. Select **Log Viewer**. The Log Viewer settings appear to the right.
5. Configure any of the following options:

   | Option | Description | Default |
   |---|---|---|
   | **Remove empty lines** | Removes empty lines from log file displays. | Enabled |
   | **Use background colors** | Applies a distinct background color to each log file. | Enabled |
   | **Limit visible lines to** | Sets the maximum number of lines displayed. Valid range: 1–10000. | 2000 |
   | **Log files Charset** | Sets the character encoding used to read log files. | System default |

6. To change the background color for a specific log file, select the file from the **Select log file** list, then select the desired color in the **Background color** field and select **OK**.
7. To change the highlight color for a regular expression pattern, select a pattern from the **Regular Expressions** list, select the desired color, and select **OK**.
8. Select **Apply**, then select **OK** to save your changes and close the **Preferences** dialog.

**Result:** Enterprise Manager applies the updated Log Viewer settings immediately when you next open a log file.
