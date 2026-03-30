---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Viewing Job History Information
description: "Use this procedure to view Job History Information in the Enterprise Manager."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: conceptual
---

#  Viewing Job History Information

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to view Job History Information in the Enterprise Manager.

To view job history information, complete the following steps:

1.  Select on **PERT** under the **Operation** topic. The **PERT** screen displays
2.  Select on the **schedule** that contains the job
3.  Right-click on the **job box**
4.  Select on **Job** from the menu, then **Job History** from the second menu. The **Job Execution History** dialog displays. For more information, refer to [Job History](Job-History.md)
5.  Select a row in the **History** table, or right-click a row and select **Job History Detail**. The **Job History Detail** dialog displays for the selected record
6.  View the **Field Names** and **Field Values** for the detail record. For more information, refer to [Job History](Job-History.md)
7.  Select **OK** to close the **Job History Detail** dialog
8.  Right-click any row and select **View Job Output** to view the job output for the selected record
9.  Select **Close** to close the **Job Execution History** dialog
:::

## When Would You Use It?

- You need to inspect or audit Job History Information records in Enterprise Manager
- An audit, compliance review, or operational check requires inspection of current Job History Information state

## Why Would You Use It?

- **Improve operational visibility**: Inspecting Job History Information records in Enterprise Manager supports informed decision-making and provides an audit trail for compliance reviews
- Information in Enterprise Manager reflects the live database state, ensuring that the data reviewed is current at the time of inspection

## FAQs

**Q: How many steps does the Viewing Job History Information procedure involve?**

The Viewing Job History Information procedure involves 9 steps. Complete all steps in order and save your changes.

## Glossary

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
