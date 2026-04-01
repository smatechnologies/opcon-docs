---
title: Deleting Named Schedule Instance Properties
description: "Use this procedure to delete Named Schedule Instance Properties in the Enterprise Manager."
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

# Deleting Named Schedule Instance Properties

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to delete Named Schedule Instance Properties in the Enterprise Manager.

To delete a property, complete the following steps:

1. Select on **Schedule Master** under the **Administration** topic. The **Schedule Master** screen displays
2. Select the **schedule** in the **Schedule Selection** list
3. Select the **Instance Definition** tab in the **Schedule Details** frame
4. Select the **instance name** that has the property to remove
5. Select the **property** to remove
6. Select **Remove**
7. Repeat Steps 5 and 6 to delete additional properties for the selected instance name
8. Select ![Green circle with white checkmark inside](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Schedule Master** toolbar to confirm the deletion
9. Select **Close ☒** to close the **Schedule Master** screen

## FAQs

**Q: Can a named schedule instance properties record be recovered after deletion?**

No. Deleting a named schedule instance properties record permanently removes it from OpCon. Verify the record is no longer needed before deleting it.

**Q: How many named schedule instance properties records can you delete at once?**

Select the specific named schedule instance properties record you want to delete, then select the **Delete** button on the toolbar. Confirm the deletion when prompted.

## Glossary

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
