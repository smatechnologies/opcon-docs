---
title: Using Workflow Designer
description: "The Enterprise Manager Workflow Designer has three main elements: a display area that shows the graphical flow diagram, an action panel for navigating schedules and adding items, and a toolbar for common actions."
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

# Using Workflow Designer

The Enterprise Manager Workflow Designer is a graphical canvas for building and viewing schedule dependency maps. It has three main elements: the [display area](#workflow-designer-display-area), the [action panel](#workflow-designer-action-panel), and the [toolbar](#workflow-designer-toolbar).

## Workflow Designer Display Area

The **display area** shows the graphical flow diagram (also called a *flow map*) for a selected schedule. Each node in the diagram represents one of the following:

- **Rectangle** — a job
- **Rounded rectangle** — a threshold
- **Oval** — a resource

Lines connecting nodes represent dependency relationships. For details on line colors and styles, see [Workflow Designer Dependency Lines](Workflow-Designer-Dependency-Lines.md).

You can drag and drop items in the display area to reposition nodes and create dependencies. Right-clicking a node or dependency line opens a context menu with editing and layout options. For details, see [Workflow Designer Right-Click Menu](Workflow-Designer-Right-Click-Menus.md).

![Example Flow Diagram in Workflow Designer](../../../Resources/Images/EM/EMwkflowdsgndiagram.png "Example Flow Diagram in Workflow Designer")

## Workflow Designer Action Panel

The **action panel** appears to the right of the display area. It contains:

- **Select Schedule** tree — lists schedules and subschedules; use the **filter** text box to narrow results.
- **Schedule Instance** list — select a schedule instance to filter the display by job-related or frequency-related dependency types.
- **Job Related** and **Frequency Related** options — control which dependency types appear in the diagram.
- **Tools** frame — provides buttons to add jobs, dependencies, thresholds, and resources to the diagram.
- **Mini-map** — shows a reduced view of the entire schedule diagram in the lower portion of the panel to help you navigate large layouts.

![Workflow Designer Action Panel](../../../Resources/Images/EM/EMwkflowdsgnactionpnl_withschedinstance.PNG "Workflow Designer Action Panel")

## Workflow Designer Toolbar

The toolbar appears at the top-right corner of the screen and provides quick access to common actions such as **Find**, **Print**, **Take Screenshot**, and **Hide Thresholds and Resources**.

![Workflow Designer toolbar](../../../Resources/Images/EM/EMwkflowdsgntoolbar.png "Workflow Designer toolbar")

## Related Topics

- [Workflow Designer Flow Diagram Icons](Workflow-Designer-Flow-Diagram-Icons.md)
- [Workflow Designer Dependency Lines](Workflow-Designer-Dependency-Lines.md)
- [Workflow Designer Right-Click Menu](Workflow-Designer-Right-Click-Menus.md)
- [Displaying Schedule Layouts](Displaying-Schedule-Layouts.md)
- [Displaying Schedules showing Job-Related/Frequency-Related Information](Displaying-Schedules-with-Info.md)
- [Adding New Schedules](Adding-New-Schedules.md)
- [Adding Jobs to Schedule Layouts](Adding-Jobs-to-Schedule-Layouts.md)
- [Adding Thresholds to Layouts](Adding-Thresholds-to-Layouts.md)
- [Adding Resources to Layouts](Adding-Resources-to-Layouts.md)
- [Setting Preferences for Workflow Designer and PERT](Preferences-for-Workflow-Designer.md)
