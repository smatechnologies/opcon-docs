---
title: Adding Schedules
description: "Use this procedure to add Schedules in the Enterprise Manager."
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

# Adding Schedules

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to add Schedules in the Enterprise Manager.

To add a schedule, complete the following steps:

1. Select on **Schedule Master** under the **Administration** topic. The **Schedule Master** screen displays
2. Select ![Add](../../../Resources/Images/EM/EMadd.png) **Add** on the **Schedule Master** toolbar
3. Enter a *schedule name* in the **Name** text box
4. *(Optional)* Enter *any text* in the **Documentation** text box
5. Ensure that the **Schedule** tab is in focus
6. *(Optional)* Enter the *time* in the **Start Time** text box of the **Schedule Details** frame. If not specified, the default is 00:00 (midnight)
7. Select the **Workdays per Week** for the schedule to run
8. *(Optional)* Select any of the following options as needed:
   - **Multi-Instance**
   - **SubSchedule**
   - **Conflict with other days**
   - **Use Master Holiday**
   - An **additional holiday calendar** in the **Additional Holidays** list
9. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Schedule Master** toolbar and select **OK**
10. Select **Close ☒** (to the right of the **Schedule Master** tab) to close the **Schedule Master** screen

## FAQs

**Q: What information is required to add schedules?**

The required fields include **Name**, **Documentation**, **Start Time**. Select **Save** on the toolbar to save the new record.

**Q: Is documentation required when adding schedules?**

No. The Documentation field is optional. You can enter notes about the schedules to track its purpose, but it is not required to save the record.

## Glossary

**Calendar**: A named collection of dates in OpCon used by schedules and frequencies to determine when automation runs or is excluded. Calendars can represent holidays, working days, or any custom date set.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.
