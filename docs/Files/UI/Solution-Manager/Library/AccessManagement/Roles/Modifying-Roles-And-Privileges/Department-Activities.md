---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Role Department Activities
description: "Reference for departmental function privileges in OpCon roles — the per-department permissions that control which jobs a user can view and manage within each department."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Reference
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-06-02
doc_type: reference
---

# Role Department Activities

A **role** is a named security profile that groups privileges together and is assigned to user accounts. Some function privileges in OpCon are *departmental*: instead of applying system-wide, they are granted to a role for one or more specific **departments**. This lets you control which departments' jobs a user can view and work with based on the role assigned to that user.

Departments are an organizational grouping in OpCon used to assign jobs to logical divisions. When a privilege is departmental, OpCon evaluates whether the user's role has that privilege for at least one department before allowing the related action.

## Departmental Function Privileges

The following table lists all departmental function privileges. Each privilege applies per department. To affect a specific job, the role must also have [Schedule Privileges](../../../../../../../administration/privileges.md#schedule-privileges), [Access Code Privileges](../../../../../../../administration/privileges.md#access-code-privileges), and where applicable [Machine Privileges](../../../../../../../administration/privileges.md#machine-privileges) and [Machine Group Privileges](../../../../../../../administration/privileges.md#machine-group-privileges) for that job.

| Privilege | Description |
|---|---|
| **All Job Master Functions** | Grants all privileges related to the Job Master for the department (equivalent to granting the four Job Master privileges individually). |
| **Add Jobs to Master Schedules** | Grants the ability to add new jobs, copy jobs, view history, and view Job Master PERT for jobs in the department. |
| **Delete Jobs from Master Schedules** | Grants the ability to delete jobs, view history, and view Job Master PERT for jobs in the department. |
| **Modify Jobs in Master Schedules** | Grants the ability to modify job details, documentation, events, frequencies, dependencies, and threshold/resource updates for jobs in the department. |
| **View Jobs in Master Schedules** | Grants the ability to view job details, documentation, events, frequencies, dependencies, history, PERT, and threshold/resource updates for jobs in the department. |
| **All Daily Schedule Functions** | Grants all privileges related to daily Schedule maintenance for the department (equivalent to granting the four Daily Schedule privileges individually). |
| **Add Jobs to Daily Schedules** | Grants the ability to add jobs from the Job Master to daily schedules for the department. Users must also have View Jobs in Master Schedules and View Jobs in Daily Schedules. |
| **Delete Jobs from Daily Schedules** | Grants the ability to delete jobs from daily schedules for the department. Users must also have View Jobs in Daily Schedules and Modify Jobs in Daily Schedules. |
| **Modify Jobs in Daily Schedules** | Grants the ability to modify job details, documentation, events, dependencies, and threshold/resource updates for daily jobs in the department. Users must also have View Jobs in Daily Schedules. |
| **View Jobs in Daily Schedules** | Grants the ability to view job details, documentation, events, dependencies, and threshold/resource updates for daily jobs in the department. |
| **View Standard Reports** | Grants the ability to view all non-administrative OpCon reports for jobs in the department. To view administrative reports, the role must also have All Function Privileges. |
| **All Schedule Operation Functions** | Grants all Schedule Operations privileges for the department, including all job status change actions and schedule-level Hold, Release, and Force-Start. |
| **View Jobs in Schedule Operations** | Grants the ability to view jobs in Schedule Operations for the department. |
| **Hold Jobs** | Grants the ability to run the Hold status change command on jobs in the department. Requires View Jobs in Schedule Operations. |
| **Release Jobs** | Grants the ability to run the Release status change command on jobs in the department. Requires View Jobs in Schedule Operations. |
| **Force-Start Jobs** | Grants the ability to run the Force-Start status change command on jobs in the department. Requires View Jobs in Schedule Operations. |
| **Cancel Jobs** | Grants the ability to run the Cancel status change command on jobs in the department. Requires View Jobs in Schedule Operations. |
| **Restart Jobs** | Grants the ability to run the Restart status change command on jobs in the department. Requires View Jobs in Schedule Operations. |
| **Mark Jobs Finished OK** | Grants the ability to run the Mark Jobs Finished OK status change command on jobs in the department. Requires View Jobs in Schedule Operations. |
| **Mark Jobs Failed** | Grants the ability to run the Mark Jobs Failed status change command on jobs in the department. Requires View Jobs in Schedule Operations. |
| **Skip Jobs** | Grants the ability to run the Skip status change command on jobs in the department. Requires View Jobs in Schedule Operations. |
| **Kill Jobs** | Grants the ability to run the Kill status change command on jobs in the department. Requires View Jobs in Schedule Operations. |

:::note
The `<General>` department is the default department for all jobs. Departmental privileges can also be associated with `<All Departments>`, which applies the privilege to every department at once.
:::

## Where Departmental Privileges Are Managed

Departmental function privileges are managed in the **Departmental Function Privileges** editor in Enterprise Manager under **Security > Privileges > Departmental Function Privileges**.

## Role Inheritance Options

In Solution Manager under **Administration > Security > Roles**, the role editor provides the following options that affect how object-level privileges are inherited. These apply to schedules, machines, and machine groups — not to departments.

| Option | Effect |
|---|---|
| **Inherit Privileges for All Schedules** | The role inherits privileges for every schedule rather than being limited to specific ones. |
| **Inherit Privileges for All Machines** | The role inherits privileges for every machine. |
| **Inherit Privileges for All Machines Groups** | The role inherits privileges for every machine group. |

## Related Topics

- [Managing Roles](../Managing-Roles-And-Privileges.md)
- [Privileges](../../../../../../../administration/privileges.md)
- [Roles](../../../../../../../administration/roles.md)
- [Users](../../../../../../../administration/user-accounts.md)
