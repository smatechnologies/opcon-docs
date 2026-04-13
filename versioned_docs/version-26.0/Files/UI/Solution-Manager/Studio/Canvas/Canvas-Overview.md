---
title: Canvas Overview
description: "The Studio canvas is the visual workspace for building and reviewing schedule definitions."
product_area: Solution Manager
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

**Theme:** Overview | **Who is it for?** Automation engineers who use the Studio canvas to design and visualize workflows

## What Is It?

The Studio canvas is the visual workspace for building and reviewing schedule definitions. From the canvas you can add, edit, copy, and delete master schedules, view dependency lines between jobs, and isolate specific dependency chains for focused review.

## When would you use this section?

- Add a new master schedule to the Studio canvas
- View or edit the visual layout of an existing schedule
- Isolate a dependency chain for review or documentation
- Copy or delete a schedule from the canvas

## What is in this section?

| Page | Description |
|------|-------------|
| Add Master Schedules | Create a new schedule directly from the canvas |
| Copy Master Schedules | Duplicate a schedule and its job definitions |
| Delete Master Schedules | Remove a schedule and optionally its jobs |
| Edit Master Schedules | Modify schedule properties and canvas layout |
| View Master Schedules | Browse the canvas and navigate schedule dependencies |
| Isolate Dependency Chain | Highlight and isolate a specific chain of dependent jobs |

## Glossary

| Term | Definition |
| --- | --- |
| Dependency (Job Dependency) | A condition that must be met before a job is allowed to start. OpCon supports job dependencies, threshold dependencies, resource dependencies, and expression dependencies. |
| Job | A task or activity defined in OpCon, such as running a program on a remote machine, transferring files, or running a sub-schedule. |
| Master Schedule | The template definition of a schedule stored in OpCon's master tables. Changes to the master affect all future builds but not already-built daily schedules. |
| Role | A named collection of privileges that can be assigned to one or more user accounts. Users in a role inherit all of that role's privileges. |
| Schedule | A named group of jobs in OpCon that represents a business process. Schedules are built each day based on their defined frequencies and calendars. |
| Solution Manager (SM) | The browser-based web interface for OpCon. Provides access to operations, self-service, vision dashboards, and configuration. |

## FAQs

**Q: What does the Canvas Overview cover?**

The Studio canvas is the visual workspace for building and reviewing schedule definitions. From the canvas you can add, edit, copy, and delete master schedules, view dependency lines between jobs, and isolate specific dependency chains for focused review.

**Q: Who manages Solution Manager - Studio in OpCon?**

Automation engineers and administrators manage Solution Manager - Studio, including settings, user access, and monitoring.

**Q: Where should I start in the Solution Manager - Studio section?**

Begin with the overview pages in the sidebar. Each page covers a distinct feature or workflow. If you are new to this area, review access and role requirements with your OpCon system administrator before making changes.
