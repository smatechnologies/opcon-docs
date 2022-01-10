# Privileges

## Access Code Privileges

To implement Access Codes for securing jobs, each user must have the
appropriate Access Code privileges through one or more
[roles](./roles.md) to view and update jobs.

Because '<None\>' is an Access Code and is applied to all jobs by
default, all roles automatically have privileges to update jobs with the
'<None\>' Access Code. As additional Access Codes are created, the
administrator must grant privileges for the Access Codes to the
appropriate Role Name.

A user must be a member of a role with All Administrative Functions, All
Function Privileges, or must be in the ocadm role to manage Access Code
Privileges.

The following information applies to defining Access Code Privileges.

- **Role Name**: Defines the unique name of the Role.
- **Allow job updates?**: Determines if users in the Role can update
    jobs defined with an Access Code. If allowed, users can modify and
    delete the job definition in the Master and Daily. If not allowed,
    users can only view the job definition in the Master and Daily.
- **Revoked**: Provides the Access Codes not assigned to the Role
    Name.
- **Granted**: Provides the Access Codes assigned to the Role Name.
    Users will be able to see jobs with any of the granted access codes
    in the Master, Daily, and Schedule Operations.

## Function Privileges

Function Privileges are used to grant access to functions not related to
jobs. Each user must have function privileges via one or more
[roles](./roles.md) to perform actions within OpCon. By default, a new
role has no privileges. A user must be a member of a role with All
Administrative Functions, All Function Privileges, or must be in the
ocadm role to manage roles.

The following data information applies to defining Function Privileges:

- **Role Name**: Defines the unique name of the Role.
- **Granted Function Privileges**: Provides the Function Privileges
    assigned to the Role Name.

## All Administrative Functions

Grants privileges to perform the following functions in
OpCon:

Grant and Revoke Access Code Privileges

Grant and Revoke Schedule Privileges

Grant and Revoke Function Privileges

Grant and Revoke Batch User Privileges

Grant and Revoke Machine Privileges

Grant and Revoke Machine Group Privileges

[Import and Export Schedules](#Import)

[Maintain Access Codes](#Maintain)

[Maintain Audit History](#Maintain10)

[Maintain Calendars](#Maintain2)

[Maintain Departments](#Maintain3)

[Maintain Embedded Script](#Maintain13)

[Maintain Global Properties](#Maintain6)

[Maintain Job History](#Maintain11)

[Maintain Machine Groups](#Maintain4)

[Maintain Machines](#Maintain5)

[Maintain Reports](#Maintain12)

[Maintain Schedules](#Maintain7)

[Maintain Service Request](#Maintain8)

[Maintain Thresholds/Resources](#Maintain9)

Manage OpCon Roles

- Add new Roles
- Delete Roles
- Modify Roles

Manage User Accounts

- Add new User Accounts
- Delete User Accounts
- Modify User Accounts

## All Function Privileges

Grants privileges to perform the following functions in
OpCon:

- Access the Frequency Manager
- [All Administrative Functions](#all-administrative-functions)
- [All Daily Schedule Functions](#all-daily-schedule-functions)
- [All Job Master Functions](#all-job-master-functions)
- [All Notification Manager Functions](#all-notification-manager-functions)
- [All Schedule Operation Functions](#all-schedule-operation-functions)
- [View Embedded Script Contents](#view-embedded-script-contents)
- [View License Information](#view-license-information)
- [View Service Requests](#view-service-requests)
- [View Standard Reports](#view-standard-reports)

## All Notification Manager Functions

Grants access to all functions in Notification Manager including:

- Groups
  - Add Machine, Schedule, and Job groups
  - Delete Machine, Schedule, and Job groups
  - Update Machine, Schedule, and Job groups
- Notifications
  - Add new Notifications
  - Delete Notifications
  - Update Notifications
- Triggers
  - Add Machine, Schedule, and Job Event Triggers
  - Delete Machine, Schedule, and Job Event Triggers
  - Update Machine, Schedule, and Job Event Triggers

:::note
No other privileges are verified in Notification Manager. If granted access to this utility, users in the role can set up notifications for any machine, schedule, or job.
:::

## Build Daily Schedules

Grants privileges to build and check schedules:

- View schedules in to build
- Build schedules for defined dates
- Check schedules for defined dates

:::note
Users in the role must also have Schedule Privileges to perform these functions.
:::

## Delete Daily Schedules

Grants privileges to perform the following functions in the Daily
schedules:

- View schedules to delete
- Delete schedules for defined dates
- Check schedules for defined dates

:::note
Users in the role must also have Schedule Privileges to perform these functions.
:::

## Force-Start Schedules

Grants privileges to execute the Start command for schedules in the
Daily schedules.

:::note
Users in the role must also have Schedule Privileges to perform this function.
:::

## Hold Schedules

Grants privileges to execute the Hold command for schedules in the Daily
schedules.

:::note
Users in the role must also have Schedule Privileges to perform this function.
:::

## Release Schedules

Grants privileges to execute the Release command for schedules in the
Daily schedules.

:::note
Users in the role must also have Schedule Privileges to perform this function.
:::

## Import and Export Schedules

Grants access to all functions in the Schedule Import Export utility.

:::note
When mapping machines to a destination database on import, Machine Privileges are validated for the destination database.
:::

## Maintain Access Codes

Grants access to functions related to maintaining Access Codes.

- View all defined Access Codes
- Add new Access Codes
- Delete Access Codes
- Modify Access Codes

## Maintain Audit History

Grants access to all functions in the Audit Management plugin and Audit
Cleanup utility including:

- View all audit records
- Filter all audit records
- Archive and Purge specified audit records

:::note
No other privileges are verified in the Audit Management utility. If granted access to this utility, users in the role can all audit records.
:::

## Maintain Calendars

Grants access to functions related to maintaining Calendars.

- View all defined Calendars
- Add new Calendars
- Delete Calendars
- Modify Calendars

## Maintain Departments

Grants access to functions related to maintaining Departments.

- View all defined Departments
- Add new Departments
- Delete Departments
- Modify Departments

## Maintain Embedded Script

Grants access to functions related to maintaining Embedded Scripts:

- View all defined Scripts
- Add new Scripts
- Delete Scripts
- Modify Scripts
- Assign roles to Scripts
- View all defined Script Versions
- Create Script Versions
- Delete Script Versions
- View all defined Script Types
- Add new Script Types
- Delete Script Types
- Modify Script Types
- View all defined Script Runners
- Add new Script Runners
- Delete Script Runners
- Modify Script Runners

## Maintain Global Properties

Grants access to related to maintaining Global Properties.

- View all defined Global Properties
- Add new Global Properties
- Delete Global Properties
- Modify Global Properties

## Maintain Job History

Grants access to all functions in the History Management plugin and
History Cleanup utility including:

- View all job history records
- Filter all job history records
- Archive and purge specified job history records

:::note
No other privileges are verified in the History Management utility. If granted access to this utility, users in the role can manage history for any schedule or job.
:::

## Maintain Machine Groups

Grants access to functions related to maintaining Machine Groups.

- View all defined Machine Groups
- Add new Machine Groups
- Delete Machine Groups
- Modify Machine Groups

## Maintain Machines

Grants access to functions related to maintaining Machines.

- View all defined Machines
- Add new Machines
- Delete Machines
- Modify Machines
- Start communication with the LSAM
- Stop communication with the LSAM
- Disable job starts for the LSAM
- Enable job starts for the LSAM

:::note
To stop and to start communication with the LSAM from the Machine Information screen in Schedule Operations, the View Jobs in Schedule Operations privilege must also be granted.
:::

## Maintain Reports

Grants access to all functions (except locking and unlocking reports) in
the Report Management tool in the Reports view:

- Add new report specifications
- Copy report specifications
- Delete unlocked report specifications
- Update unlocked report specifications
- Export unlocked report specifications
- Import report specifications

:::note
Only users in the ocadm role can manage locked reports.
:::

## Maintain Schedules

Grants access to all functions related to the Schedule Master including:

- Add new Schedules
- Delete Schedules
- Modify Schedules

:::note
When a schedule is added, only the creator is automatically granted privileges to the new schedule; otherwise, the user must have Schedule Privileges to perform the Delete and Modify functions.
:::

## Maintain Service Request

Grants access to functions related to maintaining Service Requests in
the SMA Self Service solution.

- Add new Service Requests
- Delete Service Requests
- Modify Service Requests

## Maintain Thresholds/Resources

Grants access to functions related to maintaining thresholds and
resources.

- View all defined Thresholds/Resources
- Add new Thresholds/Resources
- Delete Thresholds/Resources
- Modify Thresholds/Resources

## Maintain Vision Actions

Grants access to functions related to maintaining Vision actions.

:::note
All events for Actions are submitted in the ocadm role.
:::

- Add Vision Actions
- Delete Vision Actions
- Modify Vision Actions

## Maintain Vision Frequencies

Grants access to functions related to maintaining Vision frequencies.

- Add Vision Frequencies
- Delete Vision Frequencies
- Modify Vision Frequencies

## Maintain Vision Workspaces

Grants access to functions related to maintaining Vision cards.

- Add Vision Cards
- Delete Vision Cards
- Modify Vision Cards

## View Embedded Script Contents

Grants users, who are not already members of a role with Maintain
Embedded Scripts or All Administrative Functions or All Function
Privileges, the permissions to view the contents of the embedded scripts
from the Job Details screen in the Enterprise Manager.

## View License Information

Grants access to the **License Information** tab in the **About
OpCon Enterprise Manager** window accessible from the **Help** menu
in the Enterprise Manager.

## View Service Requests

Grants users, who are not already members of a role with Maintain
Service Request or All Administrative Functions or All Function
Privileges, the permissions to use the Self Service solution and view
and trigger Service Requests.

## View Vision Workspaces

Grants users the permissions to view the Vision solution.

## Departmental Function Privileges

The Departmental Function Privileges are used to grant privileges
related to jobs based on individual departments. For all of the
privileges in this section, to affect a specific existing job, the role
must have the function privilege for the department and all of the
following privileges:

- [Schedule Privileges](#schedule-privileges) to the schedule containing the job
- [Access Code Privileges](#access-code-privileges) to the job's Access Code
- [Machine Privileges](#machine-privileges) to the job's Primary and Alternate machines if specified
- [Machine Group Privileges](#machine-group-privileges) to the Job's Machine Group if specified

The following data information applies to defining Function Privileges:

- **Role Name**: Defines the unique name of the Role.
- **Granted Departmental Privileges**: Provides the Departmental
    Privileges assigned to the Role Name. Departmental privileges are
    associated with <All Departments\>, the <General\> department, or
    user defined departments.

:::note
The <General\> department is the default department for all jobs.
:::

## All Daily Schedule Functions

Grants access to all functions related to daily Schedule maintenance
including:

- [Add Jobs to Daily Schedules](#Add)
- [Build Daily Schedules](#build-daily-schedules)
- [Delete Daily Schedules](#delete-daily-schedules)
- [Delete Jobs from Daily Schedules](#Delete)
- [Modify Jobs in Daily Schedules](#Modify)
- [View Jobs in Daily Schedules](#View2)

## All Job Master Functions

Grants access to all functions related to the Job Master including:

- [Add Jobs to Master Schedules](#Add2)
- [Delete Jobs from Master Schedules](#Delete2)
- [Modify Jobs in Master Schedules](#Modify2)
- [View Jobs in Master Schedules](#View3)

## View Standard Reports

Grants privileges to view all non-administrative
OpCon Reports.

:::note
To view administrative reports, the All Function Privileges privilege must also be granted.
:::

## All Schedule Operation Functions

Grants access to functions related to Schedule Operations including:

- Jobs
  - [Cancel Jobs](#Cancel)
  - [Force-Start Jobs](#Force-St)
  - [Hold Jobs](#Hold)
  - [Kill Jobs](#Kill)
  - [Mark Jobs Failed](#Mark)
  - [Mark Jobs Finished OK](#Mark2)
  - [Release Jobs](#Release)
  - [Restart Jobs](#Restart)
  - [Skip Jobs](#Skip)
  - [View Jobs in Schedule Operations](#View)
- Schedules
  - [Force-Start Schedules](#force-start-schedules)
  - [Release Schedules](#release-schedules)
  - [Hold Schedules](#hold-schedules)

:::note
To Delete Old Schedules, the Delete Daily Schedules privilege must also be granted. To modify Machine Status from Schedule Operations, the Maintain Machines privilege must also be granted.
:::

## Add Jobs to Daily Schedules

Grants privileges to add jobs from the Job Master to the Daily
schedules.

:::note
Users in the role must also have View Jobs in Master Schedules and View Jobs in Daily Schedules to perform this function.
:::

## Add Jobs to Master Schedules

Grants access to functions related to adding jobs to the Job Master
including:

- Add new jobs
- Copy Jobs
- View History
- View Job Master PERT

## Cancel Jobs

Grants privileges to execute the Cancel status change command for Jobs
in Operations.

:::note
Users in the role must also have View Jobs in Schedule Operations to perform this function in graphical interfaces.
:::

## Delete Jobs from Daily Schedules

Grants privileges to Delete Jobs in the Daily schedules.

:::note
Users in the role must also have View Jobs in Daily Schedules and Modify Jobs in Daily Schedules to perform this function in graphical interfaces.
:::

## Delete Jobs from Master Schedules

Grants privileges to functions related to deleting jobs from the Job
Master including:

- Delete Jobs
- View History
- View Job Master PERT

:::note
Users in the role must also have View Jobs in Master Schedules and Modify Jobs in Job Master to perform this function in graphical interfaces.
:::

## Force-Start Jobs

Grants privileges to execute the Start status change command for Jobs in
Operations.

:::note
Users in the role must also have View Jobs in Schedule Operations to perform this function in graphical interfaces.
:::

## Hold Jobs

Grants privileges to execute the Hold status change command for Jobs in
Operations.

:::note
Users in the role must also have View Jobs in Schedule Operations to perform this function in graphical interfaces.
:::

## Kill Jobs

Grants privileges to execute the Kill status change command for Jobs in
Operations.

:::note
Users in the role must also have View Jobs in Schedule Operations to perform this function in graphical interfaces.
:::

## Mark Jobs Failed

Grants privileges to execute the Mark Jobs Failed status change command
for Jobs in Operations.

:::note
Users in the role must also have View Jobs in Schedule Operations to perform this function in graphical interfaces.
:::

## Mark Jobs Finished OK

Grants privileges to execute the Mark Jobs Finished OK status change
command for Jobs in Operations.

:::note
Users in the role must also have View Jobs in Schedule Operations to perform this function in graphical interfaces.
:::

## Modify Jobs in Daily Schedules

Grants access to functions related to modifying jobs in the Daily
Schedules including:

- Modify Job Details
- Add/Modify/Delete Documentation
- Add/Modify/Delete Events
- Add/Modify/Delete Other Job Details
- Add/Modify/Delete Job Dependencies
- Add/Modify/Delete Threshold/Resource Dependencies
- Add/Modify/Delete Threshold/Resource Updates
- Check Daily Schedules
- Edit Daily Schedules

:::note
Users in the role must also have View Jobs in Daily Schedules to perform this function in graphical interfaces.
:::

## Modify Jobs in Master Schedules

Grants access to functions related to modifying jobs in the Job Master
including:

- Modify Job Details
- Add/Modify/Delete Documentation
- Add/Modify/Delete Events
- Add/Modify/Delete Frequency and Other Job Details
- Add/Modify/Delete Job Dependencies
- Add/Modify/Delete Threshold/Resource Dependencies
- Add/Modify/Delete Threshold/Resource Updates
- View History
- View PERT

:::note
Users in the role must also have View Jobs in Master Schedules to perform this function in graphical interfaces.
:::

## Release Jobs

Grants privileges to execute the Release status change command for Jobs
in Operations.

:::note
Users in the role must also have View Jobs in Schedule Operations to perform this function in graphical interfaces.
:::

## Restart Jobs

Grants privileges to execute the Restart status change command for Jobs
in Operations.

:::note
Users in the role must also have View Jobs in Schedule Operations to perform this function in graphical interfaces.
:::

## Skip Jobs

Grants privileges to execute the Skip status change command for Jobs in
Operations.

:::note
Users in the role must also have View Jobs in Schedule Operations to perform this function in graphical interfaces.
:::

## View Jobs in Daily Schedules

Grants access to functions related to viewing jobs in the daily
Schedules including:

- View Job Details
- View Documentation
- View Events
- View Job Dependencies
- View Other Job Details
- View Threshold/Resource Dependencies
- View Threshold/Resource Updates
- Check Daily Schedules

## View Jobs in Master Schedules

Grants access to functions related to viewing jobs in the Job Master
including:

- View Job Details
- View Documentation
- View Events
- View Frequency and Other Job Details
- View History
- View Job Dependencies
- View PERT
- View Threshold/Resource Dependencies
- View Threshold/Resource Updates

## View Jobs in Schedule Operations

Grants access to functions related to viewing jobs in the following
Enterprise Manager Operation views:

- List
- Matrix
- Gantt
- PERT Viewer
- Bar Chart
- Pie Chart

## Machine Privileges

Machine privileges are used to control the machines for users in a
[role](./roles.md) that have privileges to create and edit jobs. Within
Job Master and Job Daily, users will only see Machines based on their
role privileges. In Schedule Operations, the machine privileges are not
applied.

A user must be a member of a role with All Administrative Functions, All
Function Privileges, or must be in the ocadm role to manage Machine
Privileges. The following information applies to defining Machine
Privileges:

- **Role Name**: Defines the unique name of the Role.
- **Allow job updates?**: Determines if users in the Role can update
    jobs defined with a Machine. If allowed, users can modify and delete
    the job definition in the Master and Daily. If not allowed, users
    can only view the job definition in the Master and Daily.
- **Revoked**: Provides the machines not assigned to the Role Name.
- **Granted**: Provides the machines assigned to the Role Name. Users
    will be able to see jobs with any of the granted machines in the
    Master and Daily.

## Machine Group Privileges

Machine Group privileges are used to control the machine groups that
users in a [role](./roles.md) have privileges to maintain jobs on. Within
Job Master Maintenance and Daily Schedule Maintenance, users will only
see Machine Groups based on their role privileges. In Schedule
Operations, the machine group privileges are not applied.

A user must be a member of a role with All Administrative Functions, All
Function Privileges, or must be in the ocadm role to manage Machine
Group Privileges. The following information applies to defining Machine
Group Privileges:

- **Role Name**: Defines the unique name of the Role.
- **Allow job updates?**: Determines if users in the Role can update
    jobs defined with a Machine Group. If allowed, users can modify and
    delete the job definition in the Master and Daily. If not allowed,
    users can only view the job definition in the Master and Daily.
- **Revoked**: Provides the Machines not assigned to the Role Name.
- **Granted**: Provides the Machines assigned to the Role Name. Users
    will be able to see jobs with any of the granted machine groups in
    the Master and Daily.

:::note
Machine Group Privileges do not automatically grant privileges to the individual Machines in the group. To grant privileges to individual machines, refer to [Machine Privileges](#machine-privileges).
:::

## Schedule Privileges

Each user must have schedule privileges via one or more
[roles](./roles.md) to access schedules within
OpCon. By default, a new role has privileges
to no schedules. If a role is not granted privileges to a schedule,
users in that role will not see that schedule listed in the graphical
interfaces. A user must be a member of a role with All Administrative
Functions, All Function Privileges, or must be in the ocadm role to
manage roles.

:::note
Schedule Privileges for individual users are not dynamically granted if they are logged in. If the user is logged into the account when an administrator grants a Schedule Privilege to this user's role, then it is required for the user to log out and log back in for the privilege to be granted.
:::

The following information applies to defining Schedule Privileges:

- **Role Name**: Defines the unique name of the Role.
- **Revoked**: Provides the Schedules not assigned to the Role Name.
- **Granted**: Provides the Schedules assigned to the Role Name.

## Batch User Privileges

Most platforms require a valid user ID to be associated with each job
submitted by OpCon. Valid user IDs for each
of those platforms must be defined in OpCon.
The following platforms do not require a user ID to be defined: OS 2200,
BIS, and z/OS.

The Batch User Privileges in OpCon contain
the user ID definitions for each platform. Additionally, the Batch User
Privileges define which OpCon roles are
allowed to use which user ID's for the jobs.

The following information applies to defining Batch User Privileges:

- **Select Role**: Defines the unique name of the Role.
- **Target Operating System**: Provides the operating systems that
    require Batch User Privileges which includes MCP, IBM i, UNIX, VMS,
    and Windows.
- **Revoked**: Provides the Batch User IDs not assigned to the Role
    Name.
- **Granted**: Provides the Batch User IDs assigned to the Role Name.

## Embedded Script Privileges

Each user must have embedded script privileges via one or more
[roles](./roles.md) to access embedded scripts within
OpCon. By default, a new role has privileges
to no embedded scripts. If a role is not granted privileges to an
embedded script, users in that role will not see that embedded script
listed in the graphical interfaces. A user must be a member of a role
with All Administrative Functions, All Function Privileges, or must be
in the ocadm role to manage roles.

:::note
Embedded Script Privileges for individual users are not dynamically granted if they are logged in. If the user is logged into the account when an administrator grants an Embedded Script Privilege to this user's role, then it is required for the user to log out and log back in for the privilege to be granted.
:::

The following information applies to defining Embedded Script
Privileges:

- **Role Name**: Defines the unique name of the Role.
- **Revoked**: Provides the Embedded Scripts not assigned to the Role
    Name.
- **Granted**: Provides the Embedded Scripts assigned to the Role
    Name.
