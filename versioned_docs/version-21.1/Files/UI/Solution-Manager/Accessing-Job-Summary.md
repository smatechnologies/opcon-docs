# Accessing Job Summary

The **Operations** module allows you to access the most important or
common information about the daily copy of a selected job.

In **Operations**, the Daily job information is provided in the form of
a job summary that may include any of the following fields and options:

:::note
If data is not defined or is not available for a field or if the user does not have the appropriate privileges to view the field data, then that field will not be displayed in the job summary.
:::

- **Schedule Date**: The date of the schedule containing the selected
    job.
- **Schedule Path**: The path of the schedule containing the selected
    job.
- **Schedule Name**: The name of the schedule containing the selected
    job.
- **Job Name**: The name of the selected job.
- **Documentation**: The user-defined information that is associated
    with the selected job.
- **Department**: The department under which the selected job runs.
- **Access Code**: The access code name assigned to the selected job.
- **Incident Ticket**: The incident ticket ID that is associated with
    the selected job.
- **Type**: The job type of the selected job.
- **Priority**: The priority of the selected job as defined in the
    frequency.
- **Start Agent**: The Agent machine that runs the selected job.
- **Start Agent Status**: The current status of the Agent machine that
    runs the selected job. This is displayed as Status icon.
- **Schedule Status**: The current status of the schedule containing
    the selected job.
- **Job Status**: The current status of the selected job.
- **Job Exit Code**: The exit code, ID, or value (also referred to as
    the Return Code) that is returned when the selected job has
    terminated (or has been executed).
- **Details Messages**: The termination details for the selected job
    in the event of a job failure.
- **Change Reason**: The explanation or reason provided for a manual
    status change of the selected job.
- **Programmed Start Time**: The time at which the selected job is
    programmed to start by the operator for the frequency in which the
    job is built.
- **Programmed End Time**: The time at which the selected job is
    expected to end---which is the expected run time of the job added to
    the start time at which the operator programmed the job to start.
- **Latest Start Time**: The positive number of hours and minutes to
    offset the latest start time of the selected job from the start time
    of the schedule (used to determine when a job goes under Missed
    Start Time).
- **Expected/Effective Start Time**: The time the selected job is
    expected to start.
- **Late to Start Time**: The positive number of hours and minutes to
    offset the Late to Start time from the job Start Offset.
- **Expected/Effective End Time**: The time the selected job is
    expected to end. This can be the real end time or estimated end
    time.
- **Late to Finish Time**: The positive number of hours and minutes to
    offset the Late to Finish time from the job Start Offset.
- **Start Time**: The actual time the selected job started on the
    OpCon server. If the job has not yet started, then an asterisk (\*)
    appears next to the time to indicate that the value is an estimated
    start time.
- **Duration**: The amount of time the selected job ran in minutes.
- **End Time**: The actual time the selected job ended. If the job has
    not ended, then an asterisk (\*) appears next to the time to
    indicate that the value is an estimated end time.
- **Flag when it is a recurrent job**: Indicates that the selected job
    is scheduled to run at regular intervals and/or absolute times
    throughout the day.
- **Job Tags**: The job- and/or frequency-related labels or bookmarks
    associated with the selected job.

## Time Representations in Job Summary

Time values may be displayed with varied representations that signify
something about a start time, end time, or duration. Keep the following
in mind if time is presented in a way that is similar to:

- ![Job Summary Late to Start Time comes after Start Time     Icon](../../../Resources/Images/SM/JobSummaryTimeRep3.png "Job Summary Late to Start Time comes after Start Time Icon") -
    Signifies that the Late to Start Time is after the Start Time. When
    hovered over the icon, if a Late to Start Time is defined, then that
    value is displayed as a tooltip.
- ![Job Summary Late to Start Time comes before Start Time     Icon](../../../Resources/Images/SM/JobSummaryTimeRep4.png "Job Summary Late to Start Time comes before Start Time Icon") -
    Signifies that the Late to Start Time is before the Start Time. When
    hovered over the icon, if a Late to Start Time is defined, then that
    value is displayed as a tooltip.
- ![Job Summary Estimated Time     Graphic](../../../Resources/Images/SM/JobSummaryTimeRep2.png "Job Summary Estimated Time Graphic") -
    Signifies that the value is an estimated time.
- ![Job Summary Latest Start Time comes after Start Time     Graphic](../../../Resources/Images/SM/JobSummaryTimeRep1.png "Job Summary Latest Start Time comes after Start Time Graphic") -
    Signifies that the Latest Start Time is before the Start Time.

To access job summary:

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
    display the **Selection** panel with the **Job Summary** tab in
    focus.
7. Click the **Refresh** button to refresh the data if the panel has
    been opened for a lengthy period of time.
8. Close the **Selection** panel when done.

:::note
The job summary can also be accessed while in PERT View. For more information, refer to [PERT View Job Summary Access](Using-PERT-View.md#PERT9).
:::

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Accessing Daily Job     Definition](Accessing-Daily-Job-Definition.md)
- [Accessing Job Executions     History](Accessing-Job-Executions-History.md)
- [Using PERT View](Using-PERT-View.md)
