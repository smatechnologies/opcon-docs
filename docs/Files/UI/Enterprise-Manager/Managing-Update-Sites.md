---
title: Managing Update Sites
description: "Add, edit, remove, reload, disable, enable, import, and export update sites in Enterprise Manager."
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

# Managing Update Sites

Update sites are repositories that Enterprise Manager checks when looking for software updates. You can add local directory repositories or archived repository files, and manage each site's enabled state. The procedures below cover all update site management tasks.

## Adding an Update Site

To add an update site, complete the following steps:

1. Open Enterprise Manager.
2. Go to **EnterpriseManager > Preferences**. The **Preferences** dialog opens.
3. Select the arrow next to **Enterprise Manager** in the Preferences tree to expand the list.
4. Select **Update Sites**. The **Update Sites** settings appear on the right.
5. Select **Add**. The **Add Site** dialog opens.
6. Select **Local** or **Archive**:
   - **Local** — Select the directory where the repository file was extracted. Browse to the directory in the **Browse For Folder** dialog and select **OK**.

     :::tip Example
     `<media>:\Install\Enterprise Manager\repository\`
     :::

   - **Archive** — Browse to and select the archived repository file.
7. Select **OK** in the **Add Site** dialog.
8. Select **Reload** to verify that Enterprise Manager can reach the new site.

**Result:** The new update site appears in the **Update Sites** list.

## Editing an Update Site

To edit an update site, complete the following steps:

1. Go to **EnterpriseManager > Preferences**.
2. Select the arrow next to **Enterprise Manager** in the Preferences tree to expand the list.
3. Select **Update Sites**.
4. Select the name of the update site you want to edit, then select **Edit**. The **Edit Site** dialog opens.
5. Update the **Name** or **Location** field as needed.
6. Select **OK**.

**Result:** The updated site name or location is saved.

## Removing an Update Site

To remove an update site, complete the following steps:

1. Go to **EnterpriseManager > Preferences**.
2. Select the arrow next to **Enterprise Manager** in the Preferences tree to expand the list.
3. Select **Update Sites**.
4. Select the name of the update site you want to remove, then select **Remove**. The **Remove Sites** dialog opens.
5. Select **Yes** to confirm, or **No** to cancel.

**Result:** The selected update site is removed from the list.

## Reloading an Update Site

Reloading an update site refreshes its metadata and verifies that Enterprise Manager can connect to it.

To reload an update site, complete the following steps:

1. Go to **EnterpriseManager > Preferences**.
2. Select the arrow next to **Enterprise Manager** in the Preferences tree to expand the list.
3. Select **Update Sites**.
4. Select the name of the update site you want to reload, then select **Reload**.
5. Select **OK** to close the **Reload** dialog.

## Disabling an Update Site

To disable an update site, complete the following steps:

1. Go to **EnterpriseManager > Preferences**.
2. Select the arrow next to **Enterprise Manager** in the Preferences tree to expand the list.
3. Select **Update Sites**.
4. Clear the option next to the update site name, or select the site name and select **Disable**.

**Result:** Enterprise Manager stops checking the site for updates.

## Enabling an Update Site

To enable an update site, complete the following steps:

1. Go to **EnterpriseManager > Preferences**.
2. Select the arrow next to **Enterprise Manager** in the Preferences tree to expand the list.
3. Select **Update Sites**.
4. Select the option next to the update site name, or select the site name and select **Enable**.

**Result:** Enterprise Manager resumes checking the site for updates.

## Importing Update Sites

If an administrator has created an import file of available update sites, you can import it to add multiple sites at once.

To import update sites, complete the following steps:

1. Go to **EnterpriseManager > Preferences**.
2. Select the arrow next to **Enterprise Manager** in the Preferences tree to expand the list.
3. Select **Update Sites**.
4. Select **Import**. The **Import Sites** dialog opens.
5. Browse to and select the import file.
6. Select **Open** to load the update sites into the **Update Sites** list.

**Result:** All sites from the import file are added to the **Update Sites** list.

## Exporting Update Sites

Administrators can export update sites to share them with other users as an import file.

To export update sites, complete the following steps:

1. Go to **EnterpriseManager > Preferences**.
2. Select the arrow next to **Enterprise Manager** in the Preferences tree to expand the list.
3. Select **Update Sites**.
4. Select the update site names you want to export. Use Shift+select or Ctrl+select to select multiple sites.
5. Select **Export**. The **Export Sites** dialog opens.
6. Verify the location and file name, then select **Save**.

**Result:** The selected update sites are saved to the export file.
