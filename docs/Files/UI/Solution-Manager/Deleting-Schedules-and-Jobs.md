---
title: Deleting Schedules and Jobs
description: "Use this procedure to delete Schedules and Jobs in Solution Manager."
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

# Deleting Schedules and Jobs

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to delete Schedules and Jobs in Solution Manager. Deleting removes the selected Schedule or Job from the current day's automation. You cannot delete a Schedule that contains a running Job, and you cannot delete a Job that is in the **Running** state.

## Required Privileges

To view Jobs in a Schedule and act on them in Operations, your user must have the **View Jobs in Schedule Operations** privilege.

## Delete Schedule(s)

To delete one or more Schedules, complete the following steps:

1. Select one or more dates or schedules from the grid, then right-click.
2. On the right-side panel, select the ![Delete Icon](../../../Resources/Images/SM/Deleting-Schedule-and-Jobs-Icon.png "Delete button") **Delete** button.

<!--
![Delete Schedule(s) Right Panel](../../../Resources/Images/SM/Deleting-Schedule-and-Jobs1.png "Delete Schedule(s) Right Panel")
-->

:::note
The **Delete** button is <ins>disabled</ins> if the Schedule has a running Job.
:::

3. Select **Yes** to confirm the deletion.

<!--
![Delete Schedule(s) Confirmation Dialog](../../../Resources/Images/SM/Deleting-Schedule-and-Jobs2.png "Delete Schedule(s) Confirmation Dialog")
-->

**Result:** The selected Schedules are removed from the grid.

## Delete Job(s)

To delete one or more Jobs, complete the following steps:

1. Select one or more Jobs from the grid, then right-click.
2. On the right-side panel, select the **Delete** button.

:::note
The **Delete** button is <ins>disabled</ins> if the Job is in the **Running** state.
:::

3. Select **Yes** to confirm the deletion.

**Result:** The selected Jobs are removed from the grid.

## FAQs

**Q: Can a deleted Schedule or Job be recovered?**

No. Deleting a Schedule or Job permanently removes it from the current day's automation. Verify the Schedule or Job is no longer needed before deleting it.

**Q: How many Schedules or Jobs can you delete at once?**

You can select multiple dates, Schedules, or Jobs in the grid before you delete. Select all of the items you want to remove, select the **Delete** button on the right-side panel, then select **Yes** to confirm.

**Q: Why is the Delete button disabled?**

The **Delete** button is disabled when a Schedule contains a running Job or when a Job is in the **Running** state. Wait for the Job to finish, or take the appropriate action on the running Job, then try again.

## Related Topics

- [Performing Schedule Checks](Performing-Schedule-Checks.md)
- [Adding Jobs to Daily Schedules](Adding-Jobs-to-Daily-Schedules.md)

## Glossary

**Schedule**: A named container for Jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the Jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A Job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**Solution Manager**: The web-based OpCon interface for building Schedules, monitoring Operations, and managing Jobs.
