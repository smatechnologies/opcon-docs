---
title: Viewing and Updating Events
description: "The Events panel in Master Job Definition displays the events configured for the job. In Admin mode, you can add, edit, and remove events."
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

# Viewing and Updating Events

## Overview

The **Events** panel in **Master Job Definition** displays the events configured for the job. Events are OpCon events that the SAM processes based on a trigger — job status, Agent feedback string match, Exit Description evaluation, or Evaluation Expression. In **Admin** mode, you can add, edit, and remove events.

- Select the full-screen button (![Full Screen Panel Icon](../../../../../../Resources/Images/SM/Full-Screen-Mode-Icon.png "Full Screen Panel Icon")) on the far-right of the panel bar to enter or exit **Full Screen** mode.
- A blue circular indicator (![Job Properties Indicator](../../../../../../Resources/Images/SM/Daily-Job-Definition-Properties-Indicator.png "Job Properties Indicator")) appears to the right of the panel name showing the count of defined events.

For conceptual information about events, including trigger types and event syntax, refer to [Events](../../../../../../job-components/events.md).

## Required Privileges

Only users with the appropriate edit privileges can select the **Lock** button to switch to **Admin** mode and update job properties. For details, refer to [Required Privileges](Accessing-Master-Jobs.md#required-privileges).

## Add an Event

To add an event to a job, complete the following steps:

1. Open the **Master Job Definition** page for the job you want to edit. See [Accessing Master Jobs](Accessing-Master-Jobs.md).
1. Select the **Lock** button to switch to **Admin** mode.
1. Expand the **Events** panel.
1. Select the **Add** button (the green plus button in the panel toolbar).
1. Complete the fields in the event dialog. For field descriptions, refer to [Events](../../../../../../job-components/events.md).
1. Select **Save** in the dialog.
1. Select **Save** on the **Master Job Definition** page.

**Result**: The new event appears in the **Events** panel and is saved to the job definition.

## Edit an Event

To edit an existing event on a job, complete the following steps:

1. Open the **Master Job Definition** page for the job you want to edit. See [Accessing Master Jobs](Accessing-Master-Jobs.md).
1. Select the **Lock** button to switch to **Admin** mode.
1. Expand the **Events** panel.
1. Select the event you want to edit.
1. Update the fields in the event dialog. For field descriptions, refer to [Events](../../../../../../job-components/events.md).
1. Select **Save** in the dialog.
1. Select **Save** on the **Master Job Definition** page.

**Result**: The updated event is saved to the job definition.

## Remove an Event

To remove an event from a job, complete the following steps:

1. Open the **Master Job Definition** page for the job you want to edit. See [Accessing Master Jobs](Accessing-Master-Jobs.md).
1. Select the **Lock** button to switch to **Admin** mode.
1. Expand the **Events** panel.
1. Select the event you want to remove.
1. Select the **Remove** button for the event.
1. Select **Save** on the **Master Job Definition** page.

**Result**: The event is removed from the job definition.
