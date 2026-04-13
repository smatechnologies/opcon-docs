---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Deleting Schedule Completion Events
description: "Use this procedure to delete Schedule Completion Events in the Enterprise Manager."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: procedural
---

#  Deleting Schedule Completion Events

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to delete Schedule Completion Events in the Enterprise Manager.

To delete a schedule completion event, complete the following steps:

1.  Select on **Schedule Master** under the **Administration** topic. The **Schedule Master** screen displays
2.  Select the **schedule** in the **Schedule Selection** list
3.  Select on the **Event** tab in the **Schedule Details** frame
4.  Select the **event** in the **Schedule Completion Events** list
5.  Select **Remove**
6.  Select **Yes** to confirm or **No** to cancel
7.  Select **Close ☒** to close the **Schedule Master** screen

## FAQs

**Q: Can a schedule completion events record be recovered after deletion?**

No. Deleting a schedule completion events record permanently removes it from OpCon. Verify the record is no longer needed before deleting it.

**Q: How many schedule completion events records can you delete at once?**

Select the specific schedule completion events record you want to delete, then select the **Delete** button on the toolbar. Confirm the deletion when prompted.

## Glossary

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
