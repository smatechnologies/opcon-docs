---
sidebar_label: "Release Notes"
---

# OpCon Release Notes

## OpCon 22.0.8

2023 September

#### Solution Manager

:white_check_mark: **OPCON-20654**: Updated the Duration column on the Processes page to update every 30 seconds and display seconds.

:white_check_mark: **OPCON-20959**: Fixed advanced filters not being honored after adding a new trigger in Notification Triggers.

:white_check_mark: **OPCON-21232**: Fixed an issue in Self Service where error would happen after submitting the service request if user input type was Master Job.

:white_check_mark: **OPCON-21195**: Fixed an issue where "Requires XML Escape" for some Agents was always False.

:white_check_mark: **OPCON-21565**: Fixed an issue where Multi-Forecasting schedule frequencies resulted in an error.

#### REST API

:white_check_mark: **OPCON-16320**: Vision Card using Remote Session now updates to show correct card information.

#### ImpEx2 Web Service

:white_check_mark: **OPCON-21194**: Duplicate jobs are created due to case sensitivity. The keys used during existing job matches changed to uppercase to ensure consistent checking avoiding case sensitivity problems. All calls to extract objects from the database have also been updated to ignore case sensitivity.

:white_check_mark: **OPCON-21515**: During schedule deployment when schedule exists, duplicate event records for schedules and jobs can be created. The correction checks for duplicate event records that could be created due to schedule transformation and adjusted the comparison key adding the frequency name to ensure duplicate events are not added to the JEVENTS table.

## OpCon 22.0.7

2023 August

#### Solution Manager

:white_check_mark: **OPCON-20059**: Fixed a display issue where the AutoBuild checkbox was incorrectly selected on the Master Schedule Definition page.

:white_check_mark: **OPCON-20956**: Fixed an issue in Vision Settings where the page header displayed "Page Not Found".

:white_check_mark: **OPCON-21144**: Fixed an issue in Self Service where comma was reported as invalid character when it was present in characters to strip.

:white_check_mark: **OPCON-21190**: Fixed an issue where users could see schedules outside of their permissions scope when adding a tag.

:white_check_mark: **OPCON-21204**: Fixed an issue where grid pages displayed overlapping rows.

:white_check_mark: **OPCON-21333**: Fixed an issue in Self Service where characters to strip were not working as intended.

:white_check_mark: **OPCON-21391**: Fixed an issue where changing the sub-schedule of a Container job was not saved.

## OpCon 22.0.6

2023 July

#### Server

:white_check_mark: **OPCON-21275**: Fixed an issue in schedule builds where a named instance schedule having job exceptions defined on it failed if the exception had a property expression with global properties referenced.

#### Solution Manager

:white_check_mark: **OPCON-19738**: Fixed an issue where 'Use Schedule Instance Machine', 'Run on Least Tasked Machine', and 'Run on Each Machine' were missing for some job types in Master Jobs page.

#### REST API

:white_check_mark: **OPCON-19733**: Fixed an issue where OpCon API didn't verify machine group features.

:white_check_mark: **OPCON-21272**: Fixed a performance issue in the OpCon API where a container job timed out fetching details if there were a large number of schedules built in daily tables.

:white_check_mark: **OPCON-21282**: Fixed an issue in OpCon API where the 20.0 database migration failed if the database had 2100 user or more defined.

#### ImpEx2 Web Service

:white_check_mark: **OPCON-20706**: A null pointer exception occurred during the Simulation process when checking the batch user associated with a File Transfer task definition and the source or destination machine is not defined in the target OpCon system. A message has been included indicating that the batch user could not be checked as the File Transfer machine was not defined.

## OpCon 22.0.5

2023 July

#### Server

:white_check_mark: **OPCON-16073**: License is now recognized and applied automatically in OpCon on Linux.

#### Solution Manager

:white_check_mark: **OPCON-19766**: Fixed an issue in Studio Canvas where long labels would overflow the job boxes.

:white_check_mark: **OPCON-20586**: Fixed an issue in Studio Canvas where expression dependencies could not be added.

:white_check_mark: **OPCON-20865**: Fixed an issue in Notification Triggers Manage Groups page where filtering by selected jobs in a group would sometimes display incorrect jobs.

:white_check_mark: **OPCON-20873**: Fixed an issue in Notification Triggers Manage Groups page where scrolling through the pages and selecting jobs would sometimes give a job not found error.

:white_check_mark: **OPCON-20971**: Updated Job Type filter on Master Jobs page to include only supported job types.

#### Documentation

:white_check_mark: **OPCON-19422**: Fixed an issue with Swagger documentation where URLs for endpoint actions were not displayed.

## OpCon 22.0.4

2023 June

#### Server

:white_check_mark: **OPCON-20073**: Fixed an issue in the installer that caused MFT agent system records to be removed from the database during upgrades that needed a SQL script to fix and re-add them.

:white_check_mark: **OPCON-16499**: Fixed an issue with "Under Review" job status for not being added to job history.

:white_check_mark: **OPCON-12035**: Fixed an issue where StartTimeCalculator was doing wrong calculation of start time for daily jobs.

#### Solution Manager

:white_check_mark: **OPCON-19777**: Fixes issue where single machine selection was being ignored and schedule build was running for each machine in the machine group.

:white_check_mark: **OPCON-19356**: Fix Required User Permissions to view Studio page.

#### REST API

:white_check_mark: **OPCON-16731**: Fixed migration timing out due to large AUDITRECSVIEW table.

## OpCon 22.0.3

2023 May

#### Server

:white_check_mark: **OPCON-14393**: Fixed an issue when using DDI to create new jobs, the DependentScheduleInstance column was being affected due to the day offset.

:white_check_mark: **OPCON-16015**: Fixed an issue in SMA_REMAPSQLUSERSTOLOGINS.sql related to database mirroring.

:white_check_mark: **OPCON-19758**: Fixed an issue where multiple SMANetCom instances tried to write to the same API agent log file and was stopped by SMAServMan as it kept getting locked out from writing to it.

#### Solution Manager

:white_check_mark: **OPCON-16104**: Fixed "key not found" issue on Deployment Info section of Daily Schedule Definition page.

:white_check_mark: **OPCON-18939**: Fixed an issue where Edit, Copy, Delete, Cross References and View were still enabled when returning to Studio page.

:white_check_mark: **OPCON-18941**: Fixed an issue with empty schedule name in Studio right action panel.

:white_check_mark: **OPCON-18950**: Fixed an issue in Studio page where nodes were not displayed after copying a job from another schedule.

:white_check_mark: **OPCON-18953**: Fixed an error in Studio when right clicking on a threshold, resource or expression dependency.

:white_check_mark: **OPCON-19070**: The list of Master Jobs on the Master Jobs page is now sorted alphabetically by job name by default.

:white_check_mark: **OPCON-19224**: Fixed an issue in Schedule Operations where no jobs would appear when trying to add jobs to sub-schedules.

:white_check_mark: **OPCON-19426**: The Master Jobs Definition page now displays the Schedules list in alphabetical order.

:white_check_mark: **OPCON-19427**: Departments are now sorted by name on the Master Job Definition Page.

:white_check_mark: **OPCON-19428**: Machines are now sorted by name on the Master Job Definition Page and on the Agents Page.

:white_check_mark: **OPCON-19513**: Fixed Job Type dropdown in Master Job Details page to only show job types with available Machines in the Agents page.

:white_check_mark: **OPCON-19562**: Changed a label in Server Options Logging section to "Log critical messages to NT events".

#### REST API

:white_check_mark: **OPCON-19003**: Removed error message and added informational message for empty schedules in Studio.

#### ImpEx2 Web Service

:white_check_mark: **OPCON-19570**: Fixed an issue with schedule import where autoBuildTime was missing from the schedule definition if import a schedule with auto build time of 00:00.

## OpCon 22.0.2

2023 April

#### Solution Manager

:white_check_mark: **OPCON-18823**: Added performance improvements inside the Processes page in Solution Manager to efficiently handle large databases.

:white_check_mark: **OPCON-18842**: Fixed an issue where Start Time and End Time were not properly displayed for IBMi File Arrival jobs.

:white_check_mark: **OPCON-19143**: Fixed an issue where File Transfer job type was not visible when adding a new master job.

#### REST API

:white_check_mark: **OPCON-18942**: Fixed a potential issue with log rollovers when clock changes.

#### Server

:white_check_mark: **OPCON-19202**: Return job initialization failure when OpCon MFT job start fails.

#### ImpEx2 Web Service

:eight_spoked_asterisk: **OPCON-19514**: For OpCon Deploy new import feature, separate auto delete days reset from auto build days reset. This feature requires OpCon Deploy 22.2.

:white_check_mark: **OPCON-19164**: Fixed an issue in Deploy simulation where role check failed to list missing roles.

## OpCon 22.0.1

2023 March

#### REST API

:white_check_mark: **OPCON-15392**: Fixed an issue where the replicated OpCon database did not have all tables reseeded for unique ids and hence had a primary key violation error when building or adding jobs to daily.

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
