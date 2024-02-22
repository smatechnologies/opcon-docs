---
sidebar_label: 'Master and Daily'
---

# Master and Daily

OpCon leverages a unique technique that allows for easy maintenance and customization - the separation of your automation templates, *master*, and then cloned copies of it for a given day's run, *daily*. *Master schedule* or *master job* refers to the master templates of automation. *Daily schedule* or *daily job* are the copies of the master counterparts that run for a specific day.

## Schedule Date

The automation that is set to run for a specific day is associated with a *schedule date* in OpCon. A schedule date has a collection of the daily schedules and daily jobs for a given calendar date. All daily objects are tied to a schedule date. Occasionally a schedule date can contain automation that runs on a different calendar date, but this is not common or best practice.

## Schedule Build

The process of copying master schedules and jobs into daily schedules and jobs is called *schedule build*. The system provides the option for this to happen automatically or to do this manually. Once the daily copies of a schedule date are built, they are now independent of the master schedules and jobs from which they were derived. Changes made in one or the other will not be reflected in the other without intentionally taking extra steps.

:::tip
Manual schedule builds are best used when updating master schedules and jobs and needing the changes to be in effect for daily schedules and jobs on schedule dates that have already automatically built.
:::

A build happens on one or many schedules. When building a schedule, jobs within the schedule are processed one at a time. The schedule build process looks at the frequencies associated with each job and attempts to qualify them for the specified schedule date. If the frequency on a job qualifies, it gets flagged to build under that frequency and included in the daily schedule for that date. If a daily schedule would have no jobs, the schedule will not be built for that schedule date.

OpCon environments commonly keep seven schedule dates in the past, the current schedule date, and the seven schedule dates in the future on their system. This allows for quick reference on recent jobs and the ability to investigate automation plans in the near future while balancing performance.

## Advantages of Master and Daily

The frequency and schedule build system allows users to re-use automation that might require different processing logic or flow across different days. This enables you to create a single master schedule with jobs and adapt the workflow across frequencies to ease the burden of maintenance.

:::info Example
**Scenario**: There is a process that requires three steps to run on all days, but a fourth job to run on the 1st of the month.

One way to solve this is to maintain two schedules - one schedule with three jobs that runs every day except the 1st of the month, and a second schedule that has all four jobs and only runs on the 1st of the month. This requires you to maintain two schedules and two sets of identical jobs.

A better way to do this is to leverage frequencies and schedule build to use a single master schedule. Three jobs that run every day should have a frequency for every day. The fourth job would have a frequency that only builds on the 1st of the month. When schedule build runs for any day other than the 1st of the month, the daily schedule will be built with three jobs. On the 1st of the month, schedule build will correctly copy all four jobs into the daily schedule.
:::

If there is an exceptional occurence in business operations and the automation needs to be changed for that day only, users can easily change the daily copy of the schedule or job without impacting the master template. Allowing changes to master and daily independently provides great flexibility in handling different scenarios.

:::warning
Changing the master schedule or master job will not automatically update the daily master or daily jobs. The Schedule Build process needs to be re-run on any pre-existing daily schedules and jobs that updates should be pushed to.
:::

Additionally, the system is more efficient having only to process the daily schedules and jobs, a subset of master schedules and jobs, for a given day. With the ability for high volume or high complexity, allowing the scheduling system to focus on a subset of that provides increased performance.