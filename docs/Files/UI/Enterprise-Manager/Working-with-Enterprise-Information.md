---
title: Working with Enterprise Information
description: "The Information section of the Enterprise Manager Navigation Panel provides access to Reports and Logs views for monitoring and diagnosing OpCon system activity."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: conceptual
---

# Working with Enterprise Information

The **Information** section of the Enterprise Manager Navigation Panel gives you access to two views: **Reports** and **Logs**. Use these views to generate operational reports and review OpCon server log files for monitoring and troubleshooting.

Select any **Information** item in the graphic to learn more.

![Information Topic](../../../Resources/Images/EM/EMinformationmenu.png "Information Topic")

## Reports

The **Reports** view lets you select and view predefined BIRT reports based on OpCon data. Reports are generated using the embedded BIRT (Business Intelligence and Reporting Tools) reporting engine.

For full details on working with this view, see [Using Reports](Using-Reports.md).

## Logs

The **Logs** section provides direct access to the OpCon server log files. Expanding **Logs** in the Navigation Panel displays the following entries:

| Log entry | File name | Description |
|---|---|---|
| **SAM Log** | `SAM.log` | Records schedule and job starts, completions, and event processing. Also records configuration information at startup or regeneration. |
| **Critical Log** | `Critical.log` | Records processing errors, including machine communication failures, database connection problems, event processing failures, and license expiration notifications. |
| **Netcom Log** | `SMANetCom.log` | Records configuration parameters, basic communication information, and the configuration for each agent machine. |
| **Netcom Trace Log** | `SMANetComTrace.log` | Records all SMANetCom processing details, including TCP/IP messages and socket connection errors, for debugging purposes. |
| **ServMan Log** | `SMAServMan.log` | Records information related to the management of all listed OpCon server applications. |
| **ENS Log** | `SMANotifyHandler.log` | Records all notification processing information from the SMA Notify Handler. |
| **Request Router Log** | `SMARequestRouter.log` | Records all information related to request routing. |
| **External File** | *(user-selected)* | Opens a log or text file located on the server that is not part of the standard log set. |

To view logs, the **OpConxps** folder on the SAM server must be shared, and your Enterprise Manager connection profile must be configured to point to that directory. For more information, see [Setting Preferences for Log Viewer](Preferences-for-Log-Viewer.md).

For full details on working with this view, see [Using Logs](Using-Logs.md) and [Types of Logs](Types-of-Logs.md).
