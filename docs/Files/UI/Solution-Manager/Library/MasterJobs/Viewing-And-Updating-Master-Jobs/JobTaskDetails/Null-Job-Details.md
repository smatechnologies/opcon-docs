---
title: Viewing and Adding Null Job Details
description: "Null jobs have no platform-specific task details. Use this procedure to add a Null job or view its general settings in Solution Manager."
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

# Viewing and Adding Null Job Details

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## Overview

A Null job has no platform-specific task details. The **Task Details** panel contains no configurable fields because the Null job type does not run on any agent. The job always finishes with a status of **Finished OK** as soon as it starts.

You can use a Null job to:

- Keep a schedule open after all other jobs complete
- Initialize thresholds at a specific point in a schedule
- Trigger OpCon events

To view, add, or edit a Null job, you must have the required privileges as defined in [Required Privileges](../Accessing-Master-Jobs.md#required-privileges).

## Viewing Null Job Details

To view Null job details, complete the following steps:

1. Go to **Library** > **Master Jobs**.
1. Select a Null job in the list.
1. Select **Edit**.
1. Expand the **Task Details** panel.

**Result**: The **Task Details** panel displays with no configurable fields. All automation settings for a Null job — such as frequencies, dependencies, and events — are configured in the other panels on the **Master Job Definition** page.

---

## Adding a Null Job

To add a Null job, complete the following steps:

1. Go to **Library** > **Master Jobs** and select **Add**. See [Adding a Job](../../Adding-Master-Jobs.md) for steps to complete the general job information.
1. In the **Job Type** field, select **Null**.
1. Select **Save**.

**Result**: The Null job is saved. The **Task Details** panel contains no fields to configure.

---

### More Information

For conceptual information, refer to [Null Jobs](../../../../../../../job-types/null.md) in the **Concepts** online help.
