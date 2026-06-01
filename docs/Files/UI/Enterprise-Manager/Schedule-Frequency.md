---
title: Schedule Frequency
description: "The Frequency tab in the Schedule Master editor lets you add, edit, and delete the frequencies that control when a schedule is eligible to run."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: conceptual
---

# Schedule Frequency

The **Frequency** tab in the [Schedule Master](Using-Schedule-Master.md) editor lets you add, edit, and delete the frequencies that control when a schedule is eligible to run.

## Overview

A frequency is a named set of rules that determines which days a schedule or job is built. Each frequency specifies a calendar, a day-of-week pattern, a period (weekly, monthly, quarterly, or yearly), an offset, and an A/O/B/N setting that controls how OpCon handles the scheduled date when it falls on a non-working day (After Date, On Date, Before Date, or Not Schedule).

Schedules can have more than one frequency. When multiple frequencies are assigned to a schedule and more than one qualifies for a given build date, OpCon applies them in priority order: the highest-priority qualifying frequency is used, and lower-priority frequencies are ignored for that date.

For full conceptual detail on how frequencies work, refer to [Job and Schedule Frequencies](../../../automation-concepts/frequencies.md).

## Frequency Tab Actions

From the **Frequency** tab in Schedule Master, you can:

- [Add a schedule frequency](Adding-Schedule-Frequencies.md)
- [Edit a schedule frequency](Editing-Schedule-Frequencies.md)
- [Delete a schedule frequency](Deleting-Schedule-Frequencies.md)
