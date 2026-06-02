---
title: Deleting Master Schedules
description: "Use this procedure to delete one or more Master Schedules in Solution Manager Studio."
product_area: Solution Manager
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

# Deleting Master Schedules

Use Solution Manager **Studio** to permanently delete one or more Master Schedules from OpCon. Deletion cannot be undone, so confirm that a schedule is no longer needed before proceeding.

## Required Privileges

No additional privileges beyond standard Schedule access are required to delete a Master Schedule.

## Deleting a Schedule

To delete one or more Master Schedules, complete the following steps:

1. Go to **Studio**.
2. Select one or more schedules from the list.
3. Select **Delete**. A confirmation dialog appears.

   ![Master Schedule Delete](../../../../../Resources/Images/SM/Studio/MasterSchedules/master-schedule-delete.png "Master Schedule Delete")

4. Select **Yes** to confirm the deletion, or **No** to cancel.

**Result:** The selected schedule or schedules are permanently removed from OpCon.

## FAQs

**Q: Can a deleted Master Schedule be recovered?**

No. Deleting a Master Schedule permanently removes it from OpCon. Verify that the schedule is no longer needed before deleting it.

**Q: How many Master Schedules can you delete at once?**

You can select multiple schedules at the same time and delete them in a single operation. Select each schedule you want to remove, then select **Delete** and confirm when prompted.

## Glossary

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.
