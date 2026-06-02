---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Using Plan Mode
description: "Use Plan Mode in the Gantt chart to adjust a job's estimated start time or run duration by dragging job boxes on the chart."
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

# Using Plan Mode

Plan Mode is a toggle on the Gantt chart toolbar that lets you adjust job start times and durations by dragging job boxes directly on the chart. When Plan Mode is active, automatic chart refresh pauses and all job boxes become moveable and resizable. Exiting Plan Mode resumes the refresh cycle.

## Enable Plan Mode

To enable Plan Mode in the Gantt chart, complete the following steps:

1. In Enterprise Manager, go to **Operation > Gantt**. The **Gantt** view opens.
2. On the Gantt toolbar, select **Mode plan**. The view title changes to `[PLAN MODE] Gantt`, and all job boxes become moveable and resizable.

**Result:** Auto-refresh is paused and the **Show Dependencies** and **Listen Selection** toolbar actions are disabled while Plan Mode is active.

## Adjust a job's start time

To move a job to a new estimated start time, complete the following steps:

1. In the Gantt chart, hover over the job box until the four-directional arrow appears.
2. Select and drag the job box to the new estimated start time.

**Result:** The job box moves to the new position. If the job has dependent jobs, those jobs shift forward automatically to maintain their dependency relationships. A job cannot be moved before its predecessor job's end time.

## Adjust a job's run duration

To change a job's estimated run duration, complete the following steps:

1. In the Gantt chart, hover over the right edge of the job box until the bi-directional arrow appears.
2. Hold the left mouse button and drag the right edge to the new estimated end time.

**Result:** The job box is resized to reflect the new estimated duration.

## Disable Plan Mode

To exit Plan Mode and resume normal Gantt operation, complete the following steps:

1. On the Gantt toolbar, select **Mode plan** again to toggle it off.

**Result:** Auto-refresh resumes, the view title returns to `Gantt`, and the **Show Dependencies** and **Listen Selection** actions are re-enabled. The chart refreshes with current schedule data.
