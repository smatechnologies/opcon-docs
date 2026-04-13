---
title: Using Report Management
description: "Report Management enables administrators to view, add, delete, and edit report specifications in the database."
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

# Using Report Management

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Report Management enables administrators to view, add, delete, and edit report specifications in the database. Reports are created using BIRT Reports and viewed through the Enterprise Manager. You can create customized reports with the BIRT report writer tools and import them using the Report Management utility.

## Opening Report Management

**To open the utility:**

1. Select on **Reports** under the **Information** topic. The **Reports** screen displays
2. Select the **Manage Reports** button on the **Reports** toolbar. The **Report Management** dialog displays

## Understanding Report Management Options

The Report Management utility has two frames: General and Filter.

The **General** frame has the following options:

- **Report Locked**: When selected, the report definition is locked so that only users in the *ocadm* role can manage, lock, or unlock the report. Users with report management privileges can view locked reports and manage unlocked definitions, but all fields will be disabled
- **Report**: Lists all BIRT reports currently defined in the database, matching the list in the **Reports** screens
- **Title**: The unique title of the selected report
- **Template**: The BIRT report template file name. Do not include a path — all reports must be located in the **OpConxps\\EnterpriseManager\\reports\\OpConXPS_Reports** directory. Use the **Open** button to browse for a file
- **Administrator**: Authorization level visible only to *ocadm* or users with equivalent status
- **All Users**: Authorization level visible in Enterprise Manager to all users with Report Function authorization

The **Filter** frame has the following options:

- **Standard Filters**: The **Schedule Dates**, **Schedules**, and **Departments** filters apply to the data shown when running reports. If a option is selected, the filter applies to the report

    :::note
    The standard filters are an integral part of the report file by design. Never change these filters without changes in the report template.
    :::

- **Special Filter**: Defines custom filters for reports. Most reports do not require a special filter. Use the following syntax:

    ``` {xml:space="preserve"}
    Title:{Table.Column}:SQL Select statement
    ```

  :::tip Example
  The Special Filter field for the Jobs Using a Calendar report contains the following text:

  Calendars:{CALDESC.CALID}:SELECT CALNAME,CALID FROM CALDESC WHERE SKDID = 0 AND CALNAME <\> 'Master Holiday' ORDER BY CALNAME.

  The selection box displayed after the Reports button is clicked will have a title of Calendars. The list box will contain a list of all user-defined calendars.
  :::

## Adding Reports

To add a report, complete the following steps:

1. Select on **Reports** under the **Information** topic. The **Reports** screen displays
2. Select the **Manage Reports** button on the **Reports** toolbar. The **Report Management** dialog displays
3. Select the **Add** button
4. Enter a *report name* in the **Title** text box
5. Enter the *BIRT Report Template file name* in the **Template** text box

6. Select the **Administrator** or **All Users** radio button
7. Select any preferred filter options and/or enter a *special filter*
8. Select **Save**, or select **Cancel** to discard changes and display the previously selected report

## Editing Reports

To edit a report, complete the following steps:

1. Select on **Reports** under the **Information** topic. The **Reports** screen displays
2. Select the **report name** from the **Report** list box
3. Select the **Manage Reports** button on the **Reports** toolbar. The **Report Management** dialog displays
4. Make the changes
5. Select **Save**, or select **Cancel** to discard changes and display the previously selected report

## Deleting Reports

To delete a report, complete the following steps:

1. Select on **Reports** under the **Information** topic. The **Reports** screen displays
2. Select the **report name** from the **Report** list box
3. Select the **Manage Reports** button on the **Reports** toolbar. The **Report Management** dialog displays
4. Select the **Remove** button
5. Select **Yes** to confirm the report deletion

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Report Locked | When selected, the report definition is locked so that only users in the *ocadm* role can manage, lock, or unlock the report. | — | must be located in the **OpConxps\\EnterpriseManager\\reports\\OpConXPS_Reports** direct |
| Report | Lists all BIRT reports currently defined in the database, matching the list in the **Reports** screens | — | must be located in the **OpConxps\\EnterpriseManager\\reports\\OpConXPS_Reports** direct |
| Title | The unique title of the selected report | — | must be located in the **OpConxps\\EnterpriseManager\\reports\\OpConXPS_Reports** direct |
| Template | The BIRT report template file name. | — | must be located in the **OpConxps\\EnterpriseManager\\reports\\OpConXPS_Reports** direct |
| Administrator | Authorization level visible only to *ocadm* or users with equivalent status | — | — |
| All Users | Authorization level visible in Enterprise Manager to all users with Report Function authorization | — | — |
| Standard Filters | The **Schedule Dates**, **Schedules**, and **Departments** filters apply to the data shown when running reports. | — | — |
| Special Filter | Defines custom filters for reports. | — | — |
## FAQs

**Q: What can you do with Report Management?**

Report Management allows you to opening report management, understanding report management options, adding reports.

**Q: Who has access to Report Management?**

Access to Report Management is controlled by the privileges assigned to your OpCon role. Contact your system administrator if you need access.

## Glossary

**BIRT (Business Intelligence and Reporting Tools)**: The open-source reporting engine used by OpCon to generate predefined and custom reports. Reports are run using the BIRTRptgen.exe utility.

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**OpConxps**: The standard installation directory name for OpCon program files, configuration files, and output data on Windows machines.

**Calendar**: A named collection of dates in OpCon used by schedules and frequencies to determine when automation runs or is excluded. Calendars can represent holidays, working days, or any custom date set.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
