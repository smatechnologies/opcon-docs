---
title: Performing Schedule Checks
description: "Run a schedule check from the Operations module in Solution Manager to validate dependencies and job requirements for a date or a specific schedule."
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

# Performing Schedule Checks

The **Operations** module lets you validate a schedule by running a dependency and requirements check directly from the daily schedule view. You can run a check against a single schedule or against all schedules for a date.

## Check Types

Three check types are available:

| Check type | Description |
|---|---|
| **Fast (Requires Only)** | Checks only job requirement dependencies. Runs quickly. |
| **Normal (No Circular)** | Checks job dependencies without running a circular dependency analysis. |
| **Slow (Circular)** | Runs a full check including circular dependency detection. Depending on the number of jobs, schedules, and schedule dates, this check may take several hours. |

## Run a Schedule Check

To run a schedule check, complete the following steps:

1. In **Operations**, right-click a date node or a Schedule record in the daily schedule list.

2. In the right-side panel, select the **Schedule Check** section.

   ![Schedule Checks section](../../../Resources/Images/SM/Performing-Schedule-Checks1.png "Schedule Checks section")

3. Select **Check** to open the Schedule Check dialog.

   ![Schedule Check button](../../../Resources/Images/SM/Performing-Schedule-Checks2.png "Schedule Check button")

4. Select a check type.

   ![Schedule Check dialog](../../../Resources/Images/SM/Performing-Schedule-Checks3.png "Schedule Check dialog")

5. Select **OK**.

   :::note
   The **Slow (Circular)** option runs an intensive circular dependency check. Depending on the number of jobs, schedules, and schedule dates, this check may take several hours.
   :::

6. In the **Schedule Check** section of the right-side panel, review the list of schedule checks that appears.

   ![Reload Schedule Checks button](../../../Resources/Images/SM/Performing-Schedule-Checks4.png "Reload Schedule Checks button")

7. Select **Reload** to refresh the status.

8. When the check is complete, the status indicator changes to a check mark.

   ![Schedule Checks results list](../../../Resources/Images/SM/Performing-Schedule-Checks5.png "Schedule Checks results list")

9. Select a Schedule Check entry to view its details.

   ![Schedule Check result details](../../../Resources/Images/SM/Performing-Schedule-Checks6.png "Schedule Check result details")

**Result:** The Schedule Check details show the validation results for the selected schedule or date.

## Related Topics

- [Deleting Schedules and Jobs](Deleting-Schedules-and-Jobs.md)
- [Adding Jobs to Daily Schedules](Adding-Jobs-to-Daily-Schedules.md)
