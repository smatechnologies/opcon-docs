---
title: Deleting Profiles
description: "Use this procedure to delete Profiles in the Enterprise Manager."
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

# Deleting Profiles

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to delete Profiles in the Enterprise Manager.

To delete a profile, complete the following steps:

1. Open the Enterprise Manager application
2. Go to **EnterpriseManager > Preferences**
3. Select the arrow (![Expand Arrow](../../../Resources/Images/EM/EMarrowtoexpand.png "Expand Arrow")) next to **Enterprise Manager** in the Preferences tree
4. Select **Connection Profiles**
5. Select the **Profile** to delete, then select **Remove**
6. Select **Yes** to confirm or **No** to cancel
7. Select **Apply** to save changes
8. Select **OK** to save and close the **Preferences** dialog

## When Would You Use It?

- An existing Profiles in Enterprise Manager is no longer needed
- The Profiles has been decommissioned or replaced and should be removed to keep the configuration clean

## Why Would You Use It?

- **Maintain a clean environment**: Removing unused Profiles definitions reduces clutter and prevents accidental use of outdated or obsolete configurations
- Deletions are recorded in the OpCon audit log, providing traceability for compliance and change management reviews

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: Can a profiles record be recovered after deletion?**

No. Deleting a profiles record permanently removes it from OpCon. Verify the record is no longer needed before deleting it.

**Q: How many profiles records can you delete at once?**

Select the specific profiles record you want to delete, then select the **Delete** button on the toolbar. Confirm the deletion when prompted.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
