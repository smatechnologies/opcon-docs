---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Deleting Roles
description: "Use this procedure to delete Roles in the Enterprise Manager."
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

#  Deleting Roles

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to delete Roles in the Enterprise Manager.

To delete a role, complete the following steps:

1.  Select on **Roles** under the **Security** topic. The **Roles** screen displays
2.  Select the **role name** in the **Select Role** list
3.  Select ![Remove icon](../../../Resources/Images/EM/EMdelete.png "Remove icon") **Remove** on the **Roles** toolbar
4.  Select **Yes** to confirm or **No** to cancel
5.  Select **Close ☒** to close the **Roles** screen

## FAQs

**Q: Can a roles record be recovered after deletion?**

No. Deleting a roles record permanently removes it from OpCon. Verify the record is no longer needed before deleting it.

**Q: How many roles records can you delete at once?**

Select the specific roles record you want to delete, then select the **Delete** button on the toolbar. Confirm the deletion when prompted.

## Glossary

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
