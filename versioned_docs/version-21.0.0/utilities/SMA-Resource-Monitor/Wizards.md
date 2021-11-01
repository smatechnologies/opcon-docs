# SMA Resource Monitor Wizards

The SMA Resource Monitor User Interface provides Wizards within the
**Add** and **Edit** functions for all monitor types and Action Groups.
There is a step pane on the left side of the screen that contains the
names of each step in the wizard.

## Start an Add Wizard

1. Click on the specific tab - **File Monitors**, **Counter Monitors**,
    **Service Monitors**, **Process Monitors**, or **Action Groups** -
    for the monitor type to add.
2. Click **Add**.

## Start an Edit Wizard

1. Click on the specific tab - **File Monitors**, **Counter Monitors**,
    **Service Monitors**, **Process Monitors**, or **Action Groups** -
    for the type of item to edit.
2. Click on the gray box to the left of the row for the specific
    monitor type or Action Group item that you want to edit and click
    **Edit**.

When the **Add** or **Edit** menu is selected from the SMA Resource
Monitor screen, a series of Wizard screens will serve as a guide for the
steps to add and/or edit parameters and actions for a new monitor. The
steps that are not being used are **Blue**. The step that is currently
being used is **Red**.

## Wizard Navigation

The Wizard screens contain the following navigation buttons:

- **Back**: Go back one step in the wizard (does not appear on the
    first step of the wizard since there are no previous steps).
- **Next**: Go to the next step in the wizard (does not appear on the
    Finalize step since there are no later steps).
- **Cancel**: A confirm cancellation message will display to decide
    (Yes or No) to close the Wizard without saving changes. If **Yes**
    is clicked, the wizard will close without saving changes. If **No**
    is clicked, the Wizard will return to the same page.
- **Finish**: Displays only on the Finalize page in place of the
    **Next** button. Selecting the **Finish** button will create the
    monitor or action group and close the wizard.

## Monitor Wizard Screens

The information in this section describes the wizard screen details for
all monitor types.

### First Screen: Enter Monitor Name

- **Monitor Name** (Required): Defines the name of the Monitor as it
    will appear on the main screen of the SMA Resource Monitor (maximum
    characters: 60). The following values are invalid for the monitor
    name: \\ (backslash), / (forward slash), : (colon), \* (asterisk), ?
    (question mark), " (quotes), < (less than), \> (greater than), |
    (pipe)
- **Documentation**: Provides a place to document monitor information.
- **Network Share**: For **File Monitors**, determines if the SMA
    Resource Monitor will poll the directory to detect the file. If
    checkbox is unselected, SMA Resource Monitor will use Windows alerts
    to optimize performance. If checkbox is selected, SMA Resource
    Monitor will poll the directory. This option should be enabled to
    monitor files on mapped drives.
  - **Poll Interval**: Defines the seconds between polling attempts
        for the Network Share setting.
    - Minimum Value: 1
    - Maximum Value: 86400
    - When setting this value, determine the amount of time within
            which the file should be acted upon.
    - When one SMA Resource Monitor is required to monitor high
            volumes of Network share files, it is important to stagger
            this value and set the highest values tolerated for the
            environment.
    - Because the SMA Resource Monitor creates 1 thread for every
            file it watches, the more often checking is performed, the
            more resources will be required of the machine the SMA
            Resource Monitor is running on.
- **Process Offline Changes**: Determines if the SMA Resource Monitor
    will process file events (e.g., creation, deletion, or modification
    of files) when the service is down.

### Second Screen: Monitor Parameters

Depending on the type of monitor being added or edited, the Monitor
Parameters step contains different details.

- [Auto-Disable and Auto Re-Enable Behavior](#Auto-Dis)
- [File Monitor Parameters](#File)
- [Counter Monitor Parameters](#Counter)
- [Service Monitor Parameters](#Service)
- [Process Monitor Parameters](#Process)

#### Auto-Disable and Auto Re-Enable Behavior

When SMA Resource Monitor automatically deactivates a Counter, Service,
or Process Monitor, it unselects the "Active" checkbox for that
monitor on the respective summary tab of the main SMA Resource Monitor
screen. To automatically re-enable the monitor, configure one or more of
the Auto Re-Enable Trigger settings.

If auto re-enable is configured, when SMA Resource Monitor automatically
deactivates a monitor, it disables the trigger, but keeps monitoring for
the re-enabling of the trigger and the "Active" box for the monitor in
the respective summary tab continues to show selected. To manually
enable the trigger again, unselect then select the "Active" checkbox
on the respective summary tab of the main SMA Resource Monitor screen.

#### File Monitor Parameters

- **File Name** (Required): Defines the full path and file name to be
    monitored. Wild cards are supported to indicate all files in a path
    or all files of an extension type, etc. UNC paths are also
    supported. The following values are invalid for the file name: \\
    (backslash), / (forward slash),
    : (colon), \* (asterisk), ? (question mark), " (quotes), < (less
    than), \> (greater than), | (pipe).
- **File State**: Defines the File State values to monitor:
  - **Create**: File Creation (default)
  - **Delete**: File Deletion
  - **SizeChange**: Change in file size (growth/shrink) based on
        File Size settings.
  - **AbsoluteSize**: Recognize when the size is exactly the size
        defined in the File Size field and then take appropriate
        actions.
  - **Modify**: File change (creation of new file, modify file size,
        change in timestamp).
  - **EOFMarker**: Check for a user-defined EOF marker to ensure the
        file is complete (allow wildcards in the EOF string)
  - **ScanString**: Check for a user-defined string in the file.
        (This does not have to be EOF marker.)
  - **InUse**: Check if the file is in use.
- **TrackScanString**: For the ScanString file state, indicates if the
    SMA Resource Monitor will remember the last ScanString location in a
    file for which it had previously triggered the rule. If marked, the
    SMA Resource Monitor will not re-trigger the rule for the same
    location in the file when it detects the file is modified again. The
    trigger will only fire again if new matches for the ScanString
    setting appear in the modified file. If the checkbox is clear, the
    rule will trigger for previously detected ScanString entries every
    time the file is modified.
- **Search String**: Defines the string to search for in the file when
    the file state is set to EOFMARKER or SCANSTRING.
  - Minimum Characters: 1
  - Maximum Characters: 512
- **File Size** (Optional): Defines the File State setting, and
    specifies the minimum file size that the Resource Monitor is looking
    for. If *AbsoluteSize* is the file state, SMA Resource Monitor will
    check if the file is *exactly* the size specified. For any     other file state, SMA Resource Monitor will check if the file is at least the size specified.
- **Create TimeStamp**: Defines the oldest create date for a file. If
    the create date/time stamp on the file is older than this date/time,
    SMAResourceMonitor will not process the file. The default value for
    the field is the minimum possible date so files with older time
    stamps are detected. The specific value is **1/1/1753 00:00**.
- **Wait Verify**: Defines the number of seconds the monitor will wait
    and verify that the required file state still exists, and that the
    file is still not in use. This setting is disabled for all file
    states, except *Create* and *Modify*.
  - Minimum Value: 1
  - Maximum Value: 1800 (30 minutes)
  - If the file is in use after the wait time, the
        SMAResourceMonitor will wait again for the Wait Verify time
        period and check again to see if the file is no longer in use.
        This process will repeat until the file is no longer in use -
        then the action group(s) will be triggered.

    :::tip
    Make sure the file is done arriving before it is created.

    For large file transfers, it takes time for the complete file to arrive. Set the 'Wait Verify' value high enough to make sure that the file should not have changed size in that time. As soon as the size matches the same previous size and the file is no longer in use, the action group(s) will be triggered.
    ::::
- **From Time**: Defines the start time for monitoring resources. This
    option provides a way to monitor resources only during a specified
    time period of the day.
- **To Time**: Defines the end time for monitoring resources. This
    option provides a way to monitor resources only during a specified
    time period of the day.
- **Max Concurrent Files**: Defines the maximum number of files to
    process concurrently if monitoring for a variable file name. This
    helps to throttle the processing to avoid overworking the SMA
    Resource Monitor Service and the Operating System.
  - Minimum Value: 1
  - Maximum Value: 100

:::note
A high value in this setting can cause the performance of SMA Resource Monitor to decrease.
:::

- **Max Concurrent Files Processing Delay**: Defines the amount of
    processing delay that is involved with the maximum number of files
    to process concurrently if monitoring for a variable file name.

#### Counter Monitor Parameters

**Performance Object**: Defines the name of an object as found in the
Windows Performance Monitor.

**Counter Name**: Defines the counter name for the monitor.

**Instance**: Defines the name of the instance for the chosen
performance counter.

**From Time**: Defines the start time for monitoring resources. This
option provides a way to monitor resources only during a specified time
period of the day.

**To Time**: Defines the end time for monitoring resources. This option
provides a way to monitor resources only during a specified time period
of the day.

**Triggers**: This frame contains the fields required to set up the
triggers for the counter monitor's Action Groups.

**Above Max Value**: Defines the maximum cutoff value for the counter.
If the value goes above this cutoff, the configured action group(s) are
triggered.

**Below Min Value**: Defines the minimum cutoff value for the counter.
If the value drops below this cutoff, the configured action group(s) are
triggered.

**Average**: This frame contains the fields required to define an
Average trigger.

:::note
The average value is calculated by taking 1 sample every second and averaging last 'n' samples. Where 'n' is defined above in Samples.
:::

- **Above/Below**: Select **Above** or **Below** from this list box to
    define if the trigger should fire when the counter value is above
    the average value or when the counter value is below the average
    value.
- **Value**: Average cutoff value for this counter. If the calculated
    average value goes above this cutoff, the configured action groups
    are triggered.
  - Minimum Value: 0 (If 0, this feature is disabled).
  - Maximum Value: 99
- **Samples**: Number of Samples to be used for calculating the
    average value. A sample is taken every second by default.
  - Minimum Value: 1
  - Maximum Value: 100
- **Frequency**: Defines in number of seconds how often samples are
    taken for the counter monitor.
  - Minimum Value: 1
  - Maximum Value: 300

**Disable Trigger After**: Select one or more of the following
checkboxes to have the Counter Monitor automatically deactivate when the
notification(s) are triggered.

- **Above Max Value**: Will cause the trigger to disable when the
    notification is sent for the counter being Above Max Value.
- **Below Min Value**: Will cause the trigger to disable when the
    notification is sent for the counter being Below Min Value.
- **Above/Below Avg Value**: Will cause the trigger to disable when
    the notification is sent for the counter being Above or Below the
    Avg Value (depending on which setting is applied to the Average
    Trigger).

**Re-Enable Trigger After**: Mark one or more of the following
checkboxes to have the Counter Monitor automatically re-enable when the
condition is met.

- **Above Max Value**: Will cause the trigger to re-enable when the
    counter goes Above Max Value.
- **Below Min Value**: Will cause the trigger to re-enable when the
    counter goes Below Min Value.
- **Above/Below Avg Value**: Will cause the trigger to re-enable when
    the counter goes Above or Below the Avg Value (depending on which
    setting is applied to the Average Trigger).
- **X Minutes**: Defines the number of minutes to wait before auto
    re-enabling the monitor.
  - Minimum Value: 0 (Indicating the trigger will not re-enable
        based on time)
  - Maximum Value: 300

#### Service Monitor Parameters

- **Service Name**: The display name of a Windows Service as found in
    Windows Services.
- **Service State**: Contains the service state to monitor for.
  - **Started**: Trigger notification when service is found in a
        Started state.
  - **Not Started**: Trigger notification when service is found
        anything but a Started state.
  - **Stopped**: Trigger notification when the service is found in a
        Stopped state.
- **From Time**: This is the start time for monitoring resources. This
    option provides users a way to monitor resources only during a
    specified time period of the day.
- **To Time**: This is the end time for monitoring resources. This
    option provides users a way to monitor resources only during a
    specified time period of the day.
- **Frequency**: In Seconds, defines how often the SMA Resource
    Monitor will check the service for the defined state.
  - Minimum Value: 5
  - Maximum Value: 300
- **Disable when Triggered**: Deactivates the monitor after the action
    group is triggered for the defined state. The checkbox is unselected
    by default (indicating that the monitor should not be disabled when
    the action group is triggered).
- **Auto Re-Enable**:Auto Re-Enables the monitor when the service goes
    into the selected state. If left blank, the monitor will not
    re-enable based on a status.
- **Auto Re-Enable (after X Minutes)**: Defines the number of minutes
    to wait before auto re-enabling the monitor.
  - Minimum Value: 0 (Indicating the trigger will not re-enable
        based on time)
  - Maximum Value: 3600

#### Process Monitor Parameters

- **Process Name** (Required): The name of a Windows process that
    could be found in the Windows Task manager.
- **Process State**: Contains the process state to monitor for.
  - **Running**: Trigger notification when process is found in a
        Running state.
  - **Not Running**: Trigger notification when the process is not found in a running state.
  - **From Time**: This is the start time for monitoring resources. This
    option provides users a way to monitor resources only during a
    specified time period of the day.
- **To Time**: This is the end time for monitoring resources. This
    option provides users a way to monitor resources only during a
    specified time period of the day.
- **Frequency**: In Seconds, defines how often the SMA Resource
    Monitor will check the process for the defined state.
  - Minimum Value: 5
  - Maximum Value: 300
- **Disable when Triggered**: Deactivates the monitor after the action
    group is triggered for the defined state. The checkbox is unselected
    by default (indicating that the monitor should not be disabled when
    the action group is triggered).
- **Auto Re-Enable**: Auto Re-Enables the monitor when the process is
    found in the selected state. If left blank, the monitor will not
    re-enable based on a status. If left blank, the monitor will not
    re-enable based on a status.
- **Auto Re-Enable (after X Minutes)**: Defines the number of minutes
    to wait before auto re-enabling the monitor.
  - Minimum Value: 0 (Indicating the trigger will not re-enable
        based on time)
  - Maximum Value: 3600

### Third Screen: Define Actions

- **Execution Condition**: Appears only for Counter monitors, and
    contains the execution condition that will trigger the actions. The
    conditions include:
  - **Above/Below Average**: The Action Group is triggered when the
        value of the counter exceeds or falls below the average value
        (depending on the setting defined on the previous screen of the
        wizard).
  - **Above Max Value**: The Action Group is triggered when the
        value of the counter exceeds the max value set.
  - **Below Min Value**: The Action group is triggered when the
        value of the counter falls below the min value set.
- **Action Group Name**: Defines the Action Group names. The maximum
    characters for the Action Group Name is 60.
  - **Create**: This button launches the Action Group Wizard to add
        an *Action Group Name*. When the Action wizard is complete, the
        new group name is added to the **Action Group Name** drop-down
        list in the Monitor Wizard.
- **Actions Table**:
  - **Active**: Indicates if each action is active or inactive. This
        setting is only updateable from the Action Groups tab since the
        status is global for all monitors using the group.
  - **Action Details**: Contains the external event string to
        process. This string is only updateable from the Action Groups
        tab since the actions in a group global for all monitors using
        the group.
- **Associated Action Groups**: The Associated Action Groups list
    contains the action groups that are associated with the Monitor.
  - Click the **Add** button to add the selected *Action Group Name*
        to the *Associated Action Groups*.
  - Click the **Remove** button to remove a select *Action Group
        Name* from the *Associated Action Groups* list.

### Fourth Screen: Finalize

This **Finalize** screen is a summary, read-only page, and it will
display the information that was set up by the Add or Edit Wizard. Click
the **Back** button to change a setting, **Cancel** to get out of the
wizard or **Finish** to store the monitor information. Each monitor is
stored in a Rule file (e.g., MonitorName.Rule) in the location
configured in the SMAResourceMonitor.ini file.

## Action Group Wizard Screens

The information in this section describes the wizard screen details for
Action Groups.

### First Screen: Enter Action Group Name

- **Action Group Name** (Required): Defines the Action Group Name. The
    maximum characters for the Action Group Name is 60. The following
    values are invalid for the action group name: \\ (backslash), /
    (forward slash), : (colon), \* (asterisk), ? (question mark), "
    (quotes), \< (less than), \> (greater than), \| (pipe).
- **Documentation**: Provides a place to document the action group.

### Second Screen: Define Actions

- **Active**: Determines if the action is active or inactive for the
    group. Click inside the checkbox to activate the action, clear the
    checkbox to deactivate the action.
- **Action**: Defines the action(s) to take when a rule is triggered.
    Type a dollar sign ($) to see a drop-down list of actions and their
    syntaxes. Supported actions include:
  - All OpCon events. For more information, refer to [Event         Types](../../events/types.md).
  - Local commands. Use the following action:

#### SMA Resource Monitor Variables

The action items sometimes may need details from the monitored item to
send enough detailed information with the event. The SMA Resource
Monitor has several predefined variables that can be used in the OpCon
event string. Refer to the list of variables below. Refer to the list of
[Date and Time Format Examples](#Date).

The syntax for all SMA Resource Monitor variables is:
**\[\[@*VariableName*\]\]**

##### Variables for File Monitor Actions

The following predefined variables are available for File Monitor
Actions:

- \[\[\@FileName\]\] - This is the name of the file which caused the     OpCon event.
- \[\[\@FileNameRegEx\]\] - This is the name of the file which caused     the event. It is detected by specifying a regular expression to
    match the file name.
- \[\[\@EventType\]\] - This is the type of file event     (Create/delete/Modify etc.) which caused the OpCon event.
- \[\[\@FullPath\]\] - This is the complete path to the file which     caused the OpCon event.
- \[\[\@FullPathRegEx\]\] - This is the complete path to the file     which caused this event. It is detected by specifying a regular
    expression to match the file name. For information on creating
    regular expressions, refer to
    <http://www.regular-expressions.info/>.
- \[\[\@FullFileName\]\] - This is the fully qualified file name     including path and extension.
- \[\[\@FullFileNameRegEx\]\] - This is the fully qualified file name     including path and extension which caused the event. It is detected
    by specifying a regular expression to match the file name. For
    information on creating regular expressions, refer to
    <http://www.regular-expressions.info/>.
- \[\[\@CreateStamp\]\] - This is the creation time stamp for the     file.
- \[\[\@CreateStampformat\]\] - This is the creation time stamp for     the file in the defined format. (: \[\[\@CreateStampyyyymmdd\]\]
- \[\[\@ModStamp\]\] - This is the modification time stamp for the     file.
- \[\[\@ModStampformat\]\] - This is the modification time stamp for     the file in the defined format. (: \[\[\@ModStampyyyymmdd\]\]
- \[\[\@FileRoot\]\] - This is the file name without the path or     extension (leaves the name as is in mixed case).
- \[\[\@FileRootUpper\]\] - This is the same as \@FileRoot, but it is     forced to all upper case.
- \[\[\@DATE\]\] - Resolves to short date format setting (ccyy/mm/dd). -   \[\[\@Dateformat\]\] - This is the date the file was detected in the
    defined format (YYYYMMDD).
- \[\[\@FileCriteria\]\] - This is the string SMA Resource Monitor was     checking for when the file was detected (e.g., c:\\temp\\\*.txt).

##### Variables for Counter Monitor Actions

The following predefined tokens are available for Counter Monitor
Actions:

- \[\[\@CounterName\]\] - Name of the counter that was monitored and     caused the action to fire.
- \[\[\@CurrentValue\]\] - The current reading of the Counter. -   \[\[\@EventType\]\] - Type of Counter Monitor event
    (HighValue/LowValue/MeanValue, etc.).
- \[\[\@HighCutOff\]\] - High water mark. -   \[\[\@LowCutOff\]\] - Low water mark.
- \[\[\@MachineName\]\] - The machine name on which the counter was     monitored.
- \[\[\@MeanCutOff\]\] - Mean level cut off (for samples defined in     the Rule).
- \[\[\@MeanValue\]\] - The current MeanValue reading (for the samples     defined in the Rule file).
- \[\[\@UniqueID\]\] - A unique identifying number that is associated     with each action fired.

##### Variables for Service Monitor Actions

The following predefined tokens are available for Service Monitor
Actions:

- \[\[\@CurrentStatus\]\] - This is the current status of the Service. -   \[\[\@MACHINENAME\]\] - This is the machine name on which the
    service was monitored.
- \[\[\@SERVICENAME\]\] - This is the display name of the service that     was monitored and caused the action to fire.
- \[\[\@UNIQUEID\]\] - This is a unique identifying number that is     associated with each action fired.
- \[\[\@ServiceLogon\]\] - This is the name of the user the services     is "running as" or "Local System".

##### Variables for Process Monitor Actions

The following predefined tokens are available for Process Monitor
Actions:

- \[\[\@CurrentStatus\]\] - This is the current status of the Process. -   \[\[\@MACHINENAME\]\] - This is the machine name on which the
    process was monitored.
- \[\[\@PROCESSNAME\]\] - This is the name of the process that was     monitored and caused the action to fire.
- \[\[\@UNIQUEID\]\] - This is a unique identifying number that is     associated with each action fired.
- \[\[\@PID\]\] - This is the process ID number (PID) for the process     that caused the action to fire.
- \[\[\@ProcessUser\]\] - This is the user that is executing the     process that caused the action to fire.

### Third Screen: Finalize

This **Finalize** screen is a summary, read-only page, and it will
display the information that was set up by the Add or Edit Wizard. Click
the **Back** button to change a setting, **Cancel** to get out of the
wizard or **Finish** to store the action group information. Each action
group is stored in an Actn file (e.g., GroupName.Actn) in the same
location as the Rule files.

## Date and Time Format Examples

+----------------+----------------+----------------+----------------+
| Letter         | Date or Time   | Presentation   | Re             |
|                | Component      |                | sults/Examples |
+================+================+================+================+
| The format     |                |                |                |
| letters and    |                |                |                |
| examples below |                |                |                |
| refer to this  |                |                |                |
| Long Date      |                |                |                |
| example:       |                |                |                |
| **Monday,      |                |                |                |
| August 8,      |                |                |                |
| 2011**         |                |                |                |
|                |                |                |                |
|                |                |                |                |
|                |                |                |                |
| The example    |                |                |                |
| date would be  |                |                |                |
| created in the |                |                |                |
| EM with the    |                |                |                |
| following      |                |                |                |
| string for the |                |                |                |
| Long Date      |                |                |                |
| Format:        |                |                |                |
| **EEEE, MMMM   |                |                |                |
| d, yyyy**      |                |                |                |
+----------------+----------------+----------------+----------------+
| yy             | Year           | Year           | 11             |
+----------------+----------------+----------------+----------------+
| yyyy           | Year           | Year           | 2011           |
+----------------+----------------+----------------+----------------+
| M              | Month          | Month number   | 8 (does not    |
|                |                |                | include the    |
|                |                |                | leading zero)  |
+----------------+----------------+----------------+----------------+
| MM             | Month          | Month number   | 08 (does       |
|                |                |                | include the    |
|                |                |                | leading zero)  |
+----------------+----------------+----------------+----------------+
| MMM            | Month          | Month text     | Aug            |
|                |                |                | (abbreviates   |
|                |                |                | the month      |
|                |                |                | name)          |
+----------------+----------------+----------------+----------------+
| MMMM           | Month          | Month text     | August         |
|                |                |                | (includes the  |
|                |                |                | full the month |
|                |                |                | name)          |
+----------------+----------------+----------------+----------------+
| d              | Day in Month   | Day Number     | 8 (does not    |
|                |                |                | include the    |
|                |                |                | leading zero)  |
+----------------+----------------+----------------+----------------+
| dd             | Day in Month   | Day Number     | 08 (does       |
|                |                |                | include the    |
|                |                |                | leading zero)  |
+----------------+----------------+----------------+----------------+
| E              | Day in week    | Day Text       | Wed            |
|                |                |                | (abbreviates   |
|                |                |                | the day name)  |
+----------------+----------------+----------------+----------------+
| EEEE           | Day in week    | Day Text       | Wednesday      |
|                |                |                | (includes the  |
|                |                |                | full day name) |
+----------------+----------------+----------------+----------------+
| a              | AM/PM marker   | AM or PM text  | AM/PM          |
+----------------+----------------+----------------+----------------+
| H              | Hour in Day    | 24-hour clock  | 16:00          |
|                | (0-23)         | number         |                |
+----------------+----------------+----------------+----------------+
| h              | Hour in Day    | Hour in AM/PM  | 4:00           |
|                | (1-12)         |                |                |
+----------------+----------------+----------------+----------------+
| mm             | Minute in hour | Number         | 30             |
+----------------+----------------+----------------+----------------+
| s              | Second in      | Number         | 55             |
|                | minute         |                |                |
+----------------+----------------+----------------+----------------+
:::
