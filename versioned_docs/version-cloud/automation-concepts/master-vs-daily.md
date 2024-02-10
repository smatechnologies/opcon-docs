---
sidebar_label: 'Master vs Daily'
---

# Job Master vs Daily Schedule

OpCon was designed to use two major sets of tables. The Job Master tables (Master) contain the data required to automate all known workflows for an environment. This data includes definitions for jobs that run every day, as well as jobs that may run as infrequently as once per year. The Daily Schedule tables (Daily) contain only the information for the jobs required for each schedule date. When requested, the schedule build process selects qualified schedules and jobs to copy from the Master to the Daily.

The Master vs. Daily design provides the following primary benefits:

- The SAM scans all active schedules and jobs to determine when to submit jobs for processing. By processing the jobs in the Daily, SAM scans only the required subset of jobs for the day, thereby making processing more efficient. For example, there may be 1,000 jobs defined in the Job Master tables, but of those 1,000 jobs, only 150 are required to run on weeknights. Instead of having to continually read through 1,000 records to decide what job to start next, the SAM only has to scan 150 records.
- Individual changes can be made to jobs, such as removing a dependency or changing a start time, without making any changes to the Job Master tables. This means that when any subsequent schedules are generated, the original values and requirements are still in place.
