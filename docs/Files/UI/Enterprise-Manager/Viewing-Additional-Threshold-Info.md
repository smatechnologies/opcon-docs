---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Viewing Additional Threshold Information
description: "Use this procedure to view cross-reference details and audit records for a threshold in Enterprise Manager."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-06-01
doc_type: procedural
---

# Viewing Additional Threshold Information

Enterprise Manager provides two ways to inspect a threshold beyond its name and current value: the **Cross Reference** button shows which jobs in the Master and Daily schedules depend on or update the threshold, and the **View Audit** button shows a history of every change made to the threshold record.

## View cross-reference details for a threshold

To view the jobs that depend on or update a threshold, complete the following steps:

1. Select **Thresholds** under the **Administration** topic. The **Thresholds** screen displays.
2. Select the threshold in the **Select Threshold** list.
3. Select the **Cross Reference** button on the toolbar.

   The **Cross References** dialog opens and displays the following categories on separate tabs:

   - **Master Threshold/Resource Dependencies** — jobs in Master schedules configured with a dependency on this threshold.
   - **Master Threshold/Resource Update** — jobs in Master schedules configured to update this threshold.
   - **Daily Threshold/Resource Dependencies** — jobs in the Daily schedule with a dependency on this threshold.
   - **Daily Threshold/Resource Update** — jobs in the Daily schedule configured to update this threshold.

4. Select **OK** to close the dialog.

**Result:** You can identify all jobs that reference the threshold before making changes or deleting it.

## View the audit history for a threshold

To view audit records for changes to a threshold, complete the following steps:

1. Select **Thresholds** under the **Administration** topic. The **Thresholds** screen displays.
2. Select the threshold in the **Select Threshold** list.
3. Select the **View Audit** button on the toolbar. The audit dialog opens showing the history of changes to the selected threshold record.
4. Select **Close** to dismiss the dialog.

**Result:** The audit record shows the timestamp, user, and before/after values for each change made to the threshold.
