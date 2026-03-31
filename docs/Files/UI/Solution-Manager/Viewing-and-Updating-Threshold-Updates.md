---
title: Viewing and Updating Threshold Updates
description: "The Threshold Update panel in Daily Job Definition displays defined threshold updates for the selected job."
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

# Viewing and Updating Threshold Updates

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Threshold Update** panel in **Daily Job Definition** displays defined threshold updates for the selected job.

- Select the icon (![Full Screen Panel Icon](../../../Resources/Images/SM/Full-Screen-Mode-Icon.png "Full Screen Panel Icon")) at the far right of the panel bar to enter or exit **Full Screen** mode
- When the panel contains defined properties, a blue circular indicator (![Job Properties Indicator](../../../Resources/Images/SM/Daily-Job-Definition-Properties-Indicator.png "Job Properties Indicator")) appears to the right of the panel name showing the property count

## Adding or Updating Threshold Updates

In **Admin** mode, threshold updates can be updated. For conceptual information, refer to [Threshold/Resource Updates](../../../job-components/threshold-resource-updates.md).

:::note
Only users with the appropriate permissions can access the **Lock** button and update job properties. Refer to [Required Privileges](Accessing-Daily-Job-Definition.md#Required) for details.
:::

:::note
Changes made in **Daily Job Definition** take effect immediately. If the job has already run, changes apply the next time the job runs.
:::

To perform this procedure:

1. Select the **Processes** button at the top-right of the **Operations Summary** page

2. Ensure both the **Date** and **Schedule** toggle switches are enabled (green)

    ![Schedule Status Updates Date & Schedule Toggle Switches Enabled](../../../Resources/Images/SM/Schedule-Status-Update_Date&ScheduleToggles.png "Schedule Status Updates Date & Schedule Toggle Switches Enabled")

To add or Updating Threshold Updates, complete the following steps:

3. Select the desired **date(s)** to display associated schedules

4. Select one or more **schedule(s)** in the list

5. Select one **job** in the list. Your selection appears in the [status bar](SM-UI-Layout.md#Status) as a breadcrumb trail

    ![Job Processes](../../../Resources/Images/SM/Job-ProcessesUNIX.png "Job Processes")


6. Select the job record (e.g., 1 job(s)) in the status bar to open the **Selection** panel

    :::note
    Alternatively, right-click the job in the list to open the **Selection** panel.
    :::

    ![Job Summary Tab in Operations](../../../Resources/Images/SM/Job-Summary-Tab-(UNIX).png "Job Summary Tab in Operations")

7. Select the **Daily Job Definition** button ![Daily Job Definition Button](../../../Resources/Images/SM/Daily-Job-Definition-Button.png "Daily Job Definition Button") at the top-left of the panel. The page opens in **Read-only** mode by default

8. Select the **Lock** button ![Daily Job Definition Read-only Button](../../../Resources/Images/SM/Daily-Job-Definition-Read-only-Button.png "Daily Job Definition Read-only Button") at the top-right to enter **Admin** mode. The button switches to a white unlocked lock on a green background ![Daily Job Definition Admin Switch](../../../Resources/Images/SM/Daily-Job-Definition-Admin-Button.png "Daily Job Definition Admin Switch")

    :::note
    The **Lock** button is not visible to users without the appropriate permissions.
    :::

9. Expand the **Threshold Update** panel

10. Make any of the following updates:

    - Edit or delete existing threshold updates as needed
    - Select the green **Add** button (**+**) to define a new threshold update. In the **Threshold Update** dialog:
      - Select the job status that triggers the update
      - Select the threshold name from the list
      - Select the value to update the threshold to
      - Select **Save** to save and close the dialog

    :::note
    Select the **Undo** button to discard changes.
    :::

11. Select the **Save** button


## FAQs

**Q: How many steps does the Viewing and Updating Threshold Updates procedure involve?**

The Viewing and Updating Threshold Updates procedure involves 11 steps. Complete all steps in order and save your changes.

**Q: What does Viewing and Updating Threshold Updates cover?**

This page covers Adding or Updating Threshold Updates.

## Glossary

**Threshold**: A numeric variable stored in the OpCon database used to control job execution. Jobs can be made dependent on threshold values, and OpCon events can update threshold values at runtime.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
