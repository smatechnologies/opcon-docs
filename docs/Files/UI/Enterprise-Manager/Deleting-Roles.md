---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Deleting Roles
description: "Use this procedure to delete Roles in Enterprise Manager."
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

# Deleting Roles

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to delete a role in Enterprise Manager.

To delete a role, complete the following steps:

1. Select **Roles** under the **Security** topic. The **Roles** screen displays.
2. Select the role name in the **Select Role** list.
3. Select ![Remove icon](../../../Resources/Images/EM/EMdelete.png "Remove icon") **Remove** on the **Roles** toolbar.
4. Select **Yes** to confirm or **No** to cancel.
5. Select **Close ☒** to close the **Roles** screen.

**Result:** The role is permanently removed from OpCon.

## FAQs

**Q: Can a deleted role be recovered?**

No. Deleting a role permanently removes it from OpCon. Verify the role is no longer needed and that no users depend on it before deleting.

**Q: How many roles can I delete at once?**

Select the specific role you want to delete, then select **Remove** on the toolbar. You can delete one role at a time. Confirm the deletion when prompted.

## Glossary

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.
