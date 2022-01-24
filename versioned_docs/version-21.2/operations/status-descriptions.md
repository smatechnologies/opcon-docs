# Schedule and Job Status Descriptions and Allowed Status Changes

All schedules and jobs in Schedule Operations have a status. These statuses communicate what is happening and also determine what status changes are allowed.

## Schedule Statuses

The table contains definitions of OpCon schedule statuses. The last column contains permitted status changes.

:::note
The Close schedule option is needed when there are failed jobs in the schedule and the 'Failed jobs should keep the schedule open' option is set to true (in Server Options). The schedule stays in the status of "In Process - Contains Failed Jobs" in this scenario. If all the jobs are actually completed, then the administrator may choose to close the schedule. This option does not cause the Schedule Completion Events for that schedule to run, and it also keeps the History from being written for the Schedule Completion.
:::

|Schedule Status|Description|Allowed Status Changes|
|--- |--- |--- |
|Completed|All jobs on the schedule have completed and the schedule is closed.|Hold, Close.|
|In Process|One or more jobs on the schedule have not completed.|Hold|
|On Hold|The schedule is suspended from processing.|Release|
|Unknown|The SAM is unable to determine the status of the schedule.|N/A|
|Parent Hold|A parent schedule one or more levels above the subschedule has been placed on Hold, causing the SubSchedule to be placed on Parent Hold.|None (The subschedule will release when the parent is Released from Hold.)|
|Started by User|Indicates that a job on the schedule was manually restarted by a user and forced the schedule back open.|Hold|
|Wait to Start|The start time of the schedule has not arrived or the SAM and supporting services (SAM-SS) are not active.|Hold, Start|
|Wait Container Job|The Container job that controls the subschedule has not started. The schedule can only be started by the Container job.|None|

## Job Statuses

There are several general categories of job statuses. Each category contains more specific job status descriptions. The last column contains permitted status changes.

:::info
Remember that even though Kill is listed for all Running statuses, Kill is only valid for Machines that have enabled this feature.
:::

|Category|Job Status|Description|Allowed Status Changes|
|--|--|--|--|
|Held|On Hold|The job is suspended from processing.|Release, Start, Cancel, Skip, Mark Finished OK, Mark Failed|
|Waiting|Job to be Skipped|When the start time of the job arrives, the SAM places it in a Skipped status. All subsequent jobs with a dependency on the skipped job will process normally.|Start, Cancel, Mark Finished OK, Mark Failed, Restart (all)|
|Waiting|Late to Start|Indicates that the time is now past the late to start time for the job, and the job has not yet started.|Hold, Start, Cancel, Skip, Mark Finished OK, Mark Failed|
|Waiting|Qualifying|Every job begins in this status until the SAM determines its appropriate status. For information on the way the SAM analyzes jobs to submit, refer to [Job Qualification Process](../server-programs/schedule-activity-monitor.md#job-qualification-process).|Hold, Start, Cancel, Skip, Mark Finished OK, Mark Failed|
|Waiting|Prerun Failed|The job submitted contains a Prerun job and that prerun reported failure.|Hold, Start, Cancel, Skip, Mark Finished OK, Mark Failed|
|Waiting|Released|The job has been removed from a Held status.|Hold, Start, Cancel, Skip, Mark Finished OK, Mark Failed|
|Waiting|Wait Job Conflict|The job is waiting for another job to complete where a Conflict Dependency exists.|Hold, Start, Cancel, Skip, Mark Finished OK, Mark Failed|
|Waiting|Wait Job Dependency|The job is waiting for the completion of another job.|Hold, Start, Cancel, Skip, Mark Finished OK, Mark Failed|
|Waiting|Wait Start Time|The job start time has not arrived.|Hold, Start, Cancel, Skip, Mark Finished OK, Mark Failed|
|Waiting|Wait Threshold/Resource Dependency|The job is waiting for a threshold value to be met or for a resource to become available.|Hold, Start, Cancel, Skip, Mark Finished OK, Mark Failed|
|Waiting|Wait Expression Dependency|The job is waiting for an expression dependency to evaluate with a true result.|Hold, Start, Cancel, Skip, Mark Finished OK, Mark Failed|
|Waiting|Wait Machine|The job is waiting for the LSAM to become available. Either the LSAM is processing its maximum number of jobs or SMANetCom is not communicating with the LSAM.|Hold, Start, Cancel, Skip, Mark Finished OK, Mark Failed|
|Waiting|Wait to Start|The job has qualified to process, but is waiting for SMANetCom to send the start message to the LSAM.|Hold, Start, Cancel, Skip, Mark Finished OK, Mark Failed|
|Waiting|Wait to Start:Forced|Forces a job to start regardless of Job Dependencies or whether the machine has an available job slot.|Hold, Start, Cancel, Skip, Mark Finished OK, Mark Failed|
|Running|Attempt to Start|The first step towards starting the job. When the job is sent to the Agent, the status is changed to Start Attempted.|Mark Finished OK, Mark Failed|
|Running|Job Running|The LSAM has successfully started the job.|Kill, Mark Finished OK, Mark Failed|
|Running|Job Running: To be Terminated|This status alerts SAM to send a Kill command to the Agent. Once sent, the Job reverts back to a Job Running status until confirmation is received from the Agent that the job was killed.|Mark Finished OK, Mark Failed|
|Running|Late to Finish|Indicates that the time is now past the late to finish time for the job to finish, and the job is still running.|Kill, Mark Finished OK, Mark Failed|
|Running|Prerun Active|The LSAM has successfully started the prerun job.|Kill, Mark Finished OK, Mark Failed|
|Running|Start Attempted|The SAM has submitted the job (via SMANetCom) to the LSAM for processing.|Kill, Mark Finished OK, Mark Failed|
|Running|Still Attempting Start|The SAM has submitted the job (via SMANetCom) to the LSAM for processing, and waited the "number of minutes between checking running jobs" and found the job to still be in a Start Attempted status.|Kill, Mark Finished OK, Mark Failed|
|Cancelled|Cancelled|The job has been disabled and will not be processed unless manually restarted. The job dependencies of all subsequent jobs will not be met.|Restart(all)|
|Missed Start Time|Missed Start Time|The latest start time for the job has passed.|Start, Cancel, Skip, Mark Finished OK, Mark Failed|
|Skipped|Skipped|The job is cancelled and the job dependency of all subsequent jobs will be met.|Restart (all)|
|Finished OK|Finished OK|The job has completed successfully.|Restart (all), Mark Failed|
|Finished OK|Marked Finished OK|A user placed the job in a Finished OK status.|Restart (all), Mark Failed|
|Failed|Initialization Error|The LSAM attempted to start the job, but received an error from the operating system or the LSAM failed the pre-submission editing process (e.g., missing required fields).|Restart (all), Mark Finished OK, Mark Failed, Cancel, Skip|
|Failed|Failed|The job ended with an error.|Cancel, Restart (all), Mark Finished OK, Skip|
|Failed|Marked Failed|A user placed the job in a Failed status.|Cancel, Restart (all), Mark Finished OK, Skip|
|Under Review|Under Review|A user placed the job in an Under Review status to indicate that the job is being reviewed.|Mark Failed, Failed, Initialization Error|
|Fixed|Fixed|A user placed the job in a Fixed state to indicate that the job is considered fixed.|Mark Failed, Failed, Initialization Error, Under Review|
