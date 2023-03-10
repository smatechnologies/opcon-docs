---
sidebar_label: "Release Notes"
---

# OpCon Release Notes

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
