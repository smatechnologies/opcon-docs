---
title: Accessing Application Logs
description: "Enterprise Manager application logs record activity while Enterprise Manager is open. Use this procedure to open the log viewer and locate log files."
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

# Accessing Application Logs

Enterprise Manager records application activity in log files while it is open. These logs are useful for diagnosing problems and can be attached automatically when you submit a report through the **[Report Problem](Reporting-Problems.md)** dialog.

EM log files are stored in the `.enterpriseManager/.metadata/` directory inside your home directory.

:::tip Example
On Windows, the default path resembles:

`C:\Users\<username>\.enterpriseManager\.metadata\.log`
:::

<!-- GAP: The log rotation size threshold (1,002 KB) and maximum retained file count (10) stated in the original page are not confirmed in source code; needs SME or Eclipse platform documentation to verify -->

## Opening the Application Log

To open the Enterprise Manager application log, complete the following steps:

1. In the Enterprise Manager navigation panel, expand **Support**.
2. Select **Application Log**.

**Result:** The application log opens in the log viewer panel, displaying recent activity recorded during the current or previous Enterprise Manager sessions.

## Server Log Files

In addition to the Enterprise Manager application log, you can view OpCon server log files directly from Enterprise Manager.

To open a server log file, complete the following steps:

1. In the Enterprise Manager navigation panel, expand **Information**.
2. Expand **Logs**.
3. Select the log file you want to open.

**Result:** The selected log file opens in the log viewer. The viewer monitors the file and displays new entries as they are written.

The following server log files are available:

| Log file | Description |
|---|---|
| `SAM.log` | Schedule Activity Monitor activity |
| `Critical.log` | Critical system events |
| `SMANetCom.log` | Network communications activity |
| `SMANetComTrace.log` | Detailed network communications trace |
| `SMAServMan.log` | Service Manager activity |
| `SMANotifyHandler.log` | Event notification handler activity |
| `SMARequestRouter.log` | Request Router activity |

Server log files are located in the `SAM/Log/` subdirectory of the OpCon installation directory. Enterprise Manager reads these files either from a local path or from a remote SMB share, depending on your connection profile configuration.
