---
title: Setting Preferences for Status Colors
description: Set the display colors for job and schedule statuses in Enterprise Manager to customize how status information appears in the interface.
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: procedure
---

# Setting Preferences for Status Colors

Enterprise Manager lets you customize the colors used to display job and schedule statuses throughout the interface. You can set colors for status groups (which apply to all jobs sharing that status), override colors for individual job statuses, or configure schedule status colors separately.

To open the Colors preferences page, complete the following steps:

1. Open Enterprise Manager.
2. Go to **EnterpriseManager** > **Preferences**.
3. Select the arrow next to **Enterprise Manager** in the Preferences tree to expand it.
4. Select **Colors**.

**Result:** The Colors preferences page opens, showing sections for Jobs and Schedules.

From the Colors preferences page, you can complete any of the following tasks:

- [Set job status group colors](Setting-Job-Status-Group-Colors.md) — Configure a single color for each status group (Running, Waiting, Held, Missed Start Time, Canceled, Skipped, Finished OK, Failed, Fixed, Under Review) under **Status Group Colors**.
- [Manage individual job status colors](Managing-Individual-Status-Colors.md) — Add, edit, or remove color overrides for specific job statuses under **Individual Job Status Colors** using the **Add...**, **Edit...**, and **Remove** buttons.
- [Set schedule status colors](Setting-Schedule-Status-Colors.md) — Configure colors for schedule statuses (Held, Finished OK, Running, Waiting) under the **Schedules** section.

:::note
To reset all color settings to their defaults, select **Restore Defaults** on the Colors preferences page. This action resets both the status group colors and all individual job status color overrides.
:::
