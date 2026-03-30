---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Using Secondary Windows
description: "Depending on the Operations view, the following secondary dialogs can display: - Schedule Information - Job Information - SubSchedule Information - Schedule History - Job History - Machine."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: conceptual
---

#  Using Secondary Windows

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Depending on the **Operations** view, the following secondary dialogs can display:

-   [Schedule Information](Schedule-Information.md)
-   [Job Information](Job-Information.md)
-   [SubSchedule Information](SubSchedule-Information.md)
-   [Schedule History](Schedule-History.md)
-   [Job History](Job-History.md)
-   [Machine Information](Machine-Information.md)
-   [Managing SAP R/3 and CRM Background Functions](Managing-SAP-R3-and-CRM-Background-Functions.md)

## When Would You Use It?

- Depending on the **Operations** view, the following secondary dialogs can display:

## Why Would You Use It?

- **Using Secondary**: Depending on the **Operations** view, the following secondary dialogs can display:

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What can you do with Secondary Windows?**

Secondary Windows allows you to manage and configure related settings.

**Q: Who has access to Secondary Windows?**

Access to Secondary Windows is controlled by the privileges assigned to your OpCon role. Contact your system administrator if you need access.

## Glossary

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
