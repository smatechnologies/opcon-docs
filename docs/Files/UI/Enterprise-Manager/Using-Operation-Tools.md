---
title: Using Operation Tools
description: "The Operation tools perform the functions listed below, depending on the active view."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Using Operation Tools

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The Operation tools perform the functions listed below, depending on the active view.

|||
|--- |--- |
||Job Filter: Provides filtering options for Dates, Job Statuses, Departments, Access Codes, and Tags.|
||Listen for selection changes in other views: Must be activated in the Gantt, Bar Chart, Pie Chart, and Workload Chart views to receive Dates, Schedules, and/or Jobs information from the List, Matrix, and PERT views. Updates the display when dates and schedules are selected in sending views. Can only synchronize items in the current display.|
||Arrange All: In the PERT view, rearranges all items to the selected layout option.|
||Group by Schedules: Groups job boxes by schedule and displays a border around each group. Disable to show all jobs together. Most impactful when more than one schedule is in the layout.|
||Open mini map: Displays a miniature view of the entire PERT map. A small window lets you move the selected section to the main designer area.|
||Send the current selection to other views: Must be activated in the List, Matrix, and PERT views to send Dates, Schedules, and/or Jobs information to the Gantt, Bar Chart, Pie Chart, and Workload Chart views. Data sends based on date selection first, then schedule selection.|
||Show empty schedules/sub-schedules: Shows only dates with empty schedules or subschedules in the Daily tables. Select again to hide those dates.|
||Expand All: Expands all collapsed parts of the tree.|
||Collapse All: Collapses all expanded parts of the tree.|
||Show all jobs for the day: Displays all jobs on the schedules for the selected day.|
||Resize Columns: Resizes job grid columns to their default widths.|
||Show/Hide the header containing the calendar: Hides the Date selector, Schedule selector, and minimap section. Select again to show them.|
||Export to CSV file: (Matrix screen) Opens the Export Report to CSV dialog to export data in comma-separated value format.|
||Find (Ctrl+F): Opens the Find window to locate an item in the display (e.g., Job, Threshold, Resource).|
||Show Dependencies: Shows dependency lines between jobs (blue = After, red = Conflict). Select again to clear the lines.|
||Show Cross Schedules dependencies: Displays dependencies from a job in one schedule to a job in another. Select again to revert to the original schedule view.|
||Jump to the earliest job: Moves the earliest job's time segment to the left side of the screen.|
||Mode Plan: Places the view into Plan mode (toolbar label changes from "Gantt" to "Plan"). In Plan mode, you can adjust estimated job duration or schedule start time. The Listen for selection changes and Show dependencies buttons are disabled. Select again to exit Plan mode.|
||Follow the current date: Places an orange line at the center of the display reflecting the current date and time.|
||Change Chart between tube/bars: Toggles the chart display between bars and tubes.|
||Previous: Changes the display to the previous selection.|
||Print: In the Workflow Designer and PERT view, displays print options for the layout.|
||Show/Hide Legend: Toggles the legend on or off.|
||Render chart with depth: Toggles depth on or off for the chart display.|
||Render chart translucent: Toggles translucency on or off for the chart display.|
||Transpose the chart: Transposes the horizontal and vertical axes.|
||Show/Hide labels: Toggles labels on or off in the display.|
||Render pie chart with depth: Toggles depth on or off for pie chart segments.|
||Show/Hide: Toggles the left panel (menu and minimap) on or off.|
||Show/Hide Threshold and Resources: In the Workflow Designer, toggles threshold and resource display on or off.|
||View Audit: Opens the Audit Management dialog to view the user audit record.|
||View History: Opens the editor history details.|
||Re-Layout Graph: In the Machines Status Map view, rearranges machine tiles around the OpCon/xps Server tile.|
||Save Job Definition to Master: Copies platform-specific job details from the daily job to the master definition.|
||View Menu: (list) Provides options to take a screenshot or print the job layout (PERT view only).|
||Delete Old Schedules: Deletes old schedules. OpCon considers any schedule in the Daily tables more than 14 days old as an old schedule.|
||Minimize: Minimizes the editor and/or view; places an icon in the sidebar.|
||Maximize: Expands the editor and/or view to its maximum size. The Maximize button changes to Restore when maximized.|
||Restore: Returns the editor and/or view to its original size and location.|
||Style list: Selects a preferred layout for the jobs.|
||Size list: Selects the preferred size for displayed objects.|
||Take Screenshot: Takes a screenshot and saves the visible area of the current view.|

## When Would You Use It?

- The Operation tools perform the functions listed below, depending on the active view

## Why Would You Use It?

- **Operational value**: Provides filtering options for Dates, Job Statuses, Departments, Access Codes, and Tags

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What can you do with Operation Tools?**

Operation Tools allows you to manage and configure related settings.

**Q: Who has access to Operation Tools?**

Access to Operation Tools is controlled by the privileges assigned to your OpCon role. Contact your system administrator if you need access.

## Glossary

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Threshold**: A numeric variable stored in the OpCon database used to control job execution. Jobs can be made dependent on threshold values, and OpCon events can update threshold values at runtime.

**Calendar**: A named collection of dates in OpCon used by schedules and frequencies to determine when automation runs or is excluded. Calendars can represent holidays, working days, or any custom date set.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Audit Record**: An automatically created log entry recording every change made to an OpCon object. Each record captures the timestamp, the user or application that made the change, the item affected, and the original and final values.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.
