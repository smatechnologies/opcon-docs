---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Using Schedule Master
description: "The Schedule Master editor is used to define and maintain OpCon schedules."
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

# Using Schedule Master

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Schedule Master** editor is used to define and maintain
OpCon schedules.

## When Would You Use It?

- You need to define and maintain using The **Schedule Master** editor is used to

## Why Would You Use It?

- **Using Schedule**: The **Schedule Master** editor is used to define and maintain

## Schedule Master Tabs

The editor contains a list of schedules and uses tabs to provide the
schedule details, instance definitions, frequencies, and/or events for
each schedule.

Select on any specific tab below to learn more about its functionality in
**Schedule Master**.

![Schedule Master tab bar](../../../Resources/Images/EM/EMschedmastertabbar.png "Schedule Master tab bar")

## Schedule Master Toolbar

The **Schedule Master** editor also has a toolbar that allows you to
perform functions for managing the schedules. Select on any specific icon
on the toolbar below to learn more about its functionality.

![Schedule Master toolbar](../../../Resources/Images/EM/EMschedmastoolbar.png "Schedule Master toolbar")

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Adding Schedules](Adding-Schedules.md)
- [Configuring Automatic Schedule     Maintenance](Configuring-Automatic-Schedule-Maintenance.md)
- [Copying Schedules](Copying-Schedules.md)
- [Deleting Schedules](Deleting-Schedules.md)
- [Merging Schedules](Merging-Schedules.md)
- [Viewing Additional Schedule     Information](Viewing-Additional-Schedule-Info.md)
:::

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What can you do with Schedule Master?**

Schedule Master allows you to schedule master tabs, schedule master toolbar.

**Q: Who has access to Schedule Master?**

Access to Schedule Master is controlled by the privileges assigned to your OpCon role. Contact your system administrator if you need access.

## Glossary

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
