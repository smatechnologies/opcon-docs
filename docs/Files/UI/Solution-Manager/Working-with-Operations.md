---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Working with Operations
description: "Operations is a Solution Manager module that displays a summary of schedule, job, and Agent status using donut cards, with drill-down access to detailed views."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-06-02
doc_type: conceptual
---

# Working with Operations

The **Operations** module in Solution Manager provides a high-level summary of schedule, job, and Agent activity for your OpCon environment. The summary displays three groups of donut cards — one each for Schedules, Jobs, and Agents — each showing counts by status. Selecting a donut card drills down to a filtered view of the matching records.

You must have the **View Jobs in Schedule Operations** function privilege to access this module.

![Solution Manager Operations](../../../Resources/Images/SM/Operations-with-Labels.png "Solution Manager Operations")

## Date filter

The filter bar at the top of the **Operations** page controls which dates are included in the summary counts. You can select one or more of the following options:

| Option | Records included |
|---|---|
| Today | Current date (default) |
| Yesterday | Previous date |
| Tomorrow | Next date |
| Last Seven Days | The seven days before today |
| Next Seven Days | The seven days after today |

The selected date periods apply to all three donut card groups. When you select a donut card to drill down, the active date filter is carried forward to the resulting view.

## Donut cards

Each donut card group shows counts grouped by status. Selecting a card opens the corresponding detail view filtered to that status and the active date periods.

### Schedules

| Card | Status |
|---|---|
| Failed | Schedules completed with errors |
| Blocked | Schedules on hold |
| Waiting | Schedules waiting to run |
| Running | Schedules in process |
| Completed | Schedules completed successfully |

### Jobs

| Card | Status |
|---|---|
| Failed | Jobs in a failed status category |
| Blocked | Jobs in a blocked status category |
| Waiting | Jobs in a waiting status category |
| Running | Jobs currently running |
| Completed | Jobs completed successfully |
| Ignored | Jobs in an ignored status category |

### Agents

| Card | Status |
|---|---|
| Error | Agents not responding |
| Limited | Agents in limited communication mode |
| Stopped | Agents that are down |
| Waiting | Agents waiting for a response |
| Operational | Agents communicating normally |

## Quick Search

A **Quick Search** field appears to the right of each donut card group header. Type a keyword in the field and press **Enter** to open the corresponding detail view filtered to names matching your search term.

- Use the **Schedules** Quick Search field to search by schedule name.
- Use the **Jobs** Quick Search field to search by job name.
- Use the **Agents** Quick Search field to search by Agent name.

![Quick Search](../../../Resources/Images/SM/Quick-Search.png "Quick Search")

## Direct links

Each donut card group header is a link. Select the header link to open the **Processes** page for that object type, showing all records for the active date periods.

- Select **Schedules** to view all schedules.
- Select **Jobs** to view all jobs.
- Select **Agents** to view all Agents.

Any date filter selections active on the **Operations** page are carried forward when you select a Schedules or Jobs link.

## Toolbar buttons

The toolbar at the top of the **Operations** page provides the following buttons.

| Button | Action |
|---|---|
| **Processes** | Opens the **Processes** page to [view and manage daily processes](Managing-Daily-Processes.md). |
| **Build** | Opens the **Schedule Build** page to [view and build schedules](Managing-Schedules.md). |

## Filter Profiles

The **Filter Profile** button appears in the toolbar when at least one filter profile has been defined. Selecting the button applies a stored filter to the Operations Summary. When a filter profile is active, drill-down access to the **Processes** page is limited to the direct link next to the profile name.

![Solution Manager Operations Filter Profiles](../../../Resources/Images/SM/Operations-with-Filter-Profiles.png "Solution Manager Operations Filter Profiles")

## Related topics

- [Performing Schedule Status Changes](Performing-Schedule-Status-Changes.md)
- [Performing Job Status Changes](Performing-Job-Status-Changes.md)
- [Performing Bulk Status Job Updates (Schedule Level)](Performing-Bulk-Job-Status-Updates-Schedule-Level.md)
- [Performing Agent Status Updates](Performing-Agent-Status-Updates.md)
- [Viewing Job Output](Viewing-Job-Output.md)
- [Viewing Job Configuration](Viewing-Job-Configuration.md)
- [Using PERT View](Using-PERT-View.md)
- [Managing Daily Processes](Managing-Daily-Processes.md)
- [Using Schedule Build](Managing-Schedules.md)
