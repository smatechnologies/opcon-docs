---
sidebar_label: 'Overview'
title: Job Automation Components
description: "Job automation components control how OpCon jobs behave, including frequencies, dependencies, events, and threshold updates."
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

# Job Automation Components

**Theme:** Configure  
**Who Is It For?** Automation Engineer

## What Is It?

Job automation components are the building blocks that control how individual OpCon jobs behave. These components — including frequencies, dependencies, events, and threshold updates — can be applied at the job level or scoped to a specific frequency, which allows a single job to behave differently depending on when it runs.

:::tip Example
A job runs every Friday and on the last day of each month. On Fridays it depends on JobA, JobB, and JobC. On the last day of the month it depends on JobA, JobB, and JobD.

- JobA and JobB dependencies are set at the job level
- JobC is set at the frequency level for the Friday frequency
- JobD is set at the frequency level for the end-of-month frequency

The end-of-month frequency must be prioritized at the top. If Friday and end of month fall on the same day, the end-of-month frequency (with JobD) is built.
:::

- [Instance Definition](./instances.md)
- [Job Frequency](./frequency.md)
- [Events](./events.md)
- [Threshold/Resource Updates](./threshold-resource-updates.md)
- [Job Dependencies](./job-dependencies.md)
- [Threshold/Resource Dependencies](./threshold-resource-dependencies.md)
- [Expression Dependencies](./expression-dependencies.md)
- [Documentation](./documentation.md)
- [Tags](./tags.md)

## When Would You Use It?

- You need to describes the components used to automate OpCon jobs using This section

## Why Would You Use It?

- **Operational value**: Automate OpCon jobs

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What are job automation components?**

Job automation components are the settings that control when an OpCon job runs and what happens after it finishes. They include frequencies, dependencies, events, threshold/resource updates, documentation, and tags.

**Q: Can job automation components be associated with specific frequencies?**

Yes. Components can be defined at the job level (applying for all runs) or at a specific frequency level (applying only when the job runs under that frequency). This allows a single job to have different dependencies or events depending on when it runs.

**Q: What happens when a frequency and end-of-month both fall on the same day for a job with multiple frequencies?**

The highest-priority frequency is used. When configuring multiple frequencies with different dependency sets, set the most specific frequency (such as end-of-month) at the top priority.

## Glossary

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Threshold**: A numeric variable stored in the OpCon database used to control job execution. Jobs can be made dependent on threshold values, and OpCon events can update threshold values at runtime.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
