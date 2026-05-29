---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Viewing SAP Job Logs
description: "Use this procedure to view the job log for a SAP R/3 and CRM job from Enterprise Manager."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-05-29
doc_type: procedural
---

# Viewing SAP Job Logs

## What Is It?

The SAP job log records the run-time output that the SAP system produces for a background job. In Enterprise Manager, you retrieve the job log for a SAP R/3 and CRM Agent through the **View SAP Jobs** dialog. Use this procedure to find a SAP job by name and status, then open its job log to review the messages SAP recorded while the job ran.

The **Job Log** button becomes available only when the selected SAP job has a status of **Finished** or **Canceled**, because the log is written when the job completes.

## Required Privileges

<!-- GAP: Specific Enterprise Manager privilege or role required to open the View SAP Jobs dialog and retrieve a job log is not confirmed in the available source; needs SME/source. -->

## View a SAP job log

To view the job log for a SAP job, complete the following steps:

1. Open the **Machines Status** view under the **Operation** topic.
2. Right-click the SAP R/3 and CRM Agent and select **SAP Machine**, then select **SAP Jobs**. The **View SAP Jobs** dialog displays.
3. In the **Job Name Criteria** field, enter a job name or a name pattern that includes a wildcard (`*`).
4. (Optional) In the **Filter by Create Date or Event ID** group, select a start date and end date to limit results to jobs created in that range, or enter a value in the **Event ID** field.
5. In the **Filter by Job Status** group, select the **Finished** and **Canceled** status options. Clear the remaining status options.
6. Select **Search SAP**. Jobs that match your filter criteria display in the **SAP Jobs** list, which shows the **Job Name**, **Job Number**, and **Status** for each job.
7. Select a SAP job in the list.
8. Select **Job Log**.

**Result:** The SAP job log opens in the **SAP Job's log** dialog, where you can review the messages SAP recorded for the selected job.

## FAQs

**Why is the Job Log button unavailable after I select a job?**

The **Job Log** button is enabled only for jobs with a status of **Finished** or **Canceled**. Select a job in one of those states to open its log.

**Why is the Search SAP button unavailable?**

**Search SAP** is enabled only when you have entered a value in the **Job Name Criteria** field and selected at least one status option in the **Filter by Job Status** group.

## Related Topics

<!-- GAP: Related Topics links (for example, SAP Agent setup or other SAP job actions such as SAP Job Spools) are not confirmed from the available source; needs SME/source. -->

## Glossary

**Agent**: A platform defined in the OpCon database where jobs run. OpCon sends job run requests to Agents and receives job status back from them. A SAP R/3 and CRM Agent connects OpCon to a SAP system.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which Agent, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
