---
title: Job Documentation
description: "The Documentation tab in the Job Master editor provides two free-text fields for recording job-level notes and frequency-specific notes, such as command history and operator instructions for failure recovery."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: conceptual
---

# Job Documentation

The **Documentation** tab in the [**Job Master**](Using-Job-Master.md) editor provides two free-text fields for recording notes about a job. Use these fields to store command history, operator instructions for failure recovery, links to runbooks, or any other information relevant to the job.

For conceptual background on job documentation in OpCon, refer to [Documentation](../../../job-components/documentation.md) in the Concepts help.

## Fields

| Field | Description |
|---|---|
| **Documentation** | Free-text notes that are always associated with the job, regardless of which frequency the job runs under. |
| **Frequency Documentation** | Free-text notes associated with a specific frequency. Select a frequency from the **Frequency** list to view or edit its documentation. This field is only populated when the job runs under the selected frequency. At least one frequency must be defined before frequency-level documentation can be added. |

Both fields support file paths and URLs. Double-clicking a path or URL in either field opens an **Open** dialog. Select **Yes** to open the referenced file or URL using the default OS program.

## Related Procedures

- [Adding Documentation](Adding-Documentation.md) — how to add job-level and frequency-level documentation in Job Master
- [Entering and Opening Hyperlinks](Entering-and-Opening-Hyperlinks.md) — how to enter and open file paths or URLs in the Documentation fields
