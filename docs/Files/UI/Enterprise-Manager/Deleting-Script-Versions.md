---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Deleting Script Versions
description: "Use this procedure to delete Script Versions in Enterprise Manager."
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

# Deleting Script Versions

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to delete a script version in Enterprise Manager. Deleting a version removes it permanently from the Script Repository; the version cannot be recovered after deletion.

To delete a script version, complete the following steps:

1. Select **Repository** under the **Scripts** topic. The **Script Repository** screen displays.
2. Select a script in the list.
3. Select the **Show/Create Versions** button on the toolbar. The **Versions** dialog displays.
4. Select the script version to delete.
5. Select **Remove**.
6. Select **Yes** to confirm.
7. Select **Close ☒** to close the **Script Repository** screen.

**Result:** The selected script version is permanently removed from the OpCon database.

## FAQs

**Q: Can a deleted script version be recovered?**

No. Deleting a script version permanently removes it from OpCon. Verify the version is no longer needed before deleting it.

**Q: Can I delete all versions of a script at once?**

You must delete versions individually. Select the specific version you want to delete, then select **Remove**. Confirm the deletion when prompted.

## Glossary

**Embedded Script**: A script stored and versioned directly within the OpCon database. Embedded scripts run on target machines via the agent's script runner and are maintained in the Script Repository.

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.
