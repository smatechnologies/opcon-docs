# Using Report Management

Report Management enables administrators to view the attributes of a report in the database and add, delete, and edit report
specifications. Reports for OpCon were
created using BIRT Reports, and can be viewed through the Enterprise
Manager. You can create customized reports with the BIRT report writer
tools and import them into OpCon using the
Report Management utility.

## Opening Report Management

Opening the utility requires only a few click once inside the Enterprise
Manager.

**To open the utility:**

1. Double-click on **Reports** under the **Information** topic. The
    **Reports** screen displays.
2. Click the **Manage Reports** button on the **Reports** toolbar. The
    **Report Management** dialog displays.

## Understanding Report Management Options

The Report Manage utility has two frames: General and Filter.

The **General** frame has the following options:

- **Report Locked**: When this checkbox is selected, the report
    definition is locked so that only users in the *ocadm* role can
    manage and lock or unlock a the report. Users with privileges to
    report management will be able to refer to locked reports, manage
    unlocked report definitions, and add new report definitions, but all
    fields will be disabled.
- **Report**: This list box contains all of the BIRT reports currently
    defined in the database. This is the same list displayed in the
    **Reports** screens.
- **Title**: This is the unique title of the selected report.
- **Template**: This is the BIRT report template containing the report
    information. No path should be included in the file name because all
    reports must be located in the
    **OpConxps\\EnterpriseManager\\reports\\OpConXPS_Reports**
    directory. The **Open** button next to the template can be used to
    browse to a file name.
- **Administrator**: A level of user authorization for the reports
    that is visible only by *ocadm* or users with equivalent status.
- **All Users**: A level of user authorization for the reports that is
    visible in Enterprise Manager by all users who have Report Function
    authorization.

The **Filter** frame has the following options:

- **Standard Filters**: The **Schedule Dates**, **Schedules**, and
    **Departments** filters directly applies to what you will refer to
    when running the reports.
  - If a checkbox is selected, the filter applies to the report.

    :::note
    The standard filters are an integral part of the report file by design. Never change these filters without changes in the report template.
    :::

- **Special Filter**: This field is used to define custom filters for
    reports. Most reports do not require a special filter. Use the
    following syntax when defining the special filter:

    ``` {xml:space="preserve"}
    Title:{Table.Column}:SQL Select statement
    ```

  :::tip Example
  The following example shows the text for the Special Filter field:

  The Special Filter field for the Jobs Using a Calendar report contains the following text:

  Calendars:{CALDESC.CALID}:SELECT CALNAME,CALID FROM CALDESC WHERE SKDID = 0 AND CALNAME <\> 'Master Holiday' ORDER BY CALNAME.

  The selection box displayed after the Reports button is clicked will have a title of Calendars. The list box will contain a list of all user-defined calendars.
  :::

## Adding Reports

To add a report:

1. Double-click on **Reports** under the **Information** topic. The
    **Reports** screen displays.
2. Click the **Manage Reports** button on the **Reports** toolbar. The
    **Report Management** dialog displays.
3. Click the **Add** button.
4. Enter a *report name* in the **Title** text box.
5. Enter the *BIRT Report Template file name* in the **Template** text
    box.
6. Select the **Administrator** or **All Users** the radio button.
7. Select any preferred filter checkboxes and/or enter a *special
    filter*.
8. Click the **Save** button or click the **Cancel** button to discard
    changes in the report specification and display the previously
    selected report.

## Editing Reports

To edit a report:

1. Double-click on **Reports** under the **Information** topic. The
    **Reports** screen displays.
2. Select the **report name** from the **Report** list box.
3. Click the **Manage Reports** button on the **Reports** toolbar. The
    **Report Management** dialog displays.
4. Make the changes.
5. Click the **Save** button or click the **Cancel** button to discard
    changes in the report specification and display the previously
    selected report.

## Deleting Reports

To delete a report:

1. Double-click on **Reports** under the **Information** topic. The
    **Reports** screen displays.
2. Select the **report name** from the **Report** list box.
3. Click the **Manage Reports** button on the **Reports** toolbar. The
    **Report Management** dialog displays.
4. Click the **Remove** button.
5. Click the **Yes** button to confirm the report deletion.
