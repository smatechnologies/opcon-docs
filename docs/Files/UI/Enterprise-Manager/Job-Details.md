---
title: Job Details
description: "The Job Details tab in the Job Master editor lets you define the job type, department, access code, and instance settings for a job."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: conceptual
---

# Job Details

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

The **Job Details** tab is the first tab in the [Job Master](Using-Job-Master.md) editor. It contains the fields that classify a job — what type it is, which department owns it, which access code restricts it, and whether it can run as multiple simultaneous instances.

When you select a **Job Type**, the lower portion of the tab refreshes to show the platform-specific fields for that job type. For more information about each job type's fields, see [Job Type Management](Job-Type-Management.md).

## Fields

| Field | Description |
|---|---|
| **Job Type** | The platform or Agent type the job runs on. The list contains only job types for which a machine or machine group is currently defined, plus built-in job types. Selecting a job type loads the platform-specific detail section below. |
| **Job Sub-Type** | A secondary classification within the selected job type. Only available when sub-types are defined for the chosen **Job Type**; otherwise the field is disabled. |
| **Department** | The department that owns the job. You can select only departments for which your role has the appropriate privilege. |
| **Access Code** | The access code that controls who can view and modify the job. The list shows only access codes your role has update rights for. |
| **Allow Multi-Instance** | When selected, OpCon allows the job to run as more than one simultaneous instance. This option cannot be cleared while multiple instances are defined for the job. Not available when editing a daily job. |
| **Disable Build** | When selected, the job is excluded from schedule builds. A warning label appears next to the option when build is disabled. Not available when editing a daily job. |

## Related Topics

- [Adding Jobs](Adding-Jobs.md)
- [Editing Job Master Details](Editing-Job-Master-Details.md)
- [Copying Jobs](Copying-Jobs.md)
- [Moving Jobs](Moving-Jobs.md)
- [Deleting Jobs](Deleting-Jobs.md)
- [Viewing Additional Job Information](Viewing-Additional-Schedule-Info.md)
- [Job Type Management](Job-Type-Management.md)
- [Job Details](../../../objects/jobs.md#job-details) in **Concepts**
