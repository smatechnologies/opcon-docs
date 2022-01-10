# Container Jobs and SubSchedules

Because subschedules are the "program" the Container job runs, it is important to understand the connection between the Container and the subschedule. The process flow below describes what happens when a Container job and subschedule are built.

1. Before a Container job qualifies to run, its subschedule is waiting just like any other program would wait for a job to execute it.
2. When a Container job qualifies to run, it is time for its "program" to execute; therefore, the SAM sets the subschedule to an In Process status and the Container to a Running status.
3. The Container job continues in a Running status until all jobs on the subschedule are complete.
4. When the subschedule completes, if all jobs on that schedule Finished OK, the Container job will Finish OK.
5. If any one job on the subschedule fails, the Container job will Fail. For more information of implementing the Container Jobs and SubSchedules concept, refer to [Container Job Type](../job-types/container.md) and [SubSchedules](./schedule-names.md#subsched).
6. If the parent schedule for a Container job is placed On Hold, all child subschedules in a status of Waiting or In Process will be placed in a status of Parent Hold. The Container job will stay in its current status when a Parent Hold occurs.
7. If the parent schedule for a Container job is placed On Hold then later released, the Release of the parent will only affect the subschedules currently in a status of Parent Hold. A subschedule placed On Hold prior to a Parent Hold will not be affected by releasing the parent.
8. If a subschedule job is built with a status of To Be Skipped and its parent Container job is restarted, then the job is also restarted instead of remaining in a Skipped state.
9. If a subschedule job is built with a status of On Hold and its parent Container job is released, then the job is also released instead of remaining in a On Hold state.

## Restarting Jobs

- If a user restarts a Container job at the *schedule level*, the graphical interfaces display a message to provide a choice to:
  - Container jobs exist within this schedule.
  - Container jobs that are restarted will cause the restart of all jobs on its COMPLETED subschedule.
  - Any incomplete subschedules will simply continue processing current jobs.
- If a user restarts a Container job at the *job level*, the graphical interfaces display a message to provide a choice to:
  - Restarting all jobs on the SubSchedule
  - Rebuilding the SubSchedule
  - Reconnecting to the SubSchedule already In Process

## Resource Dependencies

SMA Technologies recommends that Container jobs and their child subschedule jobs do not require the same resource. Because you could configure both the Container job and the subschedule jobs to use the same resource, you could easily require more than the maximum available for that resource between the two layers. This would cause the Container job to run forever, because one or more jobs in the subschedule would never be able to acquire enough resources to run. Instead, decide how to configure your resource requirements and apply them for each resource only at the Container job level or on the jobs in the subschedule.

:::tip Example
In the following scenario, the Container job and a job in its subschedule both need the same resource. The Container job will start running, but it will never be able to finish.

- RESOURCEA has maximum available of 10 resources.
- Container1 requires 10 of RESOURCEA.
- ChildJob1 inside Container1's subschedule requires 5 of RESOURCEA.

**Result**: Childjob1 will never be able to acquire the 5 resources because Container1 is using all 10 resources until all jobs in the subschedule finish. All jobs will never finish, because ChildJob1 can never start.
:::

## Accessing a Container Job's Properties from the SubSchedule

When a Container job has Job Instance properties defined to it, often there is a need for the jobs on its subschedule to access those properties. When OpCon builds the subschedule, if there are any Job Instance properties on the Container, they are copied to the subschedule as Schedule Instance properties. Jobs on the subschedule can then use tokens referencing the SubSchedule Instance properties to pick up values inherited from the Container job.

:::tip Example
Every day there are several files that arrive on a Windows machine, and each must be processed exactly the same way with three (3) different OpCon jobs.

1. In OpCon, the administrator creates a schedule named ProcessFiles with the subschedule option turned on.
2. On the new subschedule, the administrator creates the 3 required jobs. On each job's command line, the [[SI.FileName]] token is placed as a parameter so the desired file processes when the job qualifies to run. Each job is also given a frequency that qualifies for every day.
3. On a schedule named MainProcess, the administrator creates a Container job named DailyFiles that runs the ProcessFiles subschedule. The Container job has Multi-instance turned on and is given a frequency of "OnRequest" with a date in the past selected. This will prevent the Container job from being automatically built. Instead, the Container job will be added to the daily schedule when the Windows SMA Resource Monitor (SMARM) detects a file to process.
4. The SMARM is configured to watch for the files and send events to OpCon to add a job each time one of these files arrive. Each time, the SMARM processes the following event:

    ```shell
    $JOB:ADD,[[$DATE]],MainProcess,DailyFiles,OnRequest,FileName=[[@FileName]]
    ```

    Before passing the event to the MSGIN directory, SMARM replaces [[@FileName]] with the actual name of the file.
5. When the SAM receives the event, it adds the DailyFiles Container job to the current day's schedule with the following name: DailyFiles_ActualFileName
6. When the Daily Files Container job qualifies to start, the SAM requests a Schedule Build for the subschedule that results in the following subschedule name:

    ```shell
    MainProcess_DailyFiles_ActualFileName[ProcessFiles_ActualFileName]
    ```

7. When the jobs on the subschedule process, the [[SI.FileName]] tokens resolve to a value of "ActualFileName".
:::
