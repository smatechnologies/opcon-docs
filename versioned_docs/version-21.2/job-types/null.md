# Null Job Details

The Null job provides a way to generate OpCon events and/or set thresholds without having to run a job.

- Examples of Null job use are:
  - To keep schedules open
  - Initialize thresholds at a specific point in a schedule
  - Send notifications
- Null jobs are set up like any other job, except the '**Job Type**' is set to Null.
- Apart from the fact no job-specific details are associated with it, a Null job is identical to other jobs (i.e., it has at least one frequency and may have dependencies, etc., associated with it).
- A Null job always finishes **OK** as soon as it starts.
