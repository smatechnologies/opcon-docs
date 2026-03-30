---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Deleting Vision Actions
description: "Use this procedure to delete Vision Actions in Solution Manager."
product_area: Solution Manager
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

# Deleting Vision Actions

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to delete Vision Actions in Solution Manager.

To delete a Vision Action, complete the following steps:

1. Select the **Actions** button on the **Vision Live** or **Vision Settings** page
2. Select the option for the action to delete
3. Select the **Delete** button
4. Select **Yes**
:::

## When Would You Use It?

- An existing Vision Actions in Solution Manager is no longer needed
- The Vision Actions has been decommissioned or replaced and should be removed to keep the configuration clean

## Why Would You Use It?

- **Maintain a clean environment**: Removing unused Vision Actions definitions reduces clutter and prevents accidental use of outdated or obsolete configurations
- Deletions are recorded in the OpCon audit log, providing traceability for compliance and change management reviews

## FAQs

**Q: Can a vision actions record be recovered after deletion?**

No. Deleting a vision actions record permanently removes it from OpCon. Verify the record is no longer needed before deleting it.

**Q: How many vision actions records can you delete at once?**

Select the specific vision actions record you want to delete, then select the **Delete** button on the toolbar. Confirm the deletion when prompted.

## Glossary


**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operations, and building self-service requests. Accessible from any modern web browser.
