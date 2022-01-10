---
lang: en-us
title: Workflow Designer Right-Click Menus
viewport: width=device-width, initial-scale=1.0
---

#  Workflow Designer Right-Click Menus

You can right-click on a node or dependency line displayed in the
**Workflow Designer** layout to display the following menu items:

-   **Open SubSchedule**: Changes the display to show the subschedule
    for the selected Container job.

-   **Edit**: After selecting one node or dependency line, selecting
    **Edit** will open the appropriate editor. You must have the
    required privileges for the node to perform this function.

-   **Delete**: After selecting a node, selecting **Delete** or pressing
    **Delete** on the keyboard will delete the item. You must have the
    required privileges for the node to perform the following functions:
    -   Once the job is selected, selecting the **Delete** item deletes
        the current job from the **Job Master**. It will, therefore, no
        longer be visible in the **Workflow Designer** view or in the
        **Job Master** editor.
    -   Once a threshold or resource is selected, selecting the
        **Delete** item deletes the threshold and/or resource from the
        map, but it does not delete the definition from Administration.
        A threshold or resource cannot be deleted if there are
        dependencies involved.

-   **Find**: Opens the **Quick Search** dialog to find any node on the
    layout. This is the same function that is available on the
    **Workflow Designer** toolbar.

-   **Isolate**: Presents the following options:
    -   **Previous Dependencies**: This option keeps visible the
        selected node and all of the dependency chain leading up to the
        node. All other nodes and dependencies are faded out in the
        display area.
    -   **Subsequent Dependencies**: This option keeps visible the
        selected node and all of the dependency chain after up to the
        node. All other nodes and dependencies are faded out in the
        display area.
    -   **Dependency Chain**: This option keeps visible the entire
        dependency chain connected to the selected node. All other nodes
        and dependencies are faded out in the display area.
    -   **Shortest Path**: This option shows the shortest path among all
        of the dependency chains to the job selected.

-   **Layout**: Presents the following options:
    -   **Top to Bottom**: Lays out the thresholds, resources, and jobs
        using a top to bottom flow.
    -   **Left to Right**: Lays out the thresholds, resources, and jobs
        using a left to right flow.
    -   **Grid**: Lays out the thresholds, resources, and jobs using a
        grid.

-   **Zoom in**: Zooms in 10% at a time to a maximum of 200%.

-   **Zoom out**: Zooms out 10% at a time to a minimum of 10%.

-   **Print**: Prints the full map image. This is the same function that
    is available on the **Workflow Designer** toolbar.

-   **Take Screenshot**: Provides the function to take a screen shot and
    save an image of the current **Workflow Designer** layout. This is
    the same function that is available on the **Workflow Designer**
    toolbar.
:::

 

