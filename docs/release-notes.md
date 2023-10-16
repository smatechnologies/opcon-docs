---
sidebar_label: "Release Notes"
---

# OpCon Release Notes

## OpCon 22.9.0

2023 October

#### Server

:white_check_mark: **OPCON-21993**: Fix an issue where Guidewire and OpConMFT Jobs would fail to report successful Job Kill execution.

#### Solution Manager

:eight_spoked_asterisk: **OPCON-20685**: Users, Roles and Permissions: This feature delivers the addition of a read-only Users tab within Access Management. Administrators will be able to view a users and user details allowing for better insight into role assignment and permissions.

:white_check_mark: **OPCON-21185**: Fixed an issue where users could not add environment variables to jobs if the value contained '='.

:white_check_mark: **OPCON-21215**: Updated Frequency name to allow special characters. Users will now be able to add and modify Frequency names that contain special characters.

:white_check_mark: **OPCON-21636**: Fixed an issue in Master Schedules page where clicking the Admin button would prompt the user to save the schedule even when there were no changes. This update will bring smoother user experience to the Master Schedules page.

:white_check_mark: **OPCON-21749**: Fixed an issue with reset function in Server Options. 'Reset all to default' and 'Reset current tab to default' will now be enabled when form changes.

:white_check_mark: **OPCON-21824**: Fixed an issue in Master Jobs page where Notification Triggers filter on Group Type did not work.

:white_check_mark: **OPCON-22288**: Added a fix to correct the behavior when an OpCon token expires and the user retries to log in via SSO.

#### REST API

:white_check_mark: **OPCON-21833**: Fixed issue which occurred when re-establishing an authenticated connection with an OpConMFT machine. This operation can now be performed successfully.

:white_check_mark: **OPCON-22292**: Fixed an issue in jobHistories endpoint that caused an error when multiple job status IDs were specified.

## OpCon 22.8.0

2023 September

#### Installation

:white_check_mark: **OPCON-17338**: Modified SMA Utility SQL scripts to verify existence of script type and runner before inserting new record. This will avoid duplicate values in the database.

#### Server

:eight_spoked_asterisk: **OPCON-19946**: GuidewireCloud: This feature provides communication between OpCon and our new integration with Guidewire Cloud insurance suite. The delivery of this feature will allow GuidewireCloud users the capability to communicate using OpCon for the scheduling of batch processes within Guidewires BillingCenter, ClaimsCenter and PolicyCenter.

:eight_spoked_asterisk: **OPCON-20051**: GuidewireCloud Agent and MFT Agent: This feature delivers the capability to stop a job within a built schedule. This provides the user with more flexibility to make adaptations to their schedules and workflow allowing for jobs not to be run.

:white_check_mark: **OPCON-21521**: Fixed an issue where a missing predecessor job in the daily caused an error in SMAStartTimeCalculator.

#### Solution Manager

:eight_spoked_asterisk: **OPCON-19452**: Reporting: This feature will provide users with a link to the Reporting page from the Library. The initial offering will direct users to a new Reporting landing page providing a convenient way to access your reports. This will streamline your workflow by providing a quick route to where all your future reports will be housed.

:eight_spoked_asterisk: **OPCON-19940**: GuidewireCloud: This feature will deliver GuidewireCloud users the ability to setup and configure an agent in OpCon. Connections to Guidewires BatchCenter, BillingCenter, and PolicyCenter will be available for users to schedule and orchestrate the available batch processes.

:eight_spoked_asterisk: **OPCON-19942**: GuidewireCloud: This feature will provide the ability for Guidewire users to configure a master job to align with an existing schedule. This will allow users to create a robust schedule to orchestrate their batch processes within the Guidewires insurance cores.

:eight_spoked_asterisk: **OPCON-19944**: GuidewireCloud: This feature will provide the ability for Guidewire users to configure a daily job. This will allow users to view and modify their jobs at a more granular (daily) level.

:eight_spoked_asterisk: **OPCON-20683**: Users, Roles and Permissions: This feature delivers the addition of a read-only Resources and Batch Users tab that is aligned to a selected role within Access Management. This will provide administrators with better visibility into existing roles and their assigned batch users and resource components such as access codes, machines, machine groups, schedules and scripts.

:eight_spoked_asterisk: **OPCON-20965**: Server Options: This feature will provide administrators the option to force a global password reset when any changes are made to security settings. This enhancement is designed to bolster the security of your organization by ensuring that any changes to the security configurations can be immediately reflected in your users passwords.

:eight_spoked_asterisk: **OPCON-21505**: GuidewireCloud: This feature delivers integration of the OAUTH requirements to enhance security interactions with the Guidewire REST API. This ensures that only authorized users are able to access and interact with the API resources.

:eight_spoked_asterisk: **OPCON-21590**: GuidewireCloud: This feature will improve the user experience by supplying details and views tailored to GuidewireCloud users. Administrators will be supplied an agent-specific detail page aligned to GuidewireCloud configuration needs. GuidewireCloud users will receive a tailored experience when setting up jobs with insights on attribute details allowing users to find critical information more easily.

:white_check_mark: **OPCON-17189**: Modified Job Status component to show correct job status. This will allow the user to view the correct job status when selecting a job in PERT or in Processes.

:white_check_mark: **OPCON-19792**: Fixed an issue where changing a machine or machine group in an IBMi File Arrival FileWatcher.v3 daily job were not checked for FileWatcher.v3 support.

:white_check_mark: **OPCON-19818**: Fixed incorrect count displayed when modifying an Agent's Communication Status from the Agents page right sidebar.

:white_check_mark: **OPCON-20598**: Renamed a column header in Agent Details page from "Time Spent" to "Time Sent".

:white_check_mark: **OPCON-20654**: Updated the duration column on the Processes page to update every 30 seconds and displays seconds.

:white_check_mark: **OPCON-20721**: Fixed an issue where editing an IBMi File Arrival FileWatcher.v3 daily job did not display or update FileWatcher.v3 properties.

:white_check_mark: **OPCON-20904**: Fixed an issue in IBM i job details page where some fields were not providing pre-defined selections.

:white_check_mark: **OPCON-20910**: Fixed an issue in Event Configuration where the parameters "Reopen Schedule" and "Apply Exceptions" for $JOB:ADD event did not have Yes and No selections.

:white_check_mark: **OPCON-20959**: Fixed advanced filters not being honored after adding a new trigger in Notification Triggers page.

:white_check_mark: **OPCON-20961**: Fixed advanced filters not working correctly in Notification Triggers page.

:white_check_mark: **OPCON-20972**: Fixed an issue where special characters in logs were not displaying properly.

:white_check_mark: **OPCON-21232**: Fixed an issue in Self Service where error would happen after submitting the service request if user input type was Master Job.

:white_check_mark: **OPCON-21195**: Fixed an issue where "Requires XML Escape" for some Agents was always False.

:white_check_mark: **OPCON-21271**: Fixed an issue with different user sessions having stale server options data. Now users no longer need to log out and log in again to get updated server options data while logged into multiple sessions.

:white_check_mark: **OPCON-21565**: Fixed an issue where Multi-Forecasting schedule frequencies resulted in an error.

:white_check_mark: **OPCON-21826**: Removed 'Guidewire' from the Batch Users Target OS selection field. Batch users are no longer supported on this platform.

#### REST API

:white_check_mark: **OPCON-16320**: Vision Card using Remote Session now updates to show the correct card information.

:white_check_mark: **OPCON-21002**: Removed extraneous data from API responses on the 'machines' endpoint.

:white_check_mark: **OPCON-21640**: Fixed slow updates on requests sent to server options endpoint. This update fixed a problem with requests taking an average of 5 seconds to complete to less than 1 second in the server options page.

## OpCon 22.7.0

2023 August

#### Server

:white_check_mark: **OPCON-16777**: Fixed an issue where estimated start times were not honoring predecessor job run times when Container jobs used instance properties.

:white_check_mark: **OPCON-21275**: Fixed an issue in schedule builds where a named instance schedule having job exceptions defined on it failed if the exception had a property expression with global properties referenced.

#### Solution Manager

:eight_spoked_asterisk: **OPCON-17792**: Server Options: This feature delivers a new time settings tab within server options. This capability gives administrators the ability to customize time settings for schedules and jobs so the workflow can be tailored to your preferences and requirements.

:eight_spoked_asterisk: **OPCON-17798**: Server Options: This feature delivers a new vision tab within Server Options. This capability allows the administrator to define preferences on historical and future data capture on their custom vision cards.

:eight_spoked_asterisk: **OPCON-18523**: Studio Canvas: This new feature will allow users to export a screenshot of a selected schedule's workflow. Now you can capture and save an image of a selected schedule directly from the Studio Canvas.

:eight_spoked_asterisk: **OPCON-20681**: Users, Roles and Permissions: This feature delivers the addition of a read-only Departments tab within Access Management. Administrators will be able to view assigned departments that are aligned to existing roles allowing for better visibility over assigned permissions.

:eight_spoked_asterisk: **OPCON-20986**: Server Options: This feature adds a new layer of precision to server option management. Administrators can now grant write access to users who possess specialized expertise in server options content. Now identified users will not require full administration capabilities to make a valuable contribution.

:eight_spoked_asterisk: **OPCON-21237**: Logging: Added SCHEDULE BUILD LOGS tab to hold schedule build log files. This feature will deliver authorized users the ability to view and download the contents of the logs directly within Solution Manager. This capability is aimed at improving log management efficiency and facilitating easier log analysis.

:eight_spoked_asterisk: **OPCON-21265**: Logging: Included SMALsamDataRetriever.log to base application logs and archives.

:white_check_mark: **OPCON-19806**: Fixed an issue in some pages where right click did not reveal standard browser context menu.

:white_check_mark: **OPCON-19851**: Fixed an issue in Frequencies and Master Jobs where navigating to the next page was not possible.

:white_check_mark: **OPCON-21144**: Fixed an issue in Self Service where comma was reported as invalid character when it was present in characters to strip.

:white_check_mark: **OPCON-21280**: Fixed an issue where Multi-Forecasting frequencies resulted in an error.

:white_check_mark: **OPCON-21333**: Fixed an issue in Self Service where characters to strip were not working as intended.

:white_check_mark: **OPCON-21391**: Fixed an issue where changing the sub-schedule of a Container job was not saved.

:white_check_mark: **OPCON-21472**: Fixed an issue in Server Options page where some empty SMTP settings were saved in the database.

:white_check_mark: **OPCON-21499**: Fixed an issue in Server Options page where numeric SMTP settings were not checked for validity.

:white_check_mark: **OPCON-21503**: Fixed an issue in Server Options where "Save as primary SMTP setting" and "Save as primary SMS setting" checkboxes were not saved.

#### REST API

:white_check_mark: **OPCON-20967**: Fixed an issue which prevented users from using Regular Expression escapes when defining a CloudEvents Trigger filter

:white_check_mark: **OPCON-21272**: Fixed a performance issue in the OpCon API where a container job timed out fetching details if there were a large number of schedules built in daily tables.

:white_check_mark: **OPCON-21282**: Fixed an issue in OpCon API where the 20.0 database migration failed if the database had 2100 user or more defined.

#### ImpEx2 Web Service

:white_check_mark: **OPCON-21194**: Duplicate jobs are created due to case sensitivity. The keys used during existing job matches changed to uppercase to ensure consistent checking avoiding case sensitivity problems. All calls to extract objects from the database have also been updated to ignore case sensitivity.

:white_check_mark: **OPCON-21515**: During schedule deployment when schedule exists, duplicate event records for schedules and jobs can be created. The correction checks for duplicate event records that could be created due to schedule transformation and adjusted the comparison key adding the frequency name to ensure duplicate events are not added to the JEVENTS table.

## OpCon 22.6.0

2023 July

#### Solution Manager

:eight_spoked_asterisk: **OPCON-17793**: Server Options: This feature delivers the addition of the SMTP server settings configuration tab within Server Options. This new feature will allows administrators to easily setup and manage email notifications, enhancing communication to keep you up to date with system activities.

:eight_spoked_asterisk: **OPCON-17794**: Server Options: This feature delivers a new notification tab within Server Options. This function empowers the administrator to fine tune their preferences for receiving notifications.

:eight_spoked_asterisk: **OPCON-17796**: Server Options: This feature delivers a new security tab within Server Options. This function empowers the administrator to enhance the security of their users accounts with various options to enforce password rules.

:eight_spoked_asterisk: **OPCON-19759**: Studio Canvas: This feature enhancement optimizes the process of storing and retrieving node positions on the canvas, resulting in a smoother and more responsive user experience.

:eight_spoked_asterisk: **OPCON-19801**: Logging: This feature will deliver authorized users the ability to view the contents of the archived log files directly within Solution Manager. This capability is aimed at improving log management efficiency and facilitating easier log analysis.

:eight_spoked_asterisk: **OPCON-19844**: Logging: This feature will deliver authorized users the ability to download the contents of a archived log file directly from Solution Manager. This new capability will improve log management workflows and provide users with more control over their archived logs.

:eight_spoked_asterisk: **OPCON-20241**: Users, Roles and Permissions: This feature delivers the addition of a read-only General tab within Access Management. This new feature provides administrators the capability to view details related to existing roles and the privileges assigned to that role.

:eight_spoked_asterisk: **OPCON-20603**: Logging: Authorized users will have access to a list of archived log files with the ability to see additional details such as the file name, type of file, size and date/time of capture.

:eight_spoked_asterisk: **OPCON-20679**: Users, Roles and Permissions: This feature delivers the addition of a read-only Activities tab within Access Management. Administrators will be able to view the activities and functions assigned to existing roles allowing for better visibility over assigned permissions.

:eight_spoked_asterisk: **OPCON-20804**: Server Options: This feature provides administrators with a convenient way to revert the settings to the default system settings on a single tab or for all changes made on multiple tabs. We believe this addition will enhance usability and flexibility, allowing you to fine tune your setting with ease.

:white_check_mark: **OPCON-20590**: Fixed an issue where copying a job in Studio Canvas would display the message "Job is read only" on the right hand panel.

:white_check_mark: **OPCON-20720**: Fixed an issue in Master Jobs page where not all target schedules were displayed when moving a job from one schedule to another.

:white_check_mark: **OPCON-20722**: Fixed an issue where certain special characters in the new job name were being removed or replaced when copying a master job.

:white_check_mark: **OPCON-20909**: Fixed an issue in the Logs page where sorting log files by size was not working correctly.

#### ImpEx2 Web Service

:white_check_mark: **OPCON-20706**: A null pointer exception occurred during the Simulation process when checking the batch user associated with a File Transfer task definition and the source or destination machine is not defined in the target OpCon system. A message has been included indicating that the batch user could not be checked as the File Transfer machine was not defined.

#### Utilities

:eight_spoked_asterisk: **OPCON-20926**: Added SMA Check Identity Limit job to the SMAUtility schedule when creating a new database.

## OpCon 22.5.0

2023 June

#### Server

:white_check_mark: **OPCON-16073**: License is now recognized and applied automatically in OpCon on Linux.

#### Solution Manager

:eight_spoked_asterisk: **OPCON-17784**: Users, Roles and Permissions: Users will be provided with a link from the Library providing access to the new Access Management page. This page will be the foundation for the management of users, roles and their permissions within Solution Manager. This first offering provides the user with the initial view into the management of roles.

:eight_spoked_asterisk: **OPCON-17790**: Server Options: This feature will launch a new landing page for Server Options. This initial release will introduce the user to the General Details tab, the first of many, providing the user access to configurations related to your Solution Manager setup.

:eight_spoked_asterisk: **OPCON-19799**: Logging: This feature will deliver authorized users the ability to download the contents of a base log file directly from Solution Manager. With this new capability, you can obtain log file data for in-depth analysis or archival purposes.

:eight_spoked_asterisk: **OPCON-19803**: Logging: This feature will deliver authorized users the ability to view the contents of the base log files directly within Solution Manager. With this new capability, you can gain valuable insights, track system behavior and troubleshoot issues effectively.

:eight_spoked_asterisk: **OPCON-20676**: Users, Roles and Permissions: This release will provide users with an improved and convenient way to manage roles within our application. With the initial view of a list of roles, you can now have a clear overview of existing roles and their descriptions.

:white_check_mark: **OPCON-20725**: [[$EXTERNAL]] properties are now populated in the Job Instance Property Suggestion tooltip.

:white_check_mark: **OPCON-20828**: Fixed error where under some circumstances a user is unable to save a CloudEvents Trigger Association.

:white_check_mark: **OPCON-20865**: Fixed an issue in Notification Triggers Manage Groups page where filtering by selected jobs sometimes gave a job not found error.

:white_check_mark: **OPCON-20873**: Fixed an issue in Notification Triggers Manage Groups page where scrolling through the pages and selecting jobs sometimes gave a job not found error.

:white_check_mark: **OPCON-20971**: Updated Job Type filter on Master Jobs page to include only supported job types.

## OpCon 22.4.0

2023 May

#### General

:eight_spoked_asterisk: **OPCON-18766**: Managed File Transfer (MFT) Server is now available and comes with the ability to run a secure file transfer server and trigger actions based on events that occur on the server. MFT Server is distributed with the existing OpConMFT installer.

:eight_spoked_asterisk: **OPCON-18814**: Added two new privileges to view and manage Cloud Event Trigger associations, "View CloudEvents Associations" and "Maintain CloudEvents Associations".

#### Installation

:white_check_mark: **OPCON-20073**: Fixed an issue in the installer that caused MFT agent system records to be removed from the database during upgrades that needed a SQL script to fix and re-add them.

#### Solution Manager

:eight_spoked_asterisk: **OPCON-17657**: Solution Manager now supports Single Sign-On with identity providers using the OpenID Connect (OIDC) protocol. Configuration options are provided for Okta and Azure AD, and an 'Other' option for all other implementers of OIDC. Learn more here: [Managing SSO](https://help.smatechnologies.com/opcon/core/Files/UI/Solution-Manager/Library/ServerOptions/Managing-SSO-Configurations).

:eight_spoked_asterisk: **OPCON-19555**: Master schedules, including their jobs and privileges, may now be copied to new schedules within Solution Manager.

:eight_spoked_asterisk: **OPCON-16963**: Added the ability to view, add, modify, delete, copy and move SAP BW master jobs within Solution Manager.

:eight_spoked_asterisk: **OPCON-16961**: Added the ability to view, add, modify, delete, copy and move OS2200 master jobs within Solution Manager.

:white_check_mark: **OPCON-19586**: Fix frequency and job dependency issues with master jobs copy.

:white_check_mark: **OPCON-19777**: Fixes issue where single machine selection was being ignored and schedule build was running for each machine in the machine group.

:white_check_mark: **OPCON-19783**: Fix issue where IBMi File Arrival jobs fail to copy.

#### REST API

:white_check_mark: **OPCON-19763**: Fixes issue with self service executions when using the 'Choice' type with dynamic schedule names not being able to be used with the API.

:white_check_mark: **OPCON-20048**: Fixed an issue with Schedule Copy Endpoint which was creating duplicates if new name has an underscore.

:white_check_mark: **OPCON-20664**: Fixed an issue with API where posted CloudEvents will not get deleted from History table when there are no filters defined causing a PRIMARY KEY VIOLATION in CloudEventsArchive table when same event gets reprocessed repeatedly.

:white_check_mark: **OPCON-20078**: Allow users with ocadm role or AllFunctionPrivileges to view or maintain CloudEvents associations.

#### Utilities

:white_check_mark: **OPCON-15703**: Fixed an issue in SMArt Email where look ahead and look behind tokens were not working.

## OpCon 22.3.1

2023 May

#### Server

:white_check_mark: **OPCON-19758**: Fixed an issue where multiple SMANetcom instances tried to write to the same API agent log file and was stopped by Servman as it kept getting locked out from writing to it.

:white_check_mark: **OPCON-12035**: Fixed an issue with wrong calculation of start time for daily jobs

#### Solution Manager

:eight_spoked_asterisk: **OPCON-18775**: Master Jobs: IMBi users are provided with additional field codes improving the usability of the IBMi Agent. These field codes allow for more efficient and accurate data entry by providing shortcuts for commonly used values in IBMi systems.

:eight_spoked_asterisk: **OPCON-19224**: Studio Canvas: Users are provided with the capability of copying an existing schedule. In addition, the user will have the option to include or exclude jobs that are associated with schedule chosen to copy.

:white_check_mark: **OPCON-16104**: Fixed "key not found" issue on Deployment Info section of Daily Schedule Definition page.

:white_check_mark: **OPCON-19126**: Fixes issue with slow performance when trying to load tag manager filter results.

:white_check_mark: **OPCON-19224**: Fixed an issue with daily schedule operations where no jobs would appear when trying to add jobs to sub-schedules.

:white_check_mark: **OPCON-19224**: Fixes issue with start time, end time, and job end time not saving correctly from Daily Job maintenance when days were set to '0' for all three fields.

#### ImpEx2 Web Service

:white_check_mark: **OPCON-19570**: Fixed an issue with schedule import where autoBuildTime was missing from the schedule definition if import a schedule with auto build time of 00:00.

## OpCon 22.2.0

2023 April

#### Server

:white_check_mark: **OPCON-12756**: After an error during the deletion of messages to SAM, netcom will check connection to database and reconnect if it has been lost.

:white_check_mark: **OPCON-16015**: Fixed an issue in SMA_REMAPSQLUSERSTOLOGINS.sql related to database mirroring

:white_check_mark: **OPCON-19202**: Return job initialization failure when OpCon MFT job start fails.

#### Solution Manager

:eight_spoked_asterisk: **OPCON-17771**: Master Jobs: Users are provided with the capability of resetting a Master Job type. Resetting a job type allows the user reset the job type while keeping the characteristics of the job such as dependencies, schedule, frequency etc..

:eight_spoked_asterisk: **OPCON-17781**: Master Jobs: Users are provided with the ability to view Job Execution History from the Master Jobs page.

:eight_spoked_asterisk: **OPCON-18528**: Studio Canvas: Users are provided an informational icon that provides a legend for referencing the dependency color lines and relationships.

:eight_spoked_asterisk: **OPCON-18819**: Adds the ability to active Server functionality on an OpConMFT Agent with a valid license. To enable Server functionality, the Agent must already be authenticated and the webhook must be registered with the Agent.

:eight_spoked_asterisk: **OPCON-19026**: Studio Canvas: Users are provided the option to isolate a jobs dependencies on the canvas. By right clicking a job node, the user can select to see previous dependencies, subsequent dependencies, see a jobs dependency chain and show a jobs shortest path.

:eight_spoked_asterisk: **OPCON-19250**: Studio Canvas: Users are provided the option to isolate the threshold dependencies on the canvas. By right clicking a threshold dependency, the user can select to see previous dependencies, subsequent dependencies, see a threshold dependency chain and show a thresholds shortest path.

:eight_spoked_asterisk: **OPCON-19272**: Studio Canvas: Users are provided the option to isolate the resource dependencies on the canvas. By right clicking a resource dependency, the user can select to see previous dependencies, subsequent dependencies, see resource dependency chain and show a resources shortest path.

:white_check_mark: **OPCON-18823**: Added performance improvements inside the processes page in Solution Manager to efficiently handle large databases.

:white_check_mark: **OPCON-18842**: Fixed an issue where Start Time and End Time were not properly displayed for IBMi File Arrival jobs.

:white_check_mark: **OPCON-18941**: Fixed empty schedule name with new grid.

:white_check_mark: **OPCON-18950**: Fixed nodes not showing after copying a job from another schedule.

:white_check_mark: **OPCON-19003**: Removed error message and added info message for empty schedule.

:white_check_mark: **OPCON-19125**: Fixed an error in Tag Manager filter when the database contains job types that are not yet supported.

:white_check_mark: **OPCON-19143**: Fixed an issue where File Transfer job type was not visible when adding a new master job.

:white_check_mark: **OPCON-19169**: Fixed a bug that prevented non ocadm users from retrieving master transfer jobs.

:white_check_mark: **OPCON-19426**: The Master Jobs Definition page now displays the Schedules list in alphabetical order.

#### REST API

:eight_spoked_asterisk: **OPCON-18820**: Add two new properties on the Machine model - opconMftServerEnabled and opconMftServerEventsWebhook

:eight_spoked_asterisk: **OPCON-18821**: Allows enabling MFT Server functionality on an OpConMFT Agent granted that there is a valid license.

:white_check_mark: **OPCON-19842**: Fixed potential issue with log rollovers when clock changes.

:white_check_mark: **OPCON-19135**: Fixed issue where adding a calendars with an id higher than the maximum small integer would error.

:white_check_mark: **OPCON-19558**: Fixed database migration error with ClouldEvents

#### ImpEx2 Web Service

:white_check_mark: **OPCON-19164**: Fixed an issue in Deploy simulation where role check failed to list missing roles.

## OpCon 22.1.0

2023 March

#### Solution Manager

:eight_spoked_asterisk: **OPCON-17687**: Added a mini-map on the canvas for a high level overview and quick navigation of the selected schedule.

:eight_spoked_asterisk: **OPCON-17688**: Animated lines between nodes have been replaced with static lines for easier viewing of the displayed items.

:eight_spoked_asterisk: **OPCON-18383**: Authorized users will be able to see Single Sign On (SSO) configuration page within Server Options.

#### REST API

:white_check_mark: **OPCON-15392**: Fixed an issue where the replicated OpCon database did not have all tables reseeded for unique ids and hence had a primary key violation error when building or adding jobs to the Daily.

## OpCon 22.0.0

2023 February

#### NOTE: Users with large workflows may experience these performance issues in Solution Manager:

#### In environments with 60,000 jobs or more, Master Job management screens may experience increased page loading times. With schedules containing more than 500 jobs, Studio canvas may experience slow loading times or loading errors.

#### If these delays occur, the instances themselves will still run normally on the OpCon server. We’re working to address both of these issues and anticipate a fix soon after this release. We appreciate your patience as we continue to develop these new Solution Manager capabilities to bring feature parity and scalability for large workflows.

#### Installation

:eight_spoked_asterisk: **OPCON-16236**: A new OpConMFT agent (an agent dedicated to file transfers) is now available as part of OpCon installation. Please refer to the documentation available for the agent on the OpCon help site. NOTE: If you intend to use this agent, you will need to request a new license with this agent included in it. Without the license, if you try to define a new machine for this agent in OpCon and mark it up, you will see a license violation in the Critical log and core services will stop.

#### Solution Manager

:eight_spoked_asterisk: **OPCON-15597**: Solution Manager now allows users to add, edit and delete master schedules from a link on the "Library" page.

:eight_spoked_asterisk: **OPCON-16567**: Solution Manager now allows users to view, add, edit and delete dependencies and threshold/resource updates on the "Studio" page. Users can search, filter, view sub-schedules, view cross schedule dependencies, add master jobs, copy master jobs, and add dependencies using drag and drop.

:eight_spoked_asterisk: **OPCON-17310**: Added Advanced Frequency Settings inside the Master Job Definition page. These settings can be used to adjust scheduling of a frequency on specific schedule dates or for periods of time.

:eight_spoked_asterisk: **OPCON-17646**: Added full frequency and multiple frequencies forecast.

:eight_spoked_asterisk: **OPCON-17682**: Solution Manager now allows users to edit daily OpCon MFT jobs.

:eight_spoked_asterisk: **OPCON-18123**: Solution Manager now allows users to add new frequencies to master schedules and master jobs.

:eight_spoked_asterisk: **OPCON-18432**: Solution Manager now allows users to view, add, edit, copy and delete IBM i master jobs. The supported job types are: Batch, Tracked, Queued, Operator Replay, Restricted Mode, FTP, and File Arrival.

:eight_spoked_asterisk: **OPCON-18744**: Performance improvements have been made to Notification Triggers, Groups, and Categories.

:eight_spoked_asterisk: **OPCON-18786**: Performance improvements have been made to the Calendars page.

:eight_spoked_asterisk: **OPCON-18788**: Performance improvements have been made to the Master Jobs page.

:white_check_mark: **OPCON-16801**: Fixed an issue with Forecast not being displayed in French language.

:white_check_mark: **OPCON-17126**: Fixed an issue in the Agents page where filters were not working.

:white_check_mark: **OPCON-17173**: Fixed error 'Invalid Id' when adding daily job dependency in schedule with named instances.

:white_check_mark: **OPCON-17659**: Modified batch user privileges to show only one alert dialog when saving all modified privileges for a batch user.

:white_check_mark: **OPCON-17685**: Fixed an issue in the Agents page that showed incorrect setting for "Use TLS for Scheduling Communications".

:white_check_mark: **OPCON-17752**: Fixed an issue when trying to save certain frequency settings under 'When Job Finishes Ok'.

:white_check_mark: **OPCON-17756**: Fixed case sensitive and wildcards filter issues in the Agents page.

:white_check_mark: **OPCON-17801**: Fixed an issue in Notification Triggers Manage Groups page where the "Show" drop down had "Selected" but displayed all jobs.

:white_check_mark: **OPCON-17803**: Fixed an issue in Tag Manager where some jobs were not displayed under certain filter conditions.

:white_check_mark: **OPCON-17830**: Modified notification triggers to hide "Windows Event Log", "Network Message", "SNMP Trap", "SPO Event Report", "Run Command" when OpCon is running on a platform different than Windows.

:white_check_mark: **OPCON-17941**: Fixed an issue in events $JOB:RESTART and $JOB:RESTARTHLD where optional parameters Force Restart and Restart Step were missing.

:white_check_mark: **OPCON-17942**: Fixed an issue of notifications not being processed when notification triggers had greater or less than sign.

:white_check_mark: **OPCON-18121**: Fixed some issues in job history notes where a single quote caused an error, the users could not edit the first note, and the order of the notes were reversed after an update.

:white_check_mark: **OPCON-18386**: Fixed an issue where machines were showing for users who did not have permissions inside Master Job Definition page.

:white_check_mark: **OPCON-18389**: Fixed an issue where users without correct machine permissions were able to edit jobs in Master Jobs page.

:white_check_mark: **OPCON-18413**: Fixed an issue where signals inside Master Job Definition page was showing "undefined" in read-only mode.

:white_check_mark: **OPCON-18417**: Fixed error "Event $JOB:MACHGRP is an unknown event".

:white_check_mark: **OPCON-18418**: Fixed an issue where certain job types were hidden from the Master Job Definition page dropdown.

:white_check_mark: **OPCON-18422**: Fixed an issue with the search function in Add Jobs to Schedule module not working properly.

:white_check_mark: **OPCON-18497**: Fixed an issue where Threshold/Resource could not be changed in a previously defined Threshold/Resource dependency.

:white_check_mark: **OPCON-18504**: Fixed an issue in Master Job Definition page where Access Code, Department, and Exit Code were not auto-populated with default values.

:white_check_mark: **OPCON-18530**: Fixed some display issues and how default values were stored in the database for master and daily SQL jobs.

:white_check_mark: **OPCON-18536**: Fixed an issue where unsupported job types were not visible in the Master Jobs page.

:white_check_mark: **OPCON-18590**: Fixed "Run In a Command Shell" switch to show correct active/inactive state.

:white_check_mark: **OPCON-18591**: Fixed Job Output Parsing in a Master Job to be able to modify the order of the priority.

:white_check_mark: **OPCON-18592**: Changed Estimated Run Time for a Master Job to be 1 minute by default.

:white_check_mark: **OPCON-18593**: Fixed an issue in Master Jobs where frequencies with a slash "/" could not be modified.

:white_check_mark: **OPCON-18594**: Modified PreRun option to be disabled by default in admin mode when creating a new master job.

:white_check_mark: **OPCON-18595**: Modified failure criteria to show "Not Equal To" by default in the operator value.

:white_check_mark: **OPCON-18596**: Windows Command line and Directory components have been modified to display the complete content of the field.

:white_check_mark: **OPCON-18598**: Fixed "Invalid frequency FinishedOkBehavior" error with "When Job Finishes Ok" in a master job when it was changed from "Recurring Instances" to "Restart Again".

:white_check_mark: **OPCON-18599**: When creating a dependency in a master job, the schedule field now has the current master job's schedule selected by default.

:white_check_mark: **OPCON-18600**: When a frequency in the inactive frequencies list is renamed, the frequency is now removed from the list.

:white_check_mark: **OPCON-18601**: Master jobs can now be saved when the frequency field in an event is left empty.

:white_check_mark: **OPCON-18648**: If a schedule is a multi-instance schedule, the "Instance Definition" panel now shows up on the "Master Schedule Definition" page when the page is in read-only mode. For Named and Machine multi-instance schedules, the "Instance Definition" panel now has the correct radio button selected and displays correct data.

:white_check_mark: **OPCON-18683**: Fixed multiple builds happening when an instance definition is removed and a build is happening.

:white_check_mark: **OPCON-18774**: Fixed an issue where deleting a master job with cross-references caused two alert dialogs to pop up. One dialog said the job was deleted successfully while the other dialog said it could not be deleted because it had cross references.

:white_check_mark: **OPCON-18831**: Fixed an issue where a large number of frequencies caused an error in the Frequency Manager and Master Jobs.

:white_check_mark: **OPCON-18837**: Fixed an issue in Master Jobs page where Job Type was being sorted by id instead of by displayed text. Added a drop-down next to the column to filter by job type.

:white_check_mark: **OPCON-19127**: Fixed an issue in Manage Groups page where all items selected across different pages were not saved.

#### Server

:white_check_mark: **OPCON-17038**: Updated SMArt Email to use MSAL Graph API for Outlook accounts deactivating basic authentication.

:white_check_mark: **OPCON-18405**: Modified NetCom to log error and shutdown when SMANetCom.log is not present or when there is no permission to the folder containing it.

:white_check_mark: **OPCON-18642**: Fixed an issue in SMANetCom where periodic job status messages to an OpCon MFT agent did not get processed and threw a null pointer exception.

:white_check_mark: **OPCON-18681**: Return a 'job not found' message to SMANetCom in response to a TX2 request when the associated OpCon MFT Agent job cannot be found.

#### REST API

:white_check_mark: **OPCON-18514**: Fixed an issue that caused slowness or errors when processing Self-Service.

:white_check_mark: **OPCON-18687**: Fixed an issue with job histories when using SQL Server 2012.

:white_check_mark: **OPCON-18938**: Fixed an issue in masterJobs endpoint where it did not return all accessible jobs for a non-admin user.

#### ImpEx2 Web Service

:white_check_mark: **OPCON-18382**: Fixed an issue in deploy simulation where the schedule comparison section would not show the actual results.

:white_check_mark: **OPCON-18546**: Corrected invalid check for Conflict dependency when retrieving job master key.

:white_check_mark: **OPCON-18846**: Fixed an issue in deploy simulation check where ocadm role displayed as missing.

## OpCon 21.10.0

2022 December

#### Server

:eight_spoked_asterisk: **OPCON-17772**: OpCon Core services now use self-contained .Net 6 Core instead of self-contained .Net 3.1.

#### Solution Manager

:eight_spoked_asterisk: **OPCON-17594**: Solution Manager now allows users to view, add, edit, copy and delete master jobs from a link on the "library" page, for the following types: Null, Windows, UNIX, SQL, SAP R/3, Container, File Transfer, OpCon MFT.

:eight_spoked_asterisk: **OPCON-16236**: Solution Manager now allows users to create a new OpCon MFT agent and job type. Details are in the documentation.

## OpCon 21.9.0

2022 November

#### REST API

:white_check_mark: **OPCON-17814**: Improved query performance for the HistoryJob endpoint to efficiently manage large amounts of data.

#### ImpEx2 Web Service

:eight_spoked_asterisk: **OPCON-18274**: Added Windows Authentication to ImpEx2 Server.

## OpCon 21.8.0

2022 October

#### Server

:white_check_mark: **OPCON-17121**: Fixed an issue with SSL and TLS based Email and text message notifications.

:white_check_mark: **OPCON-17624**: Fixed an issue in the notification system where an SMTP server that does not require authentication could not send notification emails as Notify Handler was forcing authentication.

#### REST API

:white_check_mark: **OPCON-17447**: Fixed a bug that allowed all-whitespace tag names in /api/jobtags and errored on an empty tag name.

:white_check_mark: **OPCON-17296**: Fixed performance issue in dailyJobs endpoint when includeDetails=true and there are a lot of container jobs.

:white_check_mark: **OPCON-17204**: Fixed an internal server error bug in /api/jobinstanceactions when retrieving JORS output for historical jobs.

:white_check_mark: **OPCON-17190**: Fixed an issue where adding/updating a daily schedule instance property inserted a backslash.

:white_check_mark: **OPCON-17178**: Migration for Notification Triggers was moved from 21.4 and 21.6 to 21.8.

:white_check_mark: **OPCON-16932**: Fixed issue where single quotes in a batch user name caused an error.

#### Installation

:white_check_mark: **OPCON-17234**: Updated Installer to allow users to set a default (initial) password for database users 'opconsam' and 'opconui'. Please note that if these users already exist in the database, no changes will be made to their passwords.

#### Solution Manager

:white_check_mark: **OPCON-17291**: Fixed an issue in the scripts page where HTML inside a comment was being rendered to screen.

:white_check_mark: **OPCON-17195**: Fixed an issue where File Transfer Jobs threw an unexpected error.

:white_check_mark: **OPCON-17047**: Fixed issue with scripts timing out when a large amount of cross references exist.

:white_check_mark: **OPCON-15633**: Fixed a bug with tooltips on expression dependencies.

:white_check_mark: **OPCON-16312**: Fixed issues with self service where migration would fail and service requests would not execute for some input types (Date, Choice, etc.) if user-defined variable name contains dot.

:white_check_mark: **OPCON-16337**: Added the options to disable builds for schedule named instances without parameters.

:white_check_mark: **OPCON-16973**: Added "With Error(s)" message to jobs that have failed jobs.

:white_check_mark: **OPCON-17185**: Fixed the Escalation screen to allow special characters.

:white_check_mark: **OPCON-17601**: Fixed an error that affected Enterprise Manager that was caused by deleting notification groups inside Solution Manager.

:white_check_mark: **OPCON-17602**: Fixed a bug in Solution Manager that caused an error in Enterprise Manager when users tried to delete a group that was associated with a category.

:white_check_mark: **OPCON-17603**: Added improvements to the retrieval and posting actions for triggers inside Notification Manager.

#### ImpEx2 Web Service

:white_check_mark: **OPCON-17433**: Fixed issues with schedule level frequencies when performing a deployment update. The errors included duplicate keys if jobs added during the deployment, or missing frequencies for job if new schedule level frequencies were added.

:white_check_mark: **OPCON-17766**: Fixed an issue where schedule import failed to extract the thresholds/resources used in the complex expressions for Job Expression Events.

## OpCon 21.6.0

2022 July

#### Server

:white_check_mark: **OPCON-16723**: Fixed an issue in the expression evaluator, where Windows file arrival paths were incorrectly resolved when running OpCon on Docker.

:white_check_mark: **OPCON-17069**: Fixed an issue where Netcom tracking files were getting populated with machine up/down messages that would never get cleared.

#### REST API

:white_check_mark: **OPCON-16939**: Fixed an issue where Posting Roles to its endpoint with batch users caused an error.

:white_check_mark: **OPCON-16185**: Fixed an issue in OpCon API where new machines were shown as created by Unknown user in Audit Management.

#### Solution Manager

:eight_spoked_asterisk: **OPCON-15118**: Solution Manager now allows users to configure notifications in OpCon for machines, schedules and jobs, when any actionable change occurs to them. Notification triggers belong to a group, but in the new notification system, groups are flat structures instead of hierarchical ones like Enterprise Manager used to have. So, each notification trigger belongs to a single root group. Any pre-defined hierarchical groups will stay as they are, but only the lowest level of the group is visible in Solution Manager. Instead, users can define a 'Category' for each trigger as a way to tag them for a purpose. A trigger can have multiple categories assigned. The new system makes it easy to understand and categorize triggers.
NOTE: A bug in the latest release (21.6) may cause Notification Manager to not work for customers whose upgrade or install path had included version 21.4. Notification Manager does work for new installs or upgrades from other versions. If you are experiencing issues with Notification Manager, please upgrade to 21.8 when available.

:eight_spoked_asterisk: **OPCON-15117**: Solution Manager now allows users to define and configure escalation rules for different notification triggers. Users can create and associate the rules to each trigger, and also to a group of users who will receive the escalation based on the defined rules provided they have an email address defined. The escalation manager allows users to be associated to the rules and notification manager allows them to be associated with the triggers.

:eight_spoked_asterisk: **OPCON-15100**: Solution Manager now allows a user to manage batch users via the Library. You may add, edit and delete batch users and you can view cross references for them.

:white_check_mark: **OPCON-17029**: Fixed a sorting error with calendars screen when there are two or more pages.

#### ImpEx2 Web Service

:white_check_mark: **OPCON-16749**: Fixed an issue in ImpEx2 service where an SAP job import and deploy caused problem with certain header types in the XML request to the SAP system. The XML headers are now cleared before the request is made.

## OpCon 21.5.0

2022 May

#### Installation

:white_check_mark: **OPCON-16513**: Fixed an issue with the database migration during a minor upgrade where if the Windows Domain user running the upgrade did not have the correct permissions to the database, the migration failed. The installer should have used the SQL user from the database config file (DAT file) for the migration, instead.

#### REST API

:white_check_mark: **OPCON-16687**: Fixed an issue in OpCon API where concurrent access to its authentication end point sometimes caused issues with the token management and the API stopped running.

:white_check_mark: **OPCON-16793**: Fixed an issue in the OpCon API where fetching calendars and frequencies (GET) required the user to have 'maintain' privileges to those resources, when they are only needed to add/update/delete them.

:eight_spoked_asterisk: **OPCON-16604**: The OpCon API now allows users to fetch basic job details from master, without any dependencies, events, etc. It also allows the user to fetch cross references to these jobs from other master jobs.

:eight_spoked_asterisk: **OPCON-16613**: The OpCon API now allows maintaining notification escalation groups. A user can call the API to fetch, create, edit and delete escalation groups with either OpCon users and/or global properties that contain the user name. API documentation has more details (api/escalationGroups).

:eight_spoked_asterisk: **OPCON-16656**: The OpCon API now allows users to edit a null job in master with only basic details, without any dependencies, events, etc.

:eight_spoked_asterisk: **OPCON-16855**: The OpCon API now allows users to view cross references to master jobs from other master jobs (jobs that depend on this job).

#### Solution Manager

:white_check_mark: **OPCON-16012**: Fixed a performance issue in Solution Manager PERT view of the Operations page, where the request timed out in some instances resulting in the PERT view not being displayed.

:white_check_mark: **OPCON-16702**: Fixed an issue in Solution Manager with calendars, where saving dates on a system with the French date format caused calendars to throw 'invalid date format' errors.

:white_check_mark: **OPCON-15595**: Fixed an issue in Solution Manager where a dependency on a named instance schedule's job from a different named instance, did not show the instance name as part of the schedule name built in daily in the job dependencies section.

:eight_spoked_asterisk: **OPCON-15120**: Solution Manager now allows users to maintain scripts. Users can add, edit, copy and delete scripts and their types and runners. They can view cross references for the script, manage their versions, and deploy specific versions to defined jobs.

:eight_spoked_asterisk: **OPCON-16126**: Solution Manager now allows users to maintain machines. From the agents page, a user can select machines and edit them, add new machines, copy settings to new a machine and check the cross references for them.

#### ImpEx2 Web Service

:white_check_mark: **OPCON-16321**: Fixed an issue in ImpEx2 where external job dependencies from named instance schedule to regular schedule were not extracted correctly.

:white_check_mark: **OPCON-16074**: Fixed ImpEx2 to stop schedule/script import and display an exception message if a duplicate script type name is detected.

:white_check_mark: **OPCON-16336**: Fixed an issue in ImpEx2 service where validation was not done for missing batch users for Windows, Unix, IBM i, and MCP file transfer jobs before deploying them to the target environment.

:white_check_mark: **OPCON-16345**: Fixed ImpEx2 to fail the deploy if batch user for SQL jobs does not exist in the target system.

:white_check_mark: **OPCON-16498**: Fixed an issue in ImpEx2 where "Job Status Description" LSAM feedback events were not supported.

## OpCon 21.4.0

2022 April

#### Enterprise Manager

:white_check_mark: **OPCON-16476**: Corrected Enterprise Manager environment switching problem by removing database connection pool from Enterprise Manager connections and only using database connection pool for ImpEx2 connections.

#### Installation

:white_check_mark: **OPCON-15798**: Fixed an issue where new OpCon installs did not work for non-contained databases. Going forward, only contained databases will be allowed as it is a requirement when supporting Azure SQL because security related information like users can't exist outside the database in the cloud. Existing installs without containment will keep working as they are.

#### REST API

:white_check_mark: **OPCON-16477**: Fixed error in Machine Groups endpoint where it was trying to validate Machines in each group.

#### Server

:white_check_mark: **OPCON-15619**: Added fix in ENS to prevent error when saving records in the EscalaitonRecipientHistory table.

#### Solution Manager

:white_check_mark: **OPCON-16442**: Added functionality so that the back button takes the user back to the Agent's page when appropriate.

:white_check_mark: **OPCON-15792**: Modified Frequency parameter in JOB:ADD events in Solution Manager to no longer be required.

## OpCon 21.3.0

2022 March

#### Installation

:white_check_mark: **OPCON-16206**: Ampersand is now allowed as a characters in DB user passwords when running the OpCon installer.

#### Solution Manager

:eight_spoked_asterisk: **OPCON-15121**: Solution Manager now allows management of frequencies in OpCon. You can edit an existing frequency to update its settings, associate a calendar to it, and also see the resulting forecast for it. NOTE: The forecast in the frequency manager does not account for any schedule calendar holidays, so it may be different from the actual days on which the schedule or job will be build as there are additional holiday calendars that are considered when building a schedule.

:eight_spoked_asterisk: **OPCON-15099**: Solution Manager now allows management of Departments. Users can add, edit, copy and delete departments. They can view any references for a selected department to master/daily jobs and/or roles that have a function privilege defined on that department.

#### ImpEx2 Web Service

:white_check_mark: **OPCON-16123**: When adding a new role to a schedule, the role must be defined in the target OpCon system.
If the role is not defined, the deployment will fail with an error message, Role not defined in destination opCon system.

:eight_spoked_asterisk: **OPCON-16167**: Include Role checking during deployment simulation

:white_check_mark: **OPCON-16313**: Fixed an issue in ImpEx2 with SQL jobs where the User ID did not get deployed or updated for Windows authentication.

:white_check_mark: **OPCON-16111**: Fixed an issue in ImpEx2 where connections to the database were not getting disposed and eventually all TCP dynamic ports were getting used up.

:white_check_mark: **OPCON-15995**: Implemented removal of roles for ImpEx2, that are no longer required during deployment of existing schedule/package

## OpCon 21.2.0

2022 January

#### REST API

:eight_spoked_asterisk: **OPCON-15895**: Fixed an API issue where the calendar type was incorrect for new calendars.

:eight_spoked_asterisk: **OPCON-15894**: Added calendar associations to the API response for calendars.

:eight_spoked_asterisk: **OPCON-15857**: Added the PUT functionality for IBM i job type "Operator Reply".

:white_check_mark: **OPCON-16031**: Fixed an issue in the API where a port specified in the INI file was not checked for a valid TLS certificate.

#### Solution Manager

:eight_spoked_asterisk: **OPCON-15890**: Solution Manager now allows users to edit IBM i "Tracked Jobs" job type.

:eight_spoked_asterisk: **OPCON-15847**: Added the feature to edit IBM i job details for the 'Operator Replay' job type.

:eight_spoked_asterisk: **OPCON-15844**: Added List of previous Schedule Check results under Schedule Check section of Daily Schedule's and Date's right panel.

:eight_spoked_asterisk: **OPCON-15842**: Added Schedule Check section to Daily Schedule's and Date's right panel, that allows user to perform a Schedule Check.

:eight_spoked_asterisk: **OPCON-15537**: Added the display feature for IBM i job task details for "Operator Replay Job" job type.

:eight_spoked_asterisk: **OPCON-15119**: Solution Manager now allows users to manage job tags - create, associate to jobs at job/frequency level, or delete them.

:eight_spoked_asterisk: **OPCON-15106**: Solution Manager now allows users to view and maintain calendars. This includes adding new calendars, editing, deleting and copying existing calendars and deleting old dates (greater than 30 days) on existing calendars. It also fixes minor bugs on the API for calendars that existed before regarding calendar description length and description of all errors returned.

:white_check_mark: **OPCON-16102**: Fixed issue with using period '.' in Self Service Variable names

:white_check_mark: **OPCON-16032**: Fixed an issue with Windows authentication where a pop-up occurred on expired logins.

:white_check_mark: **OPCON-16025**: Fixed the flickering issue of when user cache is reset

:white_check_mark: **OPCON-15951**: Fixed an issue in Solution Manager where editing job dependencies in daily had performance issues when the list of total schedules and named instances for each of those was very large.

:white_check_mark: **OPCON-15793**: Fixed bug where select all was ignoring filtered records in Thresholds and Resources screen.

#### Utilities

:white_check_mark: **OPCON-16024**: Fixed a bug where selecting a different drive to install the configuration utility did not affect it and it was installed on the system drive.

#### ImpEx2 Web Service

:white_check_mark: **OPCON-15836**: Corrected a problem in ImpEx2 when changing a Null Job to a Windows Job during deployment.

## OpCon 21.1.0

2021 December

#### Enterprise Manager

:white_check_mark: **OPCON-15949**: Fixed an issue that occurred while using export Daily Job Audit Management.

#### REST API

:eight_spoked_asterisk: **OPCON-15870**: - Added api/deleteActions endpoint to handle deletion of dailyJobs & schedules.

:white_check_mark: **OPCON-15809**: Fixed an issue with Vision processing occurring when no cards were defined in the database and further performance improvement on Vision statistics queries

:white_check_mark: **OPCON-15779**: - Fixed an issue causing tokens containing parameters to be parsed incorrectly.

- Improved parameter validation for events using tokens.
- Simplified handling of start and endvalue parameters for exit description analysis event triggers.

:white_check_mark: **OPCON-15737**: Fixed a memory issue where expired tokens were not removed from cache.

#### Solution Manager

:eight_spoked_asterisk: **OPCON-15807**: Solution Manager now allows users to view and edit IBMi job details for the 'Batch job' type.

:eight_spoked_asterisk: **OPCON-15759**: Solution Manager now allows users to create/edit/delete note(s) on a job's historical run.

:eight_spoked_asterisk: **OPCON-15318**: Solution Manager now allows users to monitofy daily job events.

:eight_spoked_asterisk: **OPCON-14523**: Solution Manager now allows users to view a job's historical runs along with their properties for that run.

:eight_spoked_asterisk: **OPCON-15105**: Solution Manager now allows users to manage resources (view, add, edit, delete).

:white_check_mark: **OPCON-15950**: Fixed French translations in the screens for Schedule, Resources, Thresholds, Global Properties, and Daily Jobs.

:white_check_mark: **OPCON-15947**: Fixed an issue where multiple daily jobs referencing the same resource showed an invalid date in resource dependencies in Solution Manager.

:white_check_mark: **OPCON-15782**: Fixed an isue with the migration page redirect for updating variables needed in self service.

:white_check_mark: **OPCON-15757**: Fixed an issue with the date selector on the Processes page during Daylight Savings Time changes.

#### ImpEx2 Web Service

:white_check_mark: **OPCON-15723**: Changed script mapping during deployment process to use names instead of numeric id values. The script-name, type-name and runner-name is a unique combination.

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
