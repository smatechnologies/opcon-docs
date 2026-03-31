---
sidebar_label: 'Master vs Daily'
title: Job Master vs Daily Schedule
description: "OpCon was designed to use two major sets of tables."
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

# Job Master vs Daily Schedule

**Theme:** Configure  
**Who Is It For?** Automation Engineer, Business Analyst

## What Is It?

OpCon was designed to use two major sets of tables. The Job Master tables (Master) contain the data required to automate all known workflows for an environment. This data includes definitions for jobs that run every day, as well as jobs that may run as infrequently as once per year. The Daily Schedule tables (Daily) contain only the information for the jobs required for each schedule date. When requested, the schedule build process selects qualified schedules and jobs to copy from the Master to the Daily.

The Master vs. Daily design provides the following primary benefits:

- The SAM scans all active schedules and jobs to determine when to submit jobs for processing. By processing the jobs in the Daily, SAM scans only the required subset of jobs for the day, thereby making processing more efficient. For example, there may be 1,000 jobs defined in the Job Master tables, but of those 1,000 jobs, only 150 must run on weeknights. Instead of having to continually read through 1,000 records to decide what job to start next, the SAM only has to scan 150 records
- Individual changes can be made to jobs, such as removing a dependency or changing a start time, without making any changes to the Job Master tables. This means that when any subsequent schedules are generated, the original values and requirements are still in place

## When Would You Use It?

- OpCon was designed to use two major sets of tables

## Why Would You Use It?

- **Operational value**: Automate all known workflows for an environment

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What is the difference between the Job Master and the Daily Schedule?**

The Job Master contains the complete definition of all known workflows, including jobs that run infrequently. The Daily Schedule contains only the jobs required for a specific schedule date. The schedule build process copies qualified jobs from the Master to the Daily.

**Q: Why is the Master vs. Daily design more efficient?**

The SAM only scans jobs in the Daily when determining what to start next. This means it processes a small subset of jobs for a given day rather than scanning the entire Master catalog.

**Q: Can I make a one-time change to a job without affecting future runs?**

Yes. Changes made to a job in the Daily Schedule apply only to that instance and do not affect the Job Master. When the schedule is built again for a future date, the original Master definition is used.

## Glossary

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**Master Tables**: The OpCon database tables that hold the permanent definitions of schedules and jobs. Changes to master tables affect all future schedule builds.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
