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
last_updated: 2026-05-28
doc_type: procedural
---

# Adding Frequencies

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to add a Frequency in Solution Manager. A Frequency is a set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

For conceptual information, refer to [Frequencies](../../../../../automation-concepts/frequencies.md) in the **Concepts** online help.

## Administration

### Required Privileges

To add a frequency, your role must have the following privilege:

- **Function Privilege**: All Function Privileges (grants access to the Frequency Manager)

For more information, refer to [Managing Roles and Privileges](../AccessManagement/Roles/Managing-Roles-And-Privileges.md).

## Adding a Frequency

To add a new frequency, complete the following steps:

1. Go to **Library** > **Frequencies**.
2. Select the **Add** button. The **Frequency Manager Wizard** dialog displays.
3. Enter a unique name in the **Frequency Name** field.
4. Define the schedule rule for the frequency. For details on the available options, refer to [Frequency Definition](../../../../../automation-concepts/frequencies.md#frequency-definition) in the **Concepts** online help.
5. _(Optional)_ Select the **Forecast** button to preview the dates the frequency qualifies. Review the forecast results, then close the forecast view.
6. Select **Save** to add the frequency or **Cancel** to discard the changes.

**Result:** The frequency is added to the Frequencies list and is available for assignment to jobs and schedules.

![Frequency Manager Wizard](../../../../../Resources/Images/SM/Library/Frequencies/Frequency-Manager-Wizard.png "Frequency Manager Wizard")

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Frequency Name | Unique identifier for the frequency | — | Required; must be unique across the OpCon database |
| Frequency Rule | Defines when the frequency qualifies (calendar, day-of-week, period, etc.) | — | Refer to [Frequency Definition](../../../../../automation-concepts/frequencies.md#frequency-definition) for the full list of rule options |
| Calendar | The calendar used to refine the dates the rule qualifies | None | Optional; when associated, OpCon matches the calendar dates against the qualifying dates |

## FAQs

**Q: What happens if a frequency name already exists?**

Solution Manager prevents duplicate frequency names. Enter a unique name to save the new frequency.

**Q: Can a frequency be edited after it is added?**

Yes. Use [Editing Frequencies](Editing-Frequencies.md) to update the rule or rename the frequency. Changes apply to all jobs and schedules that reference the frequency the next time the record is built.

**Q: How do you preview when a frequency qualifies?**

Use the **Forecast** button in the Frequency Manager Wizard. For an existing frequency, refer to [Forecasting Frequencies](Forecasting-Frequencies.md).

## Related Topics

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
