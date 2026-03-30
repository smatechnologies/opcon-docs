---
title: Documentation
description: "Job documentation is user-defined information (e.g., command history, operator instructions for failure)."
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

# Documentation

**Theme:** Configure  
**Who Is It For?** Automation Engineer

## What Is It?

Job *documentation* is user-defined information (e.g., command history, operator instructions for failure). Documentation can be associated with the job or with individual frequencies. Frequency-level documentation requires at least one frequency to be defined first.

- **Schedule Name**: Name of the schedule
- **Job Name**: Name of the job
- **Job Documentation**: User-defined information always associated with the job
- **Frequency Name**: Name of the frequency if documentation is defined for a specific frequency. The list contains all frequencies defined for the job in priority order
- **Frequency Documentation**: User-defined information associated with the Frequency Name, included with the job only when it runs on that frequency

## When Would You Use It?

- Job *documentation* is user-defined information (e.g., command history, operator instructions for failure)

## Why Would You Use It?

- **Documentation**: Job *documentation* is user-defined information (e.g., command history, operator instructions for failure)

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Schedule Name | Name of the schedule | — | — |
| Job Name | Name of the job | — | — |
| Job Documentation | User-defined information always associated with the job | — | — |
| Frequency Name | Name of the frequency if documentation is defined for a specific frequency. | — | — |
| Frequency Documentation | User-defined information associated with the Frequency Name, included with the job only when it runs on that frequency | — | — |
## FAQs

**Q: What can job documentation contain?**

Job documentation is user-defined free-text information such as command history, operator instructions, failure recovery steps, or other notes relevant to the job.

**Q: Can documentation be different depending on which frequency a job runs under?**

Yes. Frequency Documentation is defined separately for each frequency and is only included with the job when it runs under that specific frequency. At least one frequency must be defined before frequency-level documentation can be added.

**Q: Is job documentation required?**

No. Documentation is optional for all jobs and frequencies.

## Glossary

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
