---
sidebar_label: 'Core Automation Objects'
---

# Core Automation Objects in OpCon

## OpCon Schedules

All automation in OpCon starts with a *schedule*. OpCon schedules are collections of automation that make up a business process or are associated in some way.

Using schedules allows control over all automation contained within as a whole. Some common examples of using a schedule to control the associated automation as one unit are:

- Run all associated automation on a particular day, optionally beginning at a specified time.
- Hold processing of all associated automation with a single command.
- Bulk apply status changes on all automation tasks associated to a schedule.
- Send notifications or take actions when all associated automation has completed.
- Copy all associated automation and run multiple iterations with minor differences.

## OpCon Jobs

Schedules are collections of OpCon *jobs*, and each job can only have a single schedule. A job is an individual automation task. OpCon offers jobs that integrate with all enterprise operating systems in addition to a number of applications. At the time of this writing, the following job types are available:

- File Transfer
- Windows
- UNIX (includes Linux)
- IBM i
- MCP
- z/OS
- OS2200
- SQL
- Java
- SAP CRM
- SAP Business Warehouse
- Episys
- fiserv DNA
- Keystone
- Jasper Reports
- FICS
- .....

Each job type has its own set of unique job details and screens throughout OpCon will update to display the integration-specific fields.

## OpCon Frequencies

The *frequencies* defined on OpCon schedules and jobs determines *when* your automation runs. Frequencies are a rule-based system that offer far greater power and efficiency than a calendar-based system. Frequencies address options including recurrence, weekday, working day vs. not, exception handling (holidays, non-working days), and more. A frequency can be re-used across schedules and jobs, and multiple frequencies can be chained together to define truly custom runplans.

Examples of what can be built include `3rd Working Day of the Month`, `Every Tuesday, But Previous Working Day When Tuesday is Holiday`, or `Last Day of Quarter`. OpCon also provides the ability to use a traditional calendar-based frequency where individual dates are selected. You can *forecast* the defined frequencies and a visual overlay is presented on a calendar to illustrate when the work would be scheduled. After correctly setting up frequencies, OpCon will continue to use the defined rules within them to execute your automation in the future with little to no maintenance.

A job will never run if it does not have at least one frequency. Frequencies can be applied directly on individual jobs, or on an entire schedule of jobs. When frequencies are applied on a schedule, they are automatically copied to all jobs within the schedule. Jobs within that schedule will be unable to alter the frequencies that determine when they will run.

## OpCon Agents

An OpCon *agent* is a piece of software installed on a designated machine that works with the OpCon application to execute tasks. All jobs run on an agent. The agent defines the *where* of your automation.

An OpCon environment can run thousands of agents, and automation can be distributed across them in any way of your choosing.