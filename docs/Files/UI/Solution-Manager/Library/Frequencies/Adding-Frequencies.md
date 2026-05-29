---
title: Adding Frequencies
description: "Use this procedure to add Frequencies in Solution Manager."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-05-29
doc_type: procedural
---

# Adding Frequencies

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to add a Frequency in Solution Manager. A Frequency is a set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

A new frequency is added within a **Master Job Definition**. The **Library** > **Frequencies** page does not add frequencies — it is used to view, edit, and forecast existing frequencies.

Add a frequency when you:

- Define a new recurring pattern for when jobs or schedules are eligible to run
- Reuse a common timing rule across multiple jobs and schedules

Frequency names are unique, user-defined names of up to twenty characters, and a frequency can be reused on as many schedules and jobs as needed.

For conceptual information, refer to [Frequencies](../../../../../automation-concepts/frequencies.md) in the **Concepts** online help.

## Administration

### Required Privileges

Frequencies are added while editing a Master Job Definition. Your role must have the privileges required to edit master jobs. For the full list, refer to [Required Privileges](../MasterJobs/Viewing-And-Updating-Master-Jobs/Accessing-Master-Jobs.md#required-privileges) in the **Accessing Master Job Definition** topic.

## Adding a Frequency

A frequency is added to a job from the **Frequency** panel of the **Master Job Definition** page. For the step-by-step procedure, refer to [Viewing and Updating Frequencies](../MasterJobs/Viewing-And-Updating-Master-Jobs/Viewing-And-Updating-Frequencies.md).

To edit or forecast an existing frequency, use the **Library** > **Frequencies** page. Refer to [Editing Frequencies](Editing-Frequencies.md) and [Forecasting Frequencies](Forecasting-Frequencies.md).

## FAQs

**Q: Can a frequency be added from the Library > Frequencies page?**

No. A new frequency is added within a Master Job Definition. The **Library** > **Frequencies** page is used to view, edit, and forecast existing frequencies. Refer to [Viewing and Updating Frequencies](../MasterJobs/Viewing-And-Updating-Master-Jobs/Viewing-And-Updating-Frequencies.md).

**Q: Do frequency names need to be unique?**

Yes. Frequency names are unique, user-defined names of up to twenty characters. A frequency can be reused on as many schedules and jobs as needed.

**Q: Can a frequency be edited after it is added?**

Yes. Use [Editing Frequencies](Editing-Frequencies.md) in the **Library** > **Frequencies** page to update the rule or rename the frequency.

**Q: How do you preview when a frequency qualifies?**

Use [Forecasting Frequencies](Forecasting-Frequencies.md) in the **Library** > **Frequencies** page.

## Related Topics

- [Viewing and Updating Frequencies](../MasterJobs/Viewing-And-Updating-Master-Jobs/Viewing-And-Updating-Frequencies.md)
- [Managing Frequencies](Managing-Frequencies.md)
- [Editing Frequencies](Editing-Frequencies.md)
- [Forecasting Frequencies](Forecasting-Frequencies.md)
- [Frequencies](../../../../../automation-concepts/frequencies.md)

## Glossary

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Calendar**: A named collection of dates in OpCon used by schedules and frequencies to determine when automation runs or is excluded. Calendars can represent holidays, working days, or any custom date set.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type.
