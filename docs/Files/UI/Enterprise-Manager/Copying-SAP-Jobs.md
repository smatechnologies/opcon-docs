---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Copying SAP Jobs
description: "Use this procedure to copy an SAP job from the View SAP Jobs dialog in Enterprise Manager."
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

# Copying SAP Jobs

Use this procedure to copy an existing SAP R/3 or CRM job to a new job name using the **View SAP Jobs** dialog in Enterprise Manager. Copying a job duplicates all settings from the original, giving you a starting point you can then modify.

To copy an SAP job, complete the following steps:

1. Go to the **Operation** topic and select **Machines Status**.
2. Right-click the SAP R/3 and CRM machine name you want to work with.
3. Hover over **SAP Machine** in the right-click menu and select **SAP Jobs**. The **View SAP Jobs** dialog opens.
4. In the **Job Name Criteria** field, enter a job name or a name with a wildcard (the field defaults to `*`).
5. (Optional) Enter a date range in the **Filter by Create Date or Event ID** section to filter jobs by creation date.
6. (Optional) Enter an event identifier in the **Event ID** field to filter by event.
7. In the **Filter by Job Status** section, select the **Scheduled** option and clear all other status options.
8. Select **Search SAP**. The matching jobs appear in the **SAP Jobs** list.
9. Select the SAP job you want to copy from the results list.
10. Select **Copy Job**. The **New Job Name** dialog opens.
11. Enter a unique name for the copied job.
12. Select **OK**.

**Result:** The job is copied to the SAP system under the new name. A confirmation message appears in the dialog indicating the job was successfully copied.
