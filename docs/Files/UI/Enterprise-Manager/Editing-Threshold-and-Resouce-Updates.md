---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Editing Threshold/Resource Updates
description: "How to edit job-related and frequency-related threshold or resource updates in Enterprise Manager Job Master."
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

# Editing Threshold/Resource Updates

A threshold/resource update instructs OpCon to set a threshold or resource value when a job reaches a specific status. You can configure an update to apply to all frequencies for a job (job-related) or to a specific frequency (frequency-related). Use Enterprise Manager Job Master to edit existing updates in the master schedule definition.

## Editing a Job-Related Threshold or Resource Update

To edit a job-related threshold or resource update, complete the following steps:

1. Select **Job Master** under the **Administration** topic. The **Job Master** screen displays.
2. Select the schedule in the **Schedule** list.
3. Select the job in the **Job** list.
4. Select the **Threshold/Resource Update** tab in the **Job Properties** frame.
5. Select the **Job Related** option.
6. Select the existing threshold or resource entry in the **Threshold/Resource Updates** list.
7. Select **Edit**. The **Threshold/Resource Update** dialog displays.
8. Update the **Threshold/Resource**, **Job Status**, and **Value** fields as needed.
9. Select **OK** to save the changes, or select **Cancel** to discard them.
10. Select **Close** to close the **Job Master** screen.

**Result:** The updated threshold or resource definition is saved to the master schedule. The change takes effect the next time the schedule is built for a date.

## Editing a Frequency-Related Threshold or Resource Update

To edit a frequency-related threshold or resource update, complete the following steps:

1. Select **Job Master** under the **Administration** topic. The **Job Master** screen displays.
2. Select the schedule in the **Schedule** list.
3. Select the job in the **Job** list.
4. Select the **Threshold/Resource Update** tab in the **Job Properties** frame.
5. Select the **Frequency Related** option.
6. Select the frequency in the **Frequency** list.
7. Select the existing threshold or resource entry in the **Threshold/Resource Updates** list.
8. Select **Edit**. The **Threshold/Resource Update** dialog displays.
9. Update the **Threshold/Resource**, **Job Status**, and **Value** fields as needed.
10. Select **OK** to save the changes, or select **Cancel** to discard them.

**Result:** The updated threshold or resource definition is saved for the selected frequency. The change takes effect the next time the schedule is built for a date.

## Threshold/Resource Update Dialog Fields

| Field | Description |
|---|---|
| **Threshold/Resource** | The threshold or resource to set when the job reaches the configured status. Select from the list of defined thresholds and resources. |
| **Job Status** | The job completion status that triggers the update. Valid statuses include Finished OK, Failed, Skipped, Exceeded Max Run Time, Late to Start, Late to Finish, Missed Latest Start Time, Still Attempting Start, Start Attempted, Under Review, and Fixed. |
| **Value** | The numeric value to assign to the threshold or resource. Must be a non-negative integer. |

## Notes

- Edits made in Job Master update the master schedule definition. Changes apply the next time the schedule is built or the daily record is rebuilt.
- Edits made to daily schedule records (opened from Operations or the Operations views) apply only to the current date instance and do not affect the master definition.
