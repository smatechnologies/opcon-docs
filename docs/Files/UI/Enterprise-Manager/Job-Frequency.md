---
title: Job Frequency
description: "Use the Frequency tab in Job Master to add, edit, delete, forecast, and manage advanced job frequencies in Enterprise Manager."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Frequencies
last_updated: 2026-03-18
doc_type: conceptual
---

# Job Frequency

The **Frequency** tab in the [Job Master](Using-Job-Master.md) editor lets you define and manage the scheduling rules that control when a job runs. Each frequency specifies the weeks, days, and calendar criteria for job eligibility, along with timing details such as start offsets, late-to-start thresholds, retry behavior, and recurrence settings.

A job can have multiple frequencies. When more than one frequency qualifies for the same date, OpCon uses the highest-priority frequency and ignores the others for that date.

For conceptual background on how frequencies work, refer to [Job Frequency](../../../job-components/frequency.md) in the **Concepts** online help.

## Available Actions

From the **Frequency** tab in the **Job Master** editor, you can:

- [Add Job Frequencies](Adding-Job-Frequencies.md) — create a new frequency or associate an existing one with the job
- [Edit Job Frequencies](Editing-Job-Frequencies.md) — modify the frequency definition or timing details
- [Delete Job Frequencies](Deleting-Job-Frequencies.md) — remove a frequency from the job
- [Forecast Job Frequencies](Forecasting-Job-Frequencies.md) — preview the dates a frequency qualifies
- [Manage Advanced Job Frequencies](Managing-Advanced-Job-Frequencies.md) — configure extended frequency properties
