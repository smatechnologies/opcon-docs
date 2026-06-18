---
title: List Archive Files
description: "The Archives tab displays archived OpCon log files for viewing and download."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: conceptual
---

# List Archive Files

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Archives** tab displays archived OpCon log files. Use it to review older log activity, open an archived file to see its details and contents, or download a file for offline analysis and support cases.

The **Archives** tab is one of three tabs on the **Logs** page in Solution Manager, alongside **Application Logs** and **Schedule Build Logs**.
<!--
![A screen showing list of log files](../../../../../Resources/Images/SM/Library/Logs/ArchiveLog.png "List of Archived Log Files")
-->
## How It Works

The **Archives** tab lists archived log files in a grid with the following columns:

| Column | Description |
|---|---|
| **Date** | The date and time associated with the archived log file. |
| **Name** | The archived log file name. |
| **Size** | The archived log file size. |

### Filtering and sorting

Sort the list by selecting a column header. Filter the list by entering text in the **Name** or **Size** field. The filter matches any file whose value contains the text you enter (case insensitive). To filter by date, enter a date range in the **Date** field.

### Log File Details

Select a row to open the **Log File Details** page, which shows the file's description, general information, and contents.

### Download an archived log file

Select the download button next to the file to download a copy of the archived log file to your computer.

## FAQs

**Q: Where do I find the Archives tab in OpCon?**

Go to **Library** in Solution Manager, select **Logs**, then select the **Archives** tab.

**Q: Why can't I see the Archives tab?**

## Related Topics

- [List Application Logs](./List-Log-Files.md)
- [Log File Details](./Log-File-Details.md)
