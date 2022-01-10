# Schedule and Job Status Change Commands

The schedule and job status change commands are used with events and graphical interfaces. Depending on the object identified, the results are different.

- With one or more schedule date(s) identified, Schedule Status Change commands affect **all** schedules on that date. The graphical interfaces also provide a status filter to only affect schedules in specific statuses.
- With one or more schedule(s) identified, Schedule Status Change commands affect only the identified schedule(s).
- With one or more schedule(s) identified, Job Status Change commands affect **all** jobs on those schedules. The graphical interfaces also provide a status filter to only affect jobs in specific statuses.
- With one or more jobs selected, Job Status Change commands affect only the identified job(s).

## Schedule Status Change Commands

- **Hold Schedule**: Suspends the processing of the identified schedule(s). All currently running jobs continue to process to completion, but no new jobs on the schedule(s) start. If there are subschedules under the selected schedule and they are in a status of Waiting or In Process, those subschedules are placed in a status of Parent Hold.
- **Release Schedule**: Releases the identified schedule(s) from a
    Held state. Jobs on the schedule(s) continue     processing from the point where they were stopped. If there are
    subschedules under the defined schedule and they are in a status of
    Parent Hold, those subschedules will also be     released.
- **Start Schedule**: Overrides the identified schedule's start
    date(s) and time(s), and causes them to run immediately. The SAM
    begins processing the schedule(s) as soon as this option is
    selected. If there are subschedules under the defined schedule and
    they are in a status of Parent Hold, those     subschedules will also be started.

## Jobs Status Change Commands

- **Hold**: Places the selected job(s) on hold.
- **Cancel**: Cancels the selected job(s). The job does not process
    unless manually started by a user or an event.
- **Skip**: Places the selected job(s) in a Job to be Skipped state until the job(s) qualify to start.
    When the job(s) qualify, they are skipped and the job dependencies
    of all subsequent jobs are met.
- **Kill**: Sends a request to abort one ore more jobs on an
    LSAM machine. If the kill is successful, the     graphical interfaces report a killed job as
    Failed. If the Kill is not successful, the job     continues to show a Running status in the
    graphical interfaces. This option is not available for the     BIS, OpenVMS, and OS 2200 platforms. To enable/disable the kill
    feature, refer to the [Advanced Machine Configuration](../objects/machines.md#advanced-machine-configuration).
- **Release**: Releases the selected job(s) from a
    Held state. -   **Force Start**: Force starts the selected job(s). This causes the
    job(s) to ignore all dependencies, and to start immediately.
- **Restart Commands**: The restart commands include different options
    for placing a job back in a Qualifying status     after it has previously finished. The options include:
  - **Restart**: Places the selected job(s) back in a
        Qualifying state. All dependencies must be         met before the job(s) are submitted.
    - If Container jobs exist in the schedule, a list of all
            Container jobs that have matching statuses to the status
            filters chosen in the *Jobs to Update* section will display.
            The Container jobs will display with choices to delete and
            rebuild completed subschedules, leave the subschedules
            alone, or restart jobs with matching statuses in the
            subschedule.
  - **Force Restart**: Force restarts the selected job(s) and
        ignores the start time and all dependencies. The job(s) restart
        as soon as this option is selected as long as a machine is
        available. You must have privileges to Force Start jobs and to
        Restart jobs to use this feature.
  - **Restart Without Prerun**: Places the selected job back in a
        Qualifying state. All dependencies must be         met before the job is submitted. The job is submitted without
        the associated prerun. This option is not available for the SAP
        R/3 and CRM, SAP BW, File Transfer, Container, and Null
        platforms.
  - **Restart On Step**: Restarts the job based         on a selected step. This option is only available for the SAP
        R/3 and CRM, SAP BW, UNIX, and z/OS platforms.
  - **Restart on Hold**: Places the selected job(s) automatically in
        an On Hold state on restart.
  - **Mark Finished OK**: Changes the selected job(s) to a Finished OK status regardless of the job's current
    status. All events are processed as if the job(s) had Finished OK without intervention. If a job is Marked
    Finished OK before it starts, both the start and
    finish time saved in history equal the time the job is marked.
- **Mark Failed**: Changes the selected job(s) to a
    Failed status regardless of the job's current     status. All events are processed as if the job(s) had failed without
    intervention. If a job is Marked Failed before     it starts, both the start and finish time saved in history equal the
    time the job is marked.
- **Under Review**: Places the selected job(s) in an Under Review status that reflects that the job is
    being reviewed while corrective action is taken to resolve errors.
    Only jobs in a Failed, Marked Failed, or Initialization Error status
    can be marked Under Review.
- **Fixed**: Places the selected job(s) in a
    Fixed status to indicate that action has been     taken after job failure or error and the job is now considered
    fixed. Only jobs that are in a Failed, Marked Failed, Initialization
    Error, or Under Review status can be marked Fixed.
