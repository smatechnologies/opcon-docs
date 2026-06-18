---
title: Viewing Null Job Details
description: "Null job details are only viewable in Daily Job Definition."
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

# Viewing Null Job Details

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Null job details can only be viewed in **Daily Job Definition**. For more conceptual information, refer to [Null Job Details](../../../job-types/null.md) in the **Concepts** online help.

## View Null Job Details

To view Null job details in Daily Job Definition, complete the following steps:

1. Select the **Processes** button at the top-right of the **Operations Summary** page.

2. Enable both the **Date** and **Schedule** toggle switches.

<!--
   ![Schedule Status Updates Date & Schedule Toggle Switches Enabled](../../../Resources/Images/SM/Schedule-Status-Update_Date&ScheduleToggles.png "Schedule Status Updates Date & Schedule Toggle Switches Enabled")
-->

3. Select the desired **date(s)** to display the associated schedules.

4. Select one or more **schedule(s)** in the list.

5. Select one **Null job** in the list. Your selection appears in the [status bar](SM-UI-Layout.md#Status) at the bottom of the page as a breadcrumb trail.

<!--
   ![Job Processes](../../../Resources/Images/SM/Job-ProcessesNull.png "Job Processes")
-->

6. Select the job record (e.g., **1 job(s)**) in the status bar to display the **Selection** panel.

:::note
As an alternative, right-click the job in the list to display the **Selection** panel.
:::

<!--
   ![Job Summary Tab for Null Jobs](../../../Resources/Images/SM/Job-Summary-Tab-(Null).png "Job Summary Tab for Null Jobs")
-->

7. Select the **Daily Job Definition** button at the top-left of the panel. The page opens in **Read-only** mode by default.

8. Expand the **Task Details** panel. The following read-only field is displayed for Null jobs:

   - **Type**: The job type

**Result:** The Task Details panel displays the job type for the selected Null job. No additional task-specific fields are available, because Null jobs do not run on an Agent.

## Glossary

**Null Job**: A job type that performs no running on any platform. Null jobs are used to hold dependencies, trigger OpCon events, and keep schedules open after all other jobs complete.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
