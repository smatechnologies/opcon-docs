# Using Machine Groups

There are several scenarios for automation that benefit from using
Machine Groups in OpCon. The following
scenarios are the most common:

- Failover
- Workload Balancing
- Using the Same Job Definition Across Multiple Machines
- Using the Same Schedule Across Multiple Machines

## Failover

The following scenario applies Machine Groups to Jobs for Failover
purposes:

Only one machine will be assigned to the Machine Group, and all of the
jobs will use this Machine Group with the "Run on Least Tasked
Machine" option defined. In this case, every job will run on this group
as opposed to running on one specific machine. If the machine in that
group has a hardware failure, another machine with an
LSAM could be placed in that group to take over the processing until the primary machine is repaired. In this case there
could be hundreds of jobs being affected by a machine. If these jobs run
on a Machine Group, the administrator will only need to add a working
machine to the group to take over processing. If the jobs had been
configured with a Primary Machine, the administrator would have had to
update hundreds of individual jobs to use the new machine.

## Workload Balancing

The following scenario applies Machine Groups to Jobs for Workload
Balancing by selecting the option to "Run on Least Tasked Machine":

Multiple jobs exist, the jobs are able to be processed on more than one
machine, and there is no specific priority order for which machine to
process the jobs on. This usually occurs when the machines in question
have access to shared data. The machines are placed in a machine group,
and jobs are assigned to that group with the "Run on Least Tasked
Machine" option defined. At each job's runtime,
OpCon uses its Workload Balancing algorithm
to determine which machine in the group to use for execution.

The Workload Balancing algorithm works as follows:
OpCon allows the user to specify a maximum
number of concurrent jobs to run on each individual machine with an
LSAM. At runtime, if a job has been designated to run on a group of machines, OpCon starts the job on
the machine with the greatest percentage of available
OpCon job slots. If machines have the same
percentage of open slots, the SAM alphabetically selects a machine. The
SAM calculates the percentage for each machine based on the number of
jobs running on the machine and on the maximum number of jobs allowed on
the machine.

## Using the Same Job Definition Across Multiple Machines

The following scenario applies Machine Groups to a job so the same job
definition is automatically applied to multiple machines. This is done
by selecting the machine group option to "Run on Each Machine":

The same program exists on multiple machines of the same OS Type.
Additionally, the program is installed in the same location on each
machine. In OpCon, all of these machines are
placed in a machine group. A job is set up to run the program. Because
the same job definition will work for all machines, the job is assigned
to the machine group with the "Run on Each Machine" option defined.
When the job's schedule is built and the job qualifies for the day,
OpCon creates a copy of the job for each
machine in the group. Each copy is named using the following syntax: Job
Name_Machine Name.

The advantage of running a job on each machine in a group is that it
reduces the amount of time it take the OpCon
administrator to set up jobs. If the job was not set up to run on each
machine, the administrator would have had to manually create a copy of
the job for each desired machine.

## Using the Same Schedule Across Multiple Machines

The following scenario applies Machine Groups to a Schedule so the same
schedule is automatically applied to multiple machines. This is done by
selecting the machine group for the Instance Definition on a
Multi-Instance schedule:

The same group of jobs needs to run on multiple machines of the same OS
Type. Additionally, the programs for the jobs are installed in the same
location on each machine. In OpCon, all of
these machines are placed in a machine group. The jobs in the schedule
are set up as required, and each job is set to "Use Schedule Instance
Machine". On the Schedule definition, the "Multi-Instance" checkbox
is marked, and the correct machine group is defined for the option to
"Build an instance for each machine in the Group". When the schedule
is built and the jobs qualify for the day,
OpCon creates a copy of the schedule for each
machine in the group, and each of the jobs have their Primary Machine
set based on the Schedule instance's machine. Each instance of the
schedule is named using the following syntax: Schedule Name_Machine
Name.

The advantage of running a schedule on each machine in a group is that
it reduces the amount of time it take the
OpCon administrator to set up jobs. If the
schedule was not set up to run on each machine, the administrator would
have had to manually create a copy of the schedule for each desired
machine.
