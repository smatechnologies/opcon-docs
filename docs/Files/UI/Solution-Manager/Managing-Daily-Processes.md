---
title: Managing Daily Processes
description: "The Processes button on the main Operations page takes you to a page where you can view and manage the daily processes in operation."
product_area: Solution Manager
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

# Managing Daily Processes

The **Daily Processes** page in Solution Manager lets you view and manage the schedules, jobs, and agents that are active on any given date. To open it, select the **Processes** button on the main **Operations** page.

![Solution Manager Daily Processes](../../../Resources/Images/SM/Daily-Processes.png "Solution Manager Daily Processes")

## Toolbar Options

The **Daily Processes** page provides the following toolbar options:

| Button | Description |
|---|---|
| **Back** | Returns to the previous view or page. |
| **Summary** | Returns to the main **Operations** page. |
| **Refresh** | Refreshes data on the **Processes** page. |

## Date and Schedule Selection

The **Date** and **Schedule** toggle switches enable or disable date and schedule selections. A green checkmark indicates enabled; a gray circle indicates disabled.

## Filter Profiles

Filter profiles are user-defined filters in the Operations **Processes** view that can be saved persistently and shared with others.

<!--
![Filter Profile Bar](../../../Resources/Images/SM/FilterProfileBar.png "Filter Profile Bar")
-->

:::note
Changes that affect column state (for example, hiding columns) are not stored by a filter profile.
:::

### Create and Share a Filter Profile

To create a filter profile, complete the following steps:

1. Set the desired filters in the Operations **Processes** view.
2. Select the **Advanced** button to expose the action buttons.
3. Select the **Add** button.
4. Enter a name for the filter set.
5. Use the **Share with** list to set the share status. The share detail appears in parentheses next to the name (for example, `Test Filter (Private)` or `Test Filter (Role_ocadm)`):
   - Select a specific role to grant anyone in that role access and the ability to update the profile.
   - Select **Public** to grant everyone access. Only users in the `ocadm` role (or an equivalent role) can update a public profile.
   - Select **Private** to restrict access to the current user only.
6. Select the **Save** button.

**Result:** The filter profile is saved and appears in the **Filter Profile** list on the filter profile bar. Private, public, and shared profiles are all accessible from this list.

### Modify a Filter Profile

To modify a filter profile, complete the following steps:

1. Select an existing filter profile from the **Filter Profile** list.
2. Modify the existing set of filters.
3. Select the **Advanced** button.
4. Select the **Save** button.

:::note
To save a modified profile as a new profile, select the existing profile, modify the filters, select **Add**, enter a new name, configure sharing, and save.
:::

### Delete a Filter Profile

To delete a filter profile, complete the following steps:

1. Select an existing filter profile from the **Filter Profile** list.
2. Select the **Advanced** button.
3. Select the **Delete** button.

### Get a Direct URL for a Filter Profile

To get a direct URL for a filter profile, complete the following steps:

1. Select an existing filter profile from the **Filter Profile** list.
2. Select the **Advanced** button.
3. Select the **Link** button.

**Result:** A **Filter Profile Link** dialog displays the direct URL for the selected profile.

## Filtering

Filtering is available for the **Schedules**, **Jobs**, and **Agents** grids, making it easier to target specific items when many results are returned.

When filtering is applied, the following visual indicators appear:

![Visual Filter Indicators](../../../Resources/Images/SM/OperationsProcessGrid-FilterIndicators.png "Visual Filter Indicators")

### Quick Filtering

Use the **Filter Bar** above the grid to filter by keyword. Enter a keyword in the appropriate field and press **Enter**. Quick filtering is available for the **Schedules**, **Jobs**, and **Agents** grids.

<!--
![Quick Filtering](../../../Resources/Images/SM/Quick-Filtering.png "Quick Filtering")
-->

:::note
The **Schedules** filter bar includes a **Status** list with the following options: **Waiting**, **Held**, **In Progress**, **Completed**, and **Completed with Error(s)**.
:::

<!--
### In-Depth Filtering

For more detailed filtering in the **Jobs** grid, select the ![Operations Filter Button](../../../Resources/Images/SM/Operations-Filter-Icon.png "Operations Filter Button") button to open a **Filter** panel. You can filter by job status, tag, department, or access code. Use the ![Select All Filters](../../../Resources/Images/SM/SelectAllFilters.png "Select All Filters") button to select all options or the ![Deselect All Filters](../../../Resources/Images/SM/DeselectAllFilters.png "Deselect All Filters") button to deselect all options. The panel displays the number of active filters per tab.

![Filter Panel](../../../Resources/Images/SM/Filter-Panel.png "Filter Panel")

The filter button changes to dark yellow and shows the number of active filters (![Operations Filter in Use](../../../Resources/Images/SM/Operations-Filter-Icon-in-Use.png "Operations Filter in Use")). Select the **x** on the button to remove all filters at once.

### Interactive Filtering

Use the color-coded **Statistics Bar** above the grid to filter by current status. Each color represents a status. Select any color to filter the list by that status. Interactive filtering is available for the **Schedules**, **Jobs**, and **Agents** grids.

![Interactive Filtering](../../../Resources/Images/SM/InteractiveStatisticsBar.png "Interactive Filtering")

A filter tag box (![Yellow Filter Button](../../../Resources/Images/SM/YellowStatusButton.png "Yellow Filter Button")) appears on the tag bar above the grid, and the **Status** field border changes to dark yellow to show the active status filter.
-->

## Column Sorting and Display

Column sorting and display are available for the **Schedules**, **Jobs**, and **Agents** grids.

- **Sorting**: Select a column heading to sort ascending (arrow pointing down). Select the heading again to sort descending (arrow pointing up).
- **Display**: Use the menu button to select which columns are displayed.

## Right-Click Actions

Right-click any item in the **Schedules**, **Jobs**, or **Agents** grids to display a **Selection** panel where you can perform actions on the current selection or selections.

## Breadcrumb Selection

When you select an item in the **Date**, **Schedule**, **Job**, or **Agents** list, it appears in the **Status Bar** at the bottom of the page as a breadcrumb trail. Select the record (not available for date records) to display a **Status Update** panel where you can perform actions on the current selection.

<!--
![Breadcrumbs](../../../Resources/Images/SM/Schedule-Processes.png "Breadcrumbs")
-->

## Related Topics

- [Performing Schedule Status Changes](Performing-Schedule-Status-Changes.md)
- [Performing Job Status Changes](Performing-Job-Status-Changes.md)
- [Performing Bulk Status Job Updates (Schedule Level)](Performing-Bulk-Job-Status-Updates-Schedule-Level.md)
- [Performing Agent Status Updates](Performing-Agent-Status-Updates.md)
- [Viewing Job Output](Viewing-Job-Output.md)
- [Viewing Job Configuration](Viewing-Job-Configuration.md)
- [Using PERT View](Using-PERT-View.md)
