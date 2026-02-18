# Adding Jobs to Daily Schedules

Adding jobs to Daily schedules is the process of taking a job from the Job Master and adding it to a specific Daily schedule. To add a job, the schedule, job, and desired frequency must be specified and added to a schedule date with the schedule already built. The frequency is defined to add all of the desired frequency-related job components.

:::note
The only frequency-related component not included in the add of a job is the Job Build Status. The only available default statuses for a manually added job are Released and On Hold.
:::

When adding jobs to Daily schedules, you can set specific property definitions for each job instance.

- If the job being added has no defined instances, (refer to [Instance Definition](../job-components/instances.md)), you can enter property definitions for an instance of a specific job in the format:
- In graphical interfaces, if the job being added is configured to [Run on each Machine](../objects/jobs.md#run) in a machine group , you can select a specific machine from the group.
- In graphical interfaces, if the job being added has one or more Instance Definitions with predefined user properties (refer to [Instance Definition](../job-components/instances.md)), you can enter property definitions for an instance of a specific job in the format:

:::note
If specific definitions are not supplied for each job instance, OpCon automatically adds all defined instances for the job.
:::

Jobs can be added to Daily schedules using the following methods:

- OpCon events (refer to [Job-Related Events](../events/types.md#job-related-events) in the **OpCon Events** online help)
- Through the graphical interfaces
