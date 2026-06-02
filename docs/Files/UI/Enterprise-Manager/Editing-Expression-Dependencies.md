---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Editing Expression Dependencies
description: "How to edit a Job Expression dependency or Frequency Expression dependency for a job in Enterprise Manager Job Master."
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

# Editing Expression Dependencies

An expression dependency controls whether a job is eligible to run based on the result of an evaluated expression. You can define two types of expressions on a job: a **Job Expression** that applies regardless of frequency, and a **Frequency Expression** that applies only when the job runs under a specific frequency.

To edit the expression dependencies for a job, complete the following steps:

1. Select **Job Master** under the **Administration** topic.
2. Select the schedule in the **Schedule** list.
3. Select the job in the **Job** list.
4. Select the **Dependencies** tab in the **Job Properties** frame.
5. Select the **Expression Dependency** tab.
6. To edit the job-level expression, update the text in the **Job Expression** field.
7. To edit the frequency-level expression, select a frequency from the **Frequency** list, then update the text in the **Frequency Expression** field.
8. Select **Save** on the **Job Master** toolbar.
9. Select **Close** (to the right of the **Job Master** tab) to close **Job Master**.

**Result:** The updated expression dependencies are saved to the job record and take effect the next time the schedule is built or the job record is referenced.

:::note
In the Master editor, the **Frequency Expression** field is disabled until you select a frequency from the list. Each frequency can have its own separate expression.
:::
