---
sidebar_label: "Release Notes"
---

# OpCon Release Notes

## OpCon 21.0.20

2023 September

#### Solution Manager

:white_check_mark: **OPCON-20654**: Updated the Duration column on the Processes page to update every 30 seconds and display seconds.

#### ImpEx2 Web Service

:white_check_mark: **OPCON-21194**: Duplicate jobs are created due to case sensitivity. The keys used during existing job matches changed to uppercase to ensure consistent checking avoiding case sensitivity problems. All calls to extract objects from the database have also been updated to ignore case sensitivity.

:white_check_mark: **OPCON-21515**: During schedule deployment when schedule exists, duplicate event records for schedules and jobs can be created. The correction checks for duplicate event records that could be created due to schedule transformation and adjusted the comparison key adding the frequency name to ensure duplicate events are not added to the JEVENTS table.

## OpCon 21.0.19

2023 August

#### Solution Manager

:white_check_mark: **OPCON-17189**: Modified the Job Status component to show the correct job status. This will allow the user to view the correct job status when selecting a job in PERT or in Processes.

:white_check_mark: **OPCON-21144**: Fixed an issue in Self Service where comma was reported as invalid character when it was present in characters to strip.

:white_check_mark: **OPCON-21333**: Fixed an issue in Self Service where characters to strip were not working as intended.

#### REST API

:white_check_mark: **OPCON-21489**: Fixed a performance issue in the OpCon API where a container job timed out fetching details if there were a large number of schedules built in daily tables.

## OpCon 21.0.18

2023 July

#### Server

:white_check_mark: **OPCON-15037**: Fixed issue of incorrect estimate start time of a daily job that depends on multi-instance jobs.

#### ImpEx2 Web Service

:white_check_mark: **OPCON-20706**: A null pointer exception occurred during the Simulation process when checking the batch user associated with a File Transfer task definition and the source or destination machine is not defined in the target OpCon system. A message has been included indicating that the batch user could not be checked as the File Transfer machine was not defined.

## OpCon 21.0.17

2023 July

#### Server

:white_check_mark: **OPCON-16073**: License is now recognized and applied automatically in OpCon on Linux.

## OpCon 21.0.16

2023 June

#### Server

:white_check_mark: **OPCON-20073**: Fixed an issue in the installer that caused MFT agent system records to be removed from the database during upgrades that needed a SQL script to fix and re-add them.

:white_check_mark: **OPCON-12035**: Fixed an issue where StartTimeCalculator was doing wrong calculation of start time for daily jobs.

#### Solution Manager

:white_check_mark: **OPCON-19777**: Fixes issue where single machine selection was being ignored and schedule build was running for each machine in the machine group.

## OpCon 21.0.15

2023 May

#### Server

:white_check_mark: **OPCON-14393**: Fixed an issue when using DDI to create new jobs, the DependentScheduleInstance column was being affected due to the day offset.

#### REST API

:white_check_mark: **OPCON-16731**: Fixed an issue where migration was timing out due to large AUDITRECSVIEW table.

#### ImpEx2 Web Service

:white_check_mark: **OPCON-19570**: Fixed an issue with schedule import where autoBuildTime was missing from the schedule definition if import a schedule with auto build time of 00:00.

## OpCon 21.0.14

2023 April

#### Solution Manager

:white_check_mark: **OPCON-18823**: Added performance improvements inside the Processes page in Solution Manager to efficiently handle large databases.

#### REST API

:white_check_mark: **OPCON-18942**: Fixed a potential issue with log rollovers when clock changes.

#### ImpEx2 Web Service

:eight_spoked_asterisk: **OPCON-19514**: For OpCon Deploy new import feature, separate auto delete days reset from auto build days reset. This feature requires OpCon Deploy 22.2.

:white_check_mark: **OPCON-19164**: Fixed an issue in Deploy simulation where role check failed to list missing roles.

## OpCon 21.0.13

2023 March

#### REST API

:white_check_mark: **OPCON-15392**: Fixed an issue where the replicated OpCon database did not have all tables reseeded for unique ids and hence had a primary key violation error when building or adding jobs to daily.

## OpCon 21.0.12

2023 February

#### ImpEx2 Web Service

:eight_spoked_asterisk: **OPCON-18323**: Added Windows Authentication logic when establishing a connection to the OpCon Database from the OpCon ImpEx2 server.

:white_check_mark: **OPCON-18382**: Fixed an issue in deploy simulation where the schedule comparison section would not show the actual results.

:white_check_mark: **OPCON-18546**: Corrected invalid check for Conflict dependency when retrieving job master key.

:white_check_mark: **OPCON-18846**: Fixed an issue in deploy simulation check where ocadm role displayed as missing.

## OpCon 21.0.11

2022 November

#### REST API

:white_check_mark: **OPCON-17814**: Improved query performance for the HistoryJob endpoint to efficiently manage large amounts of data.

:white_check_mark: **OPCON-18286**: Fixed the OpCon API that used to deadlock with SAM or SMASchedMan during periods of high activity especially during schedule builds, while the API fetched data.

#### ImpEx2 Web Service

:eight_spoked_asterisk: **OPCON-18274**: Added Windows Authentication to Impex2 Server.

## OpCon 21.0.10

2022 October

#### Solution Manager

:white_check_mark: **OPCON-16312**: Fixed issues with self service where migration would fail and service requests would not execute for some input types (Date, Choice, etc.) if user-defined variable name contains dot.

:white_check_mark: **OPCON-16337**: Added the options to disable builds for schedule named instances without parameters.

#### ImpEx2 Web Service

:white_check_mark: **OPCON-17766**: Fixed an issue where schedule import failed to extract the thresholds/resources used in the complex expressions for Job Expression Events.

## OpCon 21.0.9

2022 September

#### Server

:white_check_mark: **OPCON-17629**: Fixed an issue in the notification system where a SMTP server that does not require authentication could not send notification emails as Notify Handler was forcing authentication.

#### REST API

:white_check_mark: **OPCON-17292**: Fixed performance issue in dailyJobs endpoint when includeDetails=true and there are a lot of container jobs.

#### Installation

:white_check_mark: **OPCON-17234**: Updated Installer to allow users to set a default (initial) password for database users 'opconsam' and 'opconui'. Please note that if these users already exist in the database, no changes will be made to their passwords.

## OpCon 21.0.8

2022 August

#### Server

:white_check_mark: **OPCON-17343**: Fixed an issue in Notify Handler with SSL and TLS based Email and text message notifications.

#### REST API

:white_check_mark: **OPCON-16185**: Fixed an issue in OpCon API where new machines were shown as created by Unknown user in Audit Management.

## OpCon 21.0.6

2022 June

#### Server

:white_check_mark: **OPCON-16723**: Fixed an issue in expression evaluator, where Windows file arrival paths were incorrectly resolved when running OpCon on Docker.

:white_check_mark: **OPCON-16980**: Fixed an issue where Netcom tracking files were getting populated with machine up/down messages that would never get cleared.

#### ImpEx2 Web Service

:white_check_mark: **OPCON-16749**: Fixed an issue in ImpEx2 service where an SAP job import and deploy caused problem with certain header types in the XML request to the SAP system. The XML headers are now cleared before the request is made.

:white_check_mark: **OPCON-16345**: Fixed ImpEx2 to fail the deploy if batch user for SQL jobs does not exist in the target system.

## OpCon 21.0.5

2022 May

#### Installation

:white_check_mark: **OPCON-15798**: Fixed an issue where new OpCon installs did not work for non-contained databases. Going forward, only contained databases will be allowed as it is a requirement when supporting Azure SQL because security related information like users can't exist outside the database in the cloud. Existing installs without containment will keep working as they are.

:white_check_mark: **OPCON-16513**: Fixed an issue with the database migration during a minor upgrade where if the Windows Domain user running the upgrade did not have the correct permissions to the database, the migration failed. The installer should have used the SQL user from the database config file (DAT file) for the migration, instead.

#### REST API

:white_check_mark: **OPCON-16687**: Fixed an issue in OpCon API where concurrent access to its authentication end point sometimes caused issues with the token management and the API stopped running.

#### Solution Manager

:white_check_mark: **OPCON-16012**: Fixed a performance issue in Solution Manager PERT view of the Operations page, where the request timed out in some instances resulting in the PERT view not being displayed.

:white_check_mark: **OPCON-16701**: Fixed an issue in Solution Manager where Resource In Use label did not allow more than 5 digits.

#### Server

:white_check_mark: **OPCON-15863**: Fixed an issue where SMALDAPMon service sometimes resulting in primary key violations or other errors when inserting new users in the OpCon database.

#### Enterprise Manager

:white_check_mark: **OPCON-16476**: Corrected Enterprise Manager environment switching problem by removing database connection pool from Enterprise Manager connections and only using database connection pool for ImpEx2 connections.

#### ImpEx2 Web Service

:white_check_mark: **OPCON-16321**: Fixed an issue in ImpEx2 where external job dependencies between named instance schedules and a normal schedule was not extracted correctly and subsequently not deployed correctly. The named instance schedule id of the normal schedule was incorrectly set to 0 when it should have been set to 1.

:white_check_mark: **OPCON-16074**: Fixed an issue in ImpEx2 service where a new import exception message is now added if a duplicate script type name is detected because script type name must be unique.

:white_check_mark: **OPCON-16336**: Fixed an issue in ImpEx2 service where validation was not done for missing batch users for Windows, Unix, IBM i, and MCP file transfer jobs before deploying them to the target environment.

:white_check_mark: **OPCON-16498**: Fixed an issue in ImpEx2 service where it did not support LSAM feedback and Job Status Description for events.

## OpCon 21.0.4

2022 March

#### Installation

:white_check_mark: **OPCON-16206**: Ampersand is now allowed as a characters in DB user passwords when running the OpCon installer.

#### Server

:white_check_mark: **OPCON-15619**: Added fix in ENS to prevent error when saving records in the EscalaitonRecipientHistory table.

#### ImpEx2 Web Service

:eight_spoked_asterisk: **OPCON-16167**: Include Role checking during deployment simulation.

:white_check_mark: **OPCON-16313**: Fixed an issue in ImpEx2 with SQL jobs where the User ID did not get deployed or updated for Windows authentication.

## OpCon 21.0.3

2022 February

#### ImpEx2 Web Service

:white_check_mark: **OPCON-15995**: Implemented removal of roles for ImpEx2, that are no longer required during deployment of existing schedule/package.

:white_check_mark: **OPCON-16111**: Fixed an issue in ImpEx2 where connections to the database were not getting disposed and eventually all TCP dynamic ports were getting used up.

:white_check_mark: **OPCON-16123**: When adding a new role to a schedule, the role must be defined in the target OpCon system. If the role is not defined, the deployment will fail with an error message, Role not defined in destination opCon system.

## OpCon 21.0.2

2022 January

#### Solution Manager

:white_check_mark: **OPCON-15951**: Fixed an issue in Solution Manager where editing job dependencies in daily had performance issues when the list of total schedules and named instances for each of those was very large.

## OpCon 21.0.1

2022 January

#### Installation

#### Enterprise Manager

:white_check_mark: **OPCON-15949**: Fixed a bug that occurred while using export Daily Job Audit Management.

#### REST API

:white_check_mark: **OPCON-15737**: Fixed memory issue where expired tokens were not removed from cache.

:white_check_mark: **OPCON-15809**: Fixed issue with Vision processing occurring when no cards were defined in the database and further performance improvement on Vision statistics queries.

:white_check_mark: **OPCON-16031**: Fixed an issue in the API where a port specified in the INI file was not checked for a valid TLS certificate.

#### Solution Manager

:white_check_mark: **OPCON-15782**: Added fix to the migration page redirect to update variables needed in self service.

#### ImpEx2 Web Service

:white_check_mark: **OPCON-15836**: Corrected a problem when changing a Null Job to a Windows Job during deployment.

:white_check_mark: **OPCON-15723**: Changed script mapping during deployment process to use names instead of numeric id values. The script-name, type-name and runner-name is a unique combination.

#### Utilities

:white_check_mark: **OPCON-16024**: Fixed a bug where selecting a different drive to install the configuration utility did not affect it and it was installed on the system drive.

## OpCon 21.0.0

2021 October

#### Documentation

:eight_spoked_asterisk: **OPCON-14481**: Added Overview chapter to the OpCon Installation section of documentation. The new chapter contains updates to the installation and update process and highlights any breaking changes requiring action as part of upgrading.

:white_check_mark: **OPCON-15505**: Removed OpCon.UserDefindFunctions.pdf from the distributed Database Scripts.

#### Enterprise Manager

:white_check_mark: **OPCON-15579**: Fixed an issue in ImpEx2 where the schedule id was smallint instead of int causing numeric overflow when schedule id is greater than 32xxx during schedule import.

:white_check_mark: **OPCON-15530**: Fixed an issue in Enterprise Manager, where Episys sub type jobs had parsing issues, when going to a None sub type, saving it and going back to the Episys sub type.

:white_check_mark: **OPCON-15467**: Fixed an issue in Enterprise Manager where adding or updating certain MCP job arguments gave an invalid characters in argument error.

:white_check_mark: **OPCON-15465**: Fixed a global property extract issue in schedule extract that threw an index out of bounds error, when using it.

:white_check_mark: **OPCON-15278**: Fixed an issue where jobs using the Corelation sub-type would display a "String index out of range" error.

:white_check_mark: **OPCON-15079**: Fixed an issue where the "Number of Days to Keep a Service Request Execution" Server Option was unable to be changed.

:white_check_mark: **OPCON-15008**: Fixed an issue that prevented creating or opening a job using the Corelation sub-type when using Global Properties.

:white_check_mark: **OPCON-14816**: Fixed an issue where a SQL job using the SQL DTExec job action did not display the batch user that the job ran as.

:white_check_mark: **OPCON-14777**: Fixed an issue where the machine options "Use Schedule Instance Machine" and "Run on Least Tasked Machine" were not save-able on Windows and UNIX jobs.

:white_check_mark: **OPCON-14706**: Fix display error where command line showing up in "Other Options" instead of "Files To Delete".

:white_check_mark: **OPCON-14658**: Fixed an issue where the Self Service navigation item would not display for some users.

#### General

:white_check_mark: **OPCON-14583**: Updated the SMA Customer Community link in the user interfaces.

:white_check_mark: **OPCON-15525**: Fixed an issue where job output requests would error with a code of 36235 in EM and a general error in Solution Manager.

#### Installation

:white_check_mark: **OPCON-14847**: Added validation during the REST API startup routine to ensure the database has been properly updated.

:white_check_mark: **OPCON-14750**: The OpCon installer now checks to see if .Net Core 3.1 is installed on the system, required by the core services, and if not, installs it.

:eight_spoked_asterisk: **OPCON-14889**: OpCon is now self-contained with .Net Core dependencies, so the system does not require .Net Core installed on it to install and run OpCon Core services.

:eight_spoked_asterisk: **OPCON-14824**: OpCon Deploy's ImpEx2 server component now has its own installer and will be available with the OpCon package with the same release cadence. This makes it easy to upgrade ImpEx2 only when needed without having to upgrade OpCon or Deploy client. It also makes it easy to upgrade Deploy client without upgrading ImpEx2 or OpCon.

:eight_spoked_asterisk: **OPCON-14761**: Added a verification step to the SMA OpCon Install that validates SMA OpCon Database Scripts, SMA OpCon Documentation, SMA OpCon SAM, and SMA OpCon Solution Manager have been uninstalled before proceeding.

:white_check_mark: **OPCON-14732**: Fixed an issue where the database connection information was not editable when doing a Repair/Modify.

:white_check_mark: **OPCON-14684**: Fixed an issue where database scripting variables would be reset to default values when performing an upgrade.

:white_check_mark: **OPCON-14657**: Updated the database connection screen to re-use the database server and database name entered in the database set-up screen during new installations.

:white_check_mark: **OPCON-14600**: Fixed an issue where the SMA OpCon install would not remember SQL authentication selections when an attempt to modify the installation was made.

:white_check_mark: **OPCON-14576**: Fixed an issue where the SMA OpCon install would use an incorrect directory for data files when installing on a non-system drive.

:white_check_mark: **OPCON-14120**: Fixed an issue in job dependencies for the automatically installed SMA Utility schedule if jobs were converted to multi-instance jobs.

#### REST API

:white_check_mark: **OPCON-15475**: Add support for SQL job types in Daily Jobs GET and PUT endpoints.

:eight_spoked_asterisk: **OPCON-15678**: A new endpoint has been added to the API to delete thresholds.

:eight_spoked_asterisk: **OPCON-15609**: The API now gets/sets the documentation value of a global property.
A new endpoint has been added to the API to delete global properties.

:eight_spoked_asterisk: **OPCON-15575**: Implemented GET and PUT functionality for instance properties on the /api/dailySchedules endpoint

:eight_spoked_asterisk: **OPCON-15464**: Added validation for daily job events through the PUT endpoint.

:eight_spoked_asterisk: **OPCON-15363**: Added a searchable endpoint for the UI to consume. api/metadata/eventTriggers

:eight_spoked_asterisk: **OPCON-15310**: Added the functionality to retrieve LSAM Feedback and complex expression events by using the following endpoint: api/dailyjobs/{dailyJobId}/events

:eight_spoked_asterisk: **OPCON-15309**: Added the functionality to create complex expression events by using the following endpoint: api/dailyjobs/{dailyJobId}/events

:eight_spoked_asterisk: **OPCON-15308**: Added the functionality to create exit description events by using the following endpoint: api/dailyjobs/{dailyJobId}/events

:eight_spoked_asterisk: **OPCON-15307**: Added the functionality to create LSAM Feedback events by using the following endpoint: api/dailyjobs/{dailyJobId}/events

:eight_spoked_asterisk: **OPCON-15306**: Added the functionality to retrieve job status and exit code events by using the following endpoint: api/dailyjobs/{dailyJobId}/events

:eight_spoked_asterisk: **OPCON-15297**: Added the functionality POST/PUT/DELETE daily job events through the PUT endpoint for daily jobs.

:eight_spoked_asterisk: **OPCON-15296**: Added the functionality to retrieve daily job events in the GET endpoint for daily jobs.

:eight_spoked_asterisk: **OPCON-15295**: Added the PUT and DELETE endpoints for jobs jobStatus in daily job events.

:eight_spoked_asterisk: **OPCON-15294**: Added the Post endpoint for jobs jobStatus in daily job events: api/dailyJobs/{dailyJobId}/events

:eight_spoked_asterisk: **OPCON-15293**: Added a new endpoint, GET api/dailyJobs/{id}/eventTriggers, to retrieve Event Triggers defined for a Daily Job.

:eight_spoked_asterisk: **OPCON-14790**: Added a new endpoint for adding a job dependency to a daily job, POST api/dailyjobs/{dailyJobId}/dependencies.

:eight_spoked_asterisk: **OPCON-14789**: Added the ability to modify job dependencies as part of the daily jobs endpoint. Added an endpoint to update an individual job dependencies.

:eight_spoked_asterisk: **OPCON-14788**: Added a new endpoint for deleting a job dependency on a daily job, DELETE api/dailyjobs/{dailyJobId}/dependencies/{id}.

:eight_spoked_asterisk: **OPCON-14785**: Added a new endpoint for retrieving daily job dependencies.

:eight_spoked_asterisk: **OPCON-14680**: Added the ability for the OpCon API to filter machines by file transfer role. The criterial "fileTransferRole"accepts values of "both", "none", "source", "destination", and "any".

:eight_spoked_asterisk: **OPCON-14670**: The OpCon API can now create new incident tickets in the Daily Job Definitions.

:eight_spoked_asterisk: **OPCON-14655**: The OpCon API now provides functionality to edit file transfer job details for a daily job having Windows/Unix machines.

:eight_spoked_asterisk: **OPCON-14557**: The OpCon API now provides functionality to view file transfer job details for a daily job.

:eight_spoked_asterisk: **OPCON-14784**: The API now supports adding, updating and deleting daily job dependencies alone on a daily job.

:eight_spoked_asterisk: **OPCON-14521**: Add support for OS2200 job types in Daily Jobs GET and PUT endpoints

:white_check_mark: **OPCON-15648**: Fixed issue where a request to return unencrypted Global Properties fails to return all of them.
Standardized default false values in the database for TOKEN.TKNENCRYPTED to be 'False'.

:white_check_mark: **OPCON-15607**: Fixed an issue where a global property value exceeded the maximum length when encrypted.

:white_check_mark: **OPCON-15437**: Fixed an issue where dates submitted through self-service across time zones were being incorrectly parsed as the preceding day.

:white_check_mark: **OPCON-15399**: Fixed an issue in Solution Manager / API, where navigating to the schedule build page to build a multi-instance schedule on machine groups resulted in an error.

:white_check_mark: **OPCON-15300**: Removed additional error codes that were coming back with unsuccessful PUT requests to api/dailyJobs.

:white_check_mark: **OPCON-15280**: Regular expression pattern in Self Service Requests will no longer be evaluated for empty values.

:white_check_mark: **OPCON-15270**: Fixed an issue where Regex was not working with double quotes inside of self-service text variable.

:white_check_mark: **OPCON-15249**: Fixed an issue where when updating an Embedded Script job to run on a machine group instead of single machine, an error would be returned.

:white_check_mark: **OPCON-15075**: Fixed an issue where editing a daily job definition would throw a null reference exception when no job dependency object was provided.

:white_check_mark: **OPCON-15011**: Fixed an issue where Self Service would display a "Cannot load Service Request Executions" error for several days after upgrading to OpCon 20 or higher.

:white_check_mark: **OPCON-14886**: Fixed an issue in self signed certificate generation where hostname did not match with the name on the certificate and it gave NET::ERR_CERT_COMMON_NAME_INVALID error when trying to browse Solution Manager.

:white_check_mark: **OPCON-14871**: Fixed NullReference exception with 20.0 migration when Service Requests were missing information.

:white_check_mark: **OPCON-14843**: Fixed an issue where the user's role was removed and the password was changed after attempting to retrieve a token.

:white_check_mark: **OPCON-14808**: Fixed an issue where acknowledging a collection of escalating notifications with multiple notifications already acknowledged gave a 500 response code.

:white_check_mark: **OPCON-14800**: Fixed an issue in OpCon API where a user could not add instance properties on a file transfer job and any existing ones were removed.

:white_check_mark: **OPCON-14713**: Fixed an issue where Service Request event definitions would be incorrect when using a system variable more than once in the definition.

:white_check_mark: **OPCON-14666**: /api/roles offset and limit query string parameters have been fixed.

:white_check_mark: **OPCON-14663**: Fixed an issue where changing daily job statuses as a user with no defined external token would throw a System.NullReferenceException error.

:white_check_mark: **OPCON-14649**: Fixed an issue where a user without user management privileges would receive a "The user specified in the request does not exist." error when executing a service request defined with the Submit events as ocadm option enabled.

:white_check_mark: **OPCON-14611**: Fixed an issue where retrieving job summary information for a job with a machine group would fail with a "'TRIM' is not a recognized built-in function name" error on SQL Server versions lower than SQL Server 2017.

:white_check_mark: **OPCON-14587**: Fixed an issue where retrieving Job Output for a previous run of a job would generate an error when the job was recurring and currently in a waiting status.

:white_check_mark: **OPCON-14238**: Removed the name of a role when it is displayed in Vision Cards or Service Requests when the user does not have permission to that role.

#### Server

:white_check_mark: **OPCON-15718**: Automatically use MultipleActiveResultSets connection string parameter to better support async database operations.

:eight_spoked_asterisk: **OPCON-15016**: OpCon now supports Azure SQL Database to host the OpCon database to leverage cloud based infrastructure and benefit from Azure scalability, backup plans and out-of-the-box fault-tolerance. NOTE: Managed Azure SQL instances are currently not supported (Differences: https://docs.microsoft.com/en-us/azure/azure-sql/database/features-comparison). Also for consistency, all new OpCon installations (both, on-prem SQL and Azure SQL) will use the "contained database" setting, which means OpCon users will be defined in the database, and not at the SQL Server level.

:white_check_mark: **OPCON-15463**: Fixed a bug where single quotes in a job add event cause SAM to loop an 'Incorrect syntax' error.

:white_check_mark: **OPCON-15400**: Fixed an issue where the subject used in "SendEmail" application was incorrectly sent.

:white_check_mark: **OPCON-14929**: Fixed an issue in Netcom where under heavy communication load with agents, if a message acknowledgement is lost or delayed, Netcom created a bad 'resend' message, which caused issues on the agent side in the tracking file.

:white_check_mark: **OPCON-14516**: Fixed a performance issue with schedule builds that contain large amounts of sub-schedules.

:white_check_mark: **OPCON-14464**: Fixed an issue where an embedded script with a line ending in backslash gave syntax errors when running it on agent.

:white_check_mark: **OPCON-12267**: Fixed issue with Unknown audit records caused by Notify Handler when a connection is lost.

#### Solution Manager

:white_check_mark: **OPCON-15626**: Added a shortcut for creating new global properties from the global property selector.

:eight_spoked_asterisk: **OPCON-15674**: Thresholds can now be consulted/changed in Solution Manager.

:eight_spoked_asterisk: **OPCON-15605**: Added functionality to maintain Global Properties.

:eight_spoked_asterisk: **OPCON-15576**: Added Start Time to the edit daily schedule screen

:eight_spoked_asterisk: **OPCON-15378**: Task Details for OS2200 daily jobs can now be consulted / changed from the Daily Job Definition screen.

:eight_spoked_asterisk: **OPCON-15317**: Daily Job events can now be viewed in Solution Manager.

:eight_spoked_asterisk: **OPCON-14920**: Job Dependencies can now be consulted / changed from the DailyJob Definition screen.

:eight_spoked_asterisk: **OPCON-14906**: Added a Property Selector Dialog for easily searching and selecting a property.

:eight_spoked_asterisk: **OPCON-14851**: Add Button to navigate in context on the Processes Page to quickly consult the Active Jobs associated to an Agent.

:eight_spoked_asterisk: **OPCON-14818**: Buttons like Save and Cancel are now always visible. Avoid to force the user to scroll down to perform an action.

:eight_spoked_asterisk: **OPCON-14774**: DailyJob Definition Page section menu redesigned. It was moved on the left, is always visible and can be reduced

:eight_spoked_asterisk: **OPCON-14770**: Added the number of pending and exhausted notifications to the escalation indicator. Escalated notifications may now be acknowledged even if any of the selected notifications were already acknowledged.

:eight_spoked_asterisk: **OPCON-14752**: Updated the Property Selector to show all properties, Global, Job Instance, Schedule Instance, and Machine Instance. An icon was added to differentiate the type. Properties may also be filtered by value in addition to name.

:eight_spoked_asterisk: **OPCON-14654**: The Operations Processes and Agents grids can be modified to only display the desired columns for Schedules, Jobs, or Machines. This selection is automatically saved in the user's profile.

:eight_spoked_asterisk: **OPCON-14605**: Added Filter Profiles to the Operation Summary page for viewing statistics directly in the dashboard. Added the ability to navigate to the processes page with the selected Filter Profile already applied.

:eight_spoked_asterisk: **OPCON-14575**: Escalated notifications can now be acknowledged from Solution Manager or through the OpCon API. A pop-up notification will appear within Solution Manager when new notifications enter escalation. An indicator was added to the bar at the bottom of the screen by the Agent Status icon when there are escalating notifications which need to be acknowledge. Finally a dialog was added allowing users to acknowledge the escalated notifications.

:eight_spoked_asterisk: **OPCON-14574**: File Transfer Jobs can now be consulted / changed from the DailyJob Definition screen.

:eight_spoked_asterisk: **OPCON-12005**: Added Resource Update and Threshold Update sections to the Daily Job Definition page.

:eight_spoked_asterisk: **OPCON-12004**: Expression Dependencies can now be consulted / changed from the DailyJob Definition screen.

:eight_spoked_asterisk: **OPCON-12003**: Threshold and Resource Dependencies can now be consulted / changed from the DailyJob Definition screen.

:eight_spoked_asterisk: **OPCON-11031**: UNIX Jobs can now be consulted / changed from the DailyJob Definition screen.

:eight_spoked_asterisk: **OPCON-15112**: File Transfer jobs with a source or destination machine of IBMi, z/OS, MCP, and OS2200 can now be consulted / changed from the DailyJob Definition screen.

:eight_spoked_asterisk: **OPCON-14963**: Added the Daily Schedule Summary information panel

:eight_spoked_asterisk: **OPCON-14707**: Task Details for SQL daily jobs can now be consulted / changed from the Daily Job Definition screen.

:white_check_mark: **OPCON-15573**: Fixed an issue where Excludes Job Dependencies displayed an option to change Offset

:white_check_mark: **OPCON-15532**: Fixed an issue in Solution Manager self service, where a user input of type choice submitted the name of the choice instead of its value.

:white_check_mark: **OPCON-15500**: Fixed an issue where advanced failure criteria was not displayed for Windows and Unix daily jobs

:white_check_mark: **OPCON-15255**: Fixed Solution Manager to correctly display multiple choices in a Self Service even if they represent the same value.

:white_check_mark: **OPCON-15226**: Fixed a bug that wiped the entire screen when a filter profile was shared with a role that had the id of 0.

:white_check_mark: **OPCON-14949**: Fixed an issue where a Schedule Build request could be submitted for the incorrect day if opening the date picker but selecting no values.

:white_check_mark: **OPCON-14903**: Fixed an issue in Agents page where right panel actions weren't enabled after a page refresh.

:white_check_mark: **OPCON-14875**: Fixed an issue where environment variable should not contain "=" character.

:white_check_mark: **OPCON-14864**: Fixed an issue in Resource Dependency read only mode where condition was displayed in red instead of green when total resource number was equal to required resource.

:white_check_mark: **OPCON-14860**: Fixed an issue in Schedule/ Resource right panel in PERT, where dependent / update job list was not filtered by the selected Schedule / Resource.

:white_check_mark: **OPCON-14791**: Fixed an issue where clicking on a Vision Card with an offset redirects on the wrong Date in the Operation Processes Page.

:white_check_mark: **OPCON-14674**: Fixed a cosmetic issue where NumberField does not appear correctly in some situations

:white_check_mark: **OPCON-14597**: Fixed an issue in Schedule Build where the schedules would not build "On Hold" even when the option was selected.

:white_check_mark: **OPCON-14584**: Fixed an issue where validation was not case-insensitive and allowed the same name to be used for Vision actions, frequencies, and remote instances.

:white_check_mark: **OPCON-14567**: Fixed an issue in Schedule Build where the pre-defined properties on a Named Instance schedule were not able to be updated.

:white_check_mark: **OPCON-13063**: Requesting output for an invalid job in Solution Manager no longer displays an error. The option is now correctly disabled when the job has no output.

#### Utilities

:eight_spoked_asterisk: **OPCON-15335**: OpCon now includes a utility that publishes usage data (daily task counts) to the cloud and/or local file. The utility job is set to 'do not schedule' and needs to be updated with suitable arguments and set to build 'released' (it is installed with default arguments). Details of the utility are here: https://github.com/smatechnologies/usage-data

:white_check_mark: **OPCON-15504**: Small fix in invalid data for SMAUtility schedule.

:white_check_mark: **OPCON-15337**: Fixed the transaction log backup file in the backup utility scripts to be initialized so it does not keep appending to it and grow forever.

:white_check_mark: **OPCON-12473**: Fixed an issue with History.exe to purge/archive the correct amount of records according to the documentation.

#### ImpEx2 Web Service

:eight_spoked_asterisk: **OPCON-14859**: Updated ImpEx2 service (used by Deploy) to include SQL agent job enhancements - using Win Auth for package execution (DTExec) and running Integration Services Server packages - as part of the deployment to OpCon environments.

:white_check_mark: **OPCON-15461**: Fixed an issue where ImpEx2 did not start up if the database was configured to force encrypted connections.

:white_check_mark: **OPCON-15450**: Fixed an issue in ImpEx2 where deploying a schedule with a frequency having the same name but different case in the name deployed the schedule to target with some missing properties and missing job level frequencies.

:white_check_mark: **OPCON-15436**: Fixed an error with deployment when calendars associated with the schedule or package to be deployed does not exist in target server.

:white_check_mark: **OPCON-15401**: Fixed an issue where multiple embedded script versions referenced from jobs in the deployed schedule resulted in null pointer exceptions, as only one of those script versions was getting imported into Deploy.

:white_check_mark: **OPCON-15394**: Fixed an issue where global properties in environment variables for a job were not getting extracted into the deploy repository.

:white_check_mark: **OPCON-15385**: Fixed an issue in ImpEx2 where the target system's roles/access codes were overwritten with privileges from the source system in Deploy, if a role/access code with the same name existed on the target system.

:white_check_mark: **OPCON-15339**: Added startup check to make sure Impex is using a correct DB schema version. Added new CLI option "--skipVersionValidation" to skip this and continue without the check.

:white_check_mark: **OPCON-15268**: Fixed an issue in ImpEx2 where a change in a job's threshold/resource update on 'job status' and 'value' did not get deployed to the target system correctly.

:white_check_mark: **OPCON-15146**: Fixed issue where partial-match transformation rules only applied to the first occurrence in a string

:white_check_mark: **OPCON-15136**: Fixed an issue where SAM reused an id for a job instance due to a race condition with Deploy

:white_check_mark: **OPCON-15089**: Fixed an issue where wildcard named job and schedule transformation rules that have the same "current value" caused incorrect transformation rules to be applied to them. Also,
added suffix wildcard. "*job" will match if job/schedule ends with "job". "j*ob" and "job\*" will continue behaving as normal and will match if the job/schedule starts with "job"

:white_check_mark: **OPCON-15080**: Fixed an issue where only one of multiple external dependencies to the same schedule and job were imported into Deploy.

:white_check_mark: **OPCON-15069**: Fixed an issue where a multi-instance schedule converted to single instance before deployment to a target system, did not get converted correctly on the target.

:white_check_mark: **OPCON-15067**: Fixed an issue in Deploy where updating frequency priorities for an existing schedule on the target system, caused a loss of some scheduling options on the frequencies of the newly deployed schedule.

:white_check_mark: **OPCON-15049**: Fixed an issue in ImpEx2 where blank batch users were "missing" in simulations.

:white_check_mark: **OPCON-15036**: Fixed an issue where Thresholds/Resources/Global Properties could sometimes get duplicate entries in the target environment when transformation rules converted source names of those entities to the same target names.

:white_check_mark: **OPCON-15030**: Fixed an issue in ImpEx2 where obsolete job dependencies in an existing schedule on target system were not getting removed.

:white_check_mark: **OPCON-15023**: Fixed an issue that allows Deploy to correctly prefix a schedule with the environment code in events.

:white_check_mark: **OPCON-15010**: Fixed an issue where scheduling options of the frequencies were not updated correctly if there was changes to them in the schedule that was deployed.

:white_check_mark: **OPCON-15001**: Fixed an issue where deploying a schedule with no documentation would not remove any existing documentation.

:white_check_mark: **OPCON-15000**: Fixed an issue in ImpEx2 service where checking available machine features sometimes resulted in a null pointer exception.

:white_check_mark: **OPCON-14985**: Fixed an issue in batch deploy where the job sometimes ended in a concurrent modification exception.

:white_check_mark: **OPCON-14898**: Fixed an issue in ImpEx2 where deploying a schedule with a department that has no role assigned threw an exception.

:white_check_mark: **OPCON-14839**: Fixed an issue in ImpEx2 to prevent unexpected data loss when job threshold/resource dependencies or events were modified in the schedule that was deployed.

:white_check_mark: **OPCON-14830**: Improved error message content returned to Deploy when the OpCon API is unreachable.
