---
title: User Security Overview
description: "OpCon uses role-based access control (RBAC) to manage what each user can see and do."
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

**Theme:** Overview | **Who is it for?** System administrators who manage OpCon user access and security

## What Is It?

OpCon uses role-based access control (RBAC) to manage what each user can see and do. User security configuration includes authentication settings, role and privilege assignments, departments, access codes, and audit log access.

## When Would You Use It?

- You need to control (RBAC) to manage what each user can see and do using OpCon uses role-based access

## Why Would You Use It?

- **Centralized control**: OpCon uses role-based access control (RBAC) to manage what each user can see and do

## When would you use this section?

- Creating or modifying user accounts
- Assigning or changing role memberships and privileges
- Configuring SSO or reviewing authentication settings
- Restricting which schedules, machines, or scripts a user can access
- Reviewing audit logs for compliance or troubleshooting

## What is in this section?

| Topic | Description |
|-------|-------------|
| Authentication | Login, password reset, and external token generation |
| RBAC | Roles, privileges, and the Access Management screen |
| Managing Roles | Create, copy, delete, and modify role definitions |
| Managing Users | Create, copy, delete, and modify user accounts |
| Departments | Organize jobs and schedules into departments for targeted access control |
| Access Codes | Restrict access to specific jobs and schedules using access codes |
| Auditing | View and search audit logs and schedule build history |

CAUTION: Granting the All Administrative Functions privilege gives a user full control of OpCon. Assign this privilege only to trusted administrators.

## Glossary

| Term | Definition |
| --- | --- |
| Audit Log | A record of all changes made to OpCon objects, including the date, user, data changed, original value, and final value. |
| Privilege | A permission that controls which actions a user can perform or which resources a user can access in OpCon. |
| RBAC (Role-Based Access Control) | A security model in which user permissions are assigned through roles rather than directly to individual users, simplifying access management. |
| Role | A named collection of privileges that can be assigned to one or more user accounts. Users in a role inherit all of that role's privileges. |
| Schedule | A named group of jobs in OpCon that represents a business process. Schedules are built each day based on their defined frequencies and calendars. |
| Schedule Build | The process by which OpCon creates daily schedule instances from master schedule definitions, applying frequencies, calendars, and properties. |
| SSO (Single Sign-On) | An authentication method that allows users to log in once and access multiple applications without re-entering credentials. |
| Token | A reference to a property value using the `[[ ]]` syntax. The SAM replaces tokens with their runtime values when processing jobs. |

## Security Considerations

### Authentication

OpCon supports login via a username and password (manual login) and via automatic login using the user's network account name. SSO (Single Sign-On) is also a supported authentication method, configurable per deployment.

### Authorization

OpCon uses role-based access control (RBAC). All permissions are granted through roles assigned to user accounts. Granting the All Administrative Functions privilege gives a user full control of OpCon; this privilege should be assigned only to trusted administrators.

Departments, access codes, and schedule/machine/script privileges allow administrators to restrict which jobs, schedules, machines, and scripts each role can access or manage.

### Data Security

Audit logs record all changes made to OpCon objects, capturing the date, user, data changed, original value, and final value. Access to audit logs is restricted to users with the appropriate privilege and can be reviewed for compliance or troubleshooting purposes.

## FAQs

**Q: What does the User Security Overview cover?**

OpCon uses role-based access control (RBAC) to manage what each user can see and do. User security configuration includes authentication settings, role and privilege assignments, departments, access codes, and audit log access.

**Q: Why should the "All Administrative Functions" privilege be assigned with caution?**

Granting the All Administrative Functions privilege gives a user full control of OpCon. Because this privilege bypasses granular restrictions, it should be assigned only to trusted administrators.

**Q: What information does an OpCon audit log entry capture?**

Audit logs record all changes made to OpCon objects, capturing the date, user, data changed, original value, and final value. Access to audit logs is restricted to users with the appropriate privilege and can be reviewed for compliance or troubleshooting purposes.
