---
title: Job Tracking
description: "Job Tracking lets OpCon monitor external jobs (user-submitted or program-submitted) that were started outside an OpCon schedule or event."
product_area: Automation Concepts
audience: Automation Engineer, Business Analyst
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - Automation Engineer
  - Business Analyst
  - Jobs
last_updated: 2026-03-18
doc_type: conceptual
---

# Job Tracking

**Theme:** Configure  
**Who Is It For?** Automation Engineer, Business Analyst

## What Is It?

Job Tracking lets OpCon monitor external jobs (user-submitted or program-submitted) that were started outside an OpCon schedule or event. Jobs must be defined in both OpCon and the operating system agent.

Because OpCon reports on a job that has already started, this feature is limited on most platforms. No OpCon dependencies, resources, or thresholds can constrain the job, and OpCon properties cannot define it. However, job history is maintained, and subsequent jobs can depend on a tracked job.

## When Would You Use It?

- Job Tracking lets OpCon monitor external jobs (user-submitted or program-submitted) that were started outside an OpCon schedule or event

## Why Would You Use It?

- **Job Tracking**: Job Tracking lets OpCon monitor external jobs (user-submitted or program-submitted) that were started outside an OpCon schedule or event

## Automatic Job Tracking

Automatic Job Tracking monitors external jobs without requiring a job definition in OpCon, which can also reduce or eliminate definitions stored by the operating system agent.

Because there is no job master record, no job history accumulates and subsequent jobs cannot depend on an automatically tracked job.

A common use is to monitor job-by-job progress within an OpCon schedule as new jobs appear. This is useful when a scheduled job submits many sub-jobs that are not directly started by OpCon and would not otherwise appear on the schedule.

## Job Queuing

Job Queuing lets OpCon queue external jobs for processing. Like Job Tracking, it requires jobs to be defined in both OpCon and the operating system agent.

The OpCon agent intercepts the job start request and holds the job until OpCon allows it to run. This means queued jobs are subject to dependencies, resources, and thresholds. Most job definition parameters (except the Job Start Command) can be overridden, sometimes using OpCon properties. OpCon can also support platform-specific features such as job-level message management, report routing control, and local data area management.

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What is Job Tracking used for?**

Job Tracking lets OpCon monitor external jobs that were started outside an OpCon schedule or event — either by a user or by another program. The job must be defined in both OpCon and the operating system agent.

**Q: Can a tracked job use OpCon dependencies or resources?**

No. Because OpCon reports on a job that has already started, tracked jobs cannot be constrained by OpCon dependencies, resources, or thresholds, and OpCon properties cannot define them. However, job history is maintained and subsequent jobs can depend on a tracked job.

**Q: What is the difference between Job Tracking and Job Queuing?**

Job Tracking monitors jobs that have already started outside OpCon. Job Queuing intercepts a job start request and holds the job until OpCon allows it to run, making it subject to dependencies, resources, and thresholds.

## Glossary

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
