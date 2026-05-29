---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Summarize Schedule Build
description: "The Summarize Schedule Build skill displays a summary of the schedule build log for a specified schedule and date, including build status, the jobs included or excluded, and a link to the full log file."
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

# Summarize Schedule Build

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Summarize Schedule Build** skill displays a summary of the schedule build log for a specified daily schedule and date. The summary reports the build status, identifies which jobs were included or excluded, and provides a link to the full log file. Use this skill in Otto when you want to confirm how a schedule was built for a given day without opening the log file manually.

The summary indicates whether the build is **Build on hold** or **Build released**, and the formatted response includes bold headings for the schedule name, date, whether the build overwrote an existing build, the jobs included, and the jobs excluded.

## Required Privileges

To use this skill, you must have the **View Schedule Build Log** privilege, in addition to the privileges required to use Otto. Administrators and roles with all function privileges also have access.

## Parameters

| Parameter | Description | Required |
|---|---|---|
| **Schedule Name** | The name of the daily schedule. | Yes |
| **Date** | The date on which the specified schedule is set to run. | Yes |

## How to Use It

To summarize a schedule build, complete the following steps:

1. Open Otto in Solution Manager.
2. Ask Otto to summarize the schedule build, supplying the schedule name and the date. For example: `Summarize the schedule build for the SMAUtility schedule on 2024-10-31`.
3. Review the summary that Otto returns, including the build status and the jobs included or excluded.
4. Select **View Log File Details** to open the full build log file.

**Result:** Otto returns a summary of the schedule build for the specified schedule and date and provides a link to the full log file. If no build log file exists for that schedule and date, Otto reports that no build log files were found.

## Example

`Summarize the schedule build for the SMAUtility schedule on 2024-10-31`

## FAQs

**Q: What happens if no build log exists for the schedule and date I specify?**

Otto reports that no build log files were found for that schedule on that date. Confirm that the schedule name is valid and that the date matches a date on which the schedule was built.

**Q: What does the build status mean?**

The status is either **Build on hold** or **Build released**, indicating whether the schedule was built in a held state or released to run.

## Related Topics

<!-- GAP: Related Topics links to sibling Otto skill pages and the schedule build log reference page are not confirmed from source; needs SME to supply correct page paths. -->

## Glossary

**SMAUtility Schedule**: A pre-built OpCon schedule installed during setup that contains standard maintenance jobs for audit history cleanup, job history cleanup, and BIRT report generation.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.
