---
title: Viewing and Updating Expression Dependencies
description: "The Expression Dependency panel in Daily Job Definition displays and lets you edit expression dependencies for the selected job."
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Solution Manager
doc_type: procedural
---

# Viewing and Updating Expression Dependencies

The **Expression Dependency** panel in **Daily Job Definition** displays the expression dependencies defined for the selected job. Each job supports up to two property expressions — a **Job Expression** and a **Frequency Expression** — and each field accepts up to 4,000 characters.

When the panel contains defined properties, a blue circular indicator (![Job Properties Indicator](../../../Resources/Images/SM/Daily-Job-Definition-Properties-Indicator.png "Job Properties Indicator")) appears to the right of the panel name showing the property count. Select the full-screen button (![Full Screen Panel Icon](../../../Resources/Images/SM/Full-Screen-Mode-Icon.png "Full Screen Panel Icon")) at the far right of the panel bar to enter or exit **Full Screen** mode.

For background on expression syntax, refer to [Property Expressions API Syntax](../../../reference/property-expressions-syntax.md).

## Required Privileges

To edit expression dependencies, you must be in the `ocadm` role or have at least all of the following privileges:

- **Schedule Privilege**: Your role must have access to the job's parent schedule.
- **Departmental Function Privilege**: Your role must include View Jobs in Daily Schedules, View Jobs in Schedule Operations, and Modify Jobs in Daily Schedules for the job's department.
- **Access Code Privilege**: Your role must have access to the job's access code with the **Allow job updates** flag enabled.

For more information, refer to [Required Privileges](Accessing-Daily-Job-Definition.md#Required).

## Add or Update Expression Dependencies

:::note
Changes made in **Daily Job Definition** take effect immediately. If the job has already run, the changes apply the next time the job runs.
:::

To add or update expression dependencies for a job, complete the following steps:

1. Select the **Processes** button at the top-right of the **Operations Summary** page.
2. Ensure both the **Date** and **Schedule** toggle switches are enabled (green).

   ![Schedule Status Updates Date & Schedule Toggle Switches Enabled](../../../Resources/Images/SM/Schedule-Status-Update_Date&ScheduleToggles.png "Schedule Status Updates Date & Schedule Toggle Switches Enabled")

3. Select the desired **date(s)** to display the associated schedules.
4. Select one or more **schedule(s)** in the list.
5. Select one **job** in the list. Your selection appears in the [status bar](SM-UI-Layout.md#Status) as a breadcrumb trail.

   ![Job Processes](../../../Resources/Images/SM/Job-ProcessesUNIX.png "Job Processes")

6. Select the job record (for example, **1 job(s)**) in the status bar to open the **Selection** panel.

   :::note
   Alternatively, right-select the job in the list to open the **Selection** panel.
   :::

   ![Job Summary Tab in Operations](../../../Resources/Images/SM/Job-Summary-Tab-(UNIX).png "Job Summary Tab in Operations")

7. Select the **Daily Job Definition** button ![Daily Job Definition Button](../../../Resources/Images/SM/Daily-Job-Definition-Button.png "Daily Job Definition Button") at the top-left of the panel. The page opens in **Read-only** mode by default.
8. Select the **Lock** button ![Daily Job Definition Read-only Button](../../../Resources/Images/SM/Daily-Job-Definition-Read-only-Button.png "Daily Job Definition Read-only Button") at the top-right to enter **Admin** mode. The button switches to a white unlocked lock on a green background ![Daily Job Definition Admin Switch](../../../Resources/Images/SM/Daily-Job-Definition-Admin-Button.png "Daily Job Definition Admin Switch").

   :::note
   The **Lock** button is not visible to users without the appropriate permissions.
   :::

9. Expand the **Expression Dependency** panel.

   ![Daily Job Definition Expression Dependency Panel](../../../Resources/Images/SM/Daily-Job-Definition-Expression-Dependency-Panel.png "Daily Job Definition Expression Dependency Panel")

10. Do any of the following:
    - Edit or delete an existing expression.
    - Select **New Expression Dependency** to define a new expression. Each field accepts up to 4,000 characters. A maximum of two expressions are allowed per job: a **Job Expression** and a **Frequency Expression**. If you define a **Frequency Expression**, you must also provide a value for the **Job Expression**.

    :::note
    Select the **Undo** button to discard unsaved changes.
    :::

11. Select the **Save** button.

**Result:** The expression dependencies are saved to the daily job record and take effect immediately.
