---
title: List Application Logs
description: "The Application Logs tab displays current OpCon application log files for viewing and download."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-05-29
doc_type: conceptual
---

# List Application Logs

**Theme:** Configure
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Application Logs** tab displays the current OpCon application log files. Use it to review log activity in the browser, open a single log for its details and contents, or download one or more logs for offline analysis and support cases.

The **Application Logs** tab is one of three tabs on the **Logs** page, alongside **Schedule Build Logs** and **Archives**.

To view this tab, you must be a member of a role with at least one of the following privileges:

- All Function Privileges
- View Application Logs
<!--
![A screen showing list of log files](../../../../../Resources/Images/SM/Library/Logs/ApplicationLogs.png "List of Log Files")
-->
## How It Works

The **Application Logs** tab lists log files in a grid with the following columns:

| Column | Description |
|---|---|
| **Date** | The date and time the log file was last updated. The grid is sorted by **Date** in descending order by default. |
| **Name** | The log file name. |
| **Size** | The log file size. |

### Filtering and sorting

Sort the list by selecting a column header. Filter the list by entering text in the **Name** field or the **Size** field. The filter matches any log file whose value contains the text you enter (case insensitive).

### Log File Details

Select a row to open the **Log File Details** page, which shows the log file's **Description**, **General Information**, and **Contents**.

### Download a log file

Select the download button in the **Path** column to download a copy of that log file.

## Available Logs

The following logs can appear in the **Application Logs** tab. This list does not represent all available logs.

| Log | Description |
|---|---|
| **SAM** | Records Schedule and Job starts, Schedule and Job completions, and Event processing. SAM also writes all configuration information to the log when it starts up or regenerates. |
| **Critical** | Records processing errors such as machine communication failures, database connection problems, event processing failures, and license expiration notifications. |
| **Netcom** | Records configuration parameters, basic communication information, and the configuration for each Agent. If the default value for a parameter is changed, the default value is listed in parentheses next to the parameter. |
| **NetcomTrace** | Records all SMANetCom processing information, including detailed TCP/IP messages and socket connection errors to help with debugging. |
| **ServMan** | Records information relating to the management of all listed applications. |
| **ServManTrace** | Records all available debug information for the ServMan log when the trace level setting is enabled. |
| **RequestRouter** | Records all information relating to request routing. |
| **SMAOpConRestAPI** | Records activity with the OpCon REST API. |
| **SMAApiAgentNetcom** | Records information relating to API calls made from Agents through Netcom. |
| **SMALsamDataRetriever** | Records requests from the Job Output Retrieval System (JORS). |
| **NotifyHandler (ENS)** | Records all notification processing (`SMANotifyHandler.log`). |
| **StartTimeCalculator** | Records recalculated start times for active jobs. |
| **SMABIRTProcessor** | Records general program errors in the SMA Processor handler. |
| **SM and SM-API trace logs** | Solution Manager and Solution Manager API trace logs (`sm-*.log` or `sm-api-*.log`). |

## FAQs

**Q: What does the Application Logs tab do?**

It displays the current OpCon application log files so you can review them in the browser, open a single log to view its details and contents, or download one or more logs.

**Q: Where do you find the Application Logs tab in OpCon?**

Go to the **Logs** page in Solution Manager, then select the **Application Logs** tab.

**Q: Why can't I see the Application Logs tab?**

You must be a member of a role with the **All Function Privileges** privilege or the **View Application Logs** privilege.

## Glossary

**JORS (Job Output Retrieval System)**: The system used to retrieve and display job output — logs and reports — from Agent machines directly within the OpCon graphical interfaces.

**SMANetCom (SMA Network Communications Module)**: Handles TCP/IP communication of platform-specific automation information between SAM and all Agents. Uses database tables to maintain reliable communication and data integrity.

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workload automation. SAM monitors Schedule and Job start times, dependencies, and user commands to determine job timing, and processes OpCon events.

**Agent**: An application installed on a target platform that runs jobs in the native language of that platform and reports results back to OpCon. Agents are defined as Machines in OpCon.

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.

## Related Topics

