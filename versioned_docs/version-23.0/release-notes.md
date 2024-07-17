---
sidebar_label: "Release Notes"
---

# OpCon Release Notes

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
