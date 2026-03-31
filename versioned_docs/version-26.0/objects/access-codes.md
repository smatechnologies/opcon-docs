---
title: Access Codes
description: "Access codes can be used to secure individual job records."
product_area: Core Concepts
audience: Automation Engineer, Application Owner
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - Automation Engineer
  - Application Owner
  - Getting Started
last_updated: 2026-03-18
doc_type: conceptual
---

# Access Codes

**Theme:** Configure  
**Who Is It For?** Automation Engineer, Application Owner

## What Is It?

Access codes can be used to secure individual job records. The access code object is simply a name. To use an access code, privileges must be granted (refer to [Access Code Privileges](../administration/privileges.md#access-code-privileges)), and the access code must be associated with the jobs needing this type of security (refer to [Jobs](../objects/jobs.md)). A single access code can be used to secure as many different jobs as necessary.

The following information applies to defining access codes:

- **Name**: Defines the name for the access code
- **Documentation**: Provides an area for descriptions and notes for the access code

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Name | Defines the name for the access code | — | must be granted Access Code Privileges for that code. A single access code can secure as |
| Documentation | Provides an area for descriptions and notes for the access code | — | must be granted Access Code Privileges for that code. A single access code can secure as |
## Security Considerations

### Authorization

Access codes restrict which users can view and update individual job records. For a user to interact with a job secured by an access code, their role must be granted Access Code Privileges for that code. Creating, modifying, or deleting access codes requires membership in a role with All Administrative Functions, All Function Privileges, or membership in the ocadm role.

All jobs use the `<None>` access code by default, and all roles automatically have privileges for `<None>`. Jobs requiring restricted access must be explicitly assigned a named access code, and the corresponding privilege must be granted to the appropriate roles.

### Data Security

A single access code can secure as many jobs as needed. Users whose roles have not been granted privileges to a specific access code cannot see or modify the jobs associated with that code in the Master, Daily, or Schedule Operations views.

## FAQs

**Q: How are access codes used to secure jobs?**

An access code is applied to a job to restrict which users can view and update it. For users to interact with a job secured by an access code, their role must be granted Access Code Privileges for that code. A single access code can secure as many jobs as needed.

**Q: What happens if no access code is assigned to a job?**

All jobs use the `<None>` access code by default, and all roles automatically have privileges for `<None>`. Jobs with no explicit access code are visible and editable by all users who have access to the schedule.

**Q: Who can manage access codes?**

A user must be a member of a role with All Administrative Functions, All Function Privileges, or be in the ocadm role to create, modify, or delete access codes.

## Glossary

**Access Code**: A security label applied to jobs and schedules in OpCon. Users must have the matching access code privilege to view or manage items with that label.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
