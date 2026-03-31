---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Deleting Scripts
description: "Use this procedure to delete Scripts in the Enterprise Manager."
product_area: Enterprise Manager
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

#  Deleting Scripts

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to delete Scripts in the Enterprise Manager.

To delete a script, complete the following steps:

1.  Select on **Repository** under the **Scripts** topic. The **Script Repository** screen displays
2.  Select the **script** to delete from the list
3.  Select the **Remove Script** button on the toolbar
4.  Select **Yes** to confirm
5.  Select **Close ☒** to close the **Script Repository** screen

## When Would You Use It?

- An existing Scripts in Enterprise Manager is no longer needed
- The Scripts has been decommissioned or replaced and should be removed to keep the configuration clean

## Why Would You Use It?

- **Maintain a clean environment**: Removing unused Scripts definitions reduces clutter and prevents accidental use of outdated or obsolete configurations
- Deletions are recorded in the OpCon audit log, providing traceability for compliance and change management reviews

## FAQs

**Q: Can a scripts record be recovered after deletion?**

No. Deleting a scripts record permanently removes it from OpCon. Verify the record is no longer needed before deleting it.

**Q: How many scripts records can you delete at once?**

Select the specific scripts record you want to delete, then select the **Delete** button on the toolbar. Confirm the deletion when prompted.

## Glossary


**Embedded Script**: A script stored and versioned directly within the OpCon database. Embedded scripts run on target machines via the agent's script runner and are maintained in the Script Repository.

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.
