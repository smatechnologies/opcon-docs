---
title: Departments
description: "Departments can be used to secure function privileges associated with individual job records."
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

# Departments

**Theme:** Configure  
**Who Is It For?** Automation Engineer, Application Owner

## What Is It?

Departments can be used to secure function privileges associated with individual job records. The department object is simply a name. To use a department, function privileges must be granted (refer to [OpCon User Account and Role Management](../administration/privileges.md#departmental-function-privileges)), and the access code must be associated with the jobs needing this type of security (refer to [Jobs](../objects/jobs.md)). A single department can be used to secure as many different jobs as necessary.

The following information applies to defining departments:

- **Name**: Defines the name for the defined department
- **Documentation**: Provides an area for descriptions, explanations, and notes that can be updated for the department

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Name | Defines the name for the defined department | — | — |
| Documentation | Provides an area for descriptions, explanations, and notes that can be updated for the department | — | — |
## FAQs

**Q: What is a department used for in OpCon?**

Departments are used to apply function-level security to individual job records. By assigning a department to a job, you control which roles can perform specific actions on that job based on Departmental Function Privileges.

**Q: Can a single department secure more than one job?**

Yes. A single department can be assigned to as many jobs as needed.

**Q: What privilege is required to use a department for job security?**

Departmental Function Privileges must be granted to the appropriate role. Refer to [Departmental Function Privileges](../administration/privileges.md#departmental-function-privileges) for details.

## Glossary

**Access Code**: A security label applied to jobs and schedules in OpCon. Users must have the matching access code privilege to view or manage items with that label.

**Department**: An organizational grouping in OpCon used to assign jobs to logical divisions. User roles can be scoped to specific departments, controlling which jobs a user can manage.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
