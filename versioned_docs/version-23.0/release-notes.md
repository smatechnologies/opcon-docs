---
sidebar_label: "Release Notes"
---

# OpCon Release Notes

## OpCon 23.0.11

**NOTE**: Verify/Upgrade these components if applicable: **ServiceNow** Connector – 21.4 or higher, **WebServices** Connector – 21.2 or higher, **Deploy** – 22.4 or higher

2025 July

#### Installation

:white_check_mark: **OC-3366**: Fixed an issue where SQL database scripts included an extra character on the GO line, which could cause execution errors during deployment.

#### Solution Manager

:white_check_mark: **OC-30**: Fixed an issue where users were unable to add frequency to a multi-instance schedule.

:white_check_mark: **OC-52**: Fixed an issue where the time 12:00 PM was displayed as 0:00 PM in Solution Manager Studio when editing frequency values on a job.

:white_check_mark: **OC-351**: Fixed an issue where Frequencies cross references were not working when the frequency name contains "/".

:white_check_mark: **OC-2795**: Fixed an issue where jobs with dependencies and a start offset time displayed incorrect start times.

:white_check_mark: **OC-3152**: Fixed an issue where it was not possible to update an encrypted Global Property if you did not know the original value of the Property.

:eight_spoked_asterisk: **OC-2843**: Added more resilience to scheduling message logic for guaranteed delivery. Also added some extra debug messages at Trace Level 1 to provide us more information in the logs in case the problem recurs in spite of improved logic.

#### REST API

:white_check_mark: **OC-3284**: Improved error messaging in the Batch Users API for cases where the platform or platform ID is null in POST and PUT requests.

#### ImpEx2 Web Service

:white_check_mark: **OC-2889**: Included Deploy 'Frequency_Use_Existing_Definitions' transformation rule capabilities that uses an existing frequency definition when the target job exists.

:white_check_mark: **OC-3092**: Fixed a problem when performing script runner match. Removed CommandFormat match as runner name and platform id provide the required information.

## OpCon 23.0.10

**NOTE**: Verify/Upgrade these components if applicable: **ServiceNow** Connector – 21.4 or higher, **WebServices** Connector – 21.2 or higher, **Deploy** – 22.4 or higher

2025 May

#### Server

:eight_spoked_asterisk: **OC-2186**: Added OAuth support for SMTP notifications, replacing Basic SMTP (Exchange), which will be deprecated by Microsoft in September.

:white_check_mark: **OC-3**: Fixed an issue where the TLS Certificate Distinguished Name of Windows agents was overwritten when the agents disconnected and reconnected.

:white_check_mark: **OC-8**: Fixed an issue where stopping SMA OpCon Service Manager service from services console, times out and says service did not respond to the start or control request in a timely fashion.

:white_check_mark: **OC-2166**: Fixed an issue where SMANotifyHandler had its log locked, causing it to become unresponsive.

#### Solution Manager

:white_check_mark: **OC-15**: Fixed an issue where viewing Isolate Dependency Chain diagram in PERT resulted in a blank page or a timeout.

:white_check_mark: **OC-22**: Modified OS2200 daily jobs details to exclude completion statuses with empty or null condition words.

:white_check_mark: **OC-165**: Fixed an issue where the User Input Caption value was cleared when changing the User Input Type while configuring inputs for a Service Request.

:white_check_mark: **OC-208**: Fixed an issue where deleting a role associated with a filter caused the Operations Summary page to appear blank.

:white_check_mark: **OC-346**: Fixed an issue where ACS daily jobs did not display the machine or machine group name.

:white_check_mark: **OC-348**: Fixed an issue where Requires XML Escape was not available for ACS master jobs.

:white_check_mark: **OC-350**: Resolved an issue in daily jobs where the start machine for File Transfer jobs was not updated when the source machine changed.

:white_check_mark: **OC-354**: Fixed an issue where semicolons in instance properties of an event caused the event template to display blank.

:white_check_mark: **OC-2115**: Fixed an issue where editing the Daily Job through Solution Manager was resetting all restart data.

:white_check_mark: **OC-2119**: Fixed an issue with default values in the JCL Access dialog for z/Os jobs.

:white_check_mark: **OC-2671**: Fixed an issue where JCL Data was not displayed for daily and master jobs.

:white_check_mark: **OC-2674**: Fixed an issue where users could not see some jobs associated with tags in tag manager.

:white_check_mark: **OC-2710**: Fixed an issue where only the first 20 instance property sets were displayed when adding jobs to a daily schedule.

#### ImpEx2 Web Service

:white_check_mark: **OC-2578**: Fixed a problem in ImpEx2 during workflow deployment when a resource or threshold name contains a period (.) causing deployment failure.

:white_check_mark: **OC-2679**: Fixed a problem during deployment when schedule privileges are lost. When role does not include inherit all schedules and a deployment is performed and the role names are the same but characters have different case then the schedule privilege is incorrectly removed.

:white_check_mark: **OC-2688**: Fixed a problem during schedule deployment when the schedule definition included BIS jobs and the schedule exists on the target OpCon system. The BIS RunId field was incorrectly reset.

## OpCon 23.0.9

**NOTE**: Verify/Upgrade these components if applicable: **ServiceNow** Connector – 21.4 or higher, **WebServices** Connector – 21.2 or higher, **Deploy** – 22.4 or higher

2025 February

#### Solution Manager

:white_check_mark: **OPCON-25939**: Fixed an issue where job execution history was empty for multi-instance jobs.

## OpCon 23.0.8

**NOTE**: Verify/Upgrade these components if applicable: **ServiceNow** Connector – 21.4 or higher, **WebServices** Connector – 21.2 or higher, **Deploy** – 22.4 or higher

2025 January

#### Solution Manager

:white_check_mark: **OPCON-24949**: Fixed an issue causing agents page to timeout after selecting an agent.

:white_check_mark: **OPCON-25103**: Fixed issue "Cannot Load Daily Jobs" when right clicking certain jobs in Operations page.

:white_check_mark: **OPCON-25159**: Fixed a permissions issue with master jobs where users with any privilege in &lt;All Departments&gt; were incorrectly able to modify master jobs.

:white_check_mark: **OPCON-25845**: Fixed issue causing nodes to stack on top of one another due to incorrect node positions on the workflow page.

:white_check_mark: **OPCON-25878**: Fixed an issue where departments to which the user did not have access were available when adding or modifying a Master Job.

:white_check_mark: **OPCON-25907**: Fixed an issue where 'Use Exit Code From Script Result' was not properly updated in MS SQL Script jobs for daily jobs.

:white_check_mark: **OPCON-25954**: Web Services jobs, although not fully supported, no longer cause an error when updating some details of the job.

#### ImpEx2 Web Service

:white_check_mark: **OPCON-25833**: Fixed a problem during the script extract process to include a list of roles associated with the script and a problem during the script deployment process to assign the roles associated with the script. This fix requires Deploy version 25.0.0.

## OpCon 23.0.7

**NOTE**: Verify/Upgrade these components if applicable: **ServiceNow** Connector – 21.4 or higher, **WebServices** Connector – 21.2 or higher, **Deploy** – 22.4 or higher

2024 November

#### Solution Manager

:white_check_mark: **OPCON-19737**: Fixed an issue where a machine's capabilities were not validated when it was added to a machine group.

:white_check_mark: **OPCON-24492**: Updated default values for new OpCon MFT agents.

:white_check_mark: **OPCON-24512**: Fixed an issue where retry on failure values were removed after updating a daily job.

:white_check_mark: **OPCON-24563**: Fixed an issue with 'View Service Requests' privilege that let the user see jobs that they did not permissions for.

:white_check_mark: **OPCON-24637**: Fixed an issue in Episys Answer Prompts jobs where double quotes in the Prompt value caused incorrect display.

:white_check_mark: **OPCON-25111**: Fixed an issue where a role could not be updated if a machine group to which it has access is deleted.

:white_check_mark: **OPCON-25757**: Fixed an issue that caused an error when clicking the Test button while creating a new notification trigger.

#### REST API

:white_check_mark: **OPCON-25846**: Fixed a memory leak issue on the Script Runners page when interacting with large databases.

#### ImpEx2 Web Service

:white_check_mark: **OPCON-25787**: Fixed an issue where Environment Variables were lost during the deployment of new Unix Embedded Script jobs. 

## OpCon 23.0.6

**NOTE**: Verify/Upgrade these components if applicable: **ServiceNow** Connector – 21.4 or higher, **WebServices** Connector – 21.2 or higher, **Deploy** – 22.4 or higher

2024 October

#### Server

:white_check_mark: **OPCON-23582**: Fixed an issue where the estimated start time of a job was incorrect when it depended on a job in a different schedule.

:white_check_mark: **OPCON-25117**: OpCon wasn't resolving references to embedded scripts or batch users in the ACS integration agent config at agent start time.

#### Solution Manager

:white_check_mark: **OPCON-21205**: Fixed an issue where a frequency date excluded from a schedule was saved as a decimal number in the database.

:white_check_mark: **OPCON-22258**: The Job Execution History now displays the correct duration for skipped jobs.

:white_check_mark: **OPCON-23704**: Fixed an issue where Job Output Parsing settings in Job Definition Task Details were not saved.

:white_check_mark: **OPCON-24338**: Fixed an issue so that WS_FTPPro job sub-types now have advanced failure criteria.

:white_check_mark: **OPCON-24391**: Fixed an issue where updating a daily job on a multi-instance schedule incorrectly updated its job dependencies if they were on the same sub-schedule.

:white_check_mark: **OPCON-24462**: Updated Arguments field for embedded script jobs to allow up to 2000 characters.

:white_check_mark: **OPCON-24489**: Fixed an issue where the advanced failure criteria of a master job was not properly set or displayed in Solution Manager.

:white_check_mark: **OPCON-24490**: Fixed a duplicate key error when viewing the workflow of a schedule that has cross schedule job dependency with same job name.

:white_check_mark: **OPCON-24499**: Fixed an issue where duplicate frequencies were displayed in inactive frequency list in Master Jobs page.

:white_check_mark: **OPCON-24601**: Fixed an issue where a user's full name was not properly set.

:white_check_mark: **OPCON-24632**: Fixed an issue where 'Use Exit Code From Script Result' was not properly updated in MS SQL Script jobs.

:white_check_mark: **OPCON-24660**: Fixed an issue where the Time between Notifications was not properly displayed or updated in Escalation Manager Rules.

:white_check_mark: **OPCON-24960**: Improved performance when viewing and updating a Master Job.

:white_check_mark: **OPCON-24998**: Fixed issue where the default Job Build Status for a Master Job Frequency was not 'Released'.

:white_check_mark: **OPCON-25042**: Fixed Episys Answer Prompts jobs to accept parentheses in the Prompt and Response fields.

:white_check_mark: **OPCON-25070**: Fixed an issue that prevented creating Unix Job Output Parsing jobs and saving/displaying a value for Application Log Path.

#### REST API

:eight_spoked_asterisk: **OPCON-25012**: The OpCon API now returns HSTS headers (strict-transport-security) for HTTPS responses, which makes it impossible for your browser to attempt an HTTP connection with the API (forces HTTPS connections), and hence prevents an HSTS vulnerability.

:white_check_mark: **OPCON-23460**: Fixed an issue where schedule builds failed when frequency On Intervals with every number of days was used.

:white_check_mark: **OPCON-23710**: Fixed an issue where fetching the history of a job in a schedule would return the history of all jobs with the same name across all schedules.

:white_check_mark: **OPCON-24583**: Fixed an issue where passing a null type in the PUT and POST machines endpoints requests caused an unhandled exception.

#### ImpEx2 Web Service

:white_check_mark: **OPCON-24669**: Fixed a problem when deploying schedules and reset AutoBuild and AutoDelete options selected by Deploy.
1) In package deployments added reset options to schedules when versions match and schedule contents not updated.
2) Changed reset to either set new selected values or remove options if values set to 0.

:white_check_mark: **OPCON-25144**: Fixed a problem when importing schedule definitions that contain multiple roles and the role names have been transformed to the same name causing a duplicate key violation. Fix ensures that duplicate roles and no longer inserted.

## OpCon 23.0.5

**NOTE**: Verify/Upgrade these components if applicable: **ServiceNow** Connector – 21.4 or higher, **WebServices** Connector – 21.2 or higher, **Deploy** – 22.4 or higher

2024 August

#### Solution Manager

:white_check_mark: **OPCON-23523**: Fixed an issue where the forward slash (/) was not allowed in daily OS 2200 jobs.

:white_check_mark: **OPCON-23628**: Fixed an issue where ACS plugins' updates to configuration would not save.

:white_check_mark: **OPCON-23997**: Fixed an issue where a selectedIds query parameter did not select the rows.

## OpCon 23.0.4

**NOTE**: Verify/Upgrade these components if applicable: **ServiceNow** Connector – 21.4 or higher, **WebServices** Connector – 21.2 or higher, **Deploy** – 22.4 or higher

2024 July

#### Server

:white_check_mark: **OPCON-20726**: Fixed an issue in SMALDAPMon where it did not recover after losing connection to the LDAP server while fetching roles. SMALDAPMon will now try to reconnect three times.

:white_check_mark: **OPCON-22670**: Fixed an issue where jobs using Remote Instance is automatically placed on hold. Jobs using Remote Instance should be able to run correctly now.

:white_check_mark: **OPCON-23632**: Fixed an issue where schedule build and delete logs were not being deleted periodically.

#### Solution Manager

:white_check_mark: **OPCON-17142**: Fixed an issue in Vision Settings page where selecting a tag from a list did not populate the Pattern field with the selected tag.

:white_check_mark: **OPCON-17491**: Fixed an issue where permissions to view departments were incorrect.

:white_check_mark: **OPCON-21201**: Fixed an issue in Multi-Forecast where frequencies with "Do Not Schedule" build status were not displayed in purple.

:white_check_mark: **OPCON-23052**: Fixed an issue in Visions page where clicking the edit button in the bread crumb was redirecting users to page not found. Users will now be redirected to the correct page to edit the group tag.

:white_check_mark: **OPCON-23087**: Fixed issue in Notification Triggers page where removing an email message type also removes all other message types. Users will now be able to remove an email message type without affecting other types.

:white_check_mark: **OPCON-23225**: Fixed an issue in Master Schedule Definition page where the Save button was not enabled after changes were made to instance properties of a named instance schedule.

:white_check_mark: **OPCON-23301**: Fixed an issue in PERT diagram where some dependency lines were missing for some schedules.

:white_check_mark: **OPCON-23343**: Corrected a grammatical error in an error message where certain function privileges are required to access a particular page.

:white_check_mark: **OPCON-23457**: Fixed an issue where role permissions were inadvertently overwritten by stale data.

:white_check_mark: **OPCON-23519**: Fixed an issue where users and roles were not refreshing.

:white_check_mark: **OPCON-23524**: Fixed an issue where valid regular expressions were considered invalid in Self-Service Requests.

:white_check_mark: **OPCON-23530**: Fixed an issue where the Role_ocadm checkbox was incorrectly disabled on the Access Management > Users > Roles tab.

:white_check_mark: **OPCON-23588**: Fixed an issue causing users to timeout when using multiple browser tabs. User activity timeout will now be shared between multiple tabs.

:white_check_mark: **OPCON-23591**: Fixed an issue where an On Request frequency was not able to save with a date of February 29.

:white_check_mark: **OPCON-23814**: Fixed an issue where master jobs cross references did not display all cross-referenced jobs.

:white_check_mark: **OPCON-23976**: Fixed an issue where Deployment Information section in Master Schedule Definition page was missing.

#### REST API

:white_check_mark: **OPCON-23540**: Fixed an issue where a user's external event password is corrupted during a migration from OpCon version 19 to 23.

## OpCon 23.0.3

**NOTE**: Verify/Upgrade these components if applicable: **ServiceNow** Connector – 21.4 or higher, **WebServices** Connector – 21.2 or higher, **Deploy** – 22.4 or higher

2024 May

#### Solution Manager

:white_check_mark: **OPCON-22674**: Fixed an issue in Audit History report where sorting by Category was not working correctly.

:white_check_mark: **OPCON-23533**: Fixed an issue where some password-related error messages were not correct.

#### REST API

:white_check_mark: **OPCON-21833**: Fixed an issue which occurred when re-establishing an authenticated connection with an OpConMFT machine.

:white_check_mark: **OPCON-23349**: Fixed an issue where some modifications to a role did not take effect immediately for all logged in users.

#### ImpEx2 Web Service

:white_check_mark: **OPCON-23345**: Fixed a problem where the schedule multi-instance values are not reset correctly during deployment when the schedule definition already exists.

:white_check_mark: **OPCON-23521**: Fixed a problem in Frequency Run Limits when fields Number of Runs and Latest Run Time are not reset correctly during deployment update.

## OpCon 23.0.2

**NOTE**: Verify/Upgrade these components if applicable: **ServiceNow** Connector – 21.4 or higher, **WebServices** Connector – 21.2 or higher, **Deploy** – 22.4 or higher

2024 April

#### Installation

:white_check_mark: **OPCON-23104**: Modified SMADB_Backup script from having WITH NOINIT to having WITH INIT and SMADB_TLog_Backup script from having WITH INIT to having WITH NOINIT.

#### Solution Manager

:white_check_mark: **OPCON-22994**: Fixed an issue where named instance schedules could not be created when Solution Manager was in French.

:white_check_mark: **OPCON-23015**: Fixed an issue where the Save button in daily jobs definition page was enabled without any changes.

:white_check_mark: **OPCON-23065**: Fixed an issue where users with privilege "Modify Jobs in Master Schedules" could not save changes to master jobs.

:white_check_mark: **OPCON-23072**: Fixed an issue where PERT diagram breadcrumbs for sub-schedules were missing.

:white_check_mark: **OPCON-23106**: Resolved an issue where the parameter "Requires XML Escape Sequences" for some Agents was incorrect.

:white_check_mark: **OPCON-23107**: Resolved an issue that blocked tab navigation on the Access Management page when the interface was set to French.

:white_check_mark: **OPCON-23108**: Fixed an issue where Users and Roles were not correctly displayed in a Firefox browser.

:white_check_mark: **OPCON-23247**: Fixed an issue that caused a runtime error when saving IBMi Spool File values in Master Jobs.

:white_check_mark: **OPCON-23248**: Fixed an issue where users were unable to remove frequencies from schedules.

:white_check_mark: **OPCON-23251**: Fixed an issue where the resolved value for the date user input in Self-Service was incorrect when the time zone was set to Central European Time.

#### REST API

:white_check_mark: **OPCON-22270**: Fixed an issue where retrieving data in Schedule and Job History Report was timing out.

## OpCon 23.0.1

**NOTE**: Verify/Upgrade these components if applicable: **ServiceNow** Connector – 21.4 or higher, **WebServices** Connector – 21.2 or higher, **Deploy** – 22.4 or higher

2024 March

#### Solution Manager

:white_check_mark: **OPCON-23054**: Fixed an issue when adding jobs to a daily schedule, the schedule and job names in results dialog appeared in lowercase.

:white_check_mark: **OPCON-23207**: Fixed issue where all nodes will have red borders when a schedule is first loaded onto the workflow. This change removes the red border from these nodes and only nodes on position (0, 0) will have red borders.

#### ImpEx2 Web Service

:white_check_mark: **OPCON-23055**: Fixed a problem during schedule deployment removing schedule named instances if the new version of the schedule no longer has any defined schedule named instances.

:white_check_mark: **OPCON-23091**: Fixed an issue during deployment where the global property value was erroneously mixed up when there were other property names with a similar pattern.

## OpCon 23.0.0

**NOTE**: Verify/Upgrade these components if applicable: **ServiceNow** Connector – 21.4 or higher, **WebServices** Connector – 21.2 or higher, **Deploy** – 22.4 or higher

2024 January

#### Installation

:white_check_mark: **OPCON-23030**: Added argument -V10 to SMA Check Identity Limit Job.

:white_check_mark: **OPCON-23031**: Modified SMADB_TLog_Backup script from having WITH NOINIT to having WITH INIT.

#### Server

:eight_spoked_asterisk: **OPCON-22272**: Updated SMA Connection Config utility that configures the connection string OpCon uses to communicate with the database. It had a vulnerability in the UI part of the application, which is now removed (the UI part) and it only works as a command line utility with all the existing options for configuration, and also added options that can be listed by running SmaConnectionConfig.exe --help. Also, this is now a self-contained .Net 6 application.

:eight_spoked_asterisk: **OPCON-22683**: GuidewireCloud: This feature surfaces the Guidewire job logs in OpCon. Users can now review Guidewire related job log content in a single location allowing for faster action and more informed decisions.

:eight_spoked_asterisk: **OPCON-23007**: License expiration emails will no longer be sent to SMA USA and Europe office when the option 'Send Email to SMA Office' is enabled. They will still be sent to recipients defined in 'Send Email CC'.

:white_check_mark: **OPCON-22914**: Fixed an issue where the Start time Calculator continues calculating and never displays the time after upgrade.

#### Solution Manager

:eight_spoked_asterisk: **OPCON-15102**: This milestone introduces Access Management features, empowering administrators with comprehensive control over user and role management within Solution Manager. Administrators now have complete functionality to efficiently handle various aspects of user and role management. This includes creating new users and roles, duplicating an existing user or role, and removing obsolete users or roles. Additionally, administrators can set password expiration, enable external tokens, and enforce password resets as part of streamlined user management. Within role management, administrators can effortlessly oversee general privileges and make updates to activities, batch users, departments, resources, and user permissions.

:eight_spoked_asterisk: **OPCON-15109**: z/OS: This epic delivers the z/OS job type for both master and daily jobs in Solution Manager. Key features include capabilities to create batch, started task, command, REXX, tracked, and queued job actions. In addition, users can tailor their workflows by defining pre-run, failure criteria and job output. Whether you need to create a new z/OS job or modify an existing one, Solution Manager has you covered in its latest feature rollout.

:eight_spoked_asterisk: **OPCON-15110**: BIS: This epic delivers the BIS job type for both master and daily jobs in Solution Manager. The BIS capabilities allow users to create new or modify existing BIS data and file dependency definitions for their BIS jobs.

:eight_spoked_asterisk: **OPCON-19088**: License and Support: This feature delivers Solution Manager users a view of their environment providing details on licensing, version, and contact information.

:eight_spoked_asterisk: **OPCON-22376**: Daily Jobs: This feature delivers an additional view into the configuration of your daily jobs. Users will see an a new configuration category in the right hand panel providing a comprehensive set of details related to the daily job selected.

:eight_spoked_asterisk: **OPCON-22659**: Changed how Studio displays job types for ACS Integrations so that the integration application is displayed. This will clarify job types when viewing schedules in Studio.

:eight_spoked_asterisk: **OPCON-22685**: ACS: This feature delivers advanced failure criteria for jobs built with the ACS SDK. Advanced failure criteria empowers users to set more complex criteria to determine the success or failure of a job. This is a powerful feature that allows users to override basic failure criteria for the primary job to determine the outcome desired.

:eight_spoked_asterisk: **OPCON-22689**: This feature allows users to create Batch Users which are usable by Agents implementing the new ACS architecture.

:white_check_mark: **OPCON-19825**: Fixed an issue in Manage Groups page where setting or removing a filter would clear the selected check boxes.

:white_check_mark: **OPCON-19850**: Fixed an issue in Manage Groups page where changes to a group's name were reset when the Name filter was applied.

:white_check_mark: **OPCON-20719**: Fixed an issue in Master Jobs page where non-admin users were able to see agents they didn't have privileges to.

:white_check_mark: **OPCON-21298**: Fixed an issue where clicking the Back button on certain pages in Vision Settings would result in a "Page Not Found" error.

:white_check_mark: **OPCON-21390**: Fixed an issue where a wrong date was appended to the names of downloaded Solution Manager archive log files.

:white_check_mark: **OPCON-21479**: Fixed an issue in Studio Canvas where clicking a node on the right-hand panel did not highlight the node and bring it into view.

:white_check_mark: **OPCON-22004**: Fixed an issue where the pre-defined Login Security Message was empty during login.

:white_check_mark: **OPCON-22332**: Fixed an issue in Master Schedule Definition page where the Save button was enabled without any changes.

:white_check_mark: **OPCON-22679**: Corrected the display of frequency start times when a job has schedule level frequencies.

:white_check_mark: **OPCON-22781**: Resolved a bug which would occasionally prevent users from restarting schedules that contain Container Jobs.

:white_check_mark: **OPCON-22787**: Fixed an issue where the Agents Machine Groups drawer remains open when multiple Agents are selected and when no Agents are selected. Fixed an issue where filtering Agents based on Status inadvertently selected all Agents in the results.

:white_check_mark: **OPCON-22795**: Removed reference to GoJS on the Studio page.

:white_check_mark: **OPCON-22859**: Corrected the display of frequency start times when a job has schedule level frequencies.

:white_check_mark: **OPCON-22864**: Resolved an issue which disables XML sequence escaping for Agents defined using the new ACS framework. This allows users to successfully utilize comparison operations when configuring jobs with Advanced Failure Criteria.

:white_check_mark: **OPCON-22894**: Fixed error "Failed to save node" in Studio Canvas when a job name in the schedule contains more than 40 characters.

:white_check_mark: **OPCON-23034**: Fixed an issue where the License & Support page showed incorrect OpCon version.

:white_check_mark: **OPCON-23037**: Fixed an issue where the forecast in Frequency Manager Wizard did not take into account Master Holidays Calendar.

:white_check_mark: **OPCON-23038**: Added a message to notify users of nodes on the default coordinate and added a red border around them. Disabled the built-in function to copy nodes with CTRL + Click.

:white_check_mark: **OPCON-23044**: Modified Operations Processes button to open Processes page with the current date selected by default.

:white_check_mark: **OPCON-23062**: List of Schedules in Job Dependency Dialog will now be sorted in alphabetical order.

:white_check_mark: **OPCON-23063**: Automatically highlight the dependency line in Studio Canvas when a job dependency is added.

:white_check_mark: **OPCON-23066**: Fixed an issue in Schedule PERT page where double clicking a Container Job did not show the SubSchedule.

#### REST API

:eight_spoked_asterisk: **OPCON-25858**: REST API Change Summary – Machine Endpoints. GET /machine: Previously returned job cross-references by default. Now requires explicit parameters: IncludeAssignedMasterJobs=true and IncludeAssignedDailyJobs=true. POST /machine (group assignment): Previously accepted group IDs only. Now requires full group objects: Gr_Id, Name, and Type. These changes impact automation scripts and integrations relying on older REST API behaviors. Updating documentation and usage is recommended to avoid disruptions.

:eight_spoked_asterisk: **OPCON-22750**: Reduced frequency of API calls when configuring new integrations built on the ACS framework. This will provide a smoother and more performant experience for the end user.

:white_check_mark: **OPCON-21835**: Fixed an error in the API which prevented modification of Guidewire Daily Jobs.

:white_check_mark: **OPCON-22044**: Fixed an issue where users with Maintain Embedded Scripts privilege could not see newly added scripts.

#### ImpEx2 Web Service

:white_check_mark: **OPCON-22680**: Fixed a problem where the 'Fails if preferred settings not satisfied' field was not set correctly during schedule deployment when the condition was False.

:white_check_mark: **OPCON-22759**: Fixed a problem where job events went missing after a deployment of existing schedules (update).

:white_check_mark: **OPCON-22760**: Fixed a deployment problem during update of SQL DTEXEC and SQL SCRIPT actions where the SQL user is set when Windows Authentication is selected.

:white_check_mark: **OPCON-22789**: Fixed issues with deployment of schedules that contain SQL jobs where some job definitions would not be updated correctly if schedules to deploy already exist in the target system.

:white_check_mark: **OPCON-22916**: Fixed a problem in ImpEx2 where deployment of a schedule failed due to a global property not being created.

#### Documentation

:white_check_mark: **OPCON-22673**: Fixed broken link in documentation for SQL Agent Configuration page.

:white_check_mark: **OPCON-22798**: Fixed broken and incorrect links in Solution Manager documentation.
