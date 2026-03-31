---
title: Daily Job Definition Overview
description: "The Daily Job Definition is the runtime instance of a master job."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Reference
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: reference
---

**Theme:** Overview | **Who is it for?** Operations staff who need to view or edit a job's daily instance definition

## What Is It?

The Daily Job Definition is the runtime instance of a master job. You can view all configured settings for a job running in the daily queue and, in some cases, make temporary changes that apply only to today's instance without affecting the master definition.

## Configuration Options

## When would you use this section?

- You need to see exactly how a job is configured for today's run
- You want to make a one-time change to a job parameter for today only
- You need to copy a daily job's configuration back to the master to make a permanent change
- You are reviewing job dependencies or frequencies for a specific daily instance

## What is in this section?

| Page | Description |
|------|-------------|
| Access Daily Job Definition | Go to and open the daily job definition panel |
| Copy Daily Job to Master | Push today's daily definition changes back to the master record |
| View and Update General Info | General settings — machine, department, priority, and more |
| View and Update Documentation | Documentation and notes for the daily job instance |
| Job Task Details (Daily) | Platform-specific task settings for the daily instance |
| View and Update Frequencies | The frequency assigned to the daily job instance |
| View and Update Instance Properties | Instance property values for this specific run |
| View and Update Expression Dependencies | Expression dependency conditions for the daily job |
| View and Update Resource Dependencies | Resource requirements for the daily job |
| View and Update Threshold Dependencies | Threshold conditions for the daily job |
| View and Update Resource Updates | Resource counter changes on job completion |
| View and Update Threshold Updates | Threshold counter changes on job completion |
## Glossary

| Term | Definition |
| --- | --- |
| Department | A named object used to apply function-level security to individual job records. A single department can secure as many jobs as necessary. |
| Dependency (Job Dependency) | A condition that must be met before a job is allowed to start. OpCon supports job dependencies, threshold dependencies, resource dependencies, and expression dependencies. |
| Frequency | A named rule that specifies the recurring days on which a schedule or job runs. OpCon uses frequencies during the Schedule Build process. |
| Job | A task or activity defined in OpCon, such as running a program on a remote machine, transferring files, or running a sub-schedule. |
| Machine (Machine (Agent)) | An execution target for OpCon jobs. Each machine runs an agent that communicates with the OpCon server and runs submitted jobs. |
| Property | A name-value pair stored in OpCon. Properties can be referenced in job definitions using token syntax to pass dynamic values at runtime. |
| Resource | A user-defined object with a name and a numeric limit. Used to restrict how many jobs run concurrently across schedules and machines in OpCon. |
| Role | A named collection of privileges that can be assigned to one or more user accounts. Users in a role inherit all of that role's privileges. |
| Solution Manager (SM) | The browser-based web interface for OpCon. Provides access to operations, self-service, vision dashboards, and configuration. |
| Threshold | A user-defined placeholder with a name and a numeric value. Used to resolve dependencies that cannot be handled by a standard job dependency and to allow external applications to affect schedules. |

## FAQs

**Q: Can I make permanent changes from the Daily Job Definition?**

No. Changes made in the daily job definition apply only to today's instance. To make a permanent change, use Copy Daily Job to Master.

**Q: Who can modify daily job settings?**

Operations staff and administrators with the appropriate role privileges. Review access and role requirements with your OpCon system administrator before making changes.
