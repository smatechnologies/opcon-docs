---
title: Deleting Job Frequencies
description: "Use this procedure to delete a job frequency from a job in Enterprise Manager."
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

# Deleting Job Frequencies

A job frequency defines the scheduling rules — such as day-of-week settings, calendar rules, and period offsets — that determine when a job is eligible to run. Deleting a frequency from a job permanently removes those scheduling rules. Verify the frequency is no longer needed before you proceed, because the deletion cannot be undone.

## Delete a Job Frequency

To delete a job frequency, complete the following steps:

1. In Enterprise Manager, select **Job Master** under the **Administration** topic. The **Job Master** screen displays.
2. Select the schedule in the **Schedule** list.
3. Select the job in the **Job** list.
4. Select the **Frequency** tab in the **Job Properties** frame.
5. Select the frequency in the **Frequency** list.
6. Select **Remove**. A confirmation dialog displays.
7. Select **Yes** to confirm the deletion, or **No** to cancel.
8. Repeat steps 5–7 to delete additional frequencies from the same job.
9. Select **Close ☒** to close the **Job Master** screen.

**Result:** The frequency is permanently removed from the job.

## Related topics

- [Adding Job Frequencies](Adding-Job-Frequencies.md)
- [Editing Job Frequencies](Editing-Job-Frequencies.md)
