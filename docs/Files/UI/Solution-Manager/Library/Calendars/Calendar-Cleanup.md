---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Calendar Cleanup
description: "Calendar cleanup deletes calendar dates older than 30 days."
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

# Calendar Cleanup

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Calendar cleanup deletes calendar dates older than 30 days. You can clean up all calendars or only selected calendars.

## Clean up all calendars

To clean up all calendars, complete the following steps:

1. Select the **Calendar Cleanup** button.
2. Select the **All calendars** option.
3. Select **Delete** to delete dates older than 30 days, or **Cancel** to cancel.

**Result:** Dates older than 30 days are removed from all calendars.

## Clean up specific calendars

To clean up specific calendars, complete the following steps:

1. Select the calendars to clean up from the list.
2. Select the **Calendar Cleanup** button.
3. Select the **Selected calendars** option.
4. Select **Delete** to delete dates older than 30 days, or **Cancel** to cancel.

**Result:** Dates older than 30 days are removed from the selected calendars.

## FAQs

**Q: What is the date threshold for Calendar Cleanup?**

Calendar cleanup removes calendar dates that are more than 30 days old.

**Q: Can I undo a Calendar Cleanup?**

No. Deleting calendar dates is permanent. Verify that the dates are no longer needed before running a cleanup.

## Glossary

**Calendar**: A named collection of dates in OpCon used by schedules and frequencies to determine eligibility. Calendars can mark days to include or exclude from schedule builds.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.
