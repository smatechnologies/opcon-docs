---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Editing Job Events
description: "Use this procedure to edit job events in Enterprise Manager."
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

# Editing Job Events

Job events are automated actions that OpCon triggers based on a job's status or on a specific frequency associated with a job. You can edit both job-related and frequency-related events in the Job Master screen in Enterprise Manager.

## Editing Job-Related Events

To edit a job-related event, complete the following steps:

1. Select **Job Master** under the **Administration** topic. The **Job Master** screen displays.
2. Select the schedule in the **Schedule** list.
3. Select the job in the **Job** list.
4. Select the **Events** tab in the **Job Properties** frame.
5. Select the **Job Related** option.
6. Select the event to edit, then select **Edit**. The **Event Definition Wizard** displays.
7. Enter your changes in the wizard. Select **Reset** to revert parameters to their original values.
8. Select **Finish** to save the changes, or select **Cancel** to discard them.
9. Select **Close** (to the right of the **Job Master** tab) to close the **Job Master** screen.

**Result:** The updated event is saved to the Job Master record and takes effect the next time the schedule is built or the record is referenced.

## Editing Frequency-Related Events

To edit a frequency-related event, complete the following steps:

1. Select **Job Master** under the **Administration** topic. The **Job Master** screen displays.
2. Select the schedule in the **Schedule** list.
3. Select the job in the **Job** list.
4. Select the **Events** tab in the **Job Properties** frame.
5. Select the **Frequency Related** option.
6. Select the frequency in the **Frequency** list.
7. Select the event to edit, then select **Edit**. The **Event Definition Wizard** displays.
8. Enter your changes in the wizard. Select **Reset** to revert parameters to their original values.
9. Select **Finish** to save the changes, or select **Cancel** to discard them.
10. Select **Close** (to the right of the **Job Master** tab) to close the **Job Master** screen.

**Result:** The updated event is saved to the Job Master record and takes effect the next time the schedule is built or the record is referenced.

:::note
Changes saved in the Job Master take effect the next time the record is built or referenced. If you edit an event on a Daily table record, the change applies only to that current instance and does not affect the master record.
:::
