---
title: Roles
description: "Roles maintain privileges for multiple User Accounts simultaneously, simplifying administration."
product_area: Administration
audience: System Administrator
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - System Configuration
last_updated: 2026-03-18
doc_type: conceptual
---

# Roles

**Theme:** Configure  
**Who Is It For?** System Administrator

## What Is It?

Roles maintain privileges for multiple User Accounts simultaneously, simplifying administration.

To manage roles, a user must belong to a role with All Administrative Functions, All Function Privileges, or be in the ocadm role.

Role management fields:

- **Role Name**: Unique name of the Role
- **Documentation**: Description of the Role
- **Inherit Privileges for All Schedules**: When enabled, the Role inherits privileges for all current and future schedules. When cleared, the Role retains previously inherited schedule privileges
- **Inherit Privileges for All Machines**: When enabled, the Role inherits privileges for all current and future Machines. When cleared, the Role retains previously inherited Machine privileges
- **Inherit Privileges for All Machine Groups**: When enabled, the Role inherits privileges for all current and future Machine Groups. When cleared, the Role retains previously inherited Machine Group privileges
- **Inherit Privileges for All Scripts**: When enabled, the Role inherits privileges for all current and future Embedded Scripts. When cleared, the Role retains previously inherited Embedded Script privileges
- **User Assignment**: User Accounts assigned to this Role. A User Account must have at least one assigned role to log in. Refer to [User Accounts](./user-accounts.md)

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Role Name | Unique name of the Role | — | — |
| Documentation | Description of the Role | — | — |
| Inherit Privileges for All Schedules | When enabled, the Role inherits privileges for all current and future schedules. | — | — |
| Inherit Privileges for All Machines | When enabled, the Role inherits privileges for all current and future Machines. | — | — |
| Inherit Privileges for All Machine Groups | When enabled, the Role inherits privileges for all current and future Machine Groups. | — | — |
| Inherit Privileges for All Scripts | When enabled, the Role inherits privileges for all current and future Embedded Scripts. | — | — |
| User Assignment | User Accounts assigned to this Role. | — | — |
## Security Considerations

### Authorization

Creating, modifying, or deleting roles requires membership in a role with All Administrative Functions, All Function Privileges, or membership in the ocadm role.

A User Account must have at least one assigned role to log in to OpCon. If a user account has no roles, login will not succeed.

### Data Security

The Inherit Privileges for All Schedules, Inherit Privileges for All Machines, Inherit Privileges for All Machine Groups, and Inherit Privileges for All Scripts flags on a role automatically grant access to all current and future resources of those types. Enabling these flags broadly expands the scope of the role's access and should be applied with care.

## FAQs

**Q: Who can create and manage roles?**

A user must belong to a role with All Administrative Functions, All Function Privileges, or be in the ocadm role to manage roles.

**Q: What happens when Inherit Privileges for All Schedules is enabled on a role?**

The role automatically inherits privileges for all current and future schedules. When this setting is cleared, the role retains the schedule privileges it had already inherited but no longer automatically gains access to new schedules.

**Q: Can a user belong to more than one role?**

Yes. A user account can be assigned to multiple roles, and the user inherits the combined privileges of all assigned roles.

## Glossary

**Embedded Script**: A script stored and versioned directly within the OpCon database. Embedded scripts can be assigned to Windows jobs and run at runtime without requiring the script file to exist on the target machine.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.
