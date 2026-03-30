---
title: SMA Resource Monitor Tools
description: "The SMA Resource Monitor User Interface includes the following tools: - Copy - Delete - Find - Filter."
product_area: Utilities
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - System Configuration
last_updated: 2026-03-18
doc_type: conceptual
---

# SMA Resource Monitor Tools

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The SMA Resource Monitor User Interface includes the following tools:

- [Copy](#Copy)
- [Delete](#Delete)
- [Find](#Find)
- [Filter](#Filter6)

## When Would You Use It?

- The SMA Resource Monitor User Interface includes the following tools:

## Why Would You Use It?

- **SMA Resource**: The SMA Resource Monitor User Interface includes the following tools:

## Copy

Selecting **Copy** from the main screen opens an action pane:

- **From**: Select the monitor or action group to copy
- **To**: Name for the new monitor or action group (max 60 characters)
- **OK**: Select to copy
- **Cancel**: Select to cancel

## Delete

Select the gray box to the left of the row for the monitor or action group to delete, then select **Delete**. A confirmation message displays:

- **Yes**: Deletes the monitor or action group
- **No**: Returns without deleting

## Find

Selecting **Find** from the main screen opens an action pane:

- **Name**: Type the monitor or action group name to find
- **Whole Words Only**: If selected, matches only the exact whole word. If cleared, also matches words containing the search string
- **Case-Sensitive**: If selected, matches case exactly. If cleared, ignores case
- **Find/Next**: Select to start the search. Changes to **Next** after the first result
- **Previous**: Select to find the previous match
- **Done**: Select to close the Find pane

## Filter

Selecting **Filter** opens an action pane. Contents vary by tab:

- [Filter File Monitors](#Filter)
- [Filter Counter Monitors](#Filter2)
- [Filter Service Monitors](#Filter3)
- [Filter Process Monitors](#Filter4)
- [Filter Action Groups](#Filter5)

For all filter panes: select **Filter** to apply the filter (table refreshes to show matching items), and **Done** to close the pane (table refreshes to show all records).

### Filter File Monitors

- **Name Contains**: All or part of the file name
- **File State**: Choose from the list (e.g., Create, Delete, SizeChange, AbsoluteSize, Modify, EOFMarker, ScanString, InUse)

### Filter Counter Monitors

- **Name Contains**: All or part of the counter name
- **Performance Object**: Choose from the list
- **Counter Name**: Choose from the list

### Filter Service Monitors

- **Name Contains**: All or part of the service name
- **ServiceState**: Choose from the list (e.g., Started, Not Started, Stopped)

### Filter Process Monitors

- **Name Contains**: All or part of the process name
- **ProcessState**: Choose from the list (e.g., Running, Not Running)

### Filter Action Groups

- **Name Contains**: All or part of the action group name
- **Action Contains**: Information about the specific action

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Name | Type the monitor or action group name to find | — | — |
| Whole Words Only | If selected, matches only the exact whole word. | — | — |
| Case-Sensitive | If selected, matches case exactly. | — | — |
| Find/Next | Select to start the search. | — | — |
| Name Contains | All or part of the file name | — | — |
| File State | Choose from the list (e.g., Create, Delete, SizeChange, AbsoluteSize, Modify, EOFMarker, ScanString, InUse) | — | — |
| Performance Object | Choose from the list | — | — |
| Counter Name | Choose from the list | — | — |
| ServiceState | Choose from the list (e.g., Started, Not Started, Stopped) | — | — |
| ProcessState | Choose from the list (e.g., Running, Not Running) | — | — |
| Action Contains | Information about the specific action | — | — |
## FAQs

**Q: What tools does the SMA Resource Monitor UI provide for managing monitors?**

The UI provides four tools: Copy (duplicates a monitor or action group), Delete (removes a monitor or action group with confirmation), Find (searches by name with options for whole-word and case-sensitive matching), and Filter (narrows the displayed list by criteria).

**Q: How do you delete a monitor in SMA Resource Monitor?**

Select the gray box to the left of the monitor row to select it, then select Delete. A confirmation message appears — select Yes to confirm deletion or No to cancel.

**Q: How does the Find tool's Whole Words Only setting affect search results?**

When Whole Words Only is selected, the search matches only the exact whole word. When cleared, the search also returns monitors whose names contain the search string as a substring.

## Glossary

**SMA Resource Monitor (SMARM)**: A Windows service that monitors files, counters, services, and processes on Windows machines. When a monitored condition is met, it sends OpCon events to trigger automation actions.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.
