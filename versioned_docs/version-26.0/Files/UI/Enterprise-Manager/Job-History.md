---
title: Job History
description: "The Job History dialog displays all iterations of a job."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: conceptual
---

# Job History

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Job History** dialog displays all iterations of a job. Access it by right-clicking a job and selecting **Job History** in the **List**, **Matrix**, or **PERT** views.

The dialog shows the following per job iteration:

- Start Time
- End Time
- Run Time (min)
- Machine
- Termination Status
- Exit Code
- Exit Description

## When Would You Use It?

- The **Job History** dialog displays all iterations of a job

## Why Would You Use It?

- **Job History**: The **Job History** dialog displays all iterations of a job

## Viewing Job History

To view job history, complete the following steps:

1. Select on **List** under the **Operation** topic
2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Right-click on the **schedule**
4. Select **Job History** from the menu. The **Job History** dialog displays
5. View the job history information
6. Enter or select a **Start Date** and **End Date** using the text boxes or the calendar icons
7. Select the **Refresh** button to display the details
8. Right-click a record and select **View Job Output** to open the **Job Output Retriever** screen
9. Select any row or right-click and select **Job History Detail** to open the **Job History Detail** screen
10. View the **Field Names** and **Field Values** for the selected record
11. Select the **Add Note** option, enter note information in the field, then select the **Add** button to save the note
12. To edit a note, select the note row, make changes, then select the **Update** button
13. To delete a note, select the note row, select the **Remove** button, then select **Yes** to confirm
14. Select the **OK** button to close the **Job History** dialog

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: How many steps does the Job History procedure involve?**

The Job History procedure involves 14 steps. Complete all steps in order and save your changes.

**Q: What does Job History cover?**

This page covers Viewing Job History.

## Glossary

**Calendar**: A named collection of dates in OpCon used by schedules and frequencies to determine when automation runs or is excluded. Calendars can represent holidays, working days, or any custom date set.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
