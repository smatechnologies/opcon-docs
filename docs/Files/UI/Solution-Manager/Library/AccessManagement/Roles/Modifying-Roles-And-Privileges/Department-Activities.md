---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Role Department Activities
description: "How OpCon roles grant function privileges that are scoped to individual departments, controlling which departments' jobs a user can work with."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-05-29
doc_type: conceptual
---

# Role Department Activities

**Theme:** Configure
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

A **role** is a named security profile that groups privileges together and is assigned to user accounts. Some function privileges in OpCon are *departmental*: instead of applying system-wide, they are granted to a role for one or more specific **departments**. This lets you control which departments' jobs a user can view and work with based on the role assigned to that user.

For example, departmental function privileges determine whether a role can view jobs in master schedules, view jobs in daily schedules, build daily schedules, view standard reports, and view jobs in schedule operations for a given department.

<!-- GAP: The original page described a \"Departments\" tab under \"Library > Access Management > Roles\" that \"displays the departments assigned to the selected role.\" The Solution Manager Roles editor (Administration > Security > Roles) does not contain a Departments tab — its editor exposes Name, the Inherit Privileges switches, and a Permissions form with Access codes and Batch users tabs (Core-SolutionManager RoleView.java, PermissionsForm.java). The exact UI surface where a role's per-department privileges are assigned, and whether it is labeled \"Departments,\" needs SME/source confirmation. -->

<!-- GAP: Original screenshot reference (roles-departments-tab.png) and the \"Edit the fields and select Save to modify them\" procedure could not be verified against source and have been removed pending confirmation of the actual UI. -->

## How It Works

Departments are an organizational grouping in OpCon used to assign jobs to logical divisions. When a privilege is departmental, OpCon evaluates whether the user's role has that privilege for at least one department before allowing the related action. For instance, access to schedule and report features is gated by checks such as \"has at least one department for View Jobs in Master Schedules\" or \"has at least one department for View Standard Reports.\"

Roles can also be configured to bypass per-object scoping using the inheritance options exposed in the Solution Manager Role editor:

| Option | Effect |
|---|---|
| **Inherit Privileges for All Schedules** | The role inherits privileges for every schedule rather than being limited to specific ones. |
| **Inherit Privileges for All Machines** | The role inherits privileges for every machine. |
| **Inherit Privileges for All Machines Groups** | The role inherits privileges for every machine group. |

<!-- GAP: A comparable \"inherit all departments\" option was not found in source. Confirm with SME whether departmental privileges support an inherit-all equivalent. -->

## Where Roles And Departments Are Managed

In Solution Manager, roles are maintained under **Administration > Security > Roles**.

<!-- GAP: Departments are not maintained in Solution Manager (no department management labels exist in the Solution Manager core resources; departments appear only as an operations filter). Department definitions are maintained in Enterprise Manager. The exact Enterprise Manager menu path for the Department editor needs SME/source confirmation. -->

## Related Topics

- [Managing Roles](../Managing-Roles-And-Privileges.md)
- [Privileges](../../../../../../../administration/privileges.md)
- [Roles](../../../../../../../administration/roles.md)
- [Users](../../../../../../../administration/user-accounts.md)

## FAQs

**Q: Where do you manage roles in Solution Manager?**

Roles are maintained under **Administration > Security > Roles**.

**Q: What makes a privilege \"departmental\"?**

A departmental function privilege is granted for one or more specific departments rather than system-wide. OpCon checks whether the user's role holds the privilege for at least one department before permitting the related action, such as viewing jobs in a schedule for that department.

## Glossary

**Department**: An organizational grouping in OpCon used to assign jobs to logical divisions. Role privileges can be scoped to specific departments, controlling which departments' jobs a user can manage.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Function privileges can be system-wide or scoped to individual departments.

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**Enterprise Manager**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.
