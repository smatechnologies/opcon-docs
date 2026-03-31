---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Deleting Schedule Frequencies
description: "Use this procedure to delete Schedule Frequencies in the Enterprise Manager."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: conceptual
---

#  Deleting Schedule Frequencies

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to delete Schedule Frequencies in the Enterprise Manager.

To delete a frequency, complete the following steps:

1.  Select on **Schedule Master** under the **Administration** topic. The **Schedule Master** screen displays
2.  Select the **schedule** in the **Schedule Selection** list
3.  Select on the **Frequency** tab in the **Schedule Details** frame
4.  Select the **existing frequency** in the **Frequency list**
5.  Select **Remove**
6.  Select **Yes** to confirm or **No** to cancel
7.  Select **Close ☒** to close the **Schedule Master** screen

## When Would You Use It?

- An existing Schedule Frequencies in Enterprise Manager is no longer needed
- The Schedule Frequencies has been decommissioned or replaced and should be removed to keep the configuration clean

## Why Would You Use It?

- **Maintain a clean environment**: Removing unused Schedule Frequencies definitions reduces clutter and prevents accidental use of outdated or obsolete configurations
- Deletions are recorded in the OpCon audit log, providing traceability for compliance and change management reviews


## FAQs

**Q: Can a schedule frequencies record be recovered after deletion?**

No. Deleting a schedule frequencies record permanently removes it from OpCon. Verify the record is no longer needed before deleting it.

**Q: How many schedule frequencies records can you delete at once?**

Select the specific schedule frequencies record you want to delete, then select the **Delete** button on the toolbar. Confirm the deletion when prompted.

## Glossary

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
