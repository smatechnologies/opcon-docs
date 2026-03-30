# Golden Examples

Complete, fully-compliant reference examples for each documentation type.
Use these to calibrate output quality. Every element in these examples —
front matter, structure, tone, formatting, and cross-references — follows
the standards in opcon-documentation-standards.md and is appropriate for the
target audience per opcon-learner-roles.md.

> **How to use this file:** When writing or reviewing a page, find the
> golden example that matches the documentation type and audience
> complexity. Use it as a quality benchmark — the finished page should
> be structurally and stylistically comparable.

---

## Conceptual Example

Target audience: Automation Engineer (moderate-to-high technical background)

```markdown
---
title: How job dependencies work
description: "Understand how job dependencies control execution order within and across schedules so jobs run in the correct sequence."
tags:
  - Conceptual
  - Automation Engineer
  - Jobs
  - Schedules
---
# How job dependencies work

Job dependencies control the order in which jobs run. When a job has a
dependency configured, it will not start until the job it depends on
has reached the required status. Dependencies let you build reliable
processing sequences without relying on fixed start times.

## Why dependencies matter

Timed starts are fragile — if an upstream job runs long or fails, a
downstream job that starts on a fixed schedule may process incomplete
or missing data. Dependencies let the downstream job wait for the
correct signal instead of a clock, making the automation resilient to
variable run times.

## Dependency types

OpCon supports three dependency types, each designed for a different
relationship between jobs:

| Type | When to use | What it does |
|---|---|---|
| Requires | The downstream job needs the upstream job to succeed | Holds the downstream job until the upstream job finishes with the required exit code |
| After | The downstream job should run after the upstream job regardless of outcome | Releases the downstream job once the upstream job reaches a finished status, whether it succeeded or failed |
| Excludes | The downstream job should not run if the upstream job reaches a certain status | Removes the downstream job from the schedule if the upstream job matches the specified condition |

## How dependencies resolve

OpCon evaluates each job's dependencies at every check interval. When
all dependencies for a job are satisfied, the job is released to run.
If a dependency is not met by the time the schedule closes, the job
remains in a **Waiting** status and is reported as unresolved for
that day.

## Cross-schedule dependencies

Dependencies can span schedules. A job in one schedule can require a
job in a different schedule to complete before it starts. When
configuring a cross-schedule dependency, specify both the schedule
name and the job name. OpCon resolves the dependency regardless of
which schedule builds first.

**Related topics:**

- [Add a dependency to a job](add-job-dependency.md)
- [How frequencies work](how-frequencies-work.md)
- [Respond to a job in Waiting status](respond-waiting-job.md)
```

---

## Procedural Example

Target audience: Automation Engineer (technical, task-focused)

```markdown
---
title: Add a frequency to a job
description: "Add a frequency to a job to define when OpCon will build and submit the job for execution."
tags:
  - Procedural
  - Automation Engineer
  - Frequencies
  - Jobs
---
# Add a frequency to a job

Add a frequency to a job to specify when OpCon should build and run
it. A job without a frequency will not be built into the daily
schedule.

!!! note "Prerequisite"
    The job must exist in the Job Master before a frequency can be
    added. See [Add a job to a schedule](add-job.md).

To add a frequency, complete the following steps:

1. Go to the **Administration** menu and select **Job Master**.
2. In the **Schedule** list, select the schedule.
3. Select the job. The Job Master Details page is displayed.
4. Select the **Frequency** tab.
5. Select the **Add** button. The Add Frequency dialog is displayed.
6. In the **Frequency Name** field, select an existing frequency from
   the list or enter a name to create a new one.
7. Configure the frequency options.
8. Select the **Save** button. The frequency is added to the job.

!!! tip
    Select the **Forecast** button to preview which dates the
    frequency will generate before saving. This is especially useful
    when holiday calendar offsets are involved.

**Related topics:**

- [How frequencies work](how-frequencies-work.md)
- [Configure a holiday calendar](configure-holiday-calendar.md)
- [Add a dependency to a job](add-job-dependency.md)
```

---

## Reference Example

Target audience: Compliance Team and Operations Staff (scanning for specific information)

```markdown
---
title: Standard reports
description: "Pre-configured reports available in OpCon, organized by category with format options and descriptions."
tags:
  - Reference
  - Compliance Team
  - Operations Staff
  - Reports
---
# Standard reports

The Standard Reports section provides pre-configured reports related
to jobs, schedules, agents, and system activity. Reports are available
in PDF and/or Excel formats.

## Job reports

| Report | Description | Formats |
|---|---|---|
| Job Execution History | All job runs within a selected date range, including start time, end time, duration, exit code, and agent. | PDF, Excel |
| Failed Jobs | All jobs that ended in a failed status within the selected period, with exit codes and job details. | PDF, Excel |
| Job Execution List | A detailed list of all job executions for a specified schedule and date range. | Excel |

## Schedule reports

| Report | Description | Formats |
|---|---|---|
| Schedule Build Summary | A record of all schedule builds for a selected date range, including build status and job counts. | PDF, Excel |
| Unbuilt Jobs | All jobs that were not built into the daily schedule for a selected date, with the reason each job was excluded. | PDF, Excel |

## Agent reports

| Report | Description | Formats |
|---|---|---|
| Machine Status | Current communication status for all defined agents, including last contact time and machine group membership. | PDF, Excel |

**Related topics:**

- [Generate a report](generate-report.md)
- [Export report data](export-report.md)
```

---

## Why These Examples Matter for AI Workflows

Golden examples serve as implicit calibration for AI output. When the
AI has seen a complete, compliant example of each documentation type,
it can pattern-match against the example rather than assembling output
purely from rules. This produces higher-quality first drafts because:

- Structure is internalized, not just described
- Tone is demonstrated, not just specified
- Cross-reference patterns are shown in context
- Front matter is modeled with realistic tags
- The relationship between conceptual brevity and procedural precision
  is visible in the contrast between examples
