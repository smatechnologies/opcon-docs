---
sidebar_label: "Release Notes"
---

# OpCon Release Notes

## Winter 26

#### 26.0.1

**NOTE**: Verify/Upgrade these components if applicable:

* **Enterprise Manager** - 26.0
* **ServiceNow** Connector – 21.4 or higher
* **WebServices** Connector – 21.2 or higher
* **Deploy** – 26.0.0 or higher
* **Relay** - 25.1.1 or higher

2026 February

# OpCon Release 26 -- What's New

Summary

Release 26 focuses on **better visibility, stronger reliability, and a more unified user experience** while ensuring existing automations continue to run without disruption.

## Reporting & Audit Enhancements

### What's New

:eight_spoked_asterisk: **OC-5315, OC-3212: Expanded Reporting Capabilities**
New reports and enhancements provide deeper insight into system activity and performance, helping teams monitor operations more effectively.

:eight_spoked_asterisk: **OC-3212: Comparative Job Execution Statistics Report**
A new report enables side‑by‑side analysis of job execution statistics to identify trends and performance changes over time.

:eight_spoked_asterisk: **OC-5315: Improved Date Filtering & Report Layouts**
Reports now support clearer date ranges and additional columns, making it easier to filter and analyze results.

:eight_spoked_asterisk: **OC-5319: Direct Access to Report Logs**
Report logs are now visible directly within Solution Manager for on‑prem customers, improving troubleshooting and transparency.

:eight_spoked_asterisk: **OC-5323: Tracked Changes to Report Settings**
All report configuration changes are now recorded in an audit table, providing greater visibility and auditability.

:eight_spoked_asterisk: **OC-5287: New Reporting Configuration UI**
A dedicated Reporting tab has been added to Server Options, centralizing reporting configuration in one place.

:eight_spoked_asterisk: **OC-5867: Improved Reporting Security**
Reporting database connections exposed through the REST API on Windows now support encryption for stronger data protection.

### Why This Matters

Customers gain clearer insight into automation performance, better auditability, and faster issue resolution without manual data extraction or external tooling.

## Solution Manager Improvements

### What's New

:eight_spoked_asterisk: **OC-5051: Updated Deploy Server Log and ImpEx2 Log**
Deploy server logs and ImpEx2 logs (now renamed to SMAImpEx2.log) are now visible in the Solution Manager Logs page, improving consistency and simplifying diagnostics.

:eight_spoked_asterisk: **OC-5336: Updated Runtime for Core Server**
The OpCon core server has been upgraded to run on the latest .NET 10 runtime, improving performance, stability, and long‑term supportability.

:eight_spoked_asterisk: **OC-5902: Enhanced Logging Alignment**
ReportingService logging now aligns with standard OpCon conventions, improving consistency and simplifying diagnostics.

**Visibility Improvements Across Reports**
Column ordering is retained during report interactions; filters now adhere to industry standard best practices for ease of use, and downloads now include all pages, not just the current view.

### Why This Matters

These updates improve reliability and reduce friction when monitoring and managing automation at scale.

## Studio & Workflow Builder Usability Fixes

### What's New

:eight_spoked_asterisk: **OC-5902: Improved Job Editing Experience**
Editing existing jobs no longer resets node positions, preserving workflow layouts.

:white_check_mark: **OC-4541: More Reliable Dependency Creation**
Validation errors when creating dependencies via drag‑and‑drop have been resolved.

:white_check_mark: **OC-4140: Improved Workflow Navigation**
Issues where jobs disappeared from the canvas but remained visible in the mini‑map have been fixed.

:white_check_mark: **OC-4365: Faster, More Predictable Interactions**
Lag between job selection and toolbar actions has been eliminated, ensuring actions always apply to the correct job.

:white_check_mark: **OC-4537: Enhanced Script Editor Search**
CTRL+F now reliably opens the script editor's internal search, regardless of Caps Lock status.

### Why This Matters

Workflow creation and maintenance is faster, more predictable, and less error‑prone, especially for complex job flows.

## NetCom / Relay Reliability & Monitoring

### What's New

:eight_spoked_asterisk: **OC-5885: Smarter Message Cleanup & Processing**
Message deletion logic has been corrected to use true message ID boundaries, preventing accidental deletion of unread or newly inserted messages.

:eight_spoked_asterisk: **OC-5885: Automatic Cleanup of Stale Messages**
Stale TX2 messages are automatically removed on startup and when agents reconnect, reducing backlog issues.

:eight_spoked_asterisk: **OC-5885: Duplicate Message Prevention**
Duplicate messages that accumulated during downtime are now detected and skipped.

:eight_spoked_asterisk: **OC-5885: New Message Buildup Monitor**
A new monitoring system automatically detects when messages accumulate in the database or in‑memory queues.

:eight_spoked_asterisk: **OC-5885: Automatic Recovery Actions**
When buildup is detected, connections are automatically reset to restore normal processing.

:eight_spoked_asterisk: **OC-5885: Enhanced Debugging & Visibility**
Detailed message ID logging improves troubleshooting and visibility into message flow and processing.

### Why This Matters

Customers benefit from improved resilience, faster recovery from network issues, and significantly reduced risk of message backlog or loss.

## Security & API Updates

### What's New

:white_check_mark: **OC-4593: REST API Security Hardening**
A path traversal vulnerability in the Logs endpoint has been addressed, strengthening overall API security.

:white_check_mark: **OC-5089: Updated API Documentation**
Job History API documentation has been updated to reflect current behavior and improve developer usability.

### Why This Matters

These changes improve security posture while making integrations easier to build and maintain.

## Unified Branding & Modernized Experience

### What's New

:eight_spoked_asterisk: **OC-2515: Consistent OpCon Branding**
Solution Manager has been visually updated to align with the broader OpCon and Continuous brand guidelines.

**Standardized Layouts & Interactions**
Features now follow consistent visual and interaction patterns, improving usability and reducing cognitive load.

### Why This Matters

A cleaner, more consistent experience makes OpCon easier to learn, faster to use, and more intuitive across teams.

## Fall 25 - Fix

#### 25.3.1

**NOTE**: Verify/Upgrade these components if applicable: 

* **Enterprise Manager** - 25.0 
* **ServiceNow** Connector – 21.4 or higher
* **WebServices** Connector – 21.2 or higher
* **Deploy** – 25.3.0 or higher
* **Relay** - 25.1.1 or higher

2025 December

#### Server

:white_check_mark: **OC-5355**: Fixed an issue with $JOB:ADD events.

## Fall 25

#### 25.3.0

**NOTE**: Verify/Upgrade these components if applicable: 

* **Enterprise Manager** - 25.0 
* **ServiceNow** Connector – 21.4 or higher
* **WebServices** Connector – 21.2 or higher
* **Deploy** – 25.3.0 or higher
* **Relay** - 25.1.1 or higher

2025 November

#### Installation

:white_check_mark: **OC-4388**: Fixed an issue where generated BIRT reports were blank due to a missing jtds-1.2.8.jar.

#### Server

:white_check_mark: **OC-3549**: Fixed an issue where SAM allowed empty instance properties when an external event had extraneous semi-colons in the instance property parameter.

:white_check_mark: **OC-4607**: Request Router now handles database connection loss during initialization or request cleanup without halting request processing or flooding logs with repeated errors.

#### Solution Manager

:eight_spoked_asterisk: **OC-2081**: OpCon now employs standard password salting and hashing techniques to ensure the secure storage of user passwords. This enhancement allows users to create passwords that exceed the previous 12-character limit, offering greater flexibility and security. However, please note that for backward compatibility, the ImpEx user must continue to use passwords that are 12 characters or fewer to ensure proper functionality.

:eight_spoked_asterisk: **OC-2628**: An Annual Plan By Calendar Dates Report is now available in the Reporting Library. This report shows all defined dates on user-defined calendars.

:eight_spoked_asterisk: **OC-2629**: A Cross Reference Schedules and Jobs Report is now available in the Reporting Library. This report shows all jobs and their associated schedules.

:eight_spoked_asterisk: **OC-2630**: A Current Global Properties Report is now available in the Reporting Library. This report shows current values of global properties.

:eight_spoked_asterisk: **OC-2631**: A Current Threshold Values Report is now available in the Reporting Library. This report shows current threshold values and descriptions.

:eight_spoked_asterisk: **OC-2632**: A Current Resource Values Report is now available in the Reporting Library. This report shows current resource values and descriptions.

:eight_spoked_asterisk: **OC-2638**: A Frequencies and Associated Jobs Report is now available in the Reporting Library. This report shows all frequencies and their associated jobs.

:eight_spoked_asterisk: **OC-3715**: The Job Execution History page has been significantly optimized for faster load times and improved responsiveness.

:white_check_mark: **OC-3020**: Fixed an issue where certain filters did not work when language was set to French.

:white_check_mark: **OC-3610**: Fixed an issue where updating a batch user removed them from the daily job.

:white_check_mark: **OC-3611**: Fixed an issue where instance properties were removed from the master schedule when the schedule was changed to multi-instance.

:white_check_mark: **OC-3639**: Fixed an issue where the URL to fetch daily jobs was longer than allowable by the browser.

:white_check_mark: **OC-3666**: Fixed an issue where migration item value in Service Requests did not display correctly for regex.

:white_check_mark: **OC-3745**: Fixed an issue where secondary settings for Client Secret (Email and SMS) under Server Options were not cleared when the associated primary setting was deleted.

:white_check_mark: **OC-3779**: Fixed an issue where cross-references were not detected when the job name contained an underscore.

:white_check_mark: **OC-3793**: Fixed an issue where fetching reports timed out and returned an error.

:white_check_mark: **OC-3962**: Fixed an issue where machine cross-references was empty.

:white_check_mark: **OC-3981**: Fixed an issue where the agent's properties were not visible when the agent was communicating.

:white_check_mark: **OC-4145**: Fixed an issue where the schedule name was not filled in when adding a job from the Studio page.

:white_check_mark: **OC-4625**: Fixed an issue on the Master Jobs page where a "Job not found" error appeared after a job was renamed and the user navigated back using the browser’s back button.

:white_check_mark: **OC-4653**: Fetching job execution history from the Master Jobs page now returns the correct job history.

:white_check_mark: **OC-4812**: Fixed an issue where OpCon roles were missing in SSO group mappings.

:white_check_mark: **OC-4998**: Added proper error handling for cases where a job cannot be found and introduced a loading state while job details are being fetched.

:white_check_mark: **OC-5000**: Resolved an issue in the Vision Health dashboard where graphs failed to display on initial load.

#### REST API

:white_check_mark: **OC-45**: Fixed an issue where &lt;reqparams&gt; values were missing in the API request which caused "Output not found" in Solution Manager when viewing SAP BW or SQL job output.

:white_check_mark: **OC-2883**: The api/jobHistories endpoint now returns only the matching jobs when both "scheduleId" and "jobName" are specified.

:white_check_mark: **OC-4261**: Resolved an issue where heavy REST API usage could exhaust the SQL connection pool, causing Solution Manager to become unresponsive. 

#### ImpEx2 Web Service

:white_check_mark: **OC-1906**:
* Fixed a problem during Schedule Import using Deploy when schedule instance properties are merged if Deploy rule 'Update Schedule Instance Properties Allowed' is not selected.
* Implemented additional Deploy rule 'Merge Schedule Instance properties'. By default, no changes are made to Schedule Instance properties.
* If Deploy rule 'Update Schedule Instance Properties Allowed' is not selected and Deploy rule 'Merge Schedule Instance properties' is selected the schedule instance properties will be merged.

:white_check_mark: **OC-3092**: Fixed a problem when performing script runner match. Removed CommandFormat match as runner name and platform id provide the required information.

:white_check_mark: **OC-3683**: Fixed a problem when retrieving batch user definition from the database and the batch user name contains a special character ([,.).

#### Documentation

:white_check_mark: **OC-3902**: Corrected API Swagger documentation for api/propertyExpression.

## Summer 25

#### 25.2.0

**NOTE**: Verify/Upgrade these components if applicable: 

* **Enterprise Manager** - 25.0 
* **ServiceNow** Connector – 21.4 or higher
* **WebServices** Connector – 21.2 or higher
* **Deploy** – 25.0.0 or higher
* **Relay** - 25.1.1 or higher

2025 July

#### Relay
:white_check_mark: **OC-3600**: Fixed an issue where Machines may be placed offline by NetCom/Relay after an interruption to communication.

#### Solution Manager
:white_check_mark: **OC-52**: Fixed an issue where the time 12:00 PM is displayed as 0:00 PM in Solution Manager Studio when editing frequency values on a job.

:white_check_mark: **OC-30**: Fixed an issue where users were unable to add frequency to a multi-instance schedule.

:white_check_mark:  **OC-12**: Fixed an issue where user could not view log page unless they have both View App logs and View Schedule Build log permission.

:white_check_mark: **OC-351**: Fixed an issue where Frequencies cross references were not working when the name contains "/".

:white_check_mark: **OC-2795**: Fixed an issue where jobs with dependencies and a start offset time displayed incorrect start times.

:white_check_mark: **OC-1826**: Resolved an issue where filtering agents by type returned no results for ACS and RPA agents.

:white_check_mark: **OC-2168**: Fixed an issue where long response time was causing a timeout when loading history.

:white_check_mark: **OC-2837**: Fixed an issue where a user could not update Jobs in admin mode immediately after creating one without refreshing the application.

:white_check_mark: **OC-2881**: Fixed an issue causing insufficient space to fill in recurring instance data in the 'When Jobs Finishes OK' section of a daily job's frequency. Additionally, fixed an issue where the 'Resulting Date/Time' was made a required Date/Time picker field in the 'When Job Finishes OK' section for 'Run Again' with 'Recurring Instances'.

:white_check_mark: **OC-2891**: Resolved an issue where the frequency list for a master job was not populated when adding a dependency to a master job in Studio.

:white_check_mark: **OC-3016**: Removed Maintain Frequencies Checkbox as it was not being used by any function privileges.

:white_check_mark: **OC-3022**: Fixed an issue in Studio where the View button was incorrectly enabled when it should have been disabled.

:white_check_mark: **OC-3152**: Fixed an issue where it was not possible to update an encrypted Global Property in the Solution Manager if you don't know the original value of the Global Property.

:white_check_mark: **OC-3253**: Fixed an issue where used trigger names become unavailable across all groups.

:white_check_mark: **OC-3268**: Fixed an issue where SQL Job Types created in Solution Manager did not store batch user information correctly, causing jobs to fail to start.

:white_check_mark: **OC-3284**: Improved error messaging in the Batch Users API for cases where the platform or platform ID is null in POST and PUT requests.

:white_check_mark: **OC-3366**: Fixed an issue where SQL database scripts included an extra character on the GO line, which could cause execution errors during deployment.

:white_check_mark: **OC-3620**: Fixed an issue in Schedule Build, where a schedule is selected after selecting the date and other build options, the selections shown in the UI are ignored and it attempts to build the schedule for the current date.

## Spring 25

#### 25.1.3

**NOTE**: Verify/Upgrade these components if applicable: 

* **Enterprise Manager** - 25.0 
* **ServiceNow** Connector – 21.4 or higher
* **WebServices** Connector – 21.2 or higher
* **Deploy** – 25.0.0 or higher
* **Relay** - 25.1.1 or higher
  
2025 June

#### Relay
:white_check_mark: **OC-3600**: Fixed issue where Machines may be placed offline by NetCom/Relay after an interruption to communication.

#### 25.1.1

**NOTE**: Verify/Upgrade these components if applicable: 

* **Enterprise Manager** - 25.0 
* **ServiceNow** Connector – 21.4 or higher
* **WebServices** Connector – 21.2 or higher
* **Deploy** – 25.0.0 or higher
* **Relay** - 25.1.1 or higher
  
2025 June

#### Solution Manager
:eight_spoked_asterisk: **OC-2843/OC-2950**: Added more resilience to scheduling message logic for guaranteed delivery. Also added some extra debug messages at Trace Level 1 to provide us more information in the logs in case the problem recurs in spite of improved logic.

:eight_spoked_asterisk: **OC-2911**: Fixed job not found error "not valid".

#### Deploy
:eight_spoked_check_mark: **OC-3092**: Fixed a problem when performing script runner match. Removed CommandFormat match, as runner name and platform ID provide the required information.

**NOTE**: Verify/Upgrade these components if applicable: 

* **Enterprise Manager** - 25.0 
* **ServiceNow** Connector – 21.4 or higher
* **WebServices** Connector – 21.2 or higher
* **Deploy** – 25.0.0 or higher
* **Relay** - 25.1.1 or higher

2025 May

#### Server

:eight_spoked_asterisk: **OC-2186**: Added OAuth support for SMTP notifications, replacing Basic SMTP (Exchange), which will be deprecated by Microsoft in September.

:white_check_mark: **INTPLT-492**: ACS configurations generated over Relay will now have the correct version information populated. Users who wish to use ACS integrations over Relay that require data migrations should update to Relay 25.1.0.

:white_check_mark: **OC-3**: Fixed an issue where the TLS Certificate Distinguished Name of Windows agents was overwritten when the agents disconnected and reconnected.

:white_check_mark: **OC-8**: Fixed an issue where stopping SMA OpCon Service Manager service from services console, times out and says service did not respond to the start or control request in a timely fashion.

:white_check_mark: **OC-2760**: Fixed RequestRouter to process schedule build and other requests targeted for it without getting stuck on unprocessed requests targeted for relay agents.

:white_check_mark: **OC-2843**: Added more resilience to scheduling message logic for guaranteed delivery. Also added some extra debug messages at Trace Level 1 to provide more information in the logs in case the problem recurs in spite of improved logic.

:white_check_mark: **OC-3040**: Allows integrations built on ACS to utilize Instance Properties when constructing log file paths.

:white_check_mark: **OC-3045**: Enables job data cleanup on job deletion for jobs which ran on an Agent configured via Relay.

#### Solution Manager

:eight_spoked_asterisk: **OC-393**: Accessibility support has been added to the main navigation, and the following Solution Manager pages: Job Execution History, Self-Service, Schedule Build, Daily Jobs, Batch Users, Notification Triggers, Master Jobs, to support WCAG accessibility standards.

:eight_spoked_asterisk: **OC-2082**: A global property for Admins has been added to set the checkbox retention policy on the Operations screen.

:eight_spoked_asterisk: **OC-2467**: Added a new global setting in Server Options that completely turns Otto functionality off.

:eight_spoked_asterisk: **OC-2474**: Additional fields added to the SMTP Server Options configuration for the chosen auth implementation.

:white_check_mark: **OC-6**: Fixed an issue where clicking the [x] in the bottom bar on the Vision Health page does not de-select the selected cards.

:white_check_mark: **OC-15**: Performance enhancements and error resolutions in Pert view where blank page or a timeout error occurred.

:white_check_mark: **OC-59**: Fixed an issue where renaming a group in Notification Triggers was experiencing the cursor jumping to end of name after typing one character.

:white_check_mark: **OC-161**: Fixed an issue where French translations were not applied on the Execution History view for Daily Jobs.

:white_check_mark: **OC-165**: Fixed an issue where the User Input Caption value was cleared when changing the User Input Type when configuring User Inputs for a Service Request.

:white_check_mark: **OC-346**: Fixed an issue where ACS daily jobs did not display the machine or machine group name. 

:white_check_mark: **OC-347**: Fixed an issue where the user was unable to update a Job Group after renaming a selected Job.

:white_check_mark: **OC-348**: Fixed an issue where Requires XML Escape was not available for ACS master jobs.

:white_check_mark: **OC-350**: Resolved an issue in Daily Jobs where the start Machine for File Transfer Jobs was not updated when the source machine changed.

:white_check_mark: **OC-353**: Fixed an issue in Notification Triggers where typing a "/" in the job name field breaks functionality.

:white_check_mark: **OC-354**: Fixed an issue in Solution Manager where the ability to translate an event from Enterprise Manager was not working.

:white_check_mark: **OC-2086**: Fixed an issue where clicking cancel in the Configure Jobs Dialog in daily job processes page will cause page to crash.

:white_check_mark: **OC-2115**: Fixed an issue where editing the Daily Job through Solution Manager was resetting all restart data.

:white_check_mark: **OC-2117**: When opening the daily job right panel, if a current step is defined, it now pre-populates the “Choose a step” field and enables the “Restart on step” button by default.

:white_check_mark: **OC-2119**: Fixed an issue with default values in the JCL Access dialog for z/Os jobs.

:white_check_mark: **OC-2137**: Fixed an issue where nodes in Studio were remaining stacked on top of each other.

:white_check_mark: **OC-2181**: Refined some of the navigation issues to limit the amount of clicks users need to take to navigate through the application.

:white_check_mark: **OC-2183**: Removed Back buttons from various pages to encourage the use of standard browser back and forward capabilities.

:white_check_mark: **OC-2898**: Fixed an issue where clicking on the processes filter loads a blank page.

:white_check_mark: **OC-3024**: Fixed an issue where multiple Access Codes could not be deleted.

:white_check_mark: **OC-3038**: Fixed an issue where some RPA jobs could not be displayed due to unexpected Instance Properties values.

:white_check_mark: **OC-3042**: Fixed a rendering issue which could sometimes prevent selection of agents for Master Jobs that run on ACS Integrations.

#### REST API

:white_check_mark: **OC-1837**: When sending password resets, additional logging in the notify handler has been added when the api requests the password reset endpoint.

:white_check_mark: **OC-1894**: Fixed an issue where Jobs submitted were not the correct ones.

:white_check_mark: **OC-2127**: Updated value for SMACDBUILD_VER for 25.1.0.

:white_check_mark: **OC-2623**: Fixed an issue where the OpCon version was not updated properly in the database.

:white_check_mark: **OC-2665**: Fixed an issue in the PUT and POST machines API when providing machine group(s)

#### ImpEx2 Web Service

:white_check_mark: **OC-137**: Update ImpEx2 to support RPA agent 

:white_check_mark: **OC-325**: Updated Deploy and ImpEx2 to include the capability to move RPA tasks between systems.

:white_check_mark: **OC-2578**: Fixed a problem in ImpEx2 during workflow deployment when a resource or threshold name contains a period (.) causing deployment failure.

:white_check_mark: **OC-2889**: Included Deploy 'Frequency_Use_Existing_Definitions' transformation rule capabilities that uses an existing frequency definition when the target job exists.

:white_check_mark: **OC-3092**: Fixed a problem when performing script runner match. Removed CommandFormat match as runner name and platform id provide the required information.

## Winter 25

**NOTE**: Verify/Upgrade these components if applicable: 

* **Enterprise Manager** - 25.0 
* **ServiceNow** Connector – 21.4 or higher
* **WebServices** Connector – 21.2 or higher
* **Deploy** – 25.0.0 or higher
* **Relay** - 24.3.2 or higher

2025 March

#### Server

:eight_spoked_asterisk: **OPCON-25853**: Upgraded OpCon to .NET 9.

:white_check_mark: **OC-2499**: Fixed database re-connection logic to prevent NotifyHandler from hanging during database disruptions.

:white_check_mark: **OC-2502**: Providing a delayed start and checking for certificate file in NetcomApi to prevent errors encountered during initialization of service.

:white_check_mark: **OPCON-21285**: Fixed an issue where the start time of a job that depended on a container job in the parent schedule was incorrect.

:white_check_mark: **OPCON-23582**: Fixed an issue where the estimated start time of a job was incorrect when it depended on a job in a different schedule.

:white_check_mark: **OPCON-24595**: Fixed an issue where SMANotifyHandler had its log locked, causing it to become unresponsive.

:white_check_mark: **OPCON-24956**: Fixed NetCom deadlock which would prevent some Agent types from being marked down after failing heartbeats.

:white_check_mark: **OPCON-25930**: Fixed a NetCom issue which caused some ACS jobs to fail on restart due to invalid references

:white_check_mark: **OPCON-25969**: Fixed an issue which could cause ACS integrations to lose variable tokens used in job configurations after completion of a job run.

:white_check_mark: **OPCON-25982**: Fixed an issue in NetCom where ACS job starts would sometimes request job status information even when the job had previously reported completion.

:white_check_mark: **OPCON-26144**: Fixed an issue that caused the error "Adding the specified count to the semaphore would cause it to exceed its maximum count" when communication with an RPA agent was enabled.

:white_check_mark: **INTPLT-32**: Fixed an issue where the customer was receiving an invalid URI and internal server error when authenticating machines.

#### Solution Manager

:eight_spoked_asterisk: **OPCON-23094**: Added support for logs that aren't text and inclusive of video logs through the job output screen.

:eight_spoked_asterisk: **OPCON-23095**: Licensing logic using the (new) LSAM ID being used for OpCon RPA is enforced.

:eight_spoked_asterisk: **OPCON-23096**: Added OpCon RPA script runner & script type capabilities for Script Repo use.

:eight_spoked_asterisk: **OPCON-23373**: Otto has learned a new skill! Users should now be able to ask Otto to retrieve a single log file by name.

:eight_spoked_asterisk: **OPCON-24552**: Otto improvements from UAT including: improved formatting, improved date range options, a clear conversation action, and case insensitivity on requests.

:eight_spoked_asterisk: **OPCON-24683**: Usage information, page count tracking, and click behavior tracking are captured.

:eight_spoked_asterisk: **OPCON-24689**: Otto has learned a new skill!  Users should now be able to ask Otto to summarize build results for a schedule on a specified date and return a link to the log details page directing users to the correct information if Otto is unable to create a summary.

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

:white_check_mark: **OPCON-25790**: Fixed an issue where the Otto chatbot lost chat history when the navigation button was used while already on the destination page. Now, the navigation button is hidden in this scenario to prevent unnecessary page reloads and ensure chat continuity.

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

:white_check_mark: **OC-22**: Modified OS2200 daily jobs details to exclude completion statuses with empty or null condition words.

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

## Fall 24

**NOTE**: Verify/Upgrade these components if applicable: **ServiceNow** Connector – 21.4 or higher, **WebServices** Connector – 21.2 or higher, **Deploy** – 22.4 or higher, **Relay** - 24.1 or higher

2024 November

#### Server

:eight_spoked_asterisk: **OPCON-24433**: Added support for ACS plugins in Relay. Users can now define their on-prem ACS Agent machines in OpCon-Cloud and run jobs on those without requiring a VPN.

:white_check_mark: **OPCON-24987**: Fixed an issue in RequestRouter which was causing the request processing to get stuck. Any bad requests in the table will now be marked as processed and cleaned up if RequestRouter is not able to process them, it will then move on to process the next request instead of getting stuck at the bad entry.

:white_check_mark: **OPCON-25076**: Added active ping mechanism in Relay to periodically check validity of its WebSocket connection with OpCon-Cloud. This will eliminate issues encountered because of lost socket connections that did not raise events to notify Relay that the connection has been closed.

:white_check_mark: **OPCON-25773**: Resolved an issue which could prevent NetCom from properly tracking running ACS jobs following an unexpected shutdown.

:white_check_mark: **OPCON-25774**: RequestRouter is coded to cleanup only expired processed requests. If a request was bad and RequestRouter could not process it, it would be left in the table as unprocessed. A fix in OPCON-24987 modifies this logic to mark the bad requests as processed and clean them up.

:white_check_mark: **OPCON-25802**: Fixed an issue in Relay and Netcom where the JORS request was picked up by incorrect Netcom or Relay. All Jors request are now routed to the correct Relay or Netcom on which the requesting machine is configured.

:white_check_mark: **OPCON-25861**: Fixed an issue where interactive requests from OpCon to the agents (such as job output retrieval) were not getting processed for relays that do not use any ACS integrations. 

#### Solution Manager

:eight_spoked_asterisk: **OPCON-24678**: Added the ability to report on user behavior within Solution Manager. This addition will help SMA determine which features are most valuable to our current customers.

2024 October

#### Server

:eight_spoked_asterisk: **OPCON-23985**: The following capabilities were added to Relay:
1) Support for MFT Job Scheduling and JORS
2) Interactive MFT machine and Job definition through SM
3) Interactive SAP Job import and definition through SM
4) Interactive zOS JCL View/Save through SM
5) Improved performance by using WebSocket for communication between Relay and OpCon-Cloud
6) Communication between Relay and OpCon-Cloud restricted to TLS 1.2 and up
7) Allow multi instance relay installation on a machine

:white_check_mark: **OPCON-24483**: Modified NetcommApi to handle database disconnects. It now keeps retrying connection to database. As soon as database becomes available again, processing will automatically resume.

:white_check_mark: **OPCON-25117**: OpCon wasn't resolving references to embedded scripts or batch users in the ACS integration agent config at agent start time.

#### Solution Manager

:eight_spoked_asterisk: **OPCON-23662**: Accessibility support has been added to the main navigation, and the following Solution Manager pages: Home, Library, Calendars, Global Properties, License & Support, Logs, Frequencies, Access Codes, Departments, Site Navigation, Login, Resources, Machine Groups, Reporting, Scripts, Server Options, Thresholds, Profile, Escalation Manager, and Access Management to support WCAG accessibility standards.

:eight_spoked_asterisk: **OPCON-24004**: Added an information icon for Otto that explains skills and capabilities.

:eight_spoked_asterisk: **OPCON-24677**: Formatted Otto's responses for better readability.

:white_check_mark: **OPCON-22258**: The Job Execution History now displays the correct duration for skipped jobs.

:white_check_mark: **OPCON-23590**: Fixed an issue where the Latest Run Time Offset field in the Frequency section was still visible when it was turned off.

:white_check_mark: **OPCON-23592**: Fixed an issue where the resulting date time for Recurring Instance Time(s) in Job Definition Frequency panel only showed the time.

:white_check_mark: **OPCON-23704**: Fixed an issue where Job Output Parsing settings in Job Definition Task Details were not saved.

:white_check_mark: **OPCON-23997**: Fixed an issue where a selectedIds query parameter did not select the rows.

:white_check_mark: **OPCON-23999**: Fixed an issue that caused an error in the console when selecting dates in a calendar date picker.

:white_check_mark: **OPCON-24338**: Fixed an issue so that WS_FTPPro job sub-types now have advanced failure criteria.

:white_check_mark: **OPCON-24369**: Updated Studio Canvas to show the first and last 10 characters of long schedule and job names.

:white_check_mark: **OPCON-24391**: Fixed an issue where updating a daily job on a multi-instance schedule incorrectly updated its job dependencies if they were on the same sub-schedule.

:white_check_mark: **OPCON-24431**: Fixed error message displayed on Instance Property field with a leading or trailing space.

:white_check_mark: **OPCON-24462**: Updated Arguments field for embedded script jobs to allow up to 2000 characters.

:white_check_mark: **OPCON-24489**: Fixed an issue where the advanced failure criteria of a master job was not properly set or displayed in Solution Manager.

:white_check_mark: **OPCON-24490**: Fixed a duplicate key error when viewing the workflow of a schedule that has cross schedule job dependency with same job name.

:white_check_mark: **OPCON-24499**: Fixed an issue where duplicate frequencies were displayed in inactive frequency list in Master Job Definition page.

:white_check_mark: **OPCON-24500**: Fixed broken link for Help menu that resulted in Page Not Found.

:white_check_mark: **OPCON-24521**: Fixed an issue where using the back button does not bring the user back to the pert diagram on the operations graph page.

:white_check_mark: **OPCON-24542**: Fixed an issue in the popup message where the machine group name was not properly displayed when the machine group is added successfully.

:white_check_mark: **OPCON-24571**: Fixed an issue where users were unable to update their password when recovery email is required from server options.

:white_check_mark: **OPCON-24601**: Fixed an issue where a user's full name was not properly set.

:white_check_mark: **OPCON-24607**: Fixed a validation error in Studio page when creating dependency lines using drag & drop method that involves a renamed or copied job.

:white_check_mark: **OPCON-24632**: Fixed an issue where 'Use Exit Code From Script Result' was not properly updated in MS SQL Script jobs.

:white_check_mark: **OPCON-24660**: Fixed an issue where the Time between Notifications was not properly displayed or updated in Escalation Manager Rules.

:white_check_mark: **OPCON-24710**: Fixed an issue where the Edit Sub-Schedule Jobs option for container jobs did not open the associated sub-schedule.

:white_check_mark: **OPCON-24713**: Fixed an issue where duplicate frequencies were displayed in inactive frequency list in Master Schedule Definition page.

:white_check_mark: **OPCON-24960**: Improved performance when viewing and updating a Master Job.

:white_check_mark: **OPCON-24998**: Fixed issue where the default Job Build Status for a Master Job Frequency was not 'Released'.

:white_check_mark: **OPCON-25042**: Fixed Episys Answer Prompts jobs to accept parentheses in the Prompt and Response fields.

:white_check_mark: **OPCON-25054**: Fixed issue where the 'In Use' column on the Frequencies page sometimes displayed an incorrect value.

:white_check_mark: **OPCON-25070**: Fixed an issue that prevented creating Unix Job Output Parsing jobs and saving/displaying a value for Application Log Path.

#### REST API

:eight_spoked_asterisk: **OPCON-25012**: The OpCon API now returns HSTS headers (strict-transport-security) for HTTPS responses, which makes it impossible for your browser to attempt an HTTP connection with the API (forces HTTPS connections), and hence prevents an HSTS vulnerability.

:white_check_mark: **OPCON-23105**: Resolved an issue where updating the documentation for the SMAUtility schedule resulted in a key violation.

:white_check_mark: **OPCON-23460**: Fixed an issue where schedule builds failed when frequency On Intervals with every number of days was used.

:white_check_mark: **OPCON-24402**: Fixed an issue where the API returned incorrect user id for application logs.

:white_check_mark: **OPCON-24583**: Fixed an issue where passing a null type in the PUT and POST machines endpoints requests caused an unhandled exception.

:white_check_mark: **OPCON-24665**: Fixed an issue in the API that caused an error in Solution Manager Access Management page when there were a large number of users.

#### ImpEx2 Web Service

:white_check_mark: **OPCON-24669**: Fixed a problem when deploying schedules and reset AutoBuild and AutoDelete options selected by Deploy.
1) In package deployments added reset options to schedules when versions match and schedule contents not updated.
2) Changed reset to either set new selected values or remove options if values set to 0.

## Summer 24

**NOTE**: Verify/Upgrade these components if applicable: **ServiceNow** Connector – 21.4 or higher, **WebServices** Connector – 21.2 or higher, **Deploy** – 22.4 or higher, **Relay** - 24.1 or higher

2024 September

#### Server

:white_check_mark: **OPCON-23654**: Fixed an issue in OpCon where in a cloud environment, the messaging service for the 'relay' that allows users to run jobs on their data center agents, threw exceptions if there were no agents defined to use the 'relay' (like in a VPN setup, or when running all workloads in cloud only).

2024 August

#### REST API

:white_check_mark: **OPCON-24392**: Fixed an issue with database migrations, where a database with a large amount of data caused timeout errors when running a specific migration.

2024 July

#### Server

:white_check_mark: **OPCON-22670**: Fixed an issue where jobs using Remote Instance is automatically placed on hold. Jobs using Remote Instance should be able to run correctly now.

:white_check_mark: **OPCON-23632**: Fixed an issue where schedule build and delete logs were not being deleted periodically.

#### Solution Manager

:eight_spoked_asterisk: **OPCON-23255**: A new AI chatbot - Otto - is available for cloud users to answer OpCon related questions and also take actions; please refer to the documentation for Otto. NOTE: Otto chatbot has role based access control for security purposes. A new permission is added to control this.

:eight_spoked_asterisk: **OPCON-23393**: Added ability to use latest script version in ACS jobs.

:eight_spoked_asterisk: **OPCON-23662**: Updated Calendars, Global Properties, License and Support, and Frequencies pages to support WCAG accessibility standards.

:white_check_mark: **OPCON-21201**: Fixed an issue in Multi-Forecast where frequencies with "Do Not Schedule" build status were not displayed in purple.

:white_check_mark: **OPCON-21957**: Fixed an issue where users with Maintain Embedded Scripts privilege were not able to delete scripts and script versions.

:white_check_mark: **OPCON-23221**: Fixed an issue where machine settings were not reloaded when the machine was created, copied, or updated.

:white_check_mark: **OPCON-23301**: Fixed an issue in PERT diagram where some dependency lines were missing for some schedules.

:white_check_mark: **OPCON-23343**: Corrected a grammatical error in an error message where certain function privileges are required to access a particular page.

:white_check_mark: **OPCON-23347**: Fixed an issue in the Studio page where icons for job types were missing or broken.

:white_check_mark: **OPCON-23384**: Fixed an error in Notification Triggers when selecting a group type and then clicking on an empty space on the page.

:white_check_mark: **OPCON-23517**: Fixed an error in Master Jobs when selecting a job type and then clicking on an empty space on the page.

:white_check_mark: **OPCON-23530**: Fixed an issue where the Role_ocadm checkbox was incorrectly disabled on the Access Management > Users > Roles tab.

:white_check_mark: **OPCON-23583**: Fixed an issue where double quotes in Episys Answer Prompt jobs were mishandled.

:white_check_mark: **OPCON-23801**: Removed color theme from Application Settings tab.

:white_check_mark: **OPCON-23819**: Fixes an issue in Daily Job Definition page where clicking the Back button reset the selections in the Processes page.

:white_check_mark: **OPCON-23976**: Fixed an issue where Deployment Information section in Master Schedule Definition page was missing.

:white_check_mark: **OPCON-24411**: Fixed an issue with restarting OpconMFT job that was failing with 'bad request error'.

#### REST API

:white_check_mark: **OPCON-23470**: Fixed a potential failure if migrations ran multiple times.

#### ImpEx2 Web Service

:white_check_mark: **OPCON-23521**: Fixed a problem in Frequency Run Limits when fields Number of Runs and Latest Run Time were not reset correctly during deployment update.

## Spring 24

**NOTE**: Verify/Upgrade these components if applicable: **ServiceNow** Connector – 21.4 or higher, **WebServices** Connector – 21.2 or higher, **Deploy** – 22.4 or higher

2024 July

#### Solution Manager

:white_check_mark: **OPCON-17142**: Fixed an issue in Vision Settings page where selecting a tag from a list did not populate the Pattern field with the selected tag.

:white_check_mark: **OPCON-23812**: Fixed an issue where updating an On Request frequency did not give a warning about affected jobs and schedules.

:white_check_mark: **OPCON-23814**: Fixed an issue where master jobs cross references did not display all cross-referenced jobs.

2024 June

#### Solution Manager

:eight_spoked_asterisk: **OPCON-23392**: OpCon MFT users now have the ability to select an option to “force download” the filtered file or list of files. This ensures that OpCon will always download the specified file(s) at runtime regardless of whether changes have been made to the file or not.

:white_check_mark: **OPCON-17491**: Fixed an issue where permissions to view departments were incorrect.

:white_check_mark: **OPCON-23052**: Fixed an issue in Visions page where clicking the edit button in the bread crumb was redirecting users to page not found. Users will now be redirected to the correct page to edit the group tag.

:white_check_mark: **OPCON-23087**: Fixed issue in Notification Triggers page where removing an email message type also removes all other message types. Users will now be able to remove an email message type without affecting other types.

:white_check_mark: **OPCON-23225**: Fixed an issue in Master Schedule Definition page where the Save button was not enabled after changes were made to instance properties of a named instance schedule.

:white_check_mark: **OPCON-23457**: Fixed an issue where role permissions were inadvertently overwritten by stale data.

:white_check_mark: **OPCON-23519**: Fixed an issue where users and roles were not refreshing.

:white_check_mark: **OPCON-23524**: Fixed an issue where valid regular expressions were considered invalid in Self-Service Requests.

:white_check_mark: **OPCON-23588**: Fixed an issue causing users to timeout when using multiple browser tabs. User activity timeout will now be shared between multiple tabs.

:white_check_mark: **OPCON-23591**: Fixed an issue where an On Request frequency was not able to save with a date of February 29.

#### REST API

:white_check_mark: **OPCON-23540**: Fixed an issue where a user's external event password is corrupted during a migration from OpCon version 19 to 23.

2024 May

#### Installation

:white_check_mark: **OPCON-23104**: Modified SMADB_Backup script from having WITH NOINIT to having WITH INIT and SMADB_TLog_Backup script from having WITH INIT to having WITH NOINIT.

#### Server

:eight_spoked_asterisk: **OPCON-22997**: Added a new API for cloud environments that processes all messages for an on-prem 'relay' that forwards on-prem agent messages from the cloud.

:eight_spoked_asterisk: **OPCON-23208**: Added a new 'Relay' for OpCon Datacenter customers, which may be downloaded from the FTP site to run on an elevated command prompt to walk through installation steps. This component is responsible to communicate with OpCon running in the cloud and relaying the messages for on-prem agents. This makes it possible to run OpCon in the cloud without requiring a VPN connection.

:white_check_mark: **OPCON-22260**: Fixed an issue where the OpConMFT agent was reported as being down when the job id of a job status request was not found.

:white_check_mark: **OPCON-23535**: Fixed an issue with the communications component of OpCon, which rarely locked its log file and job processing halted until the lock was released.

#### Solution Manager

:eight_spoked_asterisk: **OPCON-20079**: Provide better formatting for z/OS Job Output menu items.

:eight_spoked_asterisk: **OPCON-23078**: Require Email for Users: This feature introduces a requirement for the email field to be populated for user accounts in support of the new password recovery process in addition to a new server option setting that gives admins the ability to allow existing users to enter their recovery email upon next login.

:eight_spoked_asterisk: **OPCON-23080**: Forgot Password Link: This feature adds a "Forgot Password?" link on the Solution Manager login screen to initiate the password recovery process by confirming their username and email to generate and receive an email with a password recovery code.

:eight_spoked_asterisk: **OPCON-23082**: Password Recovery Validation: This feature allows users to enter and validate the password recovery code received via email and navigates them through the password reset process.

:eight_spoked_asterisk: **OPCON-23230**: Save Daily Job Details to Master: This feature allows users to push changes made to daily jobs to their associated master job from within Solution Manager Operations and Daily Job Details views.

:eight_spoked_asterisk: **OPCON-23234**: Tag Management View Access: This feature adds a new permission for admins to control user access to the tag management view in Solution Manager. All existing roles will automatically be granted this privilege, but admins can now control which users are granted access to this view.

:eight_spoked_asterisk: **OPCON-23244**: Reset Job Types from Studio: This feature adds the capability for users to reset supported job types in Solution Manager from the Studio designer view and no longer requires users to navigate to the Master Job list view to perform this function.

:eight_spoked_asterisk: **OPCON-23245**: Configure a Default Homepage: This feature grants users the ability to define a custom landing page upon logging into Solution Manager by selecting the rocket icon displayed in the top right corner of each page. Any of the following pages can be selected as the homepage, but only one page can be active at a time:
- Self-Service
- Vision
- Operations
- Each page in Library
- Studio

:white_check_mark: **OPCON-22318**: Fixed an issue where the OpConMFT server configuration was set to false even after successful registration.

:white_check_mark: **OPCON-22994**: Fixed an issue where named instance schedules could not be created when Solution Manager was in French.

:white_check_mark: **OPCON-23015**: Fixed an issue where the Save button in daily jobs definition page was enabled without any changes.

:white_check_mark: **OPCON-23065**: Fixed an issue where users with privilege "Modify Jobs in Master Schedules" could not save changes to master jobs.

:white_check_mark: **OPCON-23072**: Fixed an issue where PERT diagram breadcrumbs for sub-schedules were missing.

:white_check_mark: **OPCON-23106**: Fixed an issue where the parameter "Requires XML Escape Sequences" for some Agents was incorrect.

:white_check_mark: **OPCON-23107**: Fixed an issue that blocked tab navigation on the Access Management page when the interface was set to French.

:white_check_mark: **OPCON-23108**: Fixed an issue where Users and Roles were not correctly displayed in a Firefox browser.

:white_check_mark: **OPCON-23207**: Fixed issue where all nodes will have red borders when a schedule is first loaded onto the workflow. This change removes the red border from these nodes and only nodes on position (0, 0) will have red borders.

:white_check_mark: **OPCON-23247**: Fixed an issue that caused a runtime error when saving IBMi Spool File values in Master Jobs.

:white_check_mark: **OPCON-23248**: Fixed an issue where users were unable to remove frequencies from schedules.

:white_check_mark: **OPCON-23251**: Fixed an issue where the resolved value for the date user input in Self-Service was incorrect when the time zone was set to Central European Time.

#### REST API

:white_check_mark: **OPCON-21833**: Fixed an issue which occurred when re-establishing an authenticated connection with an OpConMFT machine. This operation can now be performed successfully.

:white_check_mark: **OPCON-22270**: Fixed an issue where retrieving data in Schedule and Job History report was timing out.

:white_check_mark: **OPCON-23074**: Fixed a character encoding issue which prevented users from using some Unicode characters when configuring jobs.

:white_check_mark: **OPCON-23349**: Fixed an issue where some modifications to a role did not take effect immediately for all logged in users.

#### ImpEx2 Web Service

:white_check_mark: **OPCON-23055**: Fixed a problem during schedule deployment removing schedule named instances if the new version of the schedule no longer has any defined schedule named instances.

:white_check_mark: **OPCON-23091**: Fixed an issue during deployment where global property value was mixed up if there are other property names with a similar pattern.

:white_check_mark: **OPCON-23345**: Fixed a problem where the schedule multi-instance values are not reset correctly during deployment when the schedule definition already exists.
