---
title: Using Script Tools
description: "The Scripts tools perform the following functions depending on the current screen."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Using Script Tools

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The Scripts tools perform the following functions depending on the current screen.

|||
|--- |--- |
||Add: Opens a dialog to add a new item.|
||Edit: Opens a dialog to edit the selected item.|
||Remove: Deletes the selected item.|
||Show/Create Versions: In the Repository Editor, opens a dialog listing existing script versions and allows you to create, edit, or delete them.|
||Cross References: In the Repository Editor, opens a dialog listing cross references (jobs and/or schedules) that use the selected script.|
||Minimize: Minimizes the editor and/or view and places an icon in the sidebar.|
||Maximize: Opens the editor and/or view to its maximum size. The Maximize button changes to a Restore button when maximized.|
||Restore: Returns the editor view to its original location and size.|

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What can you do with Script Tools?**

Script Tools allows you to manage and configure related settings.

**Q: Who has access to Script Tools?**

Access to Script Tools is controlled by the privileges assigned to your OpCon role. Contact your system administrator if you need access.

## Glossary

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
