---
title: Tags
description: "Tags are labels you can create to group jobs based on business needs."
product_area: Job Components
audience: Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - Automation Engineer
  - Jobs
last_updated: 2026-03-18
doc_type: conceptual
---

# Tags

**Theme:** Configure  
**Who Is It For?** Automation Engineer

## What Is It?

*Tags* are labels you can create to group jobs based on business needs. Schedules are typically organized by process flow; tags let you filter jobs that share something in common regardless of process flow.

:::tip Example

- Tag by program name to see all jobs using that program
- Tag by Global Properties to find all jobs associated with a property before updating its value
- Tag by severity (Critical, High, Low, Maintenance) to see if any critical jobs have failed
- Tag by department for sorting without assigning Department Level Privileges
- Tag by job purpose to identify jobs required for Governmental Regulation, Company Policies, or Vendor Requirements

:::

## When Would You Use It?

- *Tags* are labels you can create to group jobs based on business needs

## Why Would You Use It?

- **Tags**: *Tags* are labels you can create to group jobs based on business needs

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What is the difference between a tag and a department?**

Departments provide function-level security for job records. Tags are labels for grouping and filtering jobs by business need, without affecting permissions. Tags work across schedules and process flows.

**Q: Can a job have multiple tags?**

Yes. A job can have multiple tags, and tags can be shared across many jobs on different schedules.

**Q: When would you use tags instead of schedule organization to group jobs?**

Use tags when jobs share a common attribute (such as a program name, regulation, or severity level) but belong to different schedules or process flows. Tags allow cross-schedule filtering without changing the schedule structure.

## Glossary

**Department**: An organizational grouping in OpCon used to assign jobs to logical divisions. User roles can be scoped to specific departments, controlling which jobs a user can manage.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
