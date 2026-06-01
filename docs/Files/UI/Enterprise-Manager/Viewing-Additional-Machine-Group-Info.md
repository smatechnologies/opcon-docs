---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Viewing Additional Machine Group Information
description: "How to view cross-reference and audit information for a machine group in Enterprise Manager."
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

# Viewing Additional Machine Group Information

Enterprise Manager provides two supplemental views for any machine group: a cross-reference list that shows every schedule and job assigned to the group, and an audit trail that records all changes made to the group's configuration.

## View cross-references for a machine group

To view the jobs and schedules that reference a machine group, complete the following steps:

1. Select **Machine Groups** under the **Administration** topic. The **Machine Groups** screen displays.
2. Select the machine group in the **Select Machine Group** list.
3. Select the ![Cross Reference icon](../../../Resources/Images/EM/EMcrossref.png "Cross Reference icon") **Cross References** button on the toolbar. A dialog displays listing the master schedules, master jobs, and daily jobs that use the machine group.
4. Select **OK** to close the dialog.

**Result:** The cross-references dialog closes and you return to the **Machine Groups** screen.

## View audit records for a machine group

To view the audit history for a machine group, complete the following steps:

1. Select **Machine Groups** under the **Administration** topic. The **Machine Groups** screen displays.
2. Select the machine group in the **Select Machine Group** list.
3. Select the ![View Audit icon](../../../Resources/Images/EM/EMviewaudit.png "View Audit icon") **View Audit** button on the toolbar. The audit dialog displays showing all recorded changes to the machine group.
4. Select **Close** to close the dialog.

**Result:** The audit dialog closes and you return to the **Machine Groups** screen.
