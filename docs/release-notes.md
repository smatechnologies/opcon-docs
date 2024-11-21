---
sidebar_label: "Release Notes"
---

# OpCon Release Notes


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
