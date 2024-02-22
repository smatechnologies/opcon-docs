# Accessing Daily Job Definition

As part of the **Operations** module, those with the appropriate
privileges can view the daily job definition as well as modify job
properties. To make this possible, **Daily Job Definition** has the
following two modes:

- **Read-only**: In this mode, you can review the defined properties
    for the selected job. Job properties cannot be edited while in this
    mode.
- **Admin**: In this mode, you can modify the properties, which
    includes reconfiguring platform-specific details, for the selected
    job.

## Required Privileges

In order to view the daily job definition, you must have at least all of the following privileges:

- **Schedule Privilege**: User must be at least in a role that has
    access to the job's parent schedule.
- **Departmental Function Privilege**: User must be at least in a role
    that has View Jobs in Daily Schedules and View Jobs in Schedule
    Operations privileges for the assigned job's department.
- **Access Code Privilege**: User must be at least in a role that has
    access to the assigned job access code.

In order to edit the daily job definition, you must be in the ocadm role
or have at least all of the following privileges:

- **Schedule Privilege**: User must be at least in a role that has
    access to the job's parent schedule.
- **Departmental Function Privilege**: User must be at least in a role
    that has View Jobs in Daily Schedules, View Jobs in Schedule
    Operations, Modify Jobs in Daily Schedules privileges for the
    assigned job's department.
- **Access Code Privilege**: User must be at least in a role that has
    access to the assigned job access code with **Allow job updates**
    flag set to true.

## Daily Job Definition Access

To access the daily job definition:

1. Click on the **Processes** button at the top-right of the
    **Operations Summary** page. The **Processes** page will display.
2. Ensure that both the **Date** and **Schedule** toggle switches are
    enabled so that you can make your date and schedule selection,
    respectively. Each switch will appear green when enabled.
3. Select the desired **date(s)** to display the associated
    schedule(s).
4. Select one or more **schedule(s)** in the list.
5. Select one **job** in the list. A record of your selection will
    display in the [status bar](SM-UI-Layout.md#Status) at the
    bottom of the page in the form of a breadcrumb trail.
6. Click on the job record (e.g., 1 job(s)) in the status bar to
    display the **Selection** panel.
7. Click the **Daily Job Definition** button ![Daily Job Definition     Button](../Resources/Images/SM/Daily-Job-Definition-Button.png "Daily Job Definition Button")
    at the top-left corner of the panel to access the **Daily Job
    Definition** page. By default, this page will be in **Read-only**
    mode. Refer to the next section to learn more about the properties
    on the **Daily Job Definition** page.
8. Click the **Cancel** button to return to the previous page.
9. Close the **Selection** panel when done.

:::note
Daily Job Definition can also be accessed while in PERT View. For more information, refer to [PERT View Daily Job Definition Access](Using-PERT-View.md#PERT10).
:::

## Daily Job Definition Properties

**Daily Job Definition** contains general information about the job as
well as panels that expose the defined properties when expanded. For
those with the appropriate privileges, a **Lock** button will also
appear at the top-right corner of the page that allows you to switch
between the two modes. The button appears gray and locked (![Daily Job Definition Read-only Button](../Resources/Images/SM/Daily-Job-Definition-Read-only-Button.png "Daily Job Definition Read-only Button"))
when in **Read-only** mode and appears green and unlocked (![Job Definition Admin Button](../Resources/Images/SM/Daily-Job-Definition-Admin-Button.png "Job Definition Admin Button"))
when in **Admin** mode. The page also has a [menu](#Daily3) for quickly
accessing the panels.

Daily Job Definition in Solution Manager

![Daily Job Definition in Solution Manager](../Resources/Images/SM/Daily-Job-Definition.png "Daily Job Definition in Solution Manager")

### General Info

For information about the **General Info** section, refer to [Viewing and Updating General Info](Viewing-and-Updating-General-Info.md).

### Daily Job Definition Panels

Each expandable panel that is displayed on the **Daily Job Definition**
page represents a job property category.

- In **Read-only** mode, a panel is displayed only when properties
    have been defined for the category. These properties can be viewed
    only and not changed while in this mode.
- In **Admin** mode, all available panels are displayed on the page
    and may contain properties that can be modified.

Click on any of the following quick links to learn more about each of
the panels available for the daily job definition:

- [Documentation](Viewing-and-Updating-Documentation.md)
- [Task Details](Viewing-and-Updating-Job-Task-Details.md)
- [Frequency](Viewing-and-Updating-Job-Frequencies.md)
- [Instance     Properties](Viewing-and-Updating-Instance-Properties.md)
- [Expression     Dependency](Viewing-and-Updating-Expression-Dependencies.md)
- [Resource     Dependency](Viewing-and-Updating-Resource-Dependencies.md)
- [Threshold     Dependency](Viewing-and-Updating-Threshold-Dependencies.md)
- [Resource Update](Viewing-and-Updating-Resource-Updates.md)
- [Threshold     Update](Viewing-and-Updating-Threshold-Updates.md)

### Daily Job Definition Menu

The menu in the left portion of the page allows you to access any of the
daily job definition panels quickly. The menu can be collapsed to show
icons and tool tips only. When a menu item is left clicked, the view
automatically scrolls to that particular panel on the page and the panel
is expanded to expose its contents. Right clicking a menu item will
toggle **Full Screen** mode.

![Daily Job Definition Menu](../Resources/Images/SM/Daily-Job-Definition-Menu.png "Daily Job Definition Menu")

## Viewing and Updating General Info

The section at the top of the **Daily Job Definition** page displays
general job details which include:

- Scheduled Date (read-only)
- Schedule Path (read-only)
- Schedule Name (read-only)
- Job Name (read-only)
- Department
- Access Code
- Tags

Some of the general job properties are read-only, as indicated above,
while others may be updated while in **Admin** mode. Refer to the next
section for instructions on updating these such properties.

## Updating General Information

In **Admin** mode, the department, access code, and tag properties can
be updated.

:::note
Only those with the appropriate permissions will have access to the **Lock** button and can update job properties. For details about privileges, refer to [Required Privileges](Accessing-Daily-Job-Definition.md#Required) in the **Accessing Daily Job Definition** topic.
:::

:::note
Changes made to the job properties in the **Daily Job Definition** will take place immediately. If the job has already run, the changes will take effect the next time the job runs.
:::

### Updating Departments

For conceptual information, refer to
[Departments](../../../objects/departments.md) in the
**Concepts** online help.

To perform this procedure:

1. Click on the **Processes** button at the top-right of the
    **Operations Summary** page. The **Processes** page will display.
2. Ensure that both the **Date** and **Schedule** toggle switches are
    enabled so that you can make your date and schedule selection,
    respectively. Each switch will appear green when enabled.
3. Select the desired **date(s)** to display the associated
    schedule(s).
4. Select one or more **schedule(s)** in the list.
5. Select one **job** in the list. A record of your selection will
    display in the [status bar](SM-UI-Layout.md#Status) at the
    bottom of the page in the form of a breadcrumb trail.
6. Click on the job record (e.g., 1 job(s)) in the status bar to
    display the **Selection** panel.
7. Click the **Daily Job Definition** button ![Daily Job Definition     Button](../Resources/Images/SM/Daily-Job-Definition-Button.png "Daily Job Definition Button")
    at the top-left corner of the panel to access the **Daily Job
    Definition** page. By default, this page will be in **Read-only**
    mode.
8. Click the **Lock** button ![Daily Job Definition Read-only     Button](../Resources/Images/SM/Daily-Job-Definition-Read-only-Button.png "Daily Job Definition Read-only Button")
    at the top-right corner to place the page in **Admin** mode. The
    button will switch to display a white lock unlocked on a green
    background ![Daily Job Definition Admin     Switch](../Resources/Images/SM/Daily-Job-Definition-Admin-Button.png "Daily Job Definition Admin Switch")
    when enabled.
9. Select another **department** from the **Department** combo box. If
    needed, click on the **Search** button ![Daily Job Definition Search     Button](../Resources/Images/SM/Daily-Job-Definition-Search-Button.png "Daily Job Definition Search Button")
    and enter search criteria into the field to filter your list then
    make your selection and click **OK** to return to the previous page.
10. Click the **Save** button.

### Updating Access Codes

For conceptual information, refer to [Access Codes](../../../objects/access-codes.md) in the
**Concepts** online help.

To perform this procedure:

1. Click on the **Processes** button at the top-right of the
    **Operations Summary** page. The **Processes** page will display.
2. Ensure that both the **Date** and **Schedule** toggle switches are
    enabled so that you can make your date and schedule selection,
    respectively. Each switch will appear with a green checkmark when
    enabled.
3. Select the desired **date(s)** to display the associated
    schedule(s).
4. Select one or more **schedule(s)** in the list.
5. Select one **job** in the list. A record of your selection will
    display in the [status bar](SM-UI-Layout.md#Status) at the
    bottom of the page in the form of a breadcrumb trail.
6. Click on the job record (e.g., 1 job(s)) in the status bar to
    display the **Selection** panel.
7. Click the **Daily Job Definition** button ![Daily Job Definition     Button](../Resources/Images/SM/Daily-Job-Definition-Button.png "Daily Job Definition Button")
    at the top-left corner of the panel to access the **Daily Job
    Definition** page. By default, this page will be in **Read-only**
    mode.
8. Click the **Lock** button ![Daily Job Definition Read-only     Button](../Resources/Images/SM/Daily-Job-Definition-Read-only-Button.png "Daily Job Definition Read-only Button")
    at the top-right corner to place the page in **Admin** mode. The
    button will switch to display a white lock unlocked on a green
    background ![Daily Job Definition Admin     Switch](../Resources/Images/SM/Daily-Job-Definition-Admin-Button.png "Daily Job Definition Admin Switch")
    when enabled.
9. Select another **access code** from the **Access Code** combo box.
    If needed, click on the **Search** button ![Daily Job Definition     Search Button](../Resources/Images/SM/Daily-Job-Definition-Search-Button.png "Daily Job Definition Search Button")
    and enter search criteria into the field to filter your list then
    make your selection and click **OK** to return to the previous page.
10. Click the **Save** button.

### Adding Tags

For conceptual information, refer to
[Tags](../../../job-components/tags.md) in the **Concepts**
online help.

To perform this procedure:

1. Click on the **Processes** button at the top-right of the
    **Operations Summary** page. The **Processes** page will display.
2. Ensure that both the **Date** and **Schedule** toggle switches are
    enabled so that you can make your date and schedule selection,
    respectively. Each switch will appear with a green checkmark when
    enabled.
3. Select the desired **date(s)** to display the associated
    schedule(s).
4. Select one or more **schedule(s)** in the list.
5. Select one **job** in the list. A record of your selection will
    display in the [status bar](SM-UI-Layout.md#Status) at the
    bottom of the page in the form of a breadcrumb trail.
6. Click on the job record (e.g., 1 job(s)) in the status bar to
    display the **Selection** panel.
7. Click the **Daily Job Definition** button ![Daily Job Definition     Button](../Resources/Images/SM/Daily-Job-Definition-Button.png "Daily Job Definition Button")
    at the top-left corner of the panel to access the **Daily Job
    Definition** page. By default, this page will be in **Read-only**
    mode.
8. Click the **Lock** button ![Daily Job Definition Read-only     Button](../Resources/Images/SM/Daily-Job-Definition-Read-only-Button.png "Daily Job Definition Read-only Button")
    at the top-right corner to place the page in **Admin** mode. The
    button will switch to display a white lock unlocked on a green
    background ![Daily Job Definition Admin     Switch](../Resources/Images/SM/Daily-Job-Definition-Admin-Button.png "Daily Job Definition Admin Switch")
    when enabled.
9. Enter the *tag name* in the **Tag** field and press **Enter**.
    Repeat this step to add more tags.
10. Click the **Save** button.

### Removing Tags

For conceptual information, refer to
[Tags](../../../job-components/tags.md) in the **Concepts**
online help.

To perform this procedure:

1. Click on the **Processes** button at the top-right of the
    **Operations Summary** page. The **Processes** page will display.
2. Ensure that both the **Date** and **Schedule** toggle switches are
    enabled so that you can make your date and schedule selection,
    respectively. Each switch will appear with a green checkmark when
    enabled.
3. Select the desired **date(s)** to display the associated
    schedule(s).
4. Select one or more **schedule(s)** in the list.
5. Select one **job** in the list. A record of your selection will
    display in the [status bar](SM-UI-Layout.md#Status) at the
    bottom of the page in the form of a breadcrumb trail.
6. Click on the job record (e.g., 1 job(s)) in the status bar to
    display the **Selection** panel.
7. Click the **Daily Job Definition** button ![Daily Job Definition     Button](../Resources/Images/SM/Daily-Job-Definition-Button.png "Daily Job Definition Button")
    at the top-left corner of the panel to access the **Daily Job
    Definition** page. By default, this page will be in **Read-only**
    mode.
8. Click the **Lock** button ![Daily Job Definition Read-only     Button](../Resources/Images/SM/Daily-Job-Definition-Read-only-Button.png "Daily Job Definition Read-only Button")
    at the top-right corner to place the page in **Admin** mode. The
    button will switch to display a white lock unlocked on a green
    background ![Daily Job Definition Admin     Switch](../Resources/Images/SM/Daily-Job-Definition-Admin-Button.png "Daily Job Definition Admin Switch")
    when enabled.
9. Click on the **x** next to the tag name to delete it.
10. Click the **Save** button.

## Viewing and Updating Documentation

The **Documentation** panel in **Daily Job Definition** displays the
documentation relating to the job and frequency of the job and may
include hyperlinks that are clickable in **Read-only** mode.

## Adding or Updating Documentation

In **Admin** mode, documentation properties can be updated. For
conceptual information, refer to
[Documentation](../../../job-components/documentation.md) in the
**Concepts** online help.

To perform this procedure:

1. Click on the **Processes** button at the top-right of the
    **Operations Summary** page. The **Processes** page will display.
2. Ensure that both the **Date** and **Schedule** toggle switches are
    enabled so that you can make your date and schedule selection,
    respectively. Each switch will appear green when enabled.
3. Select the desired **date(s)** to display the associated
    schedule(s).
4. Select one or more **schedule(s)** in the list.
5. Select one **job** in the list. A record of your selection will
    display in the [status bar](SM-UI-Layout.md#Status) at the
    bottom of the page in the form of a breadcrumb trail.
6. Click on the job record (e.g., 1 job(s)) in the status bar to
    display the **Selection** panel.
7. Click the **Daily Job Definition** button ![Daily Job Definition     Button](../Resources/Images/SM/Daily-Job-Definition-Button.png "Daily Job Definition Button")
    at the top-left corner of the panel to access the **Daily Job
    Definition** page. By default, this page will be in **Read-only**
    mode.
8. Click the **Lock** button ![Daily Job Definition Read-only     Button](../Resources/Images/SM/Daily-Job-Definition-Read-only-Button.png "Daily Job Definition Read-only Button")
    at the top-right corner to place the page in **Admin** mode. The
    button will switch to display a white lock unlocked on a green
    background ![Daily Job Definition Admin     Switch](../Resources/Images/SM/Daily-Job-Definition-Admin-Button.png "Daily Job Definition Admin Switch")
    when enabled.
9. Expand the **Documentation** panel to expose its content.
10. Enter the changes to the **Job** and/or **Frequency** frames.
    Hyperlinks may be included in the documentation information.
11. Click the **Save** button.

## Viewing and Updating Job Task Details

The **Task Details** panel in **Daily Job Definition** displays the platform-specific properties.

Supported platforms include:

- [Null Job](Viewing-Null-Job-Details.md)
- [IBMi](Updating-IBMi-Job-Details)
- [SAP BW](Updating-SAP-BW-Job-Details)
- [Container](Viewing-Container-Job-Details.md)
- [Windows](Updating-Windows-Job-Details.md)
- [UNIX](Updating-UNIX-Job-Details.md)
- [File Transfer](Updating-File-Transfer-Job-Details.md)
- [MCP](Updating-mcp-Job-Details.md)

## Viewing and Updating Job Frequencies

The **Frequency** panel in **Daily Job Definition** displays all of the frequency information for a job.

In **Admin** mode, job frequencies can be updated. For conceptual
information, refer to [Job Frequency](../../../job-components/frequency.md) in the
**Concepts** online help.

To perform this procedure:

Expand the **Frequency** panel to expose its content.

![Daily Job Definition Frequency Panel](../Resources/Images/SM/Daily-Job-Definition-Frequency-Panel.png "Daily Job Definition Frequency Panel")

The **Parent Schedule Start Time** frame displays the start time
information for the schedule containing the selected job. This frame has
the following read-only field:

- **Server Time**: The time on the SAM server.

**In the Estimated Job Start Time frame:**

The **Estimated Job Start Time** frame displays the information about
the estimated start times that OpCon will use. This frame has the
following read-only fields:

- **Local**: The time on the local client (web client).
- **Server**: The time on the SAM server.
- **Agent**: The time on the start Agent machine.

**In the Offset frame:**

The **Offset** frame is used to define and calculate start offsets for
the job.

Specify which of the following formats to use to calculate the Start
Offset:

- **Absolute**: This option indicates that the job's Start Offset
    will be calculated from the assigned start time of the schedule.
- **Relative**: This option indicates that the job's Start Offset
    will be calculated from the time the schedule was released for
    execution.

Enter the positive number of hours and minutes to offset the start time
of the job from the start time of the schedule (Start Offset).

Enter the positive number of hours and minutes to offset the
Late-To-Start Offset from the job Start Offset (taking into
consideration the Absolute or Relative setting).

:::note
If the time arrives and the job has not yet started, it will be set to a status of Late to Start. The time at which the job will be set to a status of Late to Start is calculated by adding the **Schedule Start Time + Job Start Offset + Late to Start**. The default value of 00:00 disables this feature.
:::

Enter the positive number of hours and minutes to offset the
Late-To-Finish Offset from the job Start Offset (taking into
consideration the Absolute or Relative setting).

:::note
If the time arrives and the job is still running, it will be set to a status of Running; Late to Finish. The time at which the job will be set to a status of Late to Finish is calculated by adding the **Schedule Start Time + Job Start Offset + Late to Finish**. The default value of 00:00 disables this feature.
:::

**In the Latest Offset frame:**

The **Latest Offset** frame is used to define and calculate the latest
start offset for the job.

Specify which of the following settings to use to calculate the Latest
Start Offset:

- **Absolute**: This option indicates that the job's Latest Start
    Offset will be calculated from the assigned start time of the
    schedule.
- **Relative**: This option indicates that the job's Latest Start
    Offset will be calculated from the time the schedule was released
    for execution.

Enter the positive number of hours and minutes to offset the latest
start time of the job from the start time of the schedule (Latest Start
Offset).

:::note
If the latest start time is passed before the job qualifies for execution, the job is set to a Missed Latest Start Time status and will not automatically execute. The default value of 00:00 disables the feature.
:::

**In the Job Start Time Estimation Method frame:**

The **Job Start Time Estimation Method** frame is used to define the
method for the SMA Start Time Calculator to use when predicting the
estimated start time of the job.

Specify the estimated runtime in minutes for the job. Either manually
input the estimated run time or utilize the input field selectors to
make your selections.

Select one of the following sources to use for predicting the estimated
start time:

- **Calculated**: (Default) This option uses the job's start offset
    value and dependency chain to calculate the estimated start time.
    When a job has no external dependencies, this is the best option.
- **History**: This option uses the job's average start time by
    frequency from history as the estimated start time. The History
    option is useful when a job depends on external events or user
    interaction to start the job.
- **User Defined**: This option uses a hard-coded Predicted Start Time
    in days, hours, and minutes offset from the schedule's start time.
    The User Defined option is useful when the History option does not
    prove to be an accurate enough estimated start time.

**In the Job Execution frame:**

The **Job Execution** frame is used to set the priority and maximum run
time for the job.

Specify a number for the job's priority, zero (0) being the lowest.
Either manually input the priority number or utilize the input field
selectors to make your selections.

:::note
If the SAM can submit more jobs at the same time to a machine than the machine allows, the SAM uses the priority values to submit the most important jobs first.
:::

Specify the maximum run time in minutes for the job. Either manually
input the maximum run time or utilize the input field selectors to make
your selections.

**In the When Job Fails frame:**

The **When Job Fails** frame is used to specify whether or not a job
should be automatically restarted after a job failure.

Specify whether or not there should be attempts made to restart the job
if it fails by utilizing the **Retry** toggle switch. When enabled, the
switch will appear green.

Specify the interval between restart attempts in minutes. Either
manually input the number or utilize the input field selectors to make
your selections.

Specify the maximum number of restart attempts that should be made.
Either manually input the number or utilize the input field selectors to
make your selections.

:::note
The Retry feature is useful for situations where a job may fail because of timing (e.g., a database is currently unavailable, or a file has not yet arrived). OpCon will process the events, threshold/resource updates, and subsequent job dependencies only upon job failure after the maximum retry.
:::

**In the When Job Finishes Ok frame:**

The **When Job Finishes Ok** frame is used to specify whether or not a
job is automatically rescheduled after a successful run.

Select one of the following available options to determine if a job
should be rescheduled after it runs successfully:

**None**: This option indicates that a job reschedule will not take
place after a successful run.

**Recurring Instances**: This option allows you to reschedule a
successful job to run at fixed times throughout the day. Available
options are:

- **Add**: Use this button to add new restart times in days, hours,
    and minutes. Specified times appear in the Recurring Instance
    Time(s) list box in chronological order.
- **Delete**: Use this button to delete existing restart times.
- **Edit**: Use this button to update existing restart times.
- **Action on Overlap of Job Recurrence**: This option allows you to
    specify what happens if a previous job run time overlaps the next
    scheduled start time. Available options are:
  - **Skip**: Select this option to skip the run for \[that\]         scheduled time after the previous run finishes successfully.
  - **Start On Completion**: Select this option to start the next
        scheduled time as soon as the previous run finishes
        successfully.

**Restart Offset**: This option allows you to reschedule a successful
job to run at regular intervals throughout the day. Available options
are:

- **Minutes from Start to Start**: This option is used to specify the
    run interval. If selected from the **Run Interval** drop-down, use
    the **value** field to specify the number of minutes from the start
    time of one iteration of the job to the start time for the next
    iteration of the job.
- **Minutes from End to Start**: This option is used to specify the
    run interval. If selected from the **Run Interval** drop-down, use
    the **value** field to specify the number of minutes from the end of
    one iteration of the job to the start time for the next iteration of
    the job.
- **Latest Run Time (Offset)**: This option is used to specify the
    latest possible start time for the recurring job based on the
    schedule's start time. The value entered in the field is an offset
    that will be added to the schedule's defined Schedule Date and
    scheduled Start Time in the Daily tables.
- **Number of Runs**: This option is used to specify the total number
    of times for the recurring job to run.

:::note
Click the **Undo** button if you wish to undo your changes for any reason.
:::

Click the **Save** button.

## Viewing and Updating Instance Properties

The **Instance Properties** panel in **Daily Job Definition** displays
the defined properties for each instance of the job.

In **Admin** mode, instance properties can be updated. For conceptual
information, refer to [Instance Definition](../../../job-components/instances.md) in
the **Concepts** online help.

To perform this procedure:

Expand the **Instance Properties** panel to expose its content.

![Daily Job Definition Instance Properties Panel](../Resources/Images/SM/Daily-Job-Definition-Instance-Props-Panel.png "Daily Job Definition Instance Properties Panel")

Do any of the following to make updates:

a.  Edit or delete any existing instance properties if necessary.
b.  Click the green **Add** button (**+**) to define a new instance
    property by entering the instance property name and value in the
    appropriate fields.
c.  Click the **Manual Edit** button to place the panel in manual edit
    mode where you can update existing properties and define new
    instance properties using the following format:
    **PropertyName=PropertyValue**. Be sure to separate each definition
    with a semicolon (**;**) when in this mode.

:::note
Click the **Undo** button if you wish to undo your changes for any reason.
:::

Click the **Save** button.

## Viewing and Updating Expression Dependencies

The **Expression Dependency** panel in **Daily Job Definition** displays any defined expression dependencies related to the selected job.

In **Admin** mode, expression dependencies can be updated. For
conceptual information, refer to [Property Expressions API Syntax](../../../reference/property-expressions-syntax.md)
 in the **Concepts** online help. For examples and use cases,
refer to the [Use Cases](../../../reference/property-expressions-syntax.md#Use)
 section.

To perform this procedure:

Expand the **Expression Dependency** panel to expose its content.

![Daily Job Definition Expression Dependency Panel](../Resources/Images/SM/Daily-Job-Definition-Expression-Dependency-Panel.png "Daily Job Definition Expression Dependency Panel")

Do any of the following to make updates:

a.  Edit or delete any existing property expression if necessary.
b.  Click the green **Add** button (**+**) to define a new property
    expression by entering the expression syntax in the designated
    field. Each property expression field permits up to 4000 characters.
    You are allowed to have up to two (2) properties expressions for a
    job.

:::note
Click the **Undo** button if you wish to undo your changes for any reason.
:::

Click the **Save** button.

## Viewing and Updating Resource Dependencies

The **Resource Dependency** panel in **Daily Job Definition** displays
any defined resource dependencies related to the selected job.

In **Admin** mode, resource dependencies can be updated. For conceptual
information, refer to [Threshold/Resource Dependencies](../../../job-components/threshold-resource-dependencies.md)
 in the **Concepts** online help.

To perform this procedure:

Expand the **Resource Dependency** panel to expose its content.

![Daily Job Definition Resource Dependency Panel](../Resources/Images/SM/Daily-Job-Definition-Resource-Dependency-Panel.png "Daily Job Definition Resource Dependency Panel")

Do any of the following to make updates:

Edit or delete any existing resource dependencies if necessary.

Click the green **Add** button (**+**) to define a new resource
dependency. When the **Resource Dependency** dialog displays:

- Select the name of the resource from drop-down list.
- Select the **Requires All** checkbox to specify that the job must
    consume all resources when it runs or select the number of resources
    (Value) that the job requires.
- Click **Save** to save your selections and close the dialog.

## Indicators

The defined resource dependency will appear in the **Resource
Dependency** panel with visual indicators, similar to the graphic, that
indicate whether or not the dependency is in good standings, if what is
required for the job is available to that job.

![Resource Dependency Indicator](../Resources/Images/SM/Resource-Green-Indicator.png "Resource Depedency Indicator")

- Appears green if the resource defined is correct. For     example, when the current resource value is \> 1 and the defined
    value is 2.

- Appears red if the resource defined is not correct. For     example, when the current resource value is = 1 and the defined
    value is 2.

- Available resources are displayed to the right as *Available
    (resource available/resource total)*.

:::note
The SAM will check to make sure the number of available resources is greater than the number required before the dependency is met.
:::

:::note
Click the **Undo** button if you wish to undo your changes for any reason.
:::

Click the **Save** button.

## Viewing and Updating Threshold Dependencies

The **Threshold Dependency** panel in **Daily Job Definition** displays
any defined threshold dependencies related to the selected job.

In **Admin** mode, threshold dependencies can be updated. For conceptual
information, refer to [Threshold/Resource Dependencies](../../../job-components/threshold-resource-dependencies.md)
 in the **Concepts** online help.

To perform this procedure:

Expand the **Threshold Dependency** panel to expose its content.

![Daily Job Definition Threshold Dependency Panel](../Resources/Images/SM/Daily-Job-Definition-Threshold-Dependency-Panel.png "Daily Job Definition Threshold Dependency Panel")

Do any of the following to make updates:

Edit or delete any existing threshold dependencies if necessary.

Click the green **Add** button (**+**) to define a new threshold
dependency. When the **Threshold Dependency** dialog displays:

- Select the name of the threshold from drop-down list.
- Select the operator that the SAM should use when the SAM performs
    the dependency check for the job to compare the current threshold
    value to the dependent value. Valid operators include: = (equal), \>
    (greater than), < (less than), ≥ (greater than or equal to), ≤
    (less than or equal to), ≠ (not equal).
- Select the dependent value to which the SAM applies the operator for
    comparison with the current threshold value.
- Click **Save** to save your selections and close the dialog.

## Indicators

The defined threshold dependency will appear in the **Threshold
Dependency** panel with visual indicators, similar to the graphic, that
indicate whether or not the dependency is in good standings, if what is
required for the job is available to that job.

![Threshold Dependency Indicator](../Resources/Images/SM/Threshold-Red-Indicator.png "Threshold Depedency Indicator")

- Appears green if the threshold defined is correct. For     example, when the current threshold value is \> 1 and the defined
    value is 2.

- Appears red if the threshold defined is not correct. For     example, when the current threshold value is = 1 and the defined
    value is 2.

- The threshold value will appear on the right.

:::note
Click the **Undo** button if you wish to undo your changes for any reason.
:::

Click the **Save** button.

## Adding or Updating Resource Updates

In **Admin** mode, resource updates can be updated. For conceptual
information, refer to [Threshold/Resource Updates](../../../job-components/threshold-resource-updates.md)
in the **Concepts** online help.

To perform this procedure:

Expand the **Resource Update** panel to expose its content.

Do any of the following to make updates:

Edit or delete any existing resource updates if necessary.

Click the green **Add** button (**+**) to define a new resource update.
When the **Resource Update** dialog displays:

- Select the job status that triggers the update.
- Select the name of the resource from drop-down list.
- Select the value to specify the number for maximum resources.
- Click **Save** to save your selections and close the dialog.

:::note
Click the **Undo** button if you wish to undo your changes for any reason.
:::

Click the **Save** button.

## Adding or Updating Threshold Updates

In **Admin** mode, threshold updates can be updated. For conceptual
information, refer to [Threshold/Resource Updates](../../../job-components/threshold-resource-updates.md)
in the **Concepts** online help.

To perform this procedure:

1. Expand the **Threshold Update** panel to expose its content.

2. Do any of the following to make updates:
  - Edit or delete any existing threshold updates if necessary.
  - Click the green **Add** button (**+**) to define a new threshold update. When the **Threshold Update** dialog displays:
    - Select the job status that triggers the update.
    - Select the name of the threshold from drop-down list.
    - Select the value to which the threshold should be updated to..
    - Click **Save** to save your selections and close the dialog.
  :::note
  Click the **Undo** button if you wish to undo your changes for any reason.
  :::
3. Click the **Save** button.
