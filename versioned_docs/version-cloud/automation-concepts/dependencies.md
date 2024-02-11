# Dependencies

Every job in OpCon has a *start time* that the scheduler will use to determine when the job can begin running. This behaves similarly to schedules such as cron. Unlike schedulers, OpCon allows you to add further qualifiers to jobs that provides the ability to create complex workflows. Qualifiers in OpCon are called *dependencies*. Jobs can have any number of dependencies of any type.

## Dependency Types

There are four primary dependency types: *job dependencies*, *threshold dependencies*, *resource dependencies*, and *expression dependencies*.

### Job Dependencies

Job dependencies are the most common dependency type and are used to build the classical workflow where Job B depends on Job A and can only run after it completes. Job dependencies are commonly used within a schedule, but jobs can also depend on jobs in other schedules. The ability to depend on a file existing is achieved with job dependencies where a special precursor job of *File Arrival* type can be used.

### Threshold Dependencies

Threshold dependencies allow jobs to depend on a numeric value. The most common use case is to use these dependencies as a detection of a 'switch' getting set and then after running the job turns it back off. Commonly this is a mechanism used to capture external triggers and reflect them within OpCon. Thresholds often allow for counting, and can be used to limit the daily execution of jobs.

### Resource Dependencies

Resource dependencies allow rate-limiting of jobs. A resource dependency allows a job to have a set amount of a designated *resource* available. A job will wait until it can secure the required resources. Common use cases of resource dependencies are for single-threading certain jobs or to artificially limit the count of tagged jobs that can run at a time. For example, only three of ten jobs can run at a time. Jobs will wait until one completes before the next can begin, never allowing more than three at once.

### Expression Dependencies

Expression dependecies offer the ability to evaluate statements and prevent a job from running until it evaluates to true. These are typically used for complex scenarios that other dependencies are unable to address.

## Frequencies

Each dependency can be tied to a frequency. When a dependency is tied to a frequency, the dependency is only valid if the daily job was built for that specific frequency. If the job was built under any other frequency, the dependency will not exist on the daily job.

:::info Example
There is a schedule where typical days there are three jobs that must run in order of `Job A`, `Job B`, and finally `Job C`.

insert image here

The schedule has a fourth job, `Job D`, that must run between `Job B` and `Job C` on the 1st of the month.

insert image here

`Job C` should contain two job dependencies. The first job dependency is on `Job B` and should be assigned the `Every day` frequency. The second job dependency is on `Job D` and should be assigned the `1st of the month` frequency. Depending on which day it is and thus what frequency is selected, the job dependency will be different. This allows the schedule to follow the correct workflow depending on the day.
:::

## Qualifying Order

Jobs are qualified in the following order:

1. Start time
2. Agent (online and able to run jobs)
3. Job dependencies
4. Threshold dependencies
5. Resource dependencies
6. Expression dependencies

Once all steps have been qualified, the job will begin executing.