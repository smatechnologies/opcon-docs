---
lang: en-us
title: Workflow Designer Right-Click Menu
description: "Reference for the right-click menu items available on nodes and dependency lines in the Enterprise Manager Workflow Designer, including Open SubSchedule, Edit, Delete, Find, Isolate, Layout, zoom, Print, and Take Screenshot."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Reference
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-05-29
doc_type: reference
---

# Workflow Designer Right-Click Menu

## What Is It?

The Workflow Designer is the Enterprise Manager view where you build and arrange a Schedule as a graph of nodes (jobs, thresholds, and resources) connected by dependency lines. Right-click a node or a dependency line in the **Workflow Designer** to open a menu of actions for editing the selected item and for controlling how the map is laid out, zoomed, printed, and captured.

The same menu is available whether you right-click a job node, a threshold or resource node, or a dependency line, but some actions apply only to specific item types. Several actions are also available on the **Workflow Designer** toolbar.

## Menu Items

The following table lists each menu item, what it does, and notes on its behavior.

| Menu item | What it does | Notes |
|---|---|---|
| **Open SubSchedule** | Changes the display to show the subschedule for the selected Container job. | Available only when a single Container job is selected. |
| **Edit** | Opens the appropriate editor for the selected node or dependency line. | Requires the appropriate privileges. |
| **Delete** | Deletes the selected item. | Requires the appropriate privileges. Deleting a job removes it from the **Job Master** and the **Workflow Designer** view. Deleting a threshold or resource removes it from the map but not from Administration; a threshold or resource cannot be deleted if dependencies are involved. |
| **Find** | Opens a **Find** dialog that lists every node so you can select one and reveal it in the map. | Also available on the **Workflow Designer** toolbar. |
| **Isolate** | Highlights a subset of the map relative to the selected node and fades out all other nodes. See [Isolate options](#isolate-options). | — |
| **Layout** | Rearranges the nodes using the selected layout. See [Layout options](#layout-options). | — |
| **Zoom in** | Zooms in 10% at a time, to a maximum of 200%. | — |
| **Zoom out** | Zooms out 10% at a time, to a minimum of 10%. | — |
| **Print** | Prints the full map image. | Also available on the **Workflow Designer** toolbar. |
| **Take Screenshot** | Saves an image of the current **Workflow Designer** layout. | Also available on the **Workflow Designer** toolbar. |

### Isolate options

| Option | What it does |
|---|---|
| **Previous Dependencies** | Shows the selected node and all preceding dependencies; fades out all others. |
| **Subsequent Dependencies** | Shows the selected node and all subsequent dependencies; fades out all others. |
| **Dependency Chain** | Shows the entire dependency chain connected to the selected node; fades out all others. |
| **Shortest Path** | Shows the shortest path among all dependency chains to the selected job. |

### Layout options

| Option | What it does |
|---|---|
| **Top to Bottom** | Lays out nodes using a top-to-bottom flow. |
| **Left to Right** | Lays out nodes using a left-to-right flow. |
| **Grid** | Lays out nodes using a grid. |

## FAQs

**Q: Where do you find the right-click menu?**

Open the **Workflow Designer** in Enterprise Manager, then right-click a node or a dependency line on the map.

**Q: Why are Edit and Delete unavailable?**

The **Edit** and **Delete** items require the appropriate privileges. If you do not have them, the actions do not apply to the selected item.

## Glossary

**Enterprise Manager**: OpCon's graphical user interface used to define schedules and jobs, manage automation data, and perform operational tasks.

**Container Job**: A job type that runs a subschedule, enabling hierarchical schedule structures.

**Subschedule**: A schedule that runs as a child of a Container job, allowing nested workflow automation.

**Threshold**: A numeric variable stored in the OpCon database used to control when jobs run. Jobs can be made dependent on threshold values.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent runs.

**Job Master**: The store of master (definition) job records in OpCon.
