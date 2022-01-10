# OpCon Job Names

While most jobs in Schedule Operations appear as the original job name, there are features that cause OpCon to add extra characters to the name automatically.

- Multi-Instance Jobs
- Jobs Run on Each Machine in a Group

## Multi-Instance Jobs

When OpCon adds additional copies of a multi-instance job to the Daily schedules, the naming convention depends on whether Job Instance properties were supplied.

If Job Instance properties are not supplied, OpCon appends the instance number to the job name by adding a dollar sign followed by a four digit number ($XXXX). Each time the same job is add this way, the number increments by one. If Job Instance properties are supplied, OpCon appends the value of the first property to the job name. Refer to [Defining Properties for Multi-Instance Jobs](../Files/UI/Enterprise-Manager/Defining-Properties-for-Multi-Instance-Jobs.md) in the **Enterprise Manager** online help:

:::tip Example
The following event adds a job to the Daily schedule using only the required parameters for the event. The job "MyJobName" is configured as a multi-instance job.

```shell
$JOB:ADD,[[$DATE]],MyScheduleName,MyJobName,MyFrequencyName
```

When the same event is submitted three times, OpCon creates the following job names in Schedule Operations:

- MyJobName
- MyJobName$0002
- MyJobName$0003
:::

:::note
If an additional request for a job comes in and would create a duplicate name even with the first property value, the SAM appends the instance number to the job name by adding a dollar sign followed by a four-digit number ($XXXX).
:::

:::tip Example
The following event adds a job to the schedule while defining Job Instance properties called FileName (with a value of abc.txt) and NumRecs (with a value of 100). The job "MyJobName" is configured as a multi-instance job.

```shell
$JOB:ADD,[[$DATE]],MyScheduleName,MyJobName,MyFrequencyName,FileName=abc.txt;NumRecs=100
```

When OpCon creates the job in the Daily tables, it will name the job:

MyJobName_abc
:::

## Jobs Run on Each Machine in a Group

When a job is configured to *Run on Each Machine* in a machine group at the time the job builds into the Daily schedules, OpCon creates one copy of the job for each machine in the group. Refer to [Adding Jobs](../Files/UI/Enterprise-Manager/Adding-Jobs.md) in the **Enterprise Manager** online help. Each copy of the job is named by adding the machine name using the following syntax:

```shell
JobName_MachineName
```

:::tip Example
A machine group named WindowsMachines contains three machines named Saturn, Neptune, and Mars. A job named MyJobName is configured to Run on Each Machine in the WindowsMachines group. When MyJobName qualifies for a Daily schedule, OpCon creates the following job names:

- MyJobName_Saturn
- MyJobName_Neptune
- MyJobName_Mars

:::
