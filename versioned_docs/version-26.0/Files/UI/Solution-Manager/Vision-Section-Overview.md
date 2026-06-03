---
title: Vision Overview
description: "Vision is a Solution Manager module that provides a high-level view of OpCon job health using tag-based cards."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-06-02
doc_type: conceptual
---

# Vision Overview

**Theme:** Overview | **Who is it for?** Administrators and operations staff who monitor job status and SLA performance using Vision cards

## What Is It?

Vision is a Solution Manager module that provides a high-level view of OpCon job health using tag-based cards. Each card aggregates job status from matching jobs across schedules, shows SLA performance trends, and can trigger automated actions when card states change. Vision also connects to remote OpCon instances for consolidated enterprise-wide monitoring.

- Create and configure Vision cards to monitor business-critical workflows
- Track SLA completion rates and historical quality-of-service data
- Set up automated actions or frequency rules for Vision cards
- Connect Vision to a remote OpCon instance
- Monitor card health in the Vision Live or Vision Health views

## What is in this section?

| Topic | Description |
|-------|-------------|
| Live | View and interact with Vision cards in real time |
| Health | View historical SLA and completion quality metrics |
| Cards | Create, edit, and delete Vision cards and categories |

NOTE: Vision is only available after the Vision module is licensed and enabled in server options. Contact your OpCon administrator if Vision cards are not visible.

## Vision Workspace Types

Vision uses two types of workspaces — master workspaces and daily workspaces — that serve distinct roles in how Vision card layouts are defined and displayed.

### Master Workspaces

A master workspace is an editable blueprint that defines the layout and card configuration for a Vision view. You can create new master workspaces and update existing ones. Any changes you make to a master workspace take effect the next time OpCon builds a schedule; past daily workspaces are not affected.

### Daily Workspaces

A daily workspace is a read-only, date-specific snapshot that OpCon generates from the master workspace during each schedule build. Daily workspaces reflect the state of the master workspace at the time the schedule was built. You cannot create, update, or delete a daily workspace directly.

Cards displayed in a daily workspace are filtered by a day offset (the number of days from the current day) and your assigned roles. Users only see the cards their role permits.

### How Changes to a Master Workspace Propagate

When you update a master workspace, the change does not retroactively modify daily workspaces that have already been built. Future schedule builds produce new daily workspaces that reflect the updated master. Use this behavior intentionally: finalize your master workspace configuration before a schedule build if you want the changes to appear in that day's daily workspace.

### Master vs. Daily Workspace Capabilities

| Operation | Master Workspace | Daily Workspace |
|-----------|:----------------:|:---------------:|
| Create    | Yes              | No              |
| Read      | Yes              | Yes             |
| Update    | Yes              | No              |
| Delete    | No               | No              |

## Glossary

| Term | Definition |
| --- | --- |
| Frequency | A named rule that specifies the recurring days on which a schedule or job runs. OpCon uses frequencies during the Schedule Build process. |
| Job | A task or activity defined in OpCon, such as running a program on a remote machine, transferring files, or running a sub-schedule. |
| Module | A functional area within Solution Manager, such as Operations, Studio, Vision, or Self Service. |
| Role | A named collection of privileges that can be assigned to one or more user accounts. Users in a role inherit all of that role's privileges. |
| SLA (Service Level Agreement) | A defined time window by which a job or schedule must complete. OpCon can monitor job completion against SLA thresholds and trigger notifications. |
| Solution Manager (SM) | The browser-based web interface for OpCon. Provides access to operations, self-service, vision dashboards, and configuration. |
| Tag | A label that can be applied to jobs in OpCon to allow grouping, filtering, and searching across schedules and job types. |
| Vision | A Solution Manager dashboard module that provides real-time status views of OpCon jobs and schedules, organized by business area or SLA. |

## FAQs

**Q: What does Vision provide?**

Vision provides a high-level view of OpCon job health using tag-based cards. Each card aggregates job status from matching jobs across schedules, shows SLA performance trends, and can trigger automated actions when card states change. Vision connects to remote OpCon instances for consolidated enterprise-wide monitoring.

**Q: Who manages Solution Manager - Vision?**

Administrators and operations staff configure settings, manage user access, and monitor related processes and components.

**Q: Where should I start in the Solution Manager - Vision section?**

Begin with the overview pages in the sidebar. Each page covers a distinct feature or workflow. If you are new to this area, review access and role requirements with your OpCon system administrator before making configuration changes.
