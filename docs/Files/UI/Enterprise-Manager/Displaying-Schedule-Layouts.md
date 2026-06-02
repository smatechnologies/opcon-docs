---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Displaying Schedule Layouts
description: "Schedule layouts in the Workflow Designer show the visual dependency map for a master schedule, including its jobs, thresholds, and resources."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Displaying Schedule Layouts

The Workflow Designer displays a visual dependency map for a master schedule, showing its jobs, thresholds, and resources. You can navigate between schedules and subschedules, adjust the layout orientation, and optionally hide thresholds and resources from the display.

## Display a Schedule Layout

To display the layout for a schedule, complete the following steps:

1. In Enterprise Manager, select **Workflow Designer** under the **Administration** topic.
2. In the **Select Schedule** panel, select a schedule from the tree.
   - To see subschedules, expand the schedule in the tree.
   - To filter the list, type in the filter text box above the tree.
3. To open a subschedule directly from the display area, right-click a Container job and select **Open SubSchedule**.

**Result:** The schedule layout appears in the display area, showing jobs and their dependencies.

## Adjust the Layout Orientation

To change the arrangement of items in the display area, complete the following steps:

1. Select **Layout** on the Workflow Designer toolbar.
2. Select one of the following layout options:

   | Option | Description |
   |---|---|
   | **Arrange All** | Reapplies the current layout to all items in the display area. |
   | **Left to Right** | Arranges items in a left-to-right flow. |
   | **Top to Bottom** | Arranges items in a top-to-bottom flow. |
   | **Grid** | Arranges items in a grid pattern. |

**Result:** The display area rearranges according to the selected layout.

## Show or Hide Thresholds and Resources

To toggle the display of thresholds and resources, complete the following steps:

1. On the Workflow Designer toolbar, select **Hide Thresholds and Resources** to hide them, or select **Show Thresholds and Resources** to show them.

**Result:** Thresholds and resources appear or disappear from the display area. When the number of thresholds and resources exceeds the configured preference limit, they are hidden automatically and a message is shown in the display area.

## Select and Move Multiple Items

To select and reposition a group of items in the display area, complete the following steps:

1. In the **Tools** panel, select **Marquee**.
2. In the display area, select and drag to draw a selection around the items you want to move.
3. Drag the selected items to a new location.

**Result:** The selected items move to the new location in the display area.
