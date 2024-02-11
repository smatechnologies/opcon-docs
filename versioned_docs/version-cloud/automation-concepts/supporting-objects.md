# Additional Objects

## Tags

*Tags* are labels or bookmarks you can create to group jobs based on business needs. Schedules are typically organized by process flow. Tags enable you to filter jobs whose process flow has nothing to do with each other but have something specific in common.

:::tip Example

- Tag each Job by the program name. This way you can easily see all Job using that program.
- Tag each job by the Global Properties it uses. This will allow you to find all jobs associated with a Global Property before updating its value.
- Tag each job by severity. This will allow you to see if any Jobs marked as "Critical" have failed. (Critical, High, Low, Maintenance)
- Tag each job by department. You can already filter Jobs by Department, but those departments also come with Department Level Privileges if you do not want to set the privileges but want the sorting capability tags can be used.
- Tag by job purpose. This will allow you to see jobs necessary to conform to Governmental Regulation, Company Policies, Vender Requirements, and so forth.

:::


## Properties

# Thresholds

A *threshold* is a user-defined placeholder consisting of a name and a numeric value. Thresholds are used to help resolve dependencies that
cannot be resolved by a job dependency. This means a specification can
be made for a job to not start until a specified threshold condition is
met. Thresholds are also used to allow external applications and systems
to affect schedules.

The following information applies to defining thresholds:

- **Name**: Defines the name for the threshold.
- **Documentation**: Provides an area for descriptions, explanations, and notes that can be updated for the threshold. For information on inserting hyperlinks into the Documentation area, refer to [Entering and Opening Hyperlinks in the Documentation Frame](../Files/UI/Enterprise-Manager/Entering-and-Opening-Hyperlinks.md) in the **Enterprise Manager** online help.
- **Threshold Value**: Defines a numeric value for a threshold.

:::tip Example
Jamie needs to create an External Application Dependency because she has an OpCon job named 'Testing' that is dependent on job processing on a machine where an LSAM is not installed.

- Jamie creates a threshold called **EXTERNALAPP** for 'Testing' in OpCon Administration and leaves the default value **0**.
- In Job Master, Jamie creates a threshold dependency for 'Testing' and makes the 'Testing' job dependent on the threshold **EXTERNALAPP**. Jamie will set the dependent value equal (**EQ**) to **1**.
- In the Job Master, Jamie creates a threshold update for the 'Testing' job and sets the Job Status to **Finished OK** for the Threshold **EXTERNALAPP** with a value of **0**. This takes place after JobA executes and will reset the threshold for the next time the job executes.
- Jamie builds the schedule and the 'Testing' job should be in a Wait Threshold/Resource Dependency state in Schedule Operations.
- On the machine with the job that the 'Testing' job is dependent on, Jamie will edit the external job so when the process finishes, it copies or FTPs an ASCII file to the SAM server. The file should contain the following OpCon event: $THRESHOLD:SET,EXTERNALAPP,1,username,event_password. This file should be placed in the MSGIN directory for the SAM.

**Result**: When the external OpCon event is received through the MSGIN, the threshold EXTERNALAPP is updated to a value of one, and the 'Testing' job starts processing if there are no other dependencies to resolve. When the 'Testing' job finishes, the threshold EXTERNALAPP is set back to zero.
:::

:::tip Example
Jamie has a multi-instance job named **UpdateCreditDatabase** that should run once for every ten (10) credit transactions. Each credit transaction causes a unique file to be written to the credit server.

- Jamie creates a threshold called **CreditTransactions** in OpCon Administration and leaves the default value 0.
- In Job Master Maintenance, Jamie creates a threshold dependency for **UpdateCreditDatabase** and makes the job dependent on the threshold **CreditTransactions**. Jamie will set the dependent value equal (**EQ**) to **10**.
- Jamie configures the SMA Resource Monitor to detect the unique files that arrive for each credit transaction. When each file arrives, the SMA Resource Monitor sends the following event to increment the value of the threshold **CreditTransactions** by 1:

  ```shell
  $THRESHOLD:SET,CreditTransactions,+1
  ```

- In the Notification Manager, Jamie creates a job event trigger on the **UpdateCreditDatabase** job, so when the job is **Submitted**, Notification Manager sends two events to SAM. The first event is to set **CreditTransactions** to a value of **0**. The purpose of this step is to reset the threshold for the next set of credit transactions that will arrive.

  ```shell
  $THRESHOLD:SET,CreditTransactions,0
  ```

- The second event is to add another copy of the UpdateCreditDatabase job to the Daily schedule.

  ```shell
  $JOB:ADD,[[$SCHEDULE DATE]],[[$SCHEDULE NAME]],[[$JOB NAME]],[[$FREQUENCY NAME]]
  ```

**Result**: When the schedule is built, the **UpdateCreditDatabase** job will be in a status of "Wait Threshold Dependency" in Schedule Operations. The SMA Resource Monitor increments the value of CreditTransactions each time a file arrives. When the value of **CreditTransactions** reaches ten (10), the UpdateCreditDatabase job runs. As soon as the job is Submitted, the Notification Manager executes the two events to reset the threshold to zero and add another copy of the UpdateCreditDatabase job so it can process the next ten records.
:::

# Resources

A *resource* is a user-defined value consisting of a name and a numeric limit. Resources are used to manage and limit the number of concurrently running jobs across schedules and machines in OpCon. Maximum job count on an LSAM limits concurrently running jobs on a specific machine. Conflict dependencies can also limit the number of concurrently running jobs, but conflict dependencies can be hard to manage in large numbers. Resources are more flexible because they are platform independent, easy to manage, and can be influenced by external events (refer to [External Events](../events/defining.md#external) in the **OpCon Events** online help).

The following information applies to defining resources:

- **Name**: Defines the name for the resource.
- **Documentation**: Provides an area for descriptions, explanations, and notes that can be updated for the resource.
- **Max Resources**: Defines a numeric maximum number of resources.
- **Resources in Use**: Indicates the number of resources currently in use by OpCon jobs.

:::tip Example
Jamie has thirty jobs requiring the use of tape drives on a mainframe. The mainframe has only 10 physical tape drives for use. The thirty jobs could run at any time based on other job dependencies, but the number of those jobs running concurrently must never exceed the number of physical tape drives.

- Jamie creates a resource called **TapeDrive** in OpCon Administration and sets the Max Resources to **10**.
- For *each* job (Job1 through Job30), Jamie creates a resource requirement to require one TapeDrive resource.

**Result**: For Job1 through Job30, the SAM uses one TapeDrive resource each time a job is submitted. If all 10 resources are in use, the SAM waits until a resource is available before submitting the next job.
:::

# Calendars

OpCon supports several types of calendars to help provide flexible scheduling around holidays and any other non-working days. All calendars must be manually updated for each year. Each calendar should be cleaned up by deleting old dates, and then dates for next year should be added. The types of calendars supported include:

- [Holiday Calendars](#Holiday)
- [Annual Plan Calendars](#Annual)

The following information applies to defining calendars:

- **Name**: Defines the name for the calendar.
- **Documentation**: Provides an area for descriptions, explanations, and notes that can be updated for the calendar.
- **Date List**: Defines all dates defined for the calendar.
- **Schedules using for holidays (\#)**: Defines the schedules that are using the calendar to define holidays in addition to that schedule's default Holiday Calendar (HC).
  - The number indicates the total number of schedules using the calendar.
- **Schedules/Jobs/Frequencies Using this Calendar (\#)**: Defines each schedule, job, and frequency using the calendar.

## Holiday Calendars

When a [Job and Schedule Frequencies](../automation-concepts/frequencies.md) uses working days to determine the included days for the frequency, the non-working days are determined by the Holiday Calendars associated with the schedule.

- The dates from the [Individual Holiday Calendars](#Individu) are always included.
- The [Master Holiday Calendar](#Master) dates are included only if the schedule is set to use the Master Holiday calendar.
- Dates from [Additional Holiday Calendars](#Addition) are only included if an Additional Holiday Calendar is associated with the schedule.

### Individual Holiday Calendars

An individual Holiday Calendar stores non-working days for a single schedule. The individual Holiday Calendar is automatically created when a schedule is initially created. The calendar is called HC:<schedule name\>, where <schedule name\> is the name of the schedule to which it applies. When a schedule is first created, OpCon sets Sundays to non-working days in the case of a 6-day workweek. If a 5-day workweek is defined, Saturdays and Sundays are set as non-working days. Administrators must set additional days as non-working days as required.

### Master Holiday Calendar

A Master Holiday Calendar stores non-working days for multiple schedules. The Master Holiday Calendar is installed with the OpCon database. By default, there are no non-working days on this calendar. Administrators must set any desired non-working days. These non-working days affect all schedules that are configured to use the Master Holiday Calendar.

### Additional Holiday Calendars

Additional Holiday Calendars are user-defined calendars that store non-working dates that can be associated with multiple schedules. Administrators can create as many Additional Holiday Calendars that are needed for automation. The non-working days on these calendars only affect the schedules that have the calendar selected for Additional Holidays.

## Annual Plan Calendars

Annual Plan Calendars are user-defined calendars containing a list of dates. When associated with a [Job and Schedule Frequencies](../automation-concepts/frequencies.md), the calendar can have a positive or negative effect. The effect the calendar has on a given frequency is based on the type of frequency that is defined for each job or schedule.

### Positive Annual Plan Calendars

Positive Annual Plan Calendars are typically used to schedule jobs on non-repetitive days. For example, certain jobs need to run on specific days of a year, such as March 20th, June 23rd, September 30th, and December 17th. An Annual Plan Calendar can be created to store the desired dates. A frequency with the [When to Schedule](../automation-concepts/frequencies.md#frequency-definition) option of Annual Plan can then be assigned to the required jobs. In addition, jobs may be set up to run up to 15 days before or after these dates. This is particularly useful for scheduling jobs around a fiscal cycle. Annual Plan Calendars may be used by any job on any schedule.

:::note
The Master Holiday Calendar may also be defined as a Positive Annual Plan Calendar with the Annual Plan frequency setting.
:::

### Negative Annual Plan Calendars

Annual Plan Calendars describe dates on which jobs **cannot** be scheduled. If any [When to Schedule](../automation-concepts/frequencies.md#frequency-definition) option other than Annual Plan is defined for a Frequency, the dates on the Calendar are treated as Negative Annual Plan dates.

- If the initial calculated Frequency date is in the Negative Annual Plan Calendar, the job is not scheduled.
- If the initial calculated Frequency date is a Non-Workday and **not** in the Negative Annual Plan Calendar, then the surrounding Negative Annual Plan dates are treated like additional holiday dates for A/O/B/N resolution.
