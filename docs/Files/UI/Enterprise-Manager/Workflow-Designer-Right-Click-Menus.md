---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Workflow Designer right-click Menus
description: "Right-click on a node or dependency line in the Workflow Designer to display the following menu items: - Open SubSchedule: Changes the display to show the subschedule for the selected Container job -."
product_area: Enterprise Manager
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

#  Workflow Designer Right-click Menus

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Right-click on a node or dependency line in the **Workflow Designer** to display the following menu items:

-   **Open SubSchedule**: Changes the display to show the subschedule for the selected Container job

-   **Edit**: Opens the appropriate editor for the selected node or dependency line. Requires the appropriate privileges

-   **Delete**: Deletes the selected item. Requires the appropriate privileges
    -   Deleting a job removes it from the **Job Master** and the **Workflow Designer** view
    -   Deleting a threshold or resource removes it from the map but not from Administration. A threshold or resource cannot be deleted if dependencies are involved

-   **Find**: Opens the **Quick Search** dialog to find any node. Also available on the **Workflow Designer** toolbar

-   **Isolate**: Presents the following options:
    -   **Previous Dependencies**: Shows the selected node and all preceding dependencies; fades out all others
    -   **Subsequent Dependencies**: Shows the selected node and all subsequent dependencies; fades out all others
    -   **Dependency Chain**: Shows the entire dependency chain connected to the selected node; fades out all others
    -   **Shortest Path**: Shows the shortest path among all dependency chains to the selected job

-   **Layout**: Presents the following options:
    -   **Top to Bottom**: Lays out nodes using a top-to-bottom flow
    -   **Left to Right**: Lays out nodes using a left-to-right flow
    -   **Grid**: Lays out nodes using a grid

-   **Zoom in**: Zooms in 10% at a time to a maximum of 200%

-   **Zoom out**: Zooms out 10% at a time to a minimum of 10%

-   **Print**: Prints the full map image. Also available on the **Workflow Designer** toolbar

-   **Take Screenshot**: Saves an image of the current **Workflow Designer** layout. Also available on the **Workflow Designer** toolbar
:::

## When Would You Use It?

- Right-click on a node or dependency line in the **Workflow Designer** to display the following menu items:

## Why Would You Use It?

- **Workflow Designer**: Right-click on a node or dependency line in the **Workflow Designer** to display the following menu items:

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Open SubSchedule | Changes the display to show the subschedule for the selected Container job | — | — |
| Isolate | Presents the following options: | — | — |
| Layout | Presents the following options: | — | — |
| Zoom in | Zooms in 10% at a time to a maximum of 200% | — | — |
| Zoom out | Zooms out 10% at a time to a minimum of 10% | — | — |
| Take Screenshot | Saves an image of the current **Workflow Designer** layout. | — | — |
## FAQs

**Q: What does Workflow Designer Right-click Menus do?**

title: Workflow Designer Right-click Menus

**Q: Where can you find Workflow Designer Right-click Menus in OpCon?**

Access Workflow Designer Right-click Menus through the appropriate section in the Enterprise Manager or Solution Manager navigation.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**Subschedule**: A schedule that runs as a child process within a Container job, allowing hierarchical, nested workflow automation where a parent schedule can trigger and monitor an entire child schedule.

**Container Job**: A job type that runs a subschedule. Container jobs enable hierarchical schedule structures and support properties and events just like standard jobs.

**Threshold**: A numeric variable stored in the OpCon database used to control job execution. Jobs can be made dependent on threshold values, and OpCon events can update threshold values at runtime.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
