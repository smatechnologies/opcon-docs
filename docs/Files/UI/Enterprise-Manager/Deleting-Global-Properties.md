---
title: Deleting Global Properties
description: "Deleting a global property requires three procedures: removing the property from the daily tables, removing it from the master tables, then deleting the property."
product_area: Enterprise Manager
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

# Deleting Global Properties

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Deleting a global property requires three procedures: removing the property from the daily tables, removing it from the master tables, then deleting the property.

Remove the Global Property from the Daily Tables

To remove the global property from the daily tables, complete the following steps:

1. Select on **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays
2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the **date** for the schedule
3. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the **schedule**
4. Select on the **job**
5. Select **Edit Daily** in the **Maintenance** frame at the bottom-right of the screen
6. In the **Command Line** text box, replace any *tokens* representing the property to delete with a hardcoded value or another token
7. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Daily** toolbar
8. Select the **Events** tab
9. Select the **OpCon event** in the **Events** list box
10. Select **Edit** in the **Events** frame. The **Events Definition Wizard** displays
11. Replace any *tokens* in the OpCon event representing the property to delete with a hardcoded value or another token
12. Select **OK** to save the changes
13. Repeat Steps 4–12 for all jobs using the token
14. Select **Close ☒** to close the **Job Daily** screen
15. Select **Close ☒** to close the **Daily Maintenance** screen

Remove the Global Property from the Master Tables

1. Select on **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays
2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the **date** for the schedule
3. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the **schedule**
4. Select on the **job**
5. Select **Edit Master** in the **Maintenance** frame at the bottom-right of the screen
6. In the **Command Line** text box, replace any *tokens* representing the property to delete with a hardcoded value or another token
7. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar
8. Select the **Events** tab
9. Select the **OpCon event** containing the token
10. Select **Edit** in the **Events** frame. The **Event Definition Wizard** displays
11. Replace any *tokens* in the OpCon event representing the property to delete with a hardcoded value or another token
12. Select **OK** to save the changes
13. Repeat Steps 4–12 for all jobs using the token
14. Select **Close ☒** to close the **Job Master** screen
15. Select **Close ☒** to close the **Daily Maintenance** screen

Delete the Global Property

1. Select on **Global Properties** under the **Administration** topic. The **Global Properties** screen displays
2. Select the **global property** in the **Select Global Property** list
3. Select ![Remove icon](../../../Resources/Images/EM/EMdelete.png "Remove icon") **Remove** on the **Global Properties** toolbar
4. Select **Yes** to confirm the deletion or **No** to discard
5. Select **Close ☒** to close the **Global Properties** screen
:::

## When Would You Use It?

- An existing Global Properties in Enterprise Manager is no longer needed
- The Global Properties has been decommissioned or replaced and should be removed to keep the configuration clean

## Why Would You Use It?

- **Maintain a clean environment**: Removing unused Global Properties definitions reduces clutter and prevents accidental use of outdated or obsolete configurations
- Deletions are recorded in the OpCon audit log, providing traceability for compliance and change management reviews

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: Can a global properties record be recovered after deletion?**

No. Deleting a global properties record permanently removes it from OpCon. Verify the record is no longer needed before deleting it.

**Q: How many global properties records can you delete at once?**

Select the specific global properties record you want to delete, then select the **Delete** button on the toolbar. Confirm the deletion when prompted.

## Glossary

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Master Tables**: The OpCon database tables that hold the permanent definitions of schedules and jobs. Changes to master tables affect all future schedule builds.

**OpCon Event**: A command sent to OpCon that triggers an automated action, such as adding a job to a schedule, updating a property value, sending a notification, or changing a job or schedule status.

**Token (Global Property)**: A named value stored in the OpCon database, referenced in job definitions and events using [[PropertyName]] syntax. Tokens pass dynamic values — such as dates, file paths, or counts — into automation workflows.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
