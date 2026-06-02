---
title: Job History
description: "The Job History dialog in Enterprise Manager displays all run iterations of a job, including start and end times, runtime, termination status, and exit code."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Reference
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: reference
---

# Job History

The **Job History** dialog displays all run iterations of a job. You can access it by right-clicking a job and selecting **Job History** in the **List**, **Matrix**, or **PERT** views under **Operations**.

The dialog contains two areas:

- A sortable table listing each run occurrence with the columns described below.
- A **Job Run Time Trend** chart that plots runtime (in minutes) over execution occurrence.

## Job History Table Columns

| Column | Description |
|---|---|
| **Schedule Date** | The date the Schedule ran when the job ran. |
| **Start Time** | The date and time the job started. |
| **End Time** | The date and time the job ended. |
| **Runtime (min)** | The total run duration in minutes. |
| **Machine** | The Agent on which the job ran. |
| **Termination Status** | The job's final status (for example, Finished OK, Failed). |
| **Exit Code** | The exit code and description returned by the job. |

## Viewing Job History

To view job history for a job, complete the following steps:

1. Go to **Operations** and select **List** (or **Matrix** or **PERT**).
2. Select the arrow to expand the specific date.
3. Right-click the job.
4. Select **Job History** from the menu.

   The **Job History** dialog opens and loads run data for the current date.

5. Enter or select a **Start Date** and **End Date** using the date fields.
6. Select **Refresh** to reload the table for the selected date range.

   The table updates to show all run iterations within the date range.

## Viewing Job Output

**View Job Output** is available for jobs that are not Container or Null Job types.

To view output for a specific run, complete the following steps:

1. Right-click a row in the **Job History** table.
2. Select **View Job Output**.

   The **Job Output Retriever** dialog opens.

## Viewing Job History Detail

To view the full detail record for a specific run, complete the following steps:

1. Double-click a row in the **Job History** table, or right-click a row and select **Job History Detail**.

   The **Job History Detail** dialog opens, showing **Field Name** and **Field Value** columns for all recorded fields associated with that run.

## Managing Notes

You can add, edit, or delete notes on a job history record from the **Job History Detail** dialog.

To add a note, complete the following steps:

1. Select **Add Note**.
2. Enter the note text in the field (limit: 3,800 characters).
3. Select **Add**.

   The note is saved and displays in the detail table with your username and timestamp.

To edit a note, complete the following steps:

1. Select the note row in the detail table.
2. Make your changes in the text field.
3. Select **Update**.

To delete a note, complete the following steps:

1. Select the note row in the detail table.
2. Select **Remove**.
3. Select **Yes** to confirm deletion.
