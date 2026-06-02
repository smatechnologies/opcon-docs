---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Editing Threshold/Resource Dependencies
description: "Step-by-step procedures for editing job-related and frequency-related Threshold/Resource dependencies in Enterprise Manager Job Master."
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

# Editing Threshold/Resource Dependencies

A threshold/resource dependency requires a job to wait until a threshold or resource meets a specified condition before it is eligible to run. You can scope a dependency to apply to all frequencies on a job (job-related) or to a specific frequency (frequency-related).

Changes saved to master job records take effect the next time the schedule is built or the record is referenced. Changes made to a daily record apply only to the current schedule instance.

## Edit a Job-Related Threshold/Resource Dependency

To edit a job-related threshold/resource dependency, complete the following steps:

1. Select **Job Master** under the **Administration** topic. The **Job Master** screen displays.
2. Select the schedule in the **Schedule** list.
3. Select the job in the **Job** list.
4. Select the **Dependencies** tab, then the **Threshold/Resource Dependency** tab.
5. Select the **Job Related** option.
6. Select the dependency to edit.
7. Select **Edit**. The **Threshold/Resource Dependency** dialog displays.
8. Enter your changes.
9. Select **OK** to save, or select **Cancel** to discard changes.
10. Select **Close** to close the **Job Master** screen.

**Result:** The dependency is updated on the master job record.

## Edit a Frequency-Related Threshold/Resource Dependency

To edit a frequency-related threshold/resource dependency, complete the following steps:

1. Select **Job Master** under the **Administration** topic. The **Job Master** screen displays.
2. Select the schedule in the **Schedule** list.
3. Select the job in the **Job** list.
4. Select the **Dependencies** tab, then the **Threshold/Resource Dependency** tab.
5. Select the **Frequency Related** option.
6. Select the frequency in the **Frequency List**.
7. Select the dependency to edit.
8. Select **Edit**. The **Threshold/Resource Dependency** dialog displays.
9. Enter your changes.
10. Select **OK** to save, or select **Cancel** to discard changes.
11. Select **Close** to close the **Job Master** screen.

**Result:** The dependency is updated for the selected frequency on the master job record.
