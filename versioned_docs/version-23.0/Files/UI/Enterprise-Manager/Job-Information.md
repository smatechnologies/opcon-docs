# Job Information

The **Job Information** dialog provides details about the daily copy of
a selected job. The job information can be viewed by double-clicking on
a job or by right-clicking on a job and selecting **Job Information** in
the **List**, **Matrix**, **Gantt**, or **PERT** view. The **Job
Information** fields can be copied and pasted to the clipboard by
right-clicking and selecting **Copy**. The **Job Information** dialog
contains the following information:

- **Schedule Date**: The date the Job was scheduled to run.
- **Parent Schedule Name**: The name of the schedule of the selected
    job.
- **Job Name**: The name of the selected job.
- **Job Status**: The current status of the selected job.
- **Start Machine**: The machine that runs the selected job. When a
    job is defined to run on a machine group, the name listed before the
    job runs will be the machine group name. When the job is submitted
    for starting, the machine processing the job is listed.
- **Job Type**: The job type of the selected job.
- **Department**: The department under which the selected job runs.
- **Priority**: The priority of the selected job as defined in the
    frequency.
- **Frequency**: The frequency at which this job runs.
- **Scheduled Server Time**: The date and time the job is scheduled to
    run.
- **Estimated Run Time (min)**: The estimated run time of the selected
    job.
- **Server Start Time**: The actual date and time the job started on
    the OpCon Server.
  - When a job has not yet started, the clock icon appears in front
        of the time to indicate that the value is an estimated start
        time.
  - When a job has started, the actual start time appears without
        the clock.
  - When you hover over the displayed Server start time, a tool tip
        will display regarding the following start times:
    - **Local Start Time**: The time calculated for the job to
            start where the EM is running.
    - **Agent Start Time**: Displays the estimated start time of
            the job based on the LSAM             machine where the job will most probably execute.
- **Server End Time**: The date and time the job ended.
  - When a job has not ended, the clock icon appears in front of the
        time to indicate that the value is an estimated end time.
  - When a job has ended, the actual end time appears without the
        clock.
- **Real Elapsed Run Time (hh:mm)**: The jobs real elapsed run time
    will display once the job has finished.
- **Late to Start Time**: Defines the positive number of hours and
    minutes to offset the Late to Start time from the job Start Offset.
- **Late to Finish Time**: Defines the positive number of hours and
    minutes to offset the Late to Finish time from the job Start Offset.
- **Maximum Run Time (min)**: Defines the maximum run time in minutes
    for the job.
- **Latest Start Offset**: Defines the positive number of hours and
    minutes to offset the latest start time of the job from the start
    time of the schedule.
- **Incident Ticket ID**: Displays the incident ticket ID that is
    associated with a job.
  - If a ticket URL is found, then the ticket ID will be clickable
        and allow users to navigate to more information about the
        ticket.
  - If a name for the incident management system has been provided in the [Server Options](../../../administration/server-options.md#general),
        then the **Incident Ticket ID** label will be replaced by the
        value found in the Server Options.
- **Job Dependencies Tab**: This tab allows access to the information
    about the job dependencies. The tab displays all jobs that the
    selected job is dependent on. The information listed includes the
    type of dependency, the schedule date, the schedule name, the job
    name, the current status, and options. If the dependency has been
    satisfied, the display will be in blue. If the dependency has not
    yet been satisfied, the display will be in red. Double-clicking on a
    job mentioned in the **Job Dependencies** tab will open the **Job
    Information** dialog for that job.
- **Th/Rs Dependencies Tab**: This tab allows access to all
    information about the Threshold and Resource dependencies related to
    the selected job. The tab displays the Threshold/Resource name,
    Operator, required Value and the Current Value. If the dependency
    has been satisfied, the display will be in blue. If the dependency
    has not yet been satisfied the display will be in red. Double-click
    on the Threshold Dependency to resolve the threshold dependency
    manually .
- **Exp Dependencies Tab**: This tab displays any Expression
    dependencies related to the selected job.
- **Th/Rs Update Tab**: This tab allows access to the information
    about the threshold and resource updates of the selected job and
    displays thresholds or resources and values, and the job status.
- **Events Tab**: This tab allows access to the information about the
    events of the selected job and displays the trigger, what to match,
    and the event user.
- **SubSequent Jobs Tab**: This tab displays all jobs that have a
    dependency on the selected job. The displayed information includes
    the schedule date, schedule name and job name. Double-click on the
    job displayed in the subsequent job tab to open the job information.
- **Documentation Tab**: This tab displays the documentation relating
    to the job and frequency of the selected job. Hyperlinks may be
    included in the documentation information. For information on
    following hyperlinks in documentation, refer to [Entering and     Opening Hyperlinks in Documentation
    Frame](Entering-and-Opening-Hyperlinks.md).
- **Tags Tab**: Displays all job and frequency tags associated with
    the selected job.
- **Configuration Tab**: This tab allows the reconfiguration of
    platform-specific details and to review the specific platform
    information for the selected job. Refer to [Adding Job Configuration     Parameters](#Adding).

## Getting Job information

To get job information:

1. Double-click on **List** under the **Operation** topic .
2. Click on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png)
    **arrow** to expand the specific **date**.
3. Click on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png)
    **arrow** to expand the specific **schedule**.
4. Double-click on the **job**or right-click on the **job** then select
    **Job Information**. The **Job Information** dialog displays.
5. View the job information.
6. *(Optional)* Double-click on the **dependent job**
    to view the job information.
7. *(Optional)* Double-click on the **SubSequent job**
    to view the job information.
8. Click on the other various tabs for added information.
9. Click the **OK** button to close the dialog.

## Adding Job Configuration Parameters

To add configuration parameters:

1. Double-click on **List** under the **Operation** topic .
2. Click on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png)
    **arrow** to expand the specific **date**.
3. Click on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png)
    **arrow** to expand the specific **schedule**.
4. Right-click on the **job**.
5. Click on **Job Information** from the menu. The **Job Information**
    dialog displays.
6. Click on the **Configuration** tab.
7. Click on **Available Property** in the parameter table.
8. Click the **Add** button to add a new Available Property. The
    **Add** dialog displays.
9. Enter the new *property value*.
10. Click the **OK** button.
11. Repeat Steps 8 - 10 to add additional property values.
12. Click the **Update** button to save the property values defined or
    click the **Defaults** button to reset the parameter to the system
    defaults.
13. Click the **OK** button to close the **Job Information** dialog.

## Editing Job Configuration Parameters

To edit configuration parameters:

1. Double-click on **List** under the **Operation** topic.
2. Click on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png)
    **arrow** to expand the specific **date**.
3. Click on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png)
    **arrow** to expand the specific **schedule**.
4. Right-click on the **job**.
5. Click on **Job Information** from the menu. The **Job Information**
    dialog displays.
6. Click on the **Configuration** tab.
7. Click on **Available Property** in the parameter table.
8. Click on the existing **available property** to change.
9. Click the **Edit** button. The **Edit** dialog displays.
10. Enter the *property value changes*.
11. Click the **OK** button.
12. Click the **Update** button to save the property values that were
    changed or click the **Defaults** button to reset the parameter to
    the system defaults.
13. Click the **OK** button to close the **Job Information** dialog.

## Removing Available Properties from Job Information

To remove properties from job information:

1. Double-click on **List** under the **Operation** topic.
2. Click on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png)
    **arrow** to expand the specific **date**.
3. Click on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png)
    **arrow** to expand the specific **schedule**.
4. Right-click on the **job**.
5. Click on **Job Information** from the menu. The **Job Information**
    dialog displays.
6. Click on the **Configuration** tab.
7. Click on **Available Property** in the parameter table.
8. Click on the existing **Available Property** to remove.
9. Click the **Remove** button.
10. Click the **Yes** button to delete the property or click the **No**
    button to cancel the deletion.
11. Click the **OK** button to close the **Job Information** dialog.
