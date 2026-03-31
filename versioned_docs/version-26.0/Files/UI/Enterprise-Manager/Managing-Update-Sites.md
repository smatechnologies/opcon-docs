---
title: Managing Update Sites
description: "Use this procedure to manage Update Sites in the Enterprise Manager."
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

# Managing Update Sites

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to manage Update Sites in the Enterprise Manager.

## When Would You Use It?

- You need to review or update Update Sites settings in Enterprise Manager
- Update Sites needs to be reviewed as part of routine system maintenance or a compliance audit

## Why Would You Use It?

- **Reduce administrative overhead**: Centralizing Update Sites management in Enterprise Manager reduces the time needed to locate and update settings across the environment
- All Update Sites changes are captured in the OpCon audit system, supporting change management and compliance processes

## Adding an Update Site

1. Open the Enterprise Manager application
2. Go to **EnterpriseManager > Preferences**. The **Preferences** dialog displays
3. Select the arrow (![Expand Arrow ](../../../Resources/Images/EM/EMarrowtoexpand.png "Expand Arrow ")) next to **Enterprise Manager** in the Preferences tree to expand the list
4. Select **Update Sites**. The **Update Sites** settings display to the right
5. Select the **Add** button. The **Add Site** dialog displays
6. Select the **Local** or **Archive** button
   - For the **Local** site, search for the directory where the repository file was extracted

     :::tip Example
     **\<media\>**:\\Install\\Enterprise Manager\\repository\\
     :::

     Select the **directory** in the **Browse For Folder** dialog and select **OK**. Select **OK** in the **Add Site** dialog.
   - For the **Archive** site, search for and select the archived file
To add an Update Site, complete the following steps:

7. Select the **Reload** button to test the update site

## Editing an Update Site

1. [Follow Steps 1 - 4 of Adding an Update Site](#Adding) to access the **Preferences** dialog then proceed
2. Select the **Name** of the update site to edit and select the **Edit** button. The **Edit Site** dialog displays
3. Make changes in the **Name** or **Location** text box and select **OK**

## Removing an Update Site

1. [Follow Steps 1 - 4 of Adding an Update Site](#Adding) to access the **Preferences** dialog then proceed
2. Select the **Name** of the update site to remove and select the **Remove** button. The **Remove Sites** dialog displays
3. Select **Yes** to confirm or **No** to cancel

## Reloading to an Update Site

1. [Follow Steps 1 - 4 of Adding an Update Site](#Adding) to access the **Preferences** dialog then proceed
2. Select the **Name** of the update site to reload and select the **Reload** button
3. Select **OK** to close the **Reload** dialog

## Disabling an Update Site

1. [Follow Steps 1 - 4 of Adding an Update Site](#Adding) to access the **Preferences** dialog then proceed
2. Clear the option next to the *Name* of the update site, or select the **Name** and select the **Disable** button

## Enabling an Update Site

1. [Follow Steps 1 - 4 of Adding an Update Site](#Adding) to access the **Preferences** dialog then proceed
2. Select the option next to the *Name* of the update site, or select the **Name** and select the **Enable** button

## Importing an Update Site

If an administrator has created an import file of available update sites, you can import it to save time.

1. [Follow Steps 1 - 4 of Adding an Update Site](#Adding) to access the **Preferences** dialog then proceed
2. Select the **Import** button. The **Import Sites** dialog displays
3. Select the *correct import file*
4. Select the **Open** button to load the update sites into the Update Sites list

## Exporting Update Sites

An administrator can export update sites to make them available for other users to import.

1. [Follow Steps 1 - 4 of Adding an Update Site](#Adding) to access the **Preferences** dialog then proceed
2. Shift+select or Ctrl+select to select multiple **Update Site Names**
3. Select the **Export** button. The **Export Sites** dialog displays
4. Verify the *location* and *file name* of the export file and select **Save**

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: What does managing update sites involve?**

Managing update sites includes Adding an Update Site, Editing an Update Site, Removing an Update Site, Reloading to an Update Site. Access update sites through the Enterprise Manager navigation pane.

**Q: Who can manage update sites in OpCon?**

Users with the appropriate privileges assigned through their role can manage update sites. Contact your OpCon system administrator if you do not have access.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
