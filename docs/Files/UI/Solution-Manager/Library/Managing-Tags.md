---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Managing Tags
description: "Use the Tags page in Solution Manager to add, copy, edit, delete, and associate tags with jobs and frequencies."
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

# Managing Tags

Tags are labels you assign to jobs to group and identify related work across schedules. Use **Library > Tags** in Solution Manager to add, copy, edit, delete, and manage tag associations.

For background on how tags work, see [Tags](../../../../job-components/tags.md).

## Viewing Tags

The Tags page displays all existing tags in a grid. Select any tag in the grid to view its associations — the schedules, jobs, and frequencies linked to that tag — in the associations panel.

![Tags Grid](../../../../Resources/Images/SM/Library/Tags/tags-manager.png "Tags Grid")

## Adding a Tag

To add a tag, complete the following steps:

1. Go to **Library > Tags**.
2. Select **Add**. The tag dialog opens.
3. Enter a unique name in the **Tag Name** field.
4. *(Optional)* Select **Filter** to open the schedule-job-frequency tree and associate the tag with jobs or frequencies.
5. In the tree, select the jobs or frequencies to associate with the tag.
6. Select **Save**.

**Result:** The tag is created and any selected associations are saved.

:::note
The **Tag Name** value must be unique across all tags.
:::

:::note
A tag can be associated with a job or its frequencies, but not both. Selecting a frequency associates the tag to that frequency only. Selecting a job associates the tag to the job and removes any existing frequency-level associations for that job.
:::

## Copying a Tag

To copy an existing tag, complete the following steps:

1. Go to **Library > Tags**.
2. Select the tag you want to copy in the grid.
3. Select **Copy**. The tag dialog opens with the copied tag's values.
4. Enter a unique name in the **Tag Name** field.
5. *(Optional)* Modify the associations using **Filter**.
6. Select **Save**.

**Result:** A new tag is created with the values from the copied tag.

## Editing a Tag

To edit an existing tag, complete the following steps:

1. Go to **Library > Tags**.
2. Select the tag you want to edit in the grid.
3. Select **Edit**. The tag dialog opens.
4. Update the **Tag Name** or associations as needed.
5. Select **Save**.

**Result:** The tag is updated with the new values.

## Deleting a Tag

To delete a tag, complete the following steps:

1. Go to **Library > Tags**.
2. Select the tag you want to delete in the grid.
3. Select **Delete**.
4. Confirm the deletion when prompted.

**Result:** The tag and its associations are permanently removed.
