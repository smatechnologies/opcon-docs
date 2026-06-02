---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Deleting Old Dates
description: "Use this procedure to delete Old Dates in Enterprise Manager."
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

# Deleting Old Dates

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to delete Old Dates in Enterprise Manager.

To delete old dates, complete the following steps:

1. Select **Calendars** under the **Administration** topic. The **Calendars** screen displays
2. Select the **calendar** in the **Selection** list
3. Select **Delete Old Dates**
4. To delete dates from the selected calendar only, select **No**. Select **Yes** to confirm, or **No** to cancel
5. To delete dates from all calendars, select **Yes**. Select **Yes** to confirm, or **No** to cancel
6. Select **Close ☒** to close the **Calendars** screen

## FAQs

**Q: Can deleted dates be recovered?**

No. Deleting old dates permanently removes them from OpCon. Verify the records are no longer needed before deleting them.

**Q: How do you delete old dates from a single calendar versus all calendars?**

In step 4, select **No** to delete dates from the selected calendar only, or select **Yes** to delete dates from all calendars. Confirm the deletion when prompted.

## Glossary

**Calendar**: A named collection of dates in OpCon used by schedules and frequencies to determine when automation runs or is excluded. Calendars can represent holidays, working days, or any custom date set.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.
