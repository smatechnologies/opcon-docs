---
title: Setting up New Profiles
description: "Use this procedure to set up New Profiles in the Enterprise Manager."
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

# Setting up New Profiles

**Theme:** Build  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to set up New Profiles in the Enterprise Manager.

:::note
Begin with step 6 if the **Database Connection Profile** dialog is already displayed.
:::

To set up a new profile, complete the following steps:

1. Open the Enterprise Manager application
2. Go to **EnterpriseManager > Preferences**. The **Preferences** dialog displays
3. Select the arrow (![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png)) next to **Enterprise Manager** in the Preferences tree to expand the list
4. Select **Connection Profiles**. The **Connection Profiles** settings display to the right
5. Select the **New Profile** button. The **Database Connection Profile** dialog displays
6. Enter a profile name
7. Specify the authentication method:
   - **Windows Authentication**: Select the **Use Windows Authentication** option
   - **SQL Authentication**: Enter `opconui` in the **Username** field, the password in the **Password** field, and the SQL server name or IP address in the **SQL Server** field
8. Select the database from the list. Select the **Database** button to show available databases

   :::note
   The database list is only available after all previous fields are filled in.
   :::

9. (Optional) Enter a **Timeout (sec)** value. The default is 30
10. (Optional) Select the **Profile Color** button, choose a color, and select **OK**
11. Select **Next**. The next window indicates whether the database connection test was successful
    - If unsuccessful, select **Back** to correct the issue and retry
    - If successful, select **Next** to set up OpCon data location details
12. Choose the method for connecting to the SAM application server:

    :::note
    The EM automatically replaces the `[[SERVER]]` token in the UNC path with the database server IP/hostname from the profile. Changing the database server does not require updating the UNC path if the share directory remains the same.
    :::

    - **On the OpCon server** — choose **Directory with Windows integrated authentication**:
      - SAM server: In the **Path** field, enter or browse to the Output Directory
      - Other Windows machine on the same domain: Share `C:\ProgramData\OpConxps` on the OpCon server with Read permission, then enter the path to that folder in the **Path** field
    - **On a Linux machine or non-OpCon Windows machine** — choose **Directory with supplied credentials**:
      - Enter a valid UNC path (if the share name is **OpConxps**, the default `\\[[SERVER]]\OpConxps` is correct)
      - Enter a valid Windows username and password

13. Select **Finish** to save and close the dialog, then select **Finish** again once the database connection is established
14. Select **Apply** to save additional changes, or **OK** to save and close the **Preferences** dialog

## When Would You Use It?

- You need to prepare and initialize New Profiles in Enterprise Manager

## Why Would You Use It?

- **Setting up**: To set up a new profile:

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: How many steps does the Setting up New Profiles procedure involve?**

The Setting up New Profiles procedure involves 14 steps. Complete all steps in order and save your changes.

## Glossary

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Token (Global Property)**: A named value stored in the OpCon database, referenced in job definitions and events using [[PropertyName]] syntax. Tokens pass dynamic values — such as dates, file paths, or counts — into automation workflows.

**OpConxps**: The standard installation directory name for OpCon program files, configuration files, and output data on Windows machines.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
