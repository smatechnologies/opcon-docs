---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Viewing Job History Information
description: "Use this procedure to view job history information in Enterprise Manager."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Viewing Job History Information

## What Is It?

Job history information records the outcomes of past job runs, including termination status, exit code, and run time. In Enterprise Manager, you open this information from the **PERT** screen to review how a job has performed across previous runs, inspect the detail fields for a specific run, and view the job output for that run.

Use this procedure when you need to investigate a job's past behavior, confirm the result of a run, or review the output a run produced.

## Required Privileges

## View job history information

To view job history information, complete the following steps:

1. Select **PERT** under the **Operation** topic. The **PERT** screen displays.
2. Select the **Schedule** that contains the job.
3. Right-click the job box and select **Job**, then **Job History**. The **Job Execution History** dialog displays. For more information, refer to [Job History](Job-History.md).
4. Select a row in the **running History** table, or right-click a row and select **Job History Detail**. The **Job History Detail** dialog displays for the selected record.
5. Review the **Field Name** and **Field Value** entries for the detail record. For more information, refer to [Job History](Job-History.md).
6. Select **OK** to close the **Job History Detail** dialog.
7. Right-click any row and select **View Job Output** to view the job output for the selected record.
8. Select **Close** to close the **Job Execution History** dialog.

**Result:** You have reviewed the job history records for the selected job, including the detail fields and output for individual runs.

## Related Topics

- [Job History](Job-History.md)

## Glossary

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
