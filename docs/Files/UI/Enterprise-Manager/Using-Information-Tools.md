---
title: Information Tools
description: "Reference for the Information toolbar buttons available in the Log Viewer and Reports views of Enterprise Manager."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Reference
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: reference
---

# Information Tools

The Information toolbar buttons are available in the **Log Viewer** and **Reports** [views](Navigation-Views.md) of Enterprise Manager. The buttons that appear depend on which view is active.

## Log Viewer toolbar buttons

The following buttons appear in the Log Viewer view toolbar.

| Button | Description |
|---|---|
| **Activate On Event** | Makes the log file the active displayed log file when activity is written to it, even if it is not currently the active log file. |
| **Scroll down** | Moves the display immediately to the end of the log file. |
| **Clear** | Clears the displayed contents of the current log file. |
| **Copy to Clipboard** | Copies highlighted lines from the log file to the clipboard. |

## Reports view toolbar buttons

The following buttons appear in the Reports view toolbar.

| Button | Description |
|---|---|
| **Manage Reports** | Opens the Report Management dialog to manage report filters and general security for reports. Requires the Maintain Reports function privilege. |
| **Refresh** | Refreshes the currently displayed report data. |

## View-level toolbar buttons

The following buttons are available on any [Navigation View](Navigation-Views.md) in Enterprise Manager.

| Button | Description |
|---|---|
| **Minimize** | Minimizes the view and places a button for it in the sidebar. |
| **Maximize** | Opens the view to its maximum size. When the view is maximized, this button changes to **Restore**. |
| **Restore** | Returns the view to its original location and size. |

:::note
The Table of Contents, Run report, Export data, Export report, Print report, and Print report on the server toolbar items are provided by the embedded BIRT report viewer and are not supported directly by Enterprise Manager toolbar configuration. For instructions on running and printing reports, see [Running Reports](Running-Reports.md) and [Printing Reports](Printing-Reports.md).
:::
