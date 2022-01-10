# Editing Jobs in Master vs Daily Schedules

Job definitions in the Master can include all possible [Job Automation Components](../job-components/overview.md). When a job is edited in the Master, the changes are applied to future Schedule Builds, and any copies of the job that exist in the Daily are not modified with the Master update. This provides the ability to make changes to jobs for the future without affecting any current copies of the job in the Daily.

Job definitions in the Daily can include all [Job Automation Components](./../job-components/overview.md) except Frequencies. By definition, the Frequency components are part of master records to help determine what days the job should appear in the Daily. The job automation components that appear in the Daily for a job are determined by the configuration in the Master. When the Schedule Build occurs, OpCon concatenates all of the appropriate components and creates a copy of the job in the Daily. From there forward, when a job is edited in the Daily, the changes are applied to the specific copy of the job, and the job definition in the job without affecting any other current copies of the job in the Daily or the job's Master definition.

:::info Example
If the start time for a job is changed from 19:00 to 20:00 in the Daily Tables on January 12, 2012, only that instance of the job is affected by the change. Assuming no changes are made to January 13th or 14th or to the Master:

- All future builds of the job will set the start time to 19:00
- January 12th's start time is 20:00
- January 13th's start time is 19:00
- January 14th's start time is 19:00
