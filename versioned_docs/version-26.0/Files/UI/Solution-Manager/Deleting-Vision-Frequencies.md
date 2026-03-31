---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Deleting Vision Frequencies
description: "Use this procedure to delete Vision Frequencies in Solution Manager."
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

# Deleting Vision Frequencies

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to delete Vision Frequencies in Solution Manager.

To delete a Vision Frequency, complete the following steps:

1. Perform one of the following:
    a. Select the **Edit** button (![Vision Edit Button](../../../Resources/Images/SM/Vision-Edit-Button.png "Vision Edit Button")) directly on the card on the **Vision Live** page **- or -**
    b. Select the **Edit** button (![Vision Edit Button](../../../Resources/Images/SM/Vision-Edit-Button.png "Vision Edit Button")) next to **Home** on the **Vision Live** page. The **Vision Settings** page displays.
2. Select the **Card** to edit from the list
3. Select the **Delete** button next to the frequency to delete
4. Select **OK** in the **Modify Card** window
5. Select **Save**
:::

## When Would You Use It?

- An existing Vision Frequencies in Solution Manager is no longer needed
- The Vision Frequencies has been decommissioned or replaced and should be removed to keep the configuration clean

## Why Would You Use It?

- **Maintain a clean environment**: Removing unused Vision Frequencies definitions reduces clutter and prevents accidental use of outdated or obsolete configurations
- Deletions are recorded in the OpCon audit log, providing traceability for compliance and change management reviews

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: Can a vision frequencies record be recovered after deletion?**

No. Deleting a vision frequencies record permanently removes it from OpCon. Verify the record is no longer needed before deleting it.

**Q: How many vision frequencies records can you delete at once?**

Select the specific vision frequencies record you want to delete, then select the **Delete** button on the toolbar. Confirm the deletion when prompted.

## Glossary

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
