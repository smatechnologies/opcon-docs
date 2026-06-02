---
title: Adding Machine Groups to Job Details
description: "Assign a machine group to a job in the Job Master editor in Enterprise Manager so OpCon can distribute the job across multiple agents."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Adding Machine Groups to Job Details

A machine group is a named collection of agents in OpCon. Assigning a machine group to a job lets OpCon run the job on the least-tasked agent in the group or on every agent in the group, depending on your configuration. Use this procedure to assign a machine group to a job in Enterprise Manager.

## Assign a machine group to a job

To assign a machine group to a job, complete the following steps:

1. In Enterprise Manager, select **Job Master** under the **Administration** topic.
2. In the **Schedule** list, select the schedule that contains the job.
3. In the **Job** list, select the job.
4. In the **Machine Group Selection** section, select the machine group from the **Group** list.
5. Select the run behavior:
   - **Run on Least Tasked Machine** — OpCon sends the job to the agent in the group that currently has the fewest active jobs.
   - **Run on Each Machine** — OpCon runs the job on every agent in the group. This option is available for master jobs only, not daily jobs.
6. Select **Save** on the **Job Master** toolbar.

**Result:** The machine group assignment is saved to the job definition. OpCon uses the selected group and run behavior the next time the job is built into a daily schedule.

To assign a machine group to additional jobs in the same schedule, repeat steps 3–6 for each job. When finished, select **Close** (to the right of the **Job Master** tab) to close Job Master.
