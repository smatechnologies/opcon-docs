# Job Tracking

The Job Tracking feature allows external (user-submitted or
program-submitted) jobs to be monitored for progress by
OpCon. It enables
OpCon to become aware of jobs that were
started by external users or operating systems rather than started by an
OpCon schedule or event. This feature tracks
jobs that are defined in OpCon and by the
operating system agent.

For most operating systems, consequently, this feature is limited
because it is reporting about a job that has already started. This means
that no OpCon dependencies, resources, or
thresholds can constrain the job.

Additionally, this also means that OpCon
properties cannot be used in any way to define the job. However, like
other jobs defined in OpCon, a job history
can be maintained and subsequent jobs can be made dependent upon a
Tracked job.

## Automatic Job Tracking

The Automatic Job Tracking feature allows external (user-submitted or
program-submitted) jobs to be monitored for progress by
OpCon. This feature is similar to Job
Tracking, except that it does not require a job to be defined in
OpCon, and it may also reduce or eliminate
definitions stored by the operating system agent.

Since there is no job master record for an automatically tracked job,
there can be no job history accumulated. Subsequent jobs cannot be made
dependent on an automatically tracked job since there is no job master
record or job history.

A typical purpose for Automatic Job Tracking would be to monitor the
job-by-job progress of jobs in an OpCon
schedule as new jobs appear within the schedule. Automatic Job Tracking
greatly reduces the preparation for monitoring schedules that may
initiate a large and complex series of sub-jobs, for example, when a job
that is defined on that schedule will submit many other sub-jobs (so
they are not directly started by OpCon and
would not otherwise appear on the schedule).

## Job Queuing

The Job Queuing feature allows external (user-submitted or
program-submitted) jobs to be queued for processing by
OpCon. This feature is like Job Tracking in
that it requires jobs to be defined by OpCon
and the operating system agent.

Job Queuing enables OpCon to become aware of
jobs that are started by external users or an operating system, as
opposed to jobs started by an OpCon schedule
or event. However, queuing means that the
OpCon agent has intercepted the job start
request and has prevented the job from running until after
OpCon decides the job is allowed to run. This
means that queued jobs can be subjected to dependencies on previous jobs
and on resources and thresholds.

Most job definition parameters (except for the Job Start Command) can be
overridden, sometimes using OpCon properties.
It is also possible for OpCon to support
platform-specific job features, such as job-level message management,
report routing control, and managing a local data area associated with a
job that cannot otherwise be managed directly by
OpCon from outside of the platform-specific
operating system.
