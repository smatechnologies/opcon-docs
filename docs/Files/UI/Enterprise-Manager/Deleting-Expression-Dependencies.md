---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Deleting Expression Dependencies
description: "How to remove a Job Expression or Frequency Expression dependency from a job definition in Enterprise Manager Job Master."
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

# Deleting Expression Dependencies

An expression dependency causes a job to wait until a property expression evaluates to `true`. Deleting the expression text from the **Job Expression** or **Frequency Expression** field removes the dependency from the job definition. This action is permanent and cannot be undone.

To delete an expression dependency, complete the following steps:

1. Select **Job Master** under the **Administration** topic. The **Job Master** screen displays.
2. Select the schedule in the **Schedule** list.
3. Select the job in the **Job** list.
4. Select the **Dependencies** tab in the **Job Properties** frame.
5. Select the **Expression Dependency** tab.
6. Select all expression text in the **Job Expression** field and press **Delete**.
7. Select the frequency in the frequency list, then select all expression text in the **Frequency Expression** field and press **Delete**. Repeat for each frequency that has an expression to remove.
8. Select ![Save](../../../Resources/Images/EM/EMsave.png) **Save** on the **Job Master** toolbar.
9. Select **Close** to close the **Job Master** screen.

**Result:** The expression dependency is removed from the job definition. The change takes effect the next time the schedule is built or the job is added to the Daily tables.

## FAQs

**Q: Can a deleted expression dependency be recovered?**

No. Deleting the expression text permanently removes the dependency from the job definition. Verify the expression is no longer needed before saving.

**Q: What should you check before deleting an expression dependency?**

Confirm that no other jobs or schedules rely on the same expression logic before removing it. If you are unsure, consult the schedule design documentation or contact the schedule owner.

## Glossary

**Expression Dependency**: A dependency that causes a job to wait until a property expression evaluates to `true`. Expression dependencies can be set at the job level (always evaluated) or the frequency level (evaluated only when the job runs on that frequency).

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
