---
title: Using Logs
description: "Use the Logs viewer in Enterprise Manager to open and monitor SAM server log files, including the SAM Log, Critical Log, SMANetCom logs, and more."
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

# Using Logs

The **Logs** option in Enterprise Manager provides links to open the [SAM server log files](Types-of-Logs.md). The log viewer monitors files in real time and displays new entries as they are written.

Before you can open remote log files, you must share the `OpConxps` folder on the SAM server and configure the Enterprise Manager connection profile to point to that directory. For more information, refer to [Setting up New Profiles](Managing-Connection-Profiles.md) and [Setting Preferences for Log Viewer](Preferences-for-Log-Viewer.md).

## Open a log file

To open a log file in the Logs viewer, complete the following steps:

1. In the Enterprise Manager navigation pane, expand the **Information** topic.
2. Expand **Logs**.
3. Select the log file you want to view (for example, **SAM Log** or **Critical Log**). The log file opens in the Logs viewer and displays the current contents.

**Result:** The viewer loads the selected log file and highlights new entries in bold as they are appended. If the path to the log directory is not configured or is invalid, Enterprise Manager prompts you to configure the OpCon installation directory in the connection profile.

## Logs toolbar and right-click menu

The Logs viewer toolbar provides the following actions. All toolbar actions are also available by right-clicking inside an open log.

| Button | Description |
|---|---|
| **Activate On Event** | Brings the log viewer to the front automatically when a new log entry arrives. |
| **Scroll down** | Keeps the view scrolled to the most recent entry. When selected, the viewer automatically scrolls as new lines are appended. |
| **Clear** | Removes all currently displayed entries from the view. The underlying log file is not modified. |
| **Copy to Clipboard** | Copies the selected log entries to the clipboard as plain text. |

![Logs toolbar](../../../Resources/Images/EM/EMlogstoolbar.png)

## Related topics

- [Types of Logs](Types-of-Logs.md)
- [Setting Preferences for Log Viewer](Preferences-for-Log-Viewer.md)
- [Setting up New Profiles](Managing-Connection-Profiles.md)
