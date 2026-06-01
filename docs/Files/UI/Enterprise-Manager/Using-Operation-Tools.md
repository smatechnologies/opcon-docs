---
title: Operation Toolbar Reference
description: Reference for all toolbar buttons available in the Operation views of Enterprise Manager, organized by the view where each button appears.
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

# Operation Toolbar Reference

The Operation toolbar provides view-specific controls for filtering, display, layout, and data management across the Enterprise Manager Operation views. The available buttons depend on the active view.

## All views

The following buttons are available in most Operation views.

| Button | Description |
|---|---|
| **Job Filter** | Opens filtering options for Dates, Job Statuses, Departments, Access Codes, and Tags. |
| **Minimize** | Minimizes the editor or view and places it in the sidebar. |
| **Maximize** | Expands the editor or view to its maximum size. The button label changes to **Restore** when maximized. |
| **Restore** | Returns the editor or view to its original size and position. |

## List view

| Button | Description |
|---|---|
| **Send Selection** | Sends the current Date, Schedule, and/or Job selection to the Gantt, Bar Chart, Pie Chart, and Workload Chart views. Data sends based on date selection first, then schedule selection. |
| **Show empty schedules/sub-schedules** | Shows only dates that contain empty schedules or sub-schedules in the Daily tables. Select again to hide those dates. |
| **Expand All** | Expands all collapsed nodes in the tree. |
| **Collapse All** | Collapses all expanded nodes in the tree. |
| **View Audit** | Opens the Audit Management dialog to view the user audit record. |
| **View History** | Opens the editor history details. |
| **Delete Old Schedules** | Deletes schedules in the Daily tables that are older than the configured number of days to keep (default: 14 days). Requires the **Delete Daily Schedules** function privilege. |

## Matrix view

| Button | Description |
|---|---|
| **Send Selection** | Sends the current selection to chart views. |
| **Show all jobs for the day** | Displays all jobs on the schedules for the selected day. |
| **Resize Columns** | Resets job grid columns to their default widths. |
| **Show/Hide** | Toggles the left panel (menu and minimap) on or off. |
| **Show/Hide the header containing the calendar** | Hides or shows the Date selector, Schedule selector, and minimap section. |
| **Export** | Opens a save dialog to export the current data in comma-separated value format. |

## PERT view

| Button | Description |
|---|---|
| **Send Selection** | Sends the current selection to chart views. |
| **Arrange All** | Rearranges all items to the selected layout option. |
| **Group by Schedules** | Groups job boxes by schedule and displays a border around each group. Select again to show all jobs together. Most effective when more than one schedule is in the layout. |
| **Open mini map** | Displays a miniature view of the entire PERT map. Use the small window to move the selected section to the main designer area. |
| **Find (Ctrl+F)** | Opens the Find window to locate a job, threshold, or resource in the display. |
| **Show Dependencies** | Shows dependency lines between jobs. <!-- GAP: blue lines indicate After dependencies; red lines indicate Conflict dependencies — color mapping unverified in source --> Select again to clear the lines. |
| **Show Cross Schedule Dependencies** | Displays dependencies from a job in one schedule to a job in another. Select again to revert to the original schedule view. |
| **Show/Hide Thresholds and Resources** | Toggles threshold and resource display on or off in the Workflow Designer. |
| **Take Screenshot** | Captures a screenshot of the visible area of the current view. |
| **Print** | Displays print options for the current layout. |
| **Style list** | Selects a preferred layout for jobs. |
| **Size list** | Selects the preferred size for displayed objects. |

## Gantt view

| Button | Description |
|---|---|
| **Listen Selection** | Activates listening for Date, Schedule, and/or Job selections sent from the List, Matrix, or PERT views. Updates the display when selections change in sending views. Can only synchronize items currently in the display. |
| **Find (Ctrl+F)** | Opens the Find window to locate a job in the display. |
| **Mode plan** | Places the Gantt view into Plan mode (the toolbar label changes from **Gantt** to **Plan**). In Plan mode, you can adjust estimated job duration or schedule start time. The **Listen Selection** and **Show dependencies** buttons are disabled. Select again to exit Plan mode. |
| **Jump to earliest job** | Moves the earliest job's time segment to the left side of the screen. |
| **Follow the current Date** | Places an orange line at the center of the display reflecting the current date and time. |
| **Show dependencies** | Shows dependency lines between jobs. Select again to clear the lines. |

## Bar Chart and Workload Chart views

| Button | Description |
|---|---|
| **Listen Selection** | Activates listening for selection changes from the List, Matrix, and PERT views. |
| **Change Chart between tube/bars** | Toggles the chart display between bars and tubes. |
| **Render chart with depth** | Toggles depth rendering on or off for the chart display. |
| **Render chart translucent** | Toggles translucency on or off for the chart display. |
| **Transpose the chart** | Transposes the horizontal and vertical axes of the chart. |
| **Show/Hide legend** | Toggles the legend on or off. |
| **Previous** | Changes the display to the previous selection. |

## Pie Chart view

| Button | Description |
|---|---|
| **Listen Selection** | Activates listening for selection changes from the List, Matrix, and PERT views. |
| **Show/Hide labels** | Toggles labels on or off for pie chart segments. |
| **Show/Hide legend** | Toggles the legend on or off. |
| **Render pie chart with depth** | Toggles depth rendering on or off for pie chart segments. |

## Machines Status Map view

| Button | Description |
|---|---|
| **Re-Layout Graph** | Rearranges machine tiles around the OpCon server tile. |

## Job editors (Daily and Master)

| Button | Description |
|---|---|
| **Save Job Definition to Master** | Copies platform-specific job details from the daily job to the master job definition. Available in the Daily Job editor. |
| **View Job History** | Opens history details for the selected job. |
| **View Audit** | Opens the Audit Management dialog to view the audit record for the selected item. |
