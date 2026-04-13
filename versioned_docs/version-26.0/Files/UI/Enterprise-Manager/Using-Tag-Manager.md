---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Using Tag Manager
description: "The Tag Manager provides an easy way to create, look up, and associate jobs to tags, with a quick cross-reference view of jobs using each tag."
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

#  Using Tag Manager

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Tag Manager** provides an easy way to create, look up, and associate jobs to tags, with a quick cross-reference view of jobs using each tag. It also supports renaming and deleting tags.

The **Tag Manager** screen displays a list for tag selection and a table showing all schedules/jobs using the selected tag. Use the **Type Filter Text** box to filter by partial or full name. Type an \* (asterisk) before a word to search strings that do not start with that word.

## Tag Manager Toolbar

The toolbar resides at the top-right corner of the screen.

![Tag Manager toolbar](../../../Resources/Images/EM/EMdashboardtoolbar.png "Tag Manager toolbar")

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

-   [Finding Tags](Managing-Tags.md#Finding)
-   [Adding Tags](Managing-Tags.md#Adding)
-   [Renaming Tags](Managing-Tags.md#Renaming)
-   [Deleting Tags](Managing-Tags.md#Deleting)
-   [Editing Master Jobs](Managing-Tags.md#Editing)
-   [Associating Master Jobs](Managing-Tags.md#Associat)
-   [Deleting Job Associations](Managing-Tags.md#Deleting2)

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What can you do with Tag Manager?**

Tag Manager allows you to tag manager toolbar.

**Q: Who has access to Tag Manager?**

Access to Tag Manager is controlled by the privileges assigned to your OpCon role. Contact your system administrator if you need access.

## Glossary

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
