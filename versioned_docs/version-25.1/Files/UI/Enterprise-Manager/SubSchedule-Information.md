# SubSchedule Information

The **SubSchedule Information** dialog provides details about the daily
copy of a selected Container job or subschedule. The **SubShedule
Information** dialog can be viewed by right-clicking on a
**subschedule** in the **List**, **Matrix** or **PERT** views.

The **SubSchedule Information** dialog contains the following
information on the **Job Container Details** tab:

- **Schedule Date**: The date the subschedule was scheduled to run.
- **Parent Schedule Name**: The name of the schedule of the selected
    Container job.
- **Job Name**: The name of the selected Container job.
- **Job Status**: This lists the current status of the selected
    Container job.
- **Job Type**: The job type of the selected job. In the case of a
    subschedule, this will be a Container job.
- **Department**: The department under which the selected subschedule
    runs.
- **Priority**: The priority of the selected subschedule as defined in
    the frequency.
- **Frequency**: The frequency at which this subschedule runs.
- **Scheduled Time**: The expected start time of the parent schedule
    of the selected subschedule.
- **Estimated Run Time (min)**: The estimated run time of the selected
    job.
- **Start Time**: The asterisk (\*) before the start time indicates
    the expected start time of the selected subschedule. If the start
    time does not have the preceding asterisk (\*), then the actual
    start time of the subschedule or Container job is displayed
- **End Time**: The asterisk (\*) before the end time indicates the
    subschedule has not yet completed and will display the estimated end
    time. If the subschedule has completed, the finished time will be
    displayed without the preceding asterisk (\*).
- **Real Elapsed Run Time (hh:mm)**: The subschedules real elapsed run
    time once the subschedule has finished.
- **Job Dependencies Tab**: This tab allows access to the information
    about the job dependencies. The tab displays all jobs that the
    selected job is dependent on. The information listed includes the
    type of dependency, the schedule date, the schedule name, the job
    name, the current status and options. If the dependency has been
    satisfied the display will be in blue. If the dependency has not yet
    been satisfied, the display will be in red. Double-clicking on a job
    mentioned in the **Job Dependencies** tab will open the **Job
    Information** dialog for that job.
- **Th/R Dependencies Tab**:This tab allows access to all information
    about the threshold and resource dependencies related to the
    selected job. The tab displays the Threshold/Resource name,
    Operator, required Value, and the Current Value. If the dependency
    has been satisfied, the display will be in blue. If the dependency
    has not yet been satisfied the display will be in red. Double-click
    on the threshold dependency to resolve the threshold dependency
    manually.
- **Post Processes Tab**: This tab allows access to the information
    about the post processes of the selected subschedule and displays
    events, thresholds and values, and the job status.
- **Subsequent Jobs Tab**: This tab displays all jobs that have a
    dependency on the selected job. The displayed information includes
    the schedule date, schedule name and job name. Double-click on the
    job displayed in the subsequent job tab to open the job information.
- **Documentation Tab**: This tab displays the documentation relating
    to the subschedule. Hyperlinks may be included in the documentation
    information. For information on following hyperlinks in
    **Documentation**, refer to [Entering and Opening Hyperlinks in     Documentation Frame](Entering-and-Opening-Hyperlinks.md).
- **Configuration Tab**: This tab allows the reconfiguration of
    platform-specific details and to review advanced job information of
    the subschedule. For more information, first follow Steps 1 -
    6 of the [Getting Container Job or subschedule     Information](#Getting) procedure then follow the [Adding Job
    Configuration Parameters](#Adding) procedure. For each of the Job
    Configuration procedures, start on Step 6 and click on the
    **Configuration** tab.

The **subschedule Information** dialog contains the following
information on the **Schedule Details** tab:

- **Schedule Date**: The date the subschedule was scheduled to run.
- **Schedule Name**: The full Schedule Name Identifier which is a
    concatenation of the parent schedule, the Container job name and the
    subschedule that it references.
- **Status**: The current status of the selected subschedule.
- **Start Time**: If this has an asterisk (\*) before the time, this
    is indicating the expected start time of the selected subschedule.
    If the time does not have an asterisks (\*) before the start time,
    it will be indicating the start time of the subschedule as defined
    in the Schedule Master.
- **End Time**: If the subschedule has not yet completed, this will
    display '*Not Finished*'. If the subschedule has completed, the
    finished time will be displayed.
- **Post Processes Tab**: This tab allows access to the information
    about the post processes of the selected subschedule and displays
    events, thresholds and values, and the job status.
- **Documentation Tab**: This tab displays the documentation relating
    to the subschedule. Hyperlinks may be included in the documentation
    information. For information on following hyperlinks in
    **Documentation**, refer to [Entering and Opening Hyperlinks in     Documentation Frame](Entering-and-Opening-Hyperlinks.md).
- **Configuration Tab**: This tab allows the reconfiguration of
    platform-specific details and to review advanced job information of
    the subschedule. For more information, first follow Steps 1 -
    6 of the [Getting Container Job or subschedule     Information](#Getting) procedure then follow the [Adding Job
    Configuration Parameters](#Adding) procedure. For each of the Job
    Configuration procedures, start on Step 6 and click on the
    **Configuration** tab.

## Getting Container Job or subschedule Information

To get the information:

1. Double-click on **List** under the **Operation** topic.
2. Click on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png)
    **arrow** to expand the specific **date**.
3. Click on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png)
    **arrow** to expand the specific **schedule**.
4. Right-click on the **schedule** that has the Container job.
5. Click on **subschedule Information** from the menu.
6. *(Optional)* Click on the various **tabs** for added
    information about the *Job Container Details*.
7. *(Optional)* Click on the various **tabs** for added
    information about the *Schedule Details*.
8. Click the **OK** button to close the **subschedule Information**
    dialog.
:::
