---
lang: en-us
title: Editing SAP Jobs
description: "How to locate and edit an SAP job definition from the Machines Status view in Enterprise Manager."
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
doc_type: procedural
last_updated: 2026-06-01
---

# Editing SAP Jobs

Use this procedure to locate an SAP job from the SAP R/3 and CRM machine list and edit its definition in Enterprise Manager.

## Before you begin

You must have access to the **Machines Status** view and a configured SAP R/3 and CRM machine in your environment.

## Edit an SAP job

To edit an SAP job, complete the following steps:

1. In the **Navigation** panel, select **Machines Status** under the **Operation** topic.
2. Right-click the SAP R/3 and CRM machine name you want to work with.
3. Hover over **SAP Machine** in the right-click menu and select **SAP Jobs**.

   The **View SAP Jobs** dialog opens.

4. In the **Job Name Criteria** field, enter a job name or a name with a wildcard (for example, `*`).
5. (Optional) Enter a date range in the **Filter by Create Date or Event ID** section to filter jobs by their creation date.
6. (Optional) Enter a value in the **Event ID** field to filter by event.
7. In the **Filter by Job Status** section, select **Scheduled** and clear all other status options.
8. Select **Search SAP**.

   The **SAP Jobs** list populates with jobs that match your filter criteria.

9. Select the SAP job you want to edit from the list.
10. Select **Edit Job**.

    The **Editing SAP Job** dialog opens.

11. Make your changes to the job definition.
12. Select **Save**.

**Result:** Your changes are saved to the SAP job definition. If you edited a job in the Daily tables, the changes apply to the current instance only. If you edited a job in the Job Master, the changes take effect the next time the record is built or referenced.

## Related information

- To copy an SAP job, select the job in the **SAP Jobs** list and select **Copy Job**.
- To view the execution log for a finished or canceled job, select the job and select **Job Log**.
