---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Managing Master Jobs
description: "The Master Jobs tab in the Solution Manager Library lets you manage master jobs."
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

# Managing Master Jobs

**Theme:** Manage
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Master Jobs** tab in the Solution Manager **Library** lets you manage master jobs. A master job is the reusable definition of a job that belongs to a master schedule. When a master schedule is built for a specific date, OpCon uses its master jobs to create the daily jobs that run on that date.

![Managing master jobs](../../../../Resources/Images/SM/Library/ManagingLibrary/ManagingMasterJobs.png "Managing master jobs")

Each master job is associated with a master schedule. For information about managing the schedules that contain master jobs, see [Managing Master Schedules](Managing-Master-Schedules.md).

<!-- GAP: The specific actions, fields, columns, and buttons on the Solution Manager Library Master Jobs tab are not confirmed in the OpCon source (Core-SolutionManager). No library module exists in Core-SolutionManager, and the only Master Job references found in Solution Manager source are the Self Service "Master Job" variable type, which is a different feature. The master-job concept itself (a job definition belonging to a master schedule; the JMASTER table; ViewJobsInMasterSchedules privilege) is confirmed in Core-EnterpriseManager and the REST API. Needs SME confirmation or a UI capture to document the tab's actions (add, edit, delete, filter) and field labels. -->

## FAQs

**Q: Where do you find the Master Jobs tab?**

Open **Solution Manager** and go to **Library**. <!-- GAP: The exact location of the Master Jobs tab within the Library (label and selection path) is not confirmed in Core-SolutionManager source; verify against the running UI. -->

## Related Topics

- [Managing the Library](Managing-Library.md)
- [Managing Master Schedules](Managing-Master-Schedules.md)

## Glossary

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.
