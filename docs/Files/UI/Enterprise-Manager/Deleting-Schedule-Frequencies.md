---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Deleting Schedule Frequencies
description: "Use this procedure to delete a Schedule Frequency from a schedule in Enterprise Manager."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Schedules
  - Frequencies
last_updated: 2026-03-18
doc_type: procedural
---

# Deleting Schedule Frequencies

To delete a frequency from a schedule, complete the following steps:

1. Select **Schedule Master** under the **Administration** topic. The **Schedule Master** screen displays.
2. Select the schedule in the **Schedule Selection** list.
3. Select the **Frequency** tab in the **Schedule Details** section.
4. Select the frequency in the **Frequency list**.
5. Select **Remove**. A confirmation dialog displays.
6. Select **Yes** to confirm the deletion or **No** to cancel.
7. Repeat steps 4–6 to delete additional frequencies.
8. Select **Close** ☒ to close the **Schedule Master** screen.

**Result:** The selected frequency is permanently removed from the schedule in OpCon.

## Frequently Asked Questions

**Can a deleted schedule frequency be recovered?**

No. Deleting a schedule frequency permanently removes it from OpCon. Verify the frequency is no longer needed before deleting it.

**Can you delete more than one schedule frequency at a time?**

No. You must select and remove one frequency at a time. Repeat the procedure for each frequency you want to delete.

## Glossary

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**OpCon**: Continuous' workflow automation platform that automates and monitors jobs across distributed systems.
