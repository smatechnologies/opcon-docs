---
sidebar_label: "Release Notes"
---

# OpCon Release Notes

## OpCon 25.0.4

**NOTE**: Verify/Upgrade these components if applicable: 

* **Enterprise Manager** - 25.0 
* **ServiceNow** Connector – 21.4 or higher
* **WebServices** Connector – 21.2 or higher
* **Deploy** – 25.0.0 or higher

2025 October

#### Installation

:white_check_mark: **OC-3457**: Fixed an issue where new tables were not being properly added to the opconxps role when updating a non-contained OpConxps database.

#### Server

:white_check_mark: **OC-3549**: Fixed an issue where SAM inserted an empty instance property when an external event had an extra semi-colon in the instance property parameter.

:white_check_mark: **OC-4607**: Request Router now handles database connection loss during initialization or request cleanup without halting request processing or flooding logs with repeated errors.

#### Solution Manager

:eight_spoked_asterisk: **OC-3715**: The Job Execution History page has been significantly optimized for faster load times and improved responsiveness. A new API endpoint (GET api/jobHistories/{jobId}?from={date}&to={date}&includeSummary=true&scheduleId={scheduleId}) has been introduced to support these enhancements.

:white_check_mark: **OC-45**: Fixed an issue where viewing SAP BW job output did not work.

:white_check_mark: **OC-3017**: Fixed various issues in advanced frequency settings and frequency forecast in Master Jobs and Frequencies page.

:white_check_mark: **OC-3610**: Fixed an issue where updating a batch user removed them from the daily job.

:white_check_mark: **OC-3611**: Fixed an issue where instance properties were removed from the master schedule when the schedule was changed to multi-instance.

:white_check_mark: **OC-3639**: Fixed an issue where the URL to fetch daily jobs was longer than allowable by the browser.

:white_check_mark: **OC-3745**: Fixed an issue where secondary settings for Client Secret (Email and SMS) under Server Options were not cleared when the associated primary setting was deleted.

:white_check_mark: **OC-3779**: Fixed an issue where cross-references were not detected when the job name contained an underscore.

:white_check_mark: **OC-3793**: Fixed an issue where fetching reports timed out and returned an error.

:white_check_mark: **OC-3854**: Resolved an issue in daily jobs where the start machine for File Transfer jobs was not updated when the source machine changed.

:white_check_mark: **OC-3981**: Fixed an issue where the agent's properties were not visible when the agent was communicating.

:white_check_mark: **OC-4145**: Fixed an issue where the schedule name was not filled in when adding a job from the Studio page.

#### REST API

:white_check_mark: **OC-2883**: The api/jobHistories endpoint now returns only the matching jobs when both "scheduleId" and "jobName" are specified.

:white_check_mark: **OC-4261**: Fixed an issue that filled up SQL connection pool and caused Solution Manager to hang. 

#### ImpEx2 Web Service

:white_check_mark: **OC-1906**:
* Fixed a problem during Schedule Import using Deploy when schedule instance properties are merged if Deploy rule 'Update Schedule Instance Properties Allowed' is not selected.
* Implemented additional Deploy rule 'Merge Schedule Instance properties'. By default, no changes are made to Schedule Instance properties.
* If Deploy rule 'Update Schedule Instance Properties Allowed' is not selected and Deploy rule 'Merge Schedule Instance properties' is selected the schedule instance properties will be merged.

:white_check_mark: **OC-3683**: Fixed a problem when retrieving batch user definition from the database and the batch user name contains a special character ([,.).

#### Documentation

:white_check_mark: **OC-3902**: Corrected API Swagger documentation for api/propertyExpression.

## OpCon 25.0.3

**NOTE**: Verify/Upgrade these components if applicable: 

* **Enterprise Manager** - 25.0 
* **ServiceNow** Connector – 21.4 or higher
* **WebServices** Connector – 21.2 or higher
* **Deploy** – 25.0.0 or higher

2025 July

#### Installation

:white_check_mark: **OC-3366**: Fixed an issue where SQL database scripts included an extra character on the GO line, which could cause execution errors during deployment.

#### Solution Manager

:white_check_mark: **OC-12**: Fixed an issue where user could not view log page unless they have both View App logs and View Schedule Build log permission.

:white_check_mark: **OC-30**: Fixed an issue where users were unable to add frequency to a multi-instance schedule.

:white_check_mark: **OC-52**: Fixed an issue where the time 12:00 PM was displayed as 0:00 PM in Solution Manager Studio when editing frequency values on a job.

:white_check_mark: **OC-351**: Fixed an issue where Frequencies cross references were not working when the frequency name contains "/".

:white_check_mark: **OC-1826**: Fixed an issue where filtering agents by type returned no results for ACS and RPA agents.

:white_check_mark: **OC-2158**: Fixed an issue where a job could not be saved if it contained an event with a sub-expression.

:white_check_mark: **OC-2795**: Fixed an issue where jobs with dependencies and a start offset time displayed incorrect start times.

:white_check_mark: **OC-2881**: Fixed an issue causing insufficient space to fill in recurring instance data in the 'When Jobs Finishes OK' section of a daily job's frequency. Additionally, fixed an issue where the 'Resulting Date/Time' was made a required Date/Time picker field in the 'When Job Finishes OK' section for 'Run Again' with 'Recurring Instances'.

:white_check_mark: **OC-2891**: Fixed an issue where the frequency list for a master job was not populated when adding a dependency to a master job in Studio.

:white_check_mark: **OC-3022**: Fixed an issue in Studio where the View button was incorrectly enabled when it should have been disabled.

:white_check_mark: **OC-3152**: Fixed an issue where it was not possible to update an encrypted Global Property if you did not know the original value of the Property.

:white_check_mark: **OC-3253**: Fixed an issue where used trigger names become unavailable across all groups.

:white_check_mark: **OC-3268**: Fixed an issue where SQL Job Types created in Solution Manager did not store batch user information correctly, causing jobs to fail to start.

:eight_spoked_asterisk: **OC-2843**: Added more resilience to scheduling message logic for guaranteed delivery. Also added some extra debug messages at Trace Level 1 to provide us more information in the logs in case the problem recurs in spite of improved logic.

#### REST API

:white_check_mark: **OC-3284**: Improved error messaging in the Batch Users API for cases where the platform or platform ID is null in POST and PUT requests.

#### ImpEx2 Web Service

:white_check_mark: **OC-3092**: Fixed a problem when performing script runner match. Removed CommandFormat match as runner name and platform id provide the required information.

## OpCon 25.0.2

**NOTE**: Verify/Upgrade these components if applicable: 

* **Enterprise Manager** - 25.0 
* **ServiceNow** Connector – 21.4 or higher
* **WebServices** Connector – 21.2 or higher
* **Deploy** – 25.0.0 or higher

2025 May

#### Solution Manager

:eight_spoked_asterisk: **OC-2186**: Added OAuth support for SMTP notifications, replacing Basic SMTP (Exchange), which will be deprecated by Microsoft in September.

:white_check_mark: **OC-3024**: Fixed an issue where multiple Access Codes could not be deleted.

## OpCon 25.0.1

**NOTE**: Verify/Upgrade these components if applicable: 

* **Enterprise Manager** - 25.0 
* **ServiceNow** Connector – 21.4 or higher
* **WebServices** Connector – 21.2 or higher
* **Deploy** – 25.0.0 or higher

2025 March

#### Server

:white_check_mark: **OC-2499**: Fixed database re-connection logic to prevent NotifyHandler from hanging during database disruptions.

:white_check_mark: **OC-2502**: Providing a delayed start and checking for certificate file in NetcomApi to prevent errors encountered during initialization of service.

#### REST API

:white_check_mark: **OC-22**: Modified OS2200 daily jobs details to exclude completion statuses with empty or null condition words.

## OpCon 25.0.0

**NOTE**: Verify/Upgrade these components if applicable: 

* **Enterprise Manager** - 25.0 
* **ServiceNow** Connector – 21.4 or higher
* **WebServices** Connector – 21.2 or higher
* **Deploy** – 25.0.0 or higher

2025 March

#### Server

:eight_spoked_asterisk: **OPCON-25853**: Upgraded OpCon to .NET 9.

:white_check_mark: **OPCON-21285**: Fixed an issue where the start time of a job that depended on a container job in the parent schedule was incorrect.

:white_check_mark: **OPCON-23582**: Fixed an issue where the estimated start time of a job was incorrect when it depended on a job in a different schedule.

:white_check_mark: **OPCON-24595**: Fixed an issue where SMANotifyHandler had its log locked, causing it to become unresponsive.

:white_check_mark: **OPCON-24956**: Fixed NetCom deadlock which would prevent some Agent types from being marked down after failing heartbeats.

:white_check_mark: **OPCON-25930**: Fixed a NetCom issue which caused some ACS jobs to fail on restart due to invalid references

:white_check_mark: **OPCON-25969**: Fixed an issue which could cause ACS integrations to lose variable tokens used in job configurations after completion of a job run.

:white_check_mark: **OPCON-25982**: Fixed an issue in NetCom where ACS job starts would sometimes request job status information even when the job had previously reported completion.

:white_check_mark: **OPCON-26144**: Fixed an issue that caused the error "Adding the specified count to the semaphore would cause it to exceed its maximum count" when communication with an RPA agent was enabled.

#### Solution Manager

:eight_spoked_asterisk: **OPCON-20079**: Provide better formatting for z/OS Job Output menu items.

:eight_spoked_asterisk: **OPCON-23078**: Require Email for Users: This feature introduces a requirement for the email field to be populated for user accounts in support of the new password recovery process in addition to a new server option setting that gives admins the ability to allow existing users to enter their recovery email upon next login.

:eight_spoked_asterisk: **OPCON-23080**: Forgot Password Link: This feature adds a "Forgot Password?" link on the Solution Manager login screen to initiate the password recovery process by confirming their username and email to generate and receive an email with a password recovery code.

:eight_spoked_asterisk: **OPCON-23082**: Password Recovery Validation: This feature allows users to enter and validate the password recovery code received via email and navigates them through the password reset process.

:eight_spoked_asterisk: **OPCON-23094**: Added support for logs that aren't text and inclusive of video logs through the job output screen.

:eight_spoked_asterisk: **OPCON-23095**: Licensing logic using the (new) LSAM ID being used for OpCon RPA is enforced.

:eight_spoked_asterisk: **OPCON-23096**: Added OpCon RPA script runner & script type capabilities for Script Repo use.

:eight_spoked_asterisk: **OPCON-23230**: Save Daily Job Details to Master: This feature allows users to push changes made to daily jobs to their associated master job from within Solution Manager Operations and Daily Job Details views.

:eight_spoked_asterisk: **OPCON-23234**: Tag Management View Access: This feature adds a new permission for admins to control user access to the tag management view in Solution Manager. All existing roles will automatically be granted this privilege, but admins can now control which users are granted access to this view.

:eight_spoked_asterisk: **OPCON-23244**: Reset Job Types from Studio: This feature adds the capability for users to reset supported job types in Solution Manager from the Studio designer view and no longer requires users to navigate to the Master Job list view to perform this function.

:eight_spoked_asterisk: **OPCON-23245**: Configure a Default Homepage: This feature grants users the ability to define a custom landing page upon logging into Solution Manager by selecting the rocket icon displayed in the top right corner of each page. Any of the following pages can be selected as the homepage, but only one page can be active at a time:
- Self-Service
- Vision
- Operations
- Each page in Library
- Studio

:eight_spoked_asterisk: **OPCON-23392**: OpCon MFT users now have the ability to select an option to “force download” the filtered file or list of files. This ensures that OpCon will always download the specified file(s) at runtime regardless of whether changes have been made to the file or not.

:eight_spoked_asterisk: **OPCON-23393**: Added ability to use latest script version in ACS jobs.

:eight_spoked_asterisk: **OPCON-23662**: Accessibility support has been added to the main navigation, and the following Solution Manager pages: Home, Library, Calendars, Global Properties, License & Support, Logs, Frequencies, Access Codes, Departments, Site Navigation, Login, Resources, Machine Groups, Reporting, Scripts, Server Options, Thresholds, Profile, Escalation Manager, and Access Management to support WCAG accessibility standards.

:eight_spoked_asterisk: **OPCON-24678**: Added the ability to report on user behavior within Solution Manager. This addition will help SMA determine which features are most valuable to our current customers.

:eight_spoked_asterisk: **OPCON-24683**: Usage information, page count tracking, and click behavior tracking are captured.

:eight_spoked_asterisk: **OPCON-25940**: Added an option in User Profile Settings page to uncheck selected jobs after job status update on the Processes page.

:eight_spoked_asterisk: **OPCON-25961**: Added the ability to archive the output of an MFT Job.

:white_check_mark: **OPCON-19737**: Fixed an issue where a machine's capabilities were not validated when it was added to a machine group.

:white_check_mark: **OPCON-23224**: Fixed an issue where the user couldn't add jobs to daily multi-instance schedules.

:white_check_mark: **OPCON-24389**: Fixed several issues related to the machine groups panel on the agents page.
- Fixed an issue where all machine groups start on the left even if agent has machine groups assigned.
- Fixed an issue where agents page groups column is not updated after an update in the machine groups panel.
- Fixed an issue where left and right arrows were enabled without any selected items.

:white_check_mark: **OPCON-24390**: Fixed an issue where the filtered agent status was not reflected properly in the url query parameter.

:white_check_mark: **OPCON-24394**: Fixed an issue where clearing the machine group filter on the Agents Page did not restore those agents not in a group.

:white_check_mark: **OPCON-24405**: Fixed an issue where the Logs API does not remove/archive application log files correctly.

:white_check_mark: **OPCON-24492**: Fixed an issue where the default values were not the same when creating a new OpCon MFT agent.

:white_check_mark: **OPCON-24512**: Fixed an issue where retry on failure values were removed after updating a daily job.

:white_check_mark: **OPCON-24563**: Fixed an issue with 'View Service Requests' privilege that let the user see jobs that they did not permissions for.

:white_check_mark: **OPCON-24637**: Fixed an issue where double quotes were mishandled in Episys Answer Prompt jobs.

:white_check_mark: **OPCON-24949**: Fixed an issue causing agents page to timeout after selecting an agent.

:white_check_mark: **OPCON-25103**: Fixed issue "Cannot Load Daily Jobs" when right clicking certain jobs in Operations page.

:white_check_mark: **OPCON-25111**: Fixed an issue where a role could not be updated if a machine group to which it has access is deleted.

:white_check_mark: **OPCON-25150**: Fixed an issue where filtering by column resets on every visit on the agents page.

:white_check_mark: **OPCON-25151**: Resolved an issue where assigning 'Can Update' access to a resource for a role did not work as expected.

:white_check_mark: **OPCON-25158**: Fixed an issue where 'Daily Job Frequency' offset values were cleared on second save via turning admin off.

:white_check_mark: **OPCON-25159**: Fixed a permissions issue with master jobs where users with any privilege in &lt;All Departments&gt; were incorrectly able to modify master jobs.

:white_check_mark: **OPCON-25736**: Fixed an issue which prevented users from selecting an ACS Integration as a Script Runner OS Type if the user had multiple ACS integrations installed.

:white_check_mark: **OPCON-25757**: Fixed the error message "Trigger name is required” when clicking the Test button while creating a new notification trigger.

:white_check_mark: **OPCON-25786**: Fixed an issue where the user could save a Daily Job while ACS was still loading the schema.

:white_check_mark: **OPCON-25799**: Fixed Notification triggers machine groups dropdown pagination. The dropdown should now load extra notification groups when scrolling down.

:white_check_mark: **OPCON-25798**: Fixed an issue on notification triggers page where the delete button was enabled when adding a new notification trigger.

:white_check_mark: **OPCON-25832**: Fixed validation issues with machines and machine groups on the Master Jobs and Daily Jobs definition pages. 

:white_check_mark: **OPCON-25845**: Fixed an issue causing nodes to stack on top of one another due to incorrect node positions on the workflow page.

:white_check_mark: **OPCON-25846**: Fixed a memory leak issue on the scripts runners page when interacting with large databases.

:white_check_mark: **OPCON-25849**: Adjusted various UI elements for accessibility and 508 compliance.

:white_check_mark: **OPCON-25851**: Fixed label on the 'To' input field within the deploy script dialog.

:white_check_mark: **OPCON-25856**: Fixed an issue where &lt;All Departments&gt; was inadvertently available in the master job department select.

:white_check_mark: **OPCON-25864**: Fixed an issue which could cause Solution Manager to crash after switching between certain ACS task types.

:white_check_mark: **OPCON-25865**: Fixed an issue which prevented ACS jobs from being fully cleaned up after deletion.

:white_check_mark: **OPCON-25878**: Fixed an issue where departments to which the user did not have access were available when adding or modifying a Master Job.

:white_check_mark: **OPCON-25896**: Fixed an issue where JCL Data was not displayed for daily and master jobs.

:white_check_mark: **OPCON-25905**: Improved performance when editing a Batch User.

:white_check_mark: **OPCON-25906**: Resolved an issue where the add named instance button was enabled on the Master Schedule Definition page in read-only mode.

:white_check_mark: **OPCON-25907**: Fixed an issue where 'Use Exit Code From Script Result' was not properly updated in MS SQL Script jobs for daily jobs.

:white_check_mark: **OPCON-25913**: Fixed an issue in Studio when canceling copying a job, the schedule is not longer able to load.

:white_check_mark: **OPCON-25914**: Increased query timeout value while running migrations for OpCon version 24.1.

:white_check_mark: **OPCON-25917**: Fixed an issue in Studio where canceling actions gave an error.

:white_check_mark: **OPCON-25924**: Fixed an issue where selecting a date from a new year would remove all previously selected dates from other years. Calendar selections are now persistent across multiple years. 

:white_check_mark: **OPCON-25939**: Fixed an issue where job execution history was empty for multi-instance jobs.

:white_check_mark: **OPCON-25954**: Web Services jobs, although not fully supported, no longer cause an error when updating some details of the job.

:white_check_mark: **OPCON-25955**: Adjusted character limit on database fields from 4000 char limit to nvchar(max).

:white_check_mark: **OPCON-25979**: Fixed an issue where users could not see some jobs associated with tags in tag manager.

:white_check_mark: **OPCON-26016**: Fixed an issue with the 'Save Daily Job and Push to Master Job' button on the Daily Jobs page.

:white_check_mark: **OPCON-26026**: Fixed an issue on in the Notification Triggers manager Group page where the checkboxes on page 2 and beyond did not populate with the correct value.

:white_check_mark: **OPCON-26049**: Fixed an issue where only the first 25 available groups were displayed on the Manage Categories page.

:white_check_mark: **OPCON-26050**: Fixed an issue in ACS where setNestedFieldValues logic failed to handle key removal.

:white_check_mark: **OPCON-26072**: Fixed a permissions issue where users were incorrectly prevented from seeing the Agents page.

:white_check_mark: **OPCON-26075**: Fixed an issue on the ACS Agent Details Page where a new Agent did not reload RJSF when switching between multiple applications.

:white_check_mark: **OPCON-26093**: Fixed an issue that prevented creating new SQL Other DB master jobs.

:white_check_mark: **OPCON-26103**: Fixed an issue where the /api/acs/rjsf endpoint did not take the machine's NetComName into account.

#### REST API

:eight_spoked_asterisk: **OPCON-25859**: REST API Change Summary – Machine Endpoints. GET /machine: Previously returned job cross-references by default. Now requires explicit parameters: IncludeAssignedMasterJobs=true and IncludeAssignedDailyJobs=true. POST /machine (group assignment): Previously accepted group IDs only. Now requires full group objects: Gr_Id, Name, and Type. These changes impact automation scripts and integrations relying on older REST API behaviors. Updating documentation and usage is recommended to avoid disruptions.

:eight_spoked_asterisk: **OPCON-25012**: The OpCon API now returns HSTS headers (strict-transport-security) for HTTPS responses, which makes it impossible for your browser to attempt an HTTP connection with the API (forces HTTPS connections), and hence prevents an HSTS vulnerability.

:white_check_mark: **OPCON-25738**: Added additional validation for job name and schedule name in delete-daily-job endpoint.

:white_check_mark: **OPCON-25740**: Fixed an issue where "Update schedule status request sent." was returned even when exceptions were encountered in update-schedule-status endpoint.

:white_check_mark: **OPCON-25744**: Added null reference check in request.Date for get-failed-jobs endpoint.

:white_check_mark: **OPCON-26153**: Fixed an issue where OpconMFT agent was not communicating after install/upgrade.

#### ImpEx2 Web Service

:eight_spoked_asterisk: **OPCON-25933**: Made enhancements to Windows and Unix job import to support splitting Deploy script and schedule / package deployments. Import routines need to check local OpCon database for script information (script, scripttype, runner ids) as the script information is no longer part of the OpConExtract object.   

:white_check_mark: **OPCON-25144**: Fixed a problem when importing schedule definitions that contain multiple roles and the role names have been transformed to the same name causing a duplicate key violation. Fix ensures that duplicate roles and no longer inserted.

:white_check_mark: **OPCON-25833**: Fixed a problem during the script extract process to include a list of roles associated with the script. 
Fixed a problem during the script deployment process to assign the roles associated with the script.
Requires Deploy version 25.0.0.

:white_check_mark: **OPCON-26097**: Fixed a problem during schedule deployment when the schedule definition included BIS jobs and the schedule exists on the target OpCon system. The BIS RunId field was incorrectly reset. 

:white_check_mark: **OPCON-26137**: Fixed a problem during deployment when schedule privileges are lost. When role does not include inherit all schedules and a deployment is performed and the role names are the same but characters have different case then the schedule privilege is incorrectly removed.   

#### Documentation

:white_check_mark: **OPCON-25842**: Updated API documentation for jobTags endpoint.

:white_check_mark: **OPCON-25843**: Fixed API documentation for posting a new script runner.
