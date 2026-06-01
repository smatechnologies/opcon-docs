---
title: Working with Vision
description: "Vision is a Solution Manager module that lets you define cards showing a summary of job statuses by tag and view historical card health across your OpCon environment."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - Procedural
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-06-01
doc_type: conceptual
---

# Working with Vision

Vision is a Solution Manager module that lets you define cards showing a summary of job statuses for all jobs that match a tag pattern. You can also view the historical health of those cards over time.

![Solution Manager Vision Home Page](../../../Resources/Images/SM/Vision-Home-Page.png "Solution Manager Vision Home Page")

The Vision Home page provides three sections:

| Section | Privilege required |
|---|---|
| **Live** | View Vision Workspaces |
| **Health** | View Vision Workspaces |
| **Settings** | Maintain Vision Workspaces |

## Cards

Vision uses two types of cards — group and tag — which you can organize in a hierarchical structure.

**Group cards** are parent cards that you can define at the root level or as a child of an existing group. A group card definition requires a name, one or more roles, and at least one tag card defined at the lowest group level.

**Tag cards** track actual job data. You can define tag cards individually at the root level or as children of a group. A tag card definition requires:

- A pattern that matches a tag defined in Enterprise Manager
- A job offset
- One or more roles
- One or more Vision Frequencies

When a tag card is displayed, it shows a summary of the start time, duration, end time, and job statuses for any jobs whose tag matches the card's pattern on the selected date. If a card appears blank, no jobs matching the pattern exist for that date.

## Vision Live

Vision Live lets you view cards and their current statuses. Use the filter bar at the top of the page to display cards for the current day, the previous day, or the next day.

Cards display one of the following statuses:

| Status |
|---|
| Waiting |
| Running without error |
| Completed without error |
| Warning |
| Error |
| None |

### Job Status Summary

To view a job status breakdown for a card, select the vertical ellipsis button on the card face. The card flips to its back and displays the total number of jobs per job status that match the pattern defined for the tag card. When viewing a group card, the back face shows the combined totals for all child cards.

For detailed information, see [Viewing Cards in Vision Live](Viewing-Cards-in-Vision-Live.md).

## Vision Health

Vision Health displays a historical dashboard for completed Vision cards. Use Vision Health to review SLA and QoS performance over time.

For detailed information, see [Viewing Vision Health](Viewing-Vision-Health.md).

## Vision Settings

Vision Settings lets you create, edit, and delete cards. From Vision Settings you can also access:

- **Vision Frequencies** — requires the Maintain Vision Frequencies privilege
- **Vision Actions** — requires the Vision license and the Maintain Vision Actions privilege
- **Remote Instances** — requires the OCADM role

For detailed information, see [Managing Vision Settings](Managing-Vision-Settings.md).

## License File Request and Storing

Vision is included with Solution Manager; however, you must obtain a Vision license to access Actions, Triggers, and SLAs. Without the license, those features are unavailable.

### Request the license file

To request the Vision license file, complete the following steps:

1. Log in to **Solution Manager**.
2. Go to **Library** > **License & Support** > **Licensing**.
3. Copy the **System ID** value.
4. Go to the Continuous Support Portal and submit a license request that includes your company name, the environment type (for example, Production), the System ID you copied, and a note requesting "SMA Vision" support.

Continuous will respond with a license file.

### Save the license file

To save the Vision license file, complete the following steps:

1. Save the license file to the `<Configuration Directory>\OpConxps\SAM\` folder on your OpCon server. SAM automatically picks up this new file within 6 hours.
2. *(Optional)* Stop and restart **SMA OpCon Service Manager** in Windows Services to apply the license file immediately rather than waiting for SAM to pick it up automatically.

**Result:** SAM detects the new license file and enables Vision Actions, Triggers, and SLAs.

## Related Topics

- [Viewing Cards in Vision Live](Viewing-Cards-in-Vision-Live.md)
- [Viewing Vision Health](Viewing-Vision-Health.md)
- [Managing Vision Settings](Managing-Vision-Settings.md)
- [Managing Vision Frequencies](Managing-Vision-Frequencies.md)
- [Managing Vision Actions](Managing-Vision-Actions.md)
- [Managing Vision Remote Instances](Managing-Vision-Remote-Instances.md)
