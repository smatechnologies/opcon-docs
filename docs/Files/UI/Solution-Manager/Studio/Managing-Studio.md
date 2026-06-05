---
title: Managing Studio
description: "Studio is where Master Schedules are created and managed."
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

# Managing Studio

**Theme:** Overview
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Studio is the area of Solution Manager where you create and manage Master Schedules. A Master Schedule is a template definition that OpCon uses to build daily schedule instances, and it can contain multiple jobs.

From Studio, you can:

- Create a new Master Schedule definition
- Edit an existing Master Schedule's properties or canvas layout
- Copy a Master Schedule as a starting point for a new one
- Work with schedules and jobs on a visual canvas

## How It Works

Use the **Navigation menu** on the left side of the page to move between the available solutions and Studio's workspace. In desktop mode, you can toggle the menu by selecting the menu display button at the top of the page.

Within Studio, you build and manage Master Schedule definitions on a visual canvas. For the canvas-based actions that add, copy, edit, and delete Master Schedules, see [Canvas Overview](Canvas/Canvas-Overview.md).

## Glossary

| Term | Definition |
| --- | --- |
| Master Schedule | The template definition of a schedule stored in OpCon's master tables. Changes to the master affect all future builds but not already-built daily schedules. |
| Daily Schedule | A schedule instance that OpCon builds for a specific date. Changes to a daily schedule affect only that date and do not modify the master definition. |
| Schedule | A named group of jobs in OpCon that represents a business process. Schedules are built each day based on their defined frequencies and calendars. |
| Job | A task or activity defined in OpCon, such as running a program on a remote machine, transferring files, or running a sub-schedule. |
| Solution Manager (SM) | The browser-based web interface for OpCon. Provides access to operations, self-service, vision dashboards, and configuration. |

## Related Topics

- [Define Schedule Overview](Define-Schedule-Overview.md)
- [Creating a Workflow Overview](Workflow-Overview.md)
- [Canvas Overview](Canvas/Canvas-Overview.md)
