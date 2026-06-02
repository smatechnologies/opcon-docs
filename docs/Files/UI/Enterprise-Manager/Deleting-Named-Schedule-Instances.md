---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Deleting Named Schedule Instances
description: "Use this procedure to delete a named schedule instance from a schedule definition in Enterprise Manager."
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

# Deleting Named Schedule Instances

A named schedule instance associates a predefined instance name with a schedule so that OpCon builds a separate copy of the schedule for each defined instance. Deleting a named schedule instance removes that association permanently. This action cannot be undone.

:::warning
If a named schedule instance has cross-schedule job dependencies, OpCon prevents removal until those dependencies are resolved.
:::

## Delete a Named Schedule Instance

To delete a named schedule instance, complete the following steps:

1. Go to **Administration** in Enterprise Manager and select **Schedule Master**.
2. Select the schedule in the **Schedule Selection** list.
3. Select the **Instance Definition** tab in the **Schedule Details** frame.
4. In the **Instances** section, select the instance name you want to remove.
5. Select **Remove**.
6. Select **Save** on the **Schedule Master** toolbar.
7. Select **Close** to close the **Schedule Master** screen.

**Result:** The named schedule instance is permanently removed from the schedule definition.

## Frequently Asked Questions

**Can a deleted named schedule instance be recovered?**

No. Deleting a named schedule instance permanently removes it from OpCon. Verify the instance is no longer needed before removing it.

**Why is the Remove button unavailable for a named schedule instance?**

The instance has cross-schedule job dependencies. Resolve all cross-schedule job dependencies for that instance before attempting to remove it.

## Glossary

**Named Schedule Instance**: A predefined name assigned to a schedule to allow OpCon to build a separate schedule copy for each instance at build time.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.
