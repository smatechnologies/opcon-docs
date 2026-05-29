---
title: Granting Privileges to Roles
description: "Use this procedure to grant privileges to a role in Enterprise Manager by moving items from the Revoked list to the Granted list in a privilege-type editor."
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

# Granting Privileges to Roles

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

A role is a named security profile that groups privileges together. You grant privileges to a role so that every user assigned to that role gains the corresponding access.

You do not grant every privilege type from one screen. Instead, you open the editor for the privilege type you want to grant, select the role, and move the items you want to grant from the **Revoked** list to the **Granted** list. The following privilege-type editors are available under the **Security** topic in the **Navigation Panel**:

- [Access Codes Privileges](Managing-Access-Codes-Privileges.md)
- [Schedule Privileges](Managing-Schedule-Privileges.md)
- [Function Privileges](Managing-Function-Privileges.md)
- [Departmental Function Privileges](Managing-Dept-Function-Privileges.md)
- [Batch User Privileges](Managing-Batch-User-Privileges.md)
- [Machine Privileges](Managing-Machine-Privileges.md)
- [Machine Group Privileges](Managing-Machine-Group-Privileges.md)
- [Script Privileges](Managing-Script-Privileges.md)

For an overview of all privilege types, refer to [Managing Privileges](Managing-Privileges.md).

## Granting Privileges to a Role

To grant privileges to a role, complete the following steps:

1. Expand the **Privileges** group under the **Security** topic in the **Navigation Panel**.
2. Select the editor for the privilege type you want to grant (for example, **Function Privileges**). The editor screen displays.
3. Select a role in the **Select Role** list.
4. Select the item(s) you want to grant in the **Revoked** list box.
5. Select the **right arrow** to move the selected item(s) to the **Granted** list box.
6. Select **Close ☒** to close the editor.

**Result:** The selected privileges are granted to the role. Every user assigned to the role inherits the granted privileges.

:::note
Privileges granted to the `ocadm` role cannot be revoked.
:::

<!-- GAP: Some editors (Schedule, Machine, Machine Group) disable revoking when the role has an "Inherit Privileges for All ..." option enabled. Whether and how that option affects granting is not confirmed in source for this overview page; confirm with SME before documenting here. -->

## FAQs

**Q: Where do I grant privileges to a role?**

You grant privileges in the editor for the specific privilege type, not from a single combined screen. Open the privilege-type editor under the **Security** topic, select the role, and move items from the **Revoked** list to the **Granted** list.

**Q: Why can't I revoke a privilege I just granted to a role?**

Privileges granted to the `ocadm` role cannot be revoked. For other roles, revoking may be disabled when an inherit-privileges option is enabled for that role.

## Related Topics

- [Managing Privileges](Managing-Privileges.md)
- [Managing Roles](Managing-Roles.md)
- [Adding Roles](Adding-Roles.md)
- [Assigning Users to Roles](Assigning-Users-to-Roles.md)

## Glossary

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.
