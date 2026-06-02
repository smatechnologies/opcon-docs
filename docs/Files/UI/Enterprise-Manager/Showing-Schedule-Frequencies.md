---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Showing Schedule Frequencies Only
description: Filter the Frequency Manager to display only the schedules that use a selected frequency in Enterprise Manager.
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

# Showing Schedule Frequencies Only

The **Frequency Manager** in Enterprise Manager includes a **Show only Schedules using this Frequency** option. When selected, the **Master Schedules/Jobs using this Frequency** panel filters to show only schedule-level frequency assignments, hiding individual job-level entries.

Use this procedure when you want to quickly identify which schedules are associated with a specific frequency.

## Filter the Frequency Manager to schedule frequencies

To filter the Frequency Manager to show only schedule-level frequencies, complete the following steps:

1. In the Enterprise Manager navigation pane, select **Frequency Manager** under **Management**. The **Frequency Manager** screen opens.
2. Select the **Show only Schedules using this Frequency** option. The job column in the **Master Schedules/Jobs using this Frequency** panel is hidden, and the list filters to schedule-level entries only.
3. Select the frequency name you want to review. The **Master Schedules/Jobs using this Frequency** panel updates to display any schedules using the selected frequency.
4. Review the schedules listed. If no schedules appear, none are currently assigned to that frequency.
5. Clear the **Show only Schedules using this Frequency** option to restore the full jobs and schedules view.
6. Select **Close** to close the **Frequency Manager** screen.

**Result:** The Frequency Manager returns to its default view, showing all master schedules and jobs for any selected frequency.
