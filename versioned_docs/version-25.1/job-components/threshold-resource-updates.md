# Threshold/Resource Updates

## Threshold Updates

When the job enters a specific status, OpCon can process a *threshold update* to change the value of a defined threshold. After threshold updates are defined for a job, OpCon stores the defined threshold updates in the database.

The following information applies to defining thresholds updates:

- **Schedule Name**: Defines the name of the schedule.
- **Job Name**: Defines the name of the job.
- **Frequency Name**: Defines the name of the frequency if the threshold update is defined for a specific frequency.
  - Leave the frequency blank to associate the threshold update at the job level and always include the threshold update for the job.
  - Select a frequency name to associate the threshold update only when the job runs with the associated frequency.
- **Job Status**: Defines the status of the job that will cause the threshold update to process. Valid statuses include:
  - **Exceeded Max Run Time**: This status occurs when the job runs for longer than the specified Max Run Time.
  - **Finished OK**: This status occurs when the job terminates successfully.
  - **Late to Start**: This status occurs when time is past the late to start time for the job, and the job has not yet started.
  - **Late to Finish**: This status occurs when time is past the late to finish time for the job, and the job is still running.
  - **Job Still Attempting Start**: This status occurs when the job is still in a Start Attempted status when the SAM checks on the job again after the minutes between checking running jobs.
  - **Failed**: This status occurs when the job fails.
  - **Missed Latest Start Time**: This status occurs when the job misses its latest start time.
  - **Skipped**: This status occurs when the job is skipped.
  - **Start Attempted**: This status occurs just before the job start information is sent to the LSAM. If for any reason the threshold/resource update does not get processed, SAM will put the job On Hold.
- **Threshold**: Defines the name of the threshold to update based on
    the defined job status.
- **Value**: Defines the value to assign to the threshold during the
    update.

## Resource Updates

When the job enters a specific status, OpCon can process a *resource update* to change the maximum number of resources for a defined resource. After resource updates are defined for a job, OpCon stores the defined resource updates in the database.

The following information applies to defining resource updates:

- **Schedule Name**: Defines the name of the schedule.
- **Job Name**: Defines the name of the job.
- **Frequency Name**: Defines the name of the frequency if the resource update is defined for a specific frequency.
  - Leave the frequency blank to associate the resource update at the job level and always include the resource update for the job.
  - Select a frequency name to associate the resource update only when the job runs with the associated frequency.
- **Job Status**: Defines the status of the job that will cause the resource update to process. Valid statuses include:
  - **Exceeded Max Run Time**: This status occurs when the job runs for longer than the specified Max Run Time.
  - **Finished OK**: This status occurs when the job terminates successfully.
  - **Late to Start**: This status occurs when time is past the late to start time for the job, and the job has not yet started.
  - **Late to Finish**: This status occurs when time is past the late to finish time for the job, and the job is still running.
  - **Job Still Attempting Start**: This status occurs when the job is still in a Start Attempted status when the SAM checks on the job again after the minutes between checking running jobs.
  - **Failed**: This status occurs when the job fails.
  - **Missed Latest Start Time**: This status occurs when the job misses its latest start time.
  - **Skipped**: This status occurs when the job is skipped.
- **Resource**: Defines the name of the resource to update based on the defined job status.
- **Value**: Defines the Max Resources value to set for the resource during the update.
