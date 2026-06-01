---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Using Frequency Manager
description: "Frequency Manager in Enterprise Manager lets you view, edit, rename, forecast, and compare frequencies, and cross-reference every schedule and job using each frequency."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-06-01
doc_type: conceptual
---

# Using Frequency Manager

Frequency Manager is an Enterprise Manager tool for managing the frequencies used by your master schedules and jobs. Use it to look up, edit, rename, forecast, and compare frequencies. You can also resolve duplicate frequency names and definitions, and cross-reference every schedule and job that uses a given frequency.

## Frequency Manager Layout

Frequency Manager opens as an editor with two side-by-side sections:

- **Frequencies** — lists every frequency defined in the system. Each row shows the **Frequency Name**, **A/O/B/N** value, **Calendar Name**, and **In Use** count (the number of schedules and jobs referencing that frequency).
- **Master Schedules/Jobs using this Frequency** — shows the schedules and jobs that use the frequency selected in the **Frequencies** list. To open the corresponding master schedule or job editor, double-click a row, press **Enter**, or select a row and use the **Edit Selected Job or Schedule** toolbar button.

Both sections include a filter field that supports wildcard characters (`?` and `*`) and are case-insensitive.

## Frequency Manager Toolbar

The **Frequencies** section toolbar provides the following actions:

| Button | Description |
|---|---|
| **Edit** | Opens the selected frequency definition in the Frequency wizard for editing. Requires exactly one frequency to be selected. |
| **Rename** | Opens the selected frequency for renaming. Requires exactly one frequency to be selected. |
| **Forecast** | Opens the Forecast dialog for the selected frequency. Requires exactly one frequency to be selected. Double-clicking a frequency row also opens the Forecast dialog. |
| **Compare** | Opens two Forecast dialogs side by side so you can compare two frequencies. Requires exactly two frequencies to be selected. |

The **Master Schedules/Jobs using this Frequency** section toolbar provides:

| Button | Description |
|---|---|
| **Edit Selected Job or Schedule** | Opens the master job or schedule editor for the selected row. Double-clicking a row or pressing **Enter** performs the same action. |

![Frequency Manager toolbar](../../../Resources/Images/EM/EMfreqmngrtoolbar.png "Frequency Manager toolbar")

## Filter Options

Three filter options appear below the **Frequencies** list:

| Option | Behavior |
|---|---|
| **Show duplicate frequency names only** | Filters the list to frequencies that share a name with at least one other frequency. Duplicate groups are shown in matching colors. Mutually exclusive with **Show duplicate frequency definitions only**. |
| **Show duplicate frequency definitions only** | Filters the list to frequencies that share identical definitions (A/O/B/N value, calendar, and frequency code) with at least one other frequency. Duplicate groups are shown in matching colors. Mutually exclusive with **Show duplicate frequency names only**. |

One filter option appears below the **Master Schedules/Jobs using this Frequency** list:

| Option | Behavior |
|---|---|
| **Show only Schedules using this Frequency** | Filters the right panel to show schedule-level frequency assignments only, hiding job-level rows. |

## Related Topics

- [Viewing Schedules and Jobs using Frequency Names](Viewing-Schedules-and-Jobs.md)
- [Editing Frequency Definitions](Editing-Frequency-Definitions.md)
- [Renaming Frequencies](Renaming-Frequencies.md)
- [Forecasting Frequencies](Forecasting-Frequencies.md)
- [Comparing Frequencies](Comparing-Frequencies.md)
- [Editing Schedule or Job Master](Editing-Schedule-or-Job-Master.md)
- [Showing Duplicate Frequency Names Only](Showing-Duplicate-Frequency-Names.md)
- [Showing Duplicate Frequency Definitions Only](Showing-Duplicate-Frequency-Definitions.md)
- [Showing Schedule Frequencies Only](Showing-Schedule-Frequencies.md)
