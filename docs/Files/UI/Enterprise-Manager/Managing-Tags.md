---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Managing Tags
description: "Use Tag Manager in Enterprise Manager to create, rename, delete, and associate tags with master jobs."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-06-02
doc_type: procedural
---

# Managing Tags

Tags are labels you assign to master jobs to group and identify related work across schedules. Use Tag Manager in Enterprise Manager to create tags, associate them with master jobs, rename them, and remove them.

## Finding a Tag

To find a tag, complete the following steps:

1. Select **Tag Manager** under the **Management** topic in the navigation pane.
2. Select the **Find** button on the toolbar.
3. Enter the tag name in the **Select an Item** field.
4. Select **OK**.

**Result:** The tag is highlighted in the **Selection** list.

## Adding a Tag

To add a tag and associate it with jobs, complete the following steps:

1. Select **Tag Manager** under the **Management** topic in the navigation pane.
2. Select the **Add** button on the toolbar. The **Add New Tag** dialog opens.
3. Enter a name in the **Enter Tag Name** field.
4. *(Optional)* Enter a schedule name in the **Schedule Name** field or a job name in the **Job Name** field under **Job Filter Criteria** to narrow results.
5. Select **Filter** to load matching jobs in the **Available Jobs** list.
6. Select the jobs to associate with the tag.
7. Select **Associate Jobs**.

**Result:** The tag is created and the selected jobs are associated with it. Enterprise Manager prompts you to associate additional jobs with the same tag.

## Renaming a Tag

Renaming a tag updates the tag name across all associated master schedules and jobs.

To rename a tag, complete the following steps:

1. Select **Tag Manager** under the **Management** topic in the navigation pane.
2. Select the tag in the **Selection** list.
3. Update the name in the **Name** field.
4. Select **Save** on the toolbar.

**Result:** The tag is renamed in all master schedules and jobs that reference it.

## Deleting a Tag

Deleting a tag removes it from all associated master schedules and jobs.

To delete a tag, complete the following steps:

1. Select **Tag Manager** under the **Management** topic in the navigation pane.
2. Select the tag in the **Selection** list.
3. Select **Remove** on the toolbar.
4. Select **Yes** to confirm.

**Result:** The tag and all its job associations are permanently removed.

## Editing a Master Job from Tag Manager

To edit a master job from Tag Manager, complete the following steps:

1. Select **Tag Manager** under the **Management** topic in the navigation pane.
2. Select the tag in the **Selection** list. The **Master Schedules/Jobs using this Tag** section displays associated jobs.
3. *(Optional)* Enter text in the filter field to search by schedule name or job name.
4. Select the job to edit.
5. Select the **Edit Master Job** button. The **Job Master** screen opens.
6. Edit the job as needed.
7. Select **Save** on the **Job Master** toolbar.
8. Select **Close** to close the **Job Master** screen.

**Result:** Changes to the master job are saved.

:::tip
You can also double-click a job in the list, or press **Enter** with a single job selected, to open the Job Master editor.
:::

## Associating Additional Jobs with a Tag

To associate additional master jobs with an existing tag, complete the following steps:

1. Select **Tag Manager** under the **Management** topic in the navigation pane.
2. Select the tag in the **Selection** list.
3. Select the **Associate Additional Jobs** button. The **Associate Master Jobs** dialog opens.
4. *(Optional)* Enter a schedule name in the **Schedule Name** field or a job name in the **Job Name** field to narrow results.
5. Select **Filter** to load matching jobs in the **Available Jobs** list.
6. Select the jobs to associate.
7. Select **Associate Jobs**.
8. Select **Yes** to associate more jobs with the same tag, or **No** to close the dialog.

**Result:** The selected jobs are associated with the tag.

## Removing Job Associations from a Tag

To remove one or more job associations from a tag, complete the following steps:

1. Select **Tag Manager** under the **Management** topic in the navigation pane.
2. Select the tag in the **Selection** list.
3. *(Optional)* Enter text in the filter field to locate specific jobs.
4. Select one or more jobs in the **Master Schedules/Jobs using this Tag** list.
5. Select the **Remove Job Association(s)** button.
6. Select **Yes** to confirm.

**Result:** The selected jobs are disassociated from the tag. The tag itself is not deleted.

:::note
You can also right-click a job in the list and select **Remove Job Association(s)** from the context menu.
:::
