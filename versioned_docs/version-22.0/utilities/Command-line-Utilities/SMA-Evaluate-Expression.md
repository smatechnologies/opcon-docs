# SMA Evaluate Expression

SMA Evaluate Expression (SMAEvalExp.exe) is a utility that accesses OpCon Property Expressions API. This is the same API accessed by Job Dependencies and Events Based on Complex Expressions. For more information, refer to [Property Expressions API Syntax](../../reference/property-expressions-syntax.md) in the **Concepts** online help. Primarily, this utility is maintained for backward compatibility. This utility can be scheduled from an OpCon Windows job or executed through a Windows command prompt (cmd.exe).

SMAEvalExp.exe is installed in the <Target Directory\>\\OpConxps\\MSLSAM\\ directory and connects to the OpCon database using the .dat file generated by the SMA Connection Configuration utility. For more information, refer to [SMA Connection Configuration Tool](../../server-programs/schedule-activity-monitor.md#SMA) in the **Server Programs** online help.

Configuring the Database Connection Information

To perform the procedure:

Locate the executable for the SMA Connection Configuration program (SMAConnectionConfig.exe) in the following location: ```<Target Directory>\OpConxps\MSLSAM\```.

:::tip Example
```C:\Program Files\OpConxps\MSLSAM\```
:::

Double-click **SMAConnectionConfig.exe**.

In the SMAConnectionConfig window:

Enter the *Server Name* (include the instance name if necessary using the ```<Server>\<Instance Name>``` syntax) in the **Server Instance Name** field.

Enter the *database name* in the **Database Name** field.

Configure the authentication method by:

- Selecting the **Use Windows Authentication** checkbox.
- Entering *opconsam* in the **Database Login ID** field and entering the *password* in the **Database Password** field.

Configure the database connection by selecting one of the following **Configuration** drop-down options:

- **None**: Specifies no setting. This is the default.
- **SQL Always On**: Specifies that SQL Server has been configured to use SQL high availability.
- **SQL Mirroring**: Specifies that SQL Server has been configured to use mirroring.

Click **Connect**.

Click **OK** to confirm the connection.

Click **OK** to close the program.

## Syntax

Use the following command-line syntax:

```SMAEvalExp.exe "expression"```

### Parameters

The following describes the command-line parameters:

- **SMAEvalExp.exe**: This is the executable program installed in the ```<Target Directory\>\OpConxps\MSLSAM\``` directory.
- **Expression**: A logic expression, a numeric expression, or an expression to assign a value to an OpCon property.
  - Because SMAEvalExp.exe runs as a Windows command-line program and accepts only one parameter, the full expression must be enclosed in double quotes.
  - If the expression contains embedded tokens, enclose the expression within the \[\[=\]\] syntax. 
      -   For details on defining expressions, refer to [Property Expressions API Syntax](../../reference/property-expressions-syntax.md) in the **Concepts** online help.

### Examples

The following examples use several [Operators](../../reference/property-expressions-syntax.md#Operator) and [Functions](../../reference/property-expressions-syntax.md#Function) along with [System Properties](../../objects/properties.md#system-properties) to show samples of using the SMA Evaluate Expression program for automation:

- [Check a Property Value for a Specific String](#Check)
- [Check a Property Value for a Specific Number     (Integer)](#Check2)
- [Trigger Events Based the Exit Code of a Job](#Trigger)
- [Trigger Events Based on Specific Exit Codes](#Trigger2)
- [Trigger Events Based on Deviation from Estimated Run     Time](#Trigger3)
- [Set the Value of a Property with an Expression](#Set)
- [Set the Value of a Property Based on the Contents of Other     Properties and/or Constants](#Set2)

#### Check a Property Value for a Specific String

To check a global property to see if its value is equal to a specific string, use the **==** operator.

:::tip Example
The following expression checks to see if the value of a global property named "DDIService" is equal to "running":

```SMAEvalExp.exe "[[=[[DDIService]]=="running"]]"```

If the result is true, then command will succeed. If the result is false, the command will fail. If run through an OpCon job, events can be configured to affect other jobs and send notifications based on the failure of this job.
:::

#### Check a Property Value for a Specific Number (Integer)

To check a global property to see if its value is equal to a specific number:

- Use the ToInt function to convert the value of the property to an integer.
- Use the **==** (check equality) operator.

:::tip Example
The following expression checks to see if the value of a global property named "BackupServer" has a value of 1:

```SMAEvalExp.exe "[[=ToInt([[BackupServer]])==1]]"```

If the result is true, then command will succeed. If the result is false, the command will fail. If run through an OpCon job, events can be configured to affect other jobs and send notifications based on the failure of this job.
:::

#### Trigger Events Based the Exit Code of a Job

To check the exit code of a job to see if it is less than 20:

- Use the ToIntNE function to convert the value of the $JOB TERMINATION property to an integer and also set the default value to 0 in case the job has no termination value.
- Use the **<** (less than) operator.

:::tip Example
The following expression checks to see if the DNSEntries job termination value is less than 20, with a default result of "True" if the job does not yet have a termination value:

```SMAEvalExp.exe "[[=ToIntNE([[JI.$JOB TERMINATION.2013/10/29.BPMNetworkTest.DNSEntries]],0)<20]]"```

If the result is true, then the command will succeed. If the result is false, the command will fail. If run through an OpCon job, events can be configured to affect other jobs and send notifications based on the failure of this job.
:::

#### Trigger Events Based on Specific Exit Codes

To check a job for a specific exit code to take action upon, consider the following:

**Scenario**: If Windows JobA ever fails with exit code 0000000033, a job named FixFiles should run to fix the environment then rerun JobA.

**Solution**: To achieve the solution, a job named EvalJobAExit will execute SMAEvalExp.exe after every time JobA runs to check the exit code from JobA.

- Create the EvalJobAExit job on the same schedule as JobA.
- Configure EvalJobAExit job to succeed unless the exit code is 0000000033. The command line for EvalJobAExit is:
- Configure a $JOB:ADD event for EvalJobAExit on failure to add the FixFiles job to the schedule.

#### Trigger Events Based on Deviation from Estimated Run Time

To trigger events based on the Actual Run Time of a job deviating from the Estimated Run Time by a user-defined percentage, there are a number of potential scenarios:

- The job runs for less than the estimated run time minus the deviation percent.
- The job runs for longer than the estimated run time plus the deviation percent. Two scenarios exist for this idea:
  - Wait until the 'monitored job' finishes and then run the SMAEvalExp job to determine if the 'monitored job' ran long.
  - Trigger the event as soon as the 'monitored job' exceeds the 'acceptable threshold', in this case based on a calculated time based on Estimated Run Time plus a percentage.

##### Trigger Events Based on a Job Running for Less Time than Expected

To trigger events after job completion if a job's run time is less the estimated run time by a percentage, use SMAEvalExp.exe to check the time difference between a job's actual run time and a specific number.

:::tip Example
- Assume the job in question is named JobA.
- If the requirement is to check for the job running less than 5 minutes:
  - On the same schedule as JobA, create an SMAEvalExp job as a subsequent job to JobA on the same schedule.
  - After JobA completes, run the SMAEvalExp job with the following command line:

```SMAEvalExp.exe "[[=TimeDiff([[JI.$ACTUAL RUN TIME.[[$DATE]].[[$SCHEDULE NAME]].JobA]], \"00:00:00\",\"signed_secs\") >= 5 * 60]]"```

SMAEvalExp.exe will return an exit code of 0 if JobA ran for 5 minutes or more, or it will return an exit code of -1 if JobA ran for less than 5 minutes. When the SMAEvalExp job fails, Events can be configured to affect other jobs and send notifications based on the failure of this job.

- If JobA ran for more 5 minutes or more, the job will succeed because the result is "True".
- If JobA ran for less than 5 minutes, the command will fail because the result is "False".
- When the SMAEvalExp job fails, Events can be configured to affect other jobs and send notifications based on the failure of this job.
:::

##### Trigger Events after Job Completion if a Job's Run Time Exceeds the Estimated Run Time by a User-defined Percentage

To trigger events after job completion if a job's run time exceeds the estimated run time by a percentage, use SMAEvalExp.exe to check the time difference between a job's actual run time and its estimated run time.

- Assume the job in question is named JobA.
- If the requirement is to check for a deviation of more than 10%, then:
  - On the same schedule as JobA, create an SMAEvalExp job as a subsequent job to JobA on the same schedule.
  - After JobA completes, run the SMAEvalExp job with the following command line:
- This expression checks the time difference between JobA's actual run time and its estimated run time.
- If the calculated percent is less than or equal to 10, the job will succeed because the result is "True".
- If the calculated percent is greater than 10, the command will fail because the result is "False".
- When the SMAEvalExp job fails, Events can be configured to affect other jobs and send notifications based on the failure of this job.

#### Set the Value of a Property with an Expression

To set the value of a property using an expression to calculate the value:

- Use the ToInt function DiskSpace property in the calculation to change the value to an integers.
- Use the **=** (assignment) operator.

:::tip Example
The following expression sets the value of a global property named "Available" to the result of an arithmetic expression that includes a value from a Machine Instance property named "DiskSpace":

```SMAEvalExp.exe "[[=[[Available]]=(25/4 + 84.56 - ToInt([[MI.DiskSpace.MachName]]))]]"```

If the result is true, then command will succeed. If the result is false, the command will fail. If run through an OpCon job, Events can be configured to affect other jobs and send notifications based on the failure of this job.
:::

#### Set the Value of a Property Based on the Contents of Other Properties and/or Constants

To set the value of a property using an expression involving other properties to calculate the value:

- Use the ToInt function properties in the calculation to change their values to integers.
- Use the **=** (assignment) operator.

:::tip Example
The following calculates a User Property named "Target" based on a computation involving two other User Defined Properties and a constant:

```SMAEvalExp.exe "[[=[[Target]] =(ToInt([[Source1]])-ToInt([[Source2]]))/8]]"```

If "Source1" has a value of 85 and "Source2" has a value of 21, SMAEvalExp.exe will return an exit code of 0 and set the value of "Target" to a value of 8 (i.e., (85-21)/8 is equal to a value of 8).
:::

## Logging

The SMA Evaluate Expression utility writes any logging related information to the standard Job Output. SMA Technologies recommends configuring the Windows LSAM to capture the job output so you can easily use the View Job Output feature from the Enterprise Manager. For more information, refer to [Job Output Retrieval](https://help.smatechnologies.com/opcon/agents/windows/latest/Files/Agents/Microsoft/Job-Output-Retrieval.md) in the **Microsoft LSAM** online help and [Viewing Job Output](../../Files/UI/Enterprise-Manager/Performing-Job-Procedures-List.md#Viewing) in the **Enterprise Manager** online help.

## Exit Codes

| Exit Code | Description |
| :---: | --- |
| 0 | Expression evaluation succeeded. The result is included in the Job Output. |
| -1 |Expression evaluation failed. The error detail is included in the Job Output. |
