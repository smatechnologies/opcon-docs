---
title: Expression Dependencies
description: "Each OpCon job can depend on the result of an expression defined using the Property Expressions API."
product_area: Job Components
audience: Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - Automation Engineer
  - Jobs
last_updated: 2026-03-18
doc_type: conceptual
---

# Expression Dependencies

**Theme:** Configure  
**Who Is It For?** Automation Engineer

## What Is It?

Each OpCon job can depend on the result of an expression defined using the Property Expressions API. For more information, refer to [Property Expressions API Syntax](../reference/property-expressions-syntax.md).

Job-level expression dependencies are always included when the job runs. Frequency-level expression dependencies are included only when the job runs on the associated frequency.

- **Schedule Name**: Name of the schedule
- **Job Name**: Name of the job
- **Frequency Name**: Name of the frequency if the expression dependency is defined for a specific frequency
- **Job Expression**: An expression that must resolve to "true" when the SAM performs the dependency check for the job
- **Frequency Expression**: An expression associated with the Frequency Name that must resolve to "true" during the dependency check. Included only when the job runs on the associated frequency

## When Would You Use It?

- You need to configure job dependency relationships in OpCon

## Why Would You Use It?

- **Expression Dependencies**: Each OpCon job can depend on the result of an expression defined using the Property Expressions API

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Schedule Name | Name of the schedule | — | — |
| Job Name | Name of the job | — | — |
| Frequency Name | Name of the frequency if the expression dependency is defined for a specific frequency | — | — |
| Job Expression | An expression that must resolve to "true" when the SAM performs the dependency check for the job | — | — |
| Frequency Expression | An expression associated with the Frequency Name that must resolve to "true" during the dependency check. | — | — |
## FAQs

**Q: What is an expression dependency?**

An expression dependency causes a job to wait until an expression using the Property Expressions API evaluates to "true." This enables complex, data-driven dependency conditions beyond what standard job or threshold dependencies support.

**Q: Can an expression dependency be limited to a specific frequency?**

Yes. A Frequency Expression is included only when the job runs on the associated frequency. A Job Expression at the job level always applies regardless of frequency.

**Q: Where can I find the syntax for writing property expressions?**

The full syntax reference is available in [Property Expressions API Syntax](../reference/property-expressions-syntax.md).

## Glossary

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Threshold**: A numeric variable stored in the OpCon database used to control job execution. Jobs can be made dependent on threshold values, and OpCon events can update threshold values at runtime.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
