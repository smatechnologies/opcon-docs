---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Viewing Additional Resource Information
description: "View cross-reference dependencies and audit records for a resource in Enterprise Manager."
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

# Viewing Additional Resource Information

Use this procedure to view cross-reference dependencies and audit records for a resource in Enterprise Manager.

## View cross-references for a resource

The **Cross Reference** button shows every Master and Daily job that depends on or updates the selected resource.

To view cross-references for a resource, complete the following steps:

1. In Enterprise Manager, go to **Administration** > **Resources**. The **Resources** screen displays.
2. In the **Select Resource** list, select the resource you want to inspect.
3. Select the **Cross Reference** button on the toolbar. A dialog lists the Master resource dependencies, Master resource updates, Daily resource dependencies, and Daily resource updates associated with the resource.
4. Select **OK** to close the dialog.

**Result:** The cross-reference dialog closes and you return to the **Resources** screen.

## View audit records for a resource

The **View Audit** button shows the complete audit history of changes made to the selected resource.

To view audit records for a resource, complete the following steps:

1. In Enterprise Manager, go to **Administration** > **Resources**. The **Resources** screen displays.
2. In the **Select Resource** list, select the resource you want to inspect.
3. Select the **View Audit** button on the toolbar. The audit record dialog opens and displays a history of all changes made to the resource, including timestamps and the user or application that made each change.
4. Select **Close** to close the dialog.

**Result:** The audit dialog closes and you return to the **Resources** screen.
