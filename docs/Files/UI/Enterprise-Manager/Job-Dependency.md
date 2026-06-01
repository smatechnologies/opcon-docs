---
title: Job Dependency
description: "Reference for the Job Dependency tab in Enterprise Manager Job Master, where you define and manage job dependencies for a selected job."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Reference
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: reference
---

# Job Dependency

The **Job Dependency** tab in Enterprise Manager Job Master lets you define and manage the job dependencies for a selected job. Dependencies control when a job is eligible to start by requiring, excluding, or checking the state of one or more predecessor jobs.

For background on how job dependencies work, see [Job Dependencies](../../../job-components/job-dependencies.md) in the Concepts help.

## Tab layout

The **Job Dependency** tab contains the following areas:

- **Dependencies Filters** — Filter the displayed dependency list by scope:
  - **Job Related** option — Shows dependencies that apply to all frequencies for the job.
  - **Frequency Related** option — Shows dependencies that apply to a specific frequency. Select a frequency in the **Frequency List** to filter the table.
- **Dependency table** — Lists all defined dependencies matching the current filter. Each row shows the predecessor schedule, predecessor job, dependency type, options, and frequency.
- **Add**, **Edit**, and **Remove** buttons — Manage entries in the dependency table.

## Add Dependency dialog fields

When you select **Add** or **Edit**, the **Add Dependency** (or **Edit Dependency**) dialog opens with the following fields:

**Predecessor Job group**

| Field | Description |
|---|---|
| **Schedule** | The schedule containing the predecessor job. |
| **Job** | The predecessor job the successor job depends on. |
| **Instance Name** | The schedule instance for the predecessor job. Only available for multi-instance schedules. Use `*` to represent all instances. |

**Dependency Type group** — Select one:

| Type | Behavior |
|---|---|
| **Requires** | The successor job waits until the predecessor job exists in the Daily tables and completes. |
| **After** | The successor job waits until the predecessor job completes. If the predecessor does not exist in the Daily tables, the dependency resolves immediately. |
| **Excludes** | The successor job removes the predecessor job from the Daily schedule during the Schedule Build process. |
| **Conflict** | The successor job cannot start while the predecessor job is running. |

**Options group**

| Field | Description |
|---|---|
| Exit value list | For **Requires** and **After** types: select **Finished OK**, **Failed**, or **Ignore Exit Code**. |
| **Check All Days** | For **Conflict** type only: instructs SAM to check all days in Schedule Operations for the conflicting job. |
| **Job Name Like** | For **Conflict** type only: checks all jobs whose names begin with the characters you enter. Use underscores (`_`) as single-character wildcards. |
| **Offset** | The number of days offset from the schedule date to check for the predecessor schedule and job. Positive values check future dates; negative values check past dates. Valid range: -999 to 999. Not available for **Excludes** or within a multi-instance schedule. |

**Successor Job group**

| Field | Description |
|---|---|
| **Frequency** | The frequency to which this dependency applies. Leave blank to apply the dependency at the job level for all runs. |
| **Instance Name** | The schedule instance for the successor job. Only available when the successor schedule has named instances. |

## Procedures

- [Adding Job Dependencies](Adding-Job-Dependencies.md)
- [Editing Job Dependencies](Editing-Job-Dependencies.md)
- [Deleting Job Dependencies](Deleting-Job-Dependencies.md)
