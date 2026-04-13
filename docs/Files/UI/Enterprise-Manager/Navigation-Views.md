---
title: Navigation Views
description: "In the Enterprise Manager, Navigation Views (e.g., Workflow Designer, Daily Maintenance, Daily List, Matrix Chart, Gantt Chart, PERT View, Bar Chart, Pie Chart, Workload Chart, Machine Status)."
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

# Navigation Views

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

In the Enterprise Manager, Navigation Views (e.g., Workflow Designer, Daily Maintenance, Daily List, Matrix Chart, Gantt Chart, PERT View, Bar Chart, Pie Chart, Workload Chart, Machine Status) provide visual representations supporting the editors. Any number of views can be open simultaneously, but only one can be active at a time.

Unlike Editors, Views can be [dragged out of the workspace to another separate area](#Moving) on their own.

## Opening Navigation Views

To open Navigation Views, complete the following steps:

1. Select the arrow to expand a Navigation topic in the [Navigation Panel](Navigation-Panel.md)
2. Select on the **Navigation View** (e.g., **Workflow Designer**)
3. *(Optional)* Select and drag the **Navigation View** tab onto the tab bar if not already attached
4. Repeat Step 2 to open more views

## Changing Navigation View Tab Order

Select and drag the **Navigation View** tab to the new location on the tab bar, then release.

:::note
A stack symbol (![Three white folders with black borders stacked](../../../Resources/Images/EM/stacked-folders.png "Stacked icon")) appears as you drag the view over other view tabs.
:::

## Arranging Navigation Views

1. Select and drag the **Navigation View** tab in the direction where you want it to display (left, right, top, or bottom)
2. Release the tab once the stack symbol changes to an arrow. The view drops into place

## Moving Navigation Views of the Workspace Frame

1. Select and drag the **Navigation View** tab outside the Enterprise Manager workspace (e.g., to a second monitor)
2. Release the tab in the preferred location

Alternatively, right-click the **Navigation View** tab, select **Detached**, then drag it to the preferred location.

## Returning Navigation Views to the Workspace Frame

Select and drag the **Navigation View** tab back to the preferred location inside the workspace. Alternatively, right-click the tab and select **Detached** to un-detach it and return it to the workspace.

## Right-click Menu for Views

- **Detached**: Detaches the view to move it outside the workspace frame
- **Restore**: Restores the view to its previous location
- **Move**: Frees one view or a view tab group to move to another location
  - **View**: Moves the view to a new location
  - **Tab Group**: Moves the tab group (two or more side-by-side views) to a new location
- **Size**: Adds a bold border to make it easier to resize the view pane
  - **Left / Right / Top / Bottom**: Bolds the respective border edge for resizing
- **Minimize**: Minimizes the view and places an icon on the right vertical sidebar
- **Maximize**: Maximizes the view to its maximum size
- **Close**: Closes the open view

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Detached | Detaches the view to move it outside the workspace frame | — | — |
| Restore | Restores the view to its previous location | — | — |
| Size | Adds a bold border to make it easier to resize the view pane | — | — |
| Minimize | Minimizes the view and places an icon on the right vertical sidebar | — | — |
| Maximize | Maximizes the view to its maximum size | — | — |
## FAQs

**Q: How many steps does the Navigation Views procedure involve?**

The Navigation Views procedure involves 8 steps. Complete all steps in order and save your changes.

**Q: What does Navigation Views cover?**

This page covers Opening Navigation Views, Changing Navigation View Tab Order, Arranging Navigation Views.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.
