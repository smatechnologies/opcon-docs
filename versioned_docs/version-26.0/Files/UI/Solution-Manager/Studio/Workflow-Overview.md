---
title: Creating a Workflow Overview
description: "Studio is the visual workflow design environment in Solution Manager."
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

**Theme:** Overview | **Who is it for?** Automation engineers who build new OpCon automation workflows in Studio

## What Is It?

Studio is the visual workflow design environment in Solution Manager. Use Studio to define schedules, place jobs on the canvas, draw dependencies, and visualize automation flow before it runs in production.

## When would you use this section?

- Designing a new schedule and want a visual representation of job flow
- Adding, moving, or removing jobs from a schedule definition
- Setting up dependencies between jobs on a canvas
- Previewing the dependency chain before deploying

## What is in this section?

| Topic | Description |
|-------|-------------|
| Define Schedule | Create and manage master schedule definitions |
| Add Jobs | Add, configure, copy, move, and delete jobs within a schedule |

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

**Q: What does the Creating a Workflow Overview cover?**

Studio is the visual workflow design environment in Solution Manager. Use Studio to define schedules, place jobs on the canvas, draw dependencies, and visualize automation flow before it runs in production.

**Q: Who manages Solution Manager - Studio in OpCon?**

Automation engineers and administrators manage Solution Manager - Studio, including settings, user access, and monitoring.

**Q: Where should I start in the Solution Manager - Studio section?**

Review the overview pages in the sidebar. If you are new to this area, confirm access and role requirements with your OpCon system administrator before making changes.
