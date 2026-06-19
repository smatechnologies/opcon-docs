---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Editing Frequencies
description: "Use this procedure to edit an existing Frequency in the Library module of Solution Manager."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Editing Frequencies

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## Overview

Use this procedure to modify an existing Frequency from the **Library** > **Frequencies** page in Solution Manager. The **Frequency Manager Wizard** lets you update the frequency rules, preview the resulting schedule of qualifying dates, and save or discard your changes.

For conceptual information, refer to [Frequencies](../../../../../automation-concepts/frequencies.md) in the **Concepts** online help.

## Required Privileges

Editing a frequency requires the same privileges as editing a master job definition. For the full list, refer to [Required Privileges](../MasterJobs/Viewing-And-Updating-Master-Jobs/Accessing-Master-Jobs.md#required-privileges) in the **Accessing Master Job Definition** topic.

## Edit a Frequency

To edit a Frequency, complete the following steps:

1. Go to **Library** > **Frequencies**.
2. Select the frequency you want to modify.
3. Select the **Edit** button. The **Frequency Manager Wizard** dialog opens.
4. Make the desired changes to the frequency.
5. To preview the qualifying dates for the updated rules, select **Forecast**.
6. To discard your changes and restore the original settings, select **Reset**.
7. Select **Save** to apply the changes, or **Cancel** to close the dialog without saving.

<!--
**Result**: The frequency is updated. Changes to a frequency in the Job Master take effect the next time the record is built or referenced.

![Frequency Manager Wizard](../../../../../Resources/Images/SM/Library/Frequencies/Frequency-Manager-Wizard.png "Frequency Manager Wizard")
-->

## FAQs

**Q: Do edits to frequencies take effect immediately?**

Changes saved to frequencies in the Job Master take effect the next time the record is built or referenced. Edits to Daily table records apply only to the current instance.

## Related Topics

- [Managing Frequencies](Managing-Frequencies.md)
- [Adding Frequencies](Adding-Frequencies.md)
- [Forecasting Frequencies](Forecasting-Frequencies.md)

## Glossary

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
