---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Viewing Batch User Cross-References
description: How to view the Master and Daily schedule jobs that reference a batch user in Enterprise Manager.
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

# Viewing Batch User Cross-References

Use the **Cross Reference** button in the Batch Users editor to see every job in the Master and Daily schedules that is configured to run under a selected batch user. This is useful when auditing batch user assignments or before renaming or deleting a batch user.

## Prerequisites

You must have the **All User Interface Functions** function privilege to open the Batch Users editor.

## View cross-references for a batch user

To view jobs that reference a batch user, complete the following steps:

1. In Enterprise Manager, select **Batch Users** under the **Security** topic.
2. In the **Operating System Selection** section, select the target operating system from the **Select the target OS** list.

   The supported operating systems are Windows, UNIX, IBM i, MCP, OpenVMS, and SQL.

3. In the **Batch Users** list, select the batch user whose cross-references you want to view.
4. Select the **Cross Reference** button on the toolbar.

**Result:** The Cross Reference Detail dialog opens and displays two tabs — **Master Jobs** and **Daily Jobs** — each listing the jobs that reference the selected batch user. Jobs appear in the format `Schedule Name : Job Name`. If no jobs reference the batch user, an informational message is displayed instead.

5. Select **OK** to close the dialog.
