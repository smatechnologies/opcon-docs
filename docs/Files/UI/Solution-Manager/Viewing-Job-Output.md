---
title: Viewing Job Output
description: "Retrieve and review job output files from the Operations module in Solution Manager for jobs that are running, on hold, or completed."
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

# Viewing Job Output

The **Operations** module in Solution Manager lets you retrieve and review output files for a job. Job output is available when the job meets all of the following conditions:

- The job has started or is complete (Running, On Hold, or any ended status)
- The job is not a NULL job or Container job

:::note
For conceptual background on job output files, see [Viewing a Job Output File](../../../operations/job-output.md) in the Concepts help.
:::

## Retrieve job output

To retrieve and view job output, complete the following steps:

1. On the **Operations Summary** page, select the **Failed**, **Running**, or **Completed** dial in the **Jobs** section — or type a keyword in the **Quick Search** field and press **Enter**.

   ![Jobs Operation Dials](../../../Resources/Images/SM/Job-Operation-Dials2.png "Jobs Operation Dials")

   The **Processes** page opens.

2. Select one job in the list.

   A breadcrumb record of your selection appears in the [status bar](SM-UI-Layout.md#Status) at the bottom of the page.

   ![Job Processes](../../../Resources/Images/SM/Job-Processes2.png "Job Processes")

3. Select the job record (for example, **1 job(s)**) in the status bar to open the **Selection** panel.

   :::note
   As an alternative, you can right-click the job in the list to open the **Selection** panel.
   :::

4. Select the **Job Output** tab in the **Selection** panel.

   ![Job Output Tab in Operations](../../../Resources/Images/SM/Job-Output-Tab.png "Job Output Tab in Operations")

5. Select **Refresh** to request the list of output files for the selected job.

   The button label changes to **Cancel**, which you can select at any time to stop the request.

   :::note
   **Refresh** is disabled when no job output is available for the selected job.
   :::

6. Select any output file button that appears after the refresh.

   ![Job Output Button in Operations](../../../Resources/Images/SM/Job-Output-Button.png "Job Output Button in Operations")

   **Result:** The **Job Output** dialog opens, displaying the schedule date, schedule name, job name, and file name at the top, with the file contents below.

7. In the **Job Output** dialog, use the available actions as needed:

   | Button | Action |
   |---|---|
   | **Refresh** / **Cancel** | Refreshes the output file contents. Select again to cancel the refresh in progress. |
   | **Export** | Downloads the output file to your computer as a `.log` file. |
   | **Close** | Returns to the previous page. |

8. Select **Close** to dismiss the dialog, then close the **Selection** panel when finished.

## Related topics

- [Performing Job Status Changes](Performing-Job-Status-Changes.md)
- [Performing Schedule Status Changes](Performing-Schedule-Status-Changes.md)
- [Performing Bulk Status Job Updates (Schedule Level)](Performing-Bulk-Job-Status-Updates-Schedule-Level.md)
- [Performing Agent Status Updates](Performing-Agent-Status-Updates.md)
- [Using PERT View](Using-PERT-View.md)
- [Managing Daily Processes](Managing-Daily-Processes.md)
- [Viewing Job Configuration](Viewing-Job-Configuration.md)
