---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Editing Job Dependencies
description: "How to edit job-related and frequency-related job dependencies in Enterprise Manager Job Master."
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

# Editing Job Dependencies

A job dependency defines the relationship one job has to another before it is allowed to run. In Enterprise Manager, you can define job-level dependencies that apply across all frequencies, or frequency-level dependencies that apply only when a specific frequency is active.

## Edit a job-related dependency

A job-related dependency applies regardless of frequency. To edit a job-related dependency, complete the following steps:

1. Select **Job Master** under the **Administration** topic. The **Job Master** screen opens.
2. Select the schedule in the **Schedule** list.
3. Select the job in the **Job** list.
4. Select the **Dependencies** tab in the **Job Properties** frame.
5. Select the **Job Dependency** tab.
6. Select the **Job Related** option.
7. Select the dependency you want to edit.
8. Select **Edit**. The **Edit Dependency** dialog opens.
9. Change any of the following fields as needed:

   | Field | Description |
   |---|---|
   | **Dependency Type** | Select **Requires**, **After**, **Excludes**, or **Conflict**. |
   | **Exit Value** | For **Requires** or **After** types, select **Finished OK**, **Failed**, or **Ignore Exit Code**. |
   | **Check All Days** | Available for **Conflict** type. Select this option to check all days for the conflict condition. |
   | **Job Name Like** | Available for **Conflict** type. Select this option and enter a name pattern to match multiple jobs. |
   | **Offset** | Enter the number of days offset for cross-day dependencies (range: -999 to 999). |

10. Select **OK** to save, or **Cancel** to discard the changes.
11. Select **Close** (to the right of the **Job Master** tab) to close the **Job Master** screen.

**Result:** The dependency is updated in the job master record and takes effect the next time the schedule is built or the record is referenced.

## Edit a frequency-related dependency

A frequency-related dependency applies only when the job runs under a specific frequency. To edit a frequency-related dependency, complete the following steps:

1. Select **Job Master** under the **Administration** topic. The **Job Master** screen opens.
2. Select the schedule in the **Schedule** list.
3. Select the job in the **Job** list.
4. Select the **Dependencies** tab in the **Job Properties** frame.
5. Select the **Job Dependency** tab.
6. Select the **Frequency Related** option.
7. Select the frequency in the **Frequency List**.
8. Select the dependency you want to edit.
9. Select **Edit**. The **Edit Dependency** dialog opens.
10. Change any of the following fields as needed:

    | Field | Description |
    |---|---|
    | **Dependency Type** | Select **Requires**, **After**, **Excludes**, or **Conflict**. |
    | **Exit Value** | For **Requires** or **After** types, select **Finished OK**, **Failed**, or **Ignore Exit Code**. |
    | **Check All Days** | Available for **Conflict** type. Select this option to check all days for the conflict condition. |
    | **Job Name Like** | Available for **Conflict** type. Select this option and enter a name pattern to match multiple jobs. |
    | **Offset** | Enter the number of days offset for cross-day dependencies (range: -999 to 999). |
    | **Frequency** | Select the frequency name to associate with this dependency. |

11. Select **OK** to save, or **Cancel** to discard the changes.
12. Select **Close** (to the right of the **Job Master** tab) to close the **Job Master** screen.

**Result:** The dependency is updated for the selected frequency and takes effect the next time the schedule is built or the record is referenced.
