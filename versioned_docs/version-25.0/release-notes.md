---
sidebar_label: "Release Notes"
---

# OpCon Release Notes - What's New?

## Summary

Release 25 focused heavily on **stability, scheduling reliability, API improvements, and deployment enhancements**. These updates improve day-to-day operations, reduce troubleshooting time, and strengthen integration reliability across OpCon environments.

## OpCon 25.0.5

**NOTE**: Verify/Upgrade these components if applicable:
* **Enterprise Manager** - 25.0
* **ServiceNow** Connector - 21.4 or higher
* **WebServices** Connector - 21.2 or higher
* **Deploy** - 25.2.0 or higher

**2026 February**

## Installation Improvements

### What's New

:white_check_mark: **OC-3457: Database Role Updates More Reliable**
Resolved an issue where new tables were not properly added to the opconxps role when upgrading certain databases.

### Why This Matters

Upgrades complete more reliably, reducing post upgrade configuration issues.

## Platform Reliability & Messaging (Server)

### What's New

:white_check_mark: **OC-3549: External Event Handling Improved**
Resolved an issue where formatting in external events could cause incorrect instance properties.

:white_check_mark: **OC-4607: Request Router Resilience Improvements**
Improved handling of database connection loss during initialization and cleanup.

:white_check_mark: **OC-5883: NetCom Message Reliability and Monitoring Enhancements**
Improved message handling during reconnections, prevented duplicate processing, enhanced debugging, and introduced a Message Buildup Monitor to detect and automatically recover from message backlogs. These improvements include a new Message Buildup Monitor that automatically detects when messages are accumulating and triggers recovery actions to restore normal processing. Administrators can configure monitoring thresholds via INI file parameters to optimize performance for their environment.

### Why This Matters

These improvements strengthen system reliability, reduce risk of message loss, and improve automatic recovery from connectivity issues.

## Solution Manager Improvements

### What's New

:eight_spoked_asterisk: **OC-3715: Faster Job Execution History**
Optimized Job Execution History for significantly faster load times and improved responsiveness.

:white_check_mark: **OC-3017: Improved Frequency Forecasting and Scheduling Stability**
Resolved issues affecting advanced frequency settings and forecasts.

:white_check_mark: **OC-3610: Batch User Updates More Reliable**
Updating batch users no longer unintentionally removes them from jobs.

:white_check_mark: **OC-3611: Multi Instance Schedule Stability**
Instance properties are now preserved correctly when changing schedules.

:white_check_mark: **OC-3639: Improved URL Handling**
Resolved an issue where long URLs could exceed browser limits.

:white_check_mark: **OC-3745: Server Options Cleanup Behavior Corrected**
Secondary settings now clear properly when primary settings are removed.

:white_check_mark: **OC-3779: Cross Reference Detection Improvements**
Cross references now correctly detect job names containing underscores.

:white_check_mark: **OC-3793: Report Timeout Reliability**
Resolved issues causing report timeouts.

:white_check_mark: **OC-3854: File Transfer Job Accuracy**
Start machine values now update correctly when source machines change.

:white_check_mark: **OC-3981: Agent Visibility Improvements**
Agent properties now display correctly during communication.

:white_check_mark: **OC-4145: Studio Job Creation Improvements**
Schedule names now populate correctly when adding jobs from Studio.

### Why This Matters

These improvements make scheduling, reporting, and job configuration more reliable while reducing troubleshooting time.

## REST API Improvements

### What's New

:white_check_mark: **OC-45: SAP BW Output Retrieval Fix**
Resolved an issue where request parameters were missing, preventing job output retrieval.

:white_check_mark: **OC-2883: Job History Endpoint Filtering Improvements**
API responses now correctly return matching jobs when multiple filters are applied.

:white_check_mark: **OC-4261: Database Connection Pool Stability**
Resolved an issue that could cause Solution Manager to hang due to connection pool exhaustion.

### Why This Matters

API integrations are more predictable and stable, reducing the risk of automation or reporting failures.

## ImpEx2 Web Service Improvements

### What's New

:white_check_mark: **OC-1906: Schedule Import Behavior Improvements**
Improved handling of schedule instance property merges and introduced a new Deploy rule for merging properties.

:white_check_mark: **OC-3683: Batch User Retrieval Stability**
Resolved issues retrieving batch users with special characters in names.

### Why This Matters

Deployments and imports are more reliable and predictable, reducing errors in schedule migrations.

## Documentation Updates

### What's New

:white_check_mark: **OC-3902: API Documentation Corrections**
Corrected Swagger documentation for property expression endpoints.

### Why This Matters

Clearer documentation helps teams build and maintain integrations more efficiently.

## OpCon 25.0.3

**NOTE**: Verify/Upgrade these components if applicable:
* **Enterprise Manager** - 25.0
* **ServiceNow** Connector - 21.4 or higher
* **WebServices** Connector - 21.2 or higher
* **Deploy** – 25.0.0 or higher

**2025 July**

## Installation Improvements

### What's New

:white_check_mark: **OC-3366: Deployment Script Reliability**
Resolved an issue where SQL scripts contained formatting errors that could cause execution failures.

### Why This Matters

Reduces risk of installation or upgrade failures.

## Solution Manager Improvements

### What's New

:white_check_mark: **OC-12: Log Page Permission Issue Resolved**
Resolved an issue where users were unable to view the log page unless they had both View App Logs and View Schedule Build Log permissions. Access now behaves correctly based on assigned permissions.

:white_check_mark: **OC-30: Multi-Instance Frequency Assignment Fixed**
Resolved an issue that prevented users from adding frequencies to multi-instance schedules.

:white_check_mark: **OC-52: Time Display Corrected in Studio**
Resolved an issue where 12:00 PM was incorrectly displayed as 0:00 PM when editing frequency values in Solution Manager Studio.

:white_check_mark: **OC-351: Frequency Cross-Reference Detection Fixed**
Resolved an issue where frequency cross-references were not detected when the frequency name contained a forward slash (/).

:white_check_mark: **OC-1826: Agent Filtering Improvements**
Resolved an issue where filtering agents by type returned no results for ACS and RPA agents.

:white_check_mark: **OC-2158: Job Save Issue with Sub-Expressions Resolved**
Resolved an issue that prevented jobs from being saved when they contained events with sub-expressions.

:white_check_mark: **OC-2795: Dependency Start Time Accuracy Improved**
Resolved an issue where jobs with dependencies and start offset times displayed incorrect start times.

:white_check_mark: **OC-2881: Recurring Instance Configuration Improvements**
Resolved an issue where insufficient space prevented entering recurring instance data in certain frequency configurations. Also corrected behavior requiring a valid Date/Time selection when using recurring instances.

:white_check_mark: **OC-2891: Master Job Dependency Frequency List Fixed**
Resolved an issue where the frequency list was not populated when adding dependencies to a master job in Studio.

:white_check_mark: **OC-3022: Studio View Button Behavior Corrected**
Resolved an issue where the View button was enabled when it should have been disabled in Studio.

:white_check_mark: **OC-3152: Encrypted Global Property Update Fixed**
Resolved an issue that prevented updating encrypted Global Properties without knowing the original value.

:white_check_mark: **OC-3253: Trigger Name Availability Issue Resolved**
Resolved an issue where previously used trigger names became unavailable across groups.

:white_check_mark: **OC-3268: SQL Job Type Batch User Handling Fixed**
Resolved an issue where SQL Job Types created in Solution Manager did not correctly store batch user information, which could cause jobs to fail to start.

:eight_spoked_asterisk: **OC-2843: Scheduling Message Resilience Improvements**
Added stronger scheduling message logic and enhanced debugging capabilities.

### Why This Matters

These improvements enhance scheduling reliability, improve Studio usability, and correct several configuration and filtering behaviors. Together, they reduce troubleshooting time, improve accuracy in scheduling and job configuration, and provide a more consistent and predictable user experience.

## REST API Improvements

### What's New

:white_check_mark: **OC-3284: Improved Error Messaging**
Clearer error messages returned for invalid Batch User API requests.

### Why This Matters

Developers can troubleshoot integrations faster and more accurately.

## ImpEx2 Improvements

### What's New

:white_check_mark: **OC-3092: Script Runner Matching Improvements**
Improved script runner matching logic to simplify deployments.

### Why This Matters

Deployments are more reliable and easier to manage.

## OpCon 25.0.2

**NOTE**: Verify/Upgrade these components if applicable:

* **Enterprise Manager** - 25.0
* **ServiceNow** Connector - 21.4 or higher
* **WebServices** Connector - 21.2 or higher
* **Deploy** – 25.0.0 or higher

**2025 May**

## Solution Manager Improvements

### What's New

:eight_spoked_asterisk: **OC-2186: OAuth Support for SMTP Notifications**
Added OAuth support for SMTP, replacing Basic SMTP authentication that is being deprecated.

:white_check_mark: **OC-3024: Access Code Management Fix**
Resolved an issue preventing deletion of multiple access codes.

### Why This Matters

Improves security compliance and simplifies administration.

## OpCon 25.0.1

**NOTE**: Verify/Upgrade these components if applicable:

* **Enterprise Manager** - 25.0
* **ServiceNow** Connector - 21.4 or higher
* **WebServices** Connector - 21.2 or higher
* **Deploy** – 25.0.0 or higher

**2025 March**

## Platform Reliability Improvements

### What's New

:white_check_mark: **OC-2499: Database Reconnection Improvements**
Prevented NotifyHandler from hanging during database disruptions.

:white_check_mark: **OC-2502: NetCom Initialization Stability**
Improved startup handling to prevent initialization errors.

### Why This Matters

Improves stability during service restarts and database interruptions.

## REST API Improvements

### What's New

:white_check_mark: **OC-22: OS2200 Job Details Accuracy**
Resolved an issue affecting completion status filtering.

### Why This Matters

Ensures more accurate reporting and job status visibility.

## OpCon 25.0.0

**NOTE**: Verify/Upgrade these components if applicable:

* **Enterprise Manager** - 25.0
* **ServiceNow** Connector - 21.4 or higher
* **WebServices** Connector - 21.2 or higher
* **Deploy** – 25.0.0 or higher

**2025 March**

## Server Improvements

### What's New

:eight_spoked_asterisk: **OPCON-25853: Platform Runtime Upgrade**
OpCon has been upgraded to run on the .NET 9 runtime, improving platform performance, compatibility, and long-term supportability.

:white_check_mark: **OPCON-21285: Container Job Dependency Start Time Corrected**
Resolved an issue where jobs depending on a container job in a parent schedule could display incorrect start times.

:white_check_mark: **OPCON-23582: Cross-Schedule Dependency Start Time Accuracy Improved**
Resolved an issue where estimated start times were incorrect when jobs depended on jobs in different schedules.

:white_check_mark: **OPCON-24595: SMANotifyHandler Stability Improved**
Resolved an issue where SMANotifyHandler could become unresponsive due to a locked log file.

:white_check_mark: **OPCON-24956: NetCom Deadlock Resolved**
Resolved a deadlock condition in NetCom that could prevent certain agent types from being marked down after missed heartbeats.

:white_check_mark: **OPCON-25930: ACS Job Restart Reliability Improved**
Resolved an issue that could cause ACS jobs to fail on restart due to invalid references.

:white_check_mark: **OPCON-25969: ACS Variable Token Retention Fixed**
Resolved an issue where ACS integrations could lose variable tokens after a job completed.

:white_check_mark: **OPCON-25982: ACS Job Status Requests Corrected**
Resolved an issue where ACS job starts could request job status even after completion was already reported.

:white_check_mark: **OPCON-26144: RPA Communication Semaphore Error Resolved**
Resolved an issue that could trigger semaphore errors when communicating with an RPA agent.

### Why This Matters

These updates improve scheduling accuracy, strengthen communication reliability between components, and reduce the risk of jobs failing or services becoming unresponsive.

## Solution Manager Enhancements

### What's New

:eight_spoked_asterisk: **OPCON-20079: Improved z/OS Job Output Formatting**
Enhanced formatting of z/OS job output menu items for better readability and usability.

:eight_spoked_asterisk: **OPCON-23078: Email Requirement for User Accounts**
User accounts now require an email address to support password recovery workflows. Administrators can allow existing users to enter recovery emails at next login.

:eight_spoked_asterisk: **OPCON-23080: Forgot Password Workflow Added**
Added a "Forgot Password?" link to the login screen, allowing users to initiate password recovery securely.

:eight_spoked_asterisk: **OPCON-23082: Password Recovery Validation Workflow**
Added validation and guided steps to securely reset passwords using recovery codes.

:eight_spoked_asterisk: **OPCON-23094: Expanded Job Output Log Support**
Support has been added for non-text logs, including video logs, in job output.

:eight_spoked_asterisk: **OPCON-23095: RPA Licensing Logic Enforcement**
Updated licensing logic to support the newer LSAM ID model used by OpCon RPA.

:eight_spoked_asterisk: **OPCON-23096: RPA Script Runner Enhancements**
Added support for OpCon RPA script runners and script types in Script Repository workflows.

:eight_spoked_asterisk: **OPCON-23230: Save Daily Job Changes to Master**
Users can now push changes made to daily jobs directly to the associated master job.

:eight_spoked_asterisk: **OPCON-23234: Tag Management Permissions**
Introduced permissions to control access to the Tag Management view.

:eight_spoked_asterisk: **OPCON-23244: Reset Job Types from Studio**
Users can now reset supported job types directly from Studio.

:eight_spoked_asterisk: **OPCON-23245: Configurable Default Homepage**
Users can now define a default landing page when logging into Solution Manager.

:eight_spoked_asterisk: **OPCON-23392: MFT Force Download Option**
Users can now force downloads of filtered files in OpCon MFT.

:eight_spoked_asterisk: **OPCON-23393: Latest Script Version Support in ACS**
ACS jobs can now use the latest script version automatically.

:eight_spoked_asterisk: **OPCON-23662: Accessibility Improvements**
Accessibility enhancements were added across Solution Manager to better support WCAG standards.

:eight_spoked_asterisk: **OPCON-24678: User Behavior Reporting**
Added the ability to capture user behavior metrics.

:eight_spoked_asterisk: **OPCON-24683: Usage Analytics Collection**
Usage metrics including page counts and click behavior are now captured.

:eight_spoked_asterisk: **OPCON-25940: Job Selection Behavior Option**
Added a setting allowing selected jobs to be automatically unchecked after status updates.

:eight_spoked_asterisk: **OPCON-25961: MFT Output Archiving**
Added the ability to archive MFT job output.

:white_check_mark: **OPCON-19737: Machine Capability Validation Corrected**
Resolved an issue where a machine's capabilities were not validated when it was added to a machine group.

:white_check_mark: **OPCON-23224: Multi-Instance Job Creation Fixed**
Resolved an issue where users could not add jobs to daily multi-instance schedules.

:white_check_mark: **OPCON-24389: Machine Groups Panel Stability Improvements**
Resolved several issues affecting machine group layout, update behavior, and navigation controls on the Agents page.

:white_check_mark: **OPCON-24390: Agent Filter URL Accuracy Fixed**
Resolved an issue where filtered agent status was not correctly reflected in URL query parameters.

:white_check_mark: **OPCON-24394: Agent Filter Reset Behavior Fixed**
Resolved an issue where clearing a machine group filter did not restore agents not assigned to a group.

:white_check_mark: **OPCON-24405: Application Log Archiving Fixed**
Resolved an issue where application logs were not properly removed or archived.

:white_check_mark: **OPCON-24492: MFT Agent Default Values Corrected**
Resolved an issue where default values were inconsistent when creating a new OpCon MFT agent.

:white_check_mark: **OPCON-24512: Retry Settings Persistence Fixed**
Resolved an issue where retry-on-failure values were removed after updating a daily job.

:white_check_mark: **OPCON-24563: Service Request Permission Enforcement Corrected**
Resolved an issue allowing users to view jobs without the proper permissions.

:white_check_mark: **OPCON-24637: Episys Quote Handling Fixed**
Resolved an issue where double quotes were mishandled in Episys Answer Prompt jobs.

:white_check_mark: **OPCON-24949: Agents Page Timeout Fixed**
Resolved an issue causing the Agents page to time out after selecting an agent.

:white_check_mark: **OPCON-25103: Daily Jobs Loading Issue Resolved**
Resolved an issue where certain jobs caused errors when loading Daily Jobs from the Operations page.

:white_check_mark: **OPCON-25111: Role Update Handling Fixed**
Resolved an issue where a role could not be updated if a machine group it referenced was deleted.

:white_check_mark: **OPCON-25150: Agent Page Filter Persistence Corrected**
Resolved an issue where column filtering reset unexpectedly when revisiting the Agents page.

:white_check_mark: **OPCON-25151: Resource Permission Update Fixed**
Resolved an issue where assigning "Can Update" access to a resource did not work as expected.

:white_check_mark: **OPCON-25158: Daily Job Frequency Offset Retention Fixed**
Resolved an issue where frequency offset values were cleared after a second save.

:white_check_mark: **OPCON-25159: Master Job Permission Enforcement Corrected**
Resolved an issue where users with privileges in &lt;All Departments&gt; could incorrectly modify master jobs.

:white_check_mark: **OPCON-25736: ACS Integration Selection Fixed**
Resolved an issue preventing users from selecting an ACS Integration as a Script Runner OS type when multiple integrations were installed.

:white_check_mark: **OPCON-25757: Notification Trigger Validation Fixed**
Resolved an issue where an incorrect error message appeared when testing notification triggers.

:white_check_mark: **OPCON-25786: Daily Job Save During ACS Load Fixed**
Resolved an issue preventing daily jobs from being saved while ACS schema loading was in progress.

:white_check_mark: **OPCON-25799: Notification Trigger Group Pagination Fixed**
Resolved an issue where additional notification groups were not loading correctly when scrolling.

:white_check_mark: **OPCON-25798: Notification Trigger Delete Button Behavior Fixed**
Resolved an issue where the delete button was enabled while creating a new trigger.

:white_check_mark: **OPCON-25832: Machine and Machine Group Validation Fixed**
Resolved validation issues on Master Jobs and Daily Jobs definition pages.

:white_check_mark: **OPCON-25845: Workflow Node Positioning Fixed**
Resolved an issue causing workflow nodes to overlap due to incorrect positioning.

:white_check_mark: **OPCON-25846: Script Runner Memory Leak Fixed**
Resolved a memory leak issue when interacting with large databases on the script runners page.

:white_check_mark: **OPCON-25849: Accessibility and UI Adjustments**
Various UI elements were adjusted to improve accessibility and 508 compliance.

:white_check_mark: **OPCON-25851: Deploy Script Dialog Label Corrected**
Resolved a labeling issue in the deploy script dialog.

:white_check_mark: **OPCON-25856: Department Selection List Corrected**
Resolved an issue where &lt;All Departments&gt; was incorrectly available in certain master job selections.

:white_check_mark: **OPCON-25864: ACS Task Switching Stability Fixed**
Resolved an issue where Solution Manager could crash when switching between certain ACS task types.

:white_check_mark: **OPCON-25865: ACS Job Cleanup Fixed**
Resolved an issue preventing ACS jobs from being fully cleaned up after deletion.

:white_check_mark: **OPCON-25878: Department Visibility Enforcement Fixed**
Resolved an issue where users could see departments they did not have access to.

:white_check_mark: **OPCON-25896: JCL Data Display Fixed**
Resolved an issue where JCL data was not displayed for daily and master jobs.

:white_check_mark: **OPCON-25905: Batch User Editing Performance Improved**
Improved performance when editing batch users.

:white_check_mark: **OPCON-25906: Named Instance Button State Corrected**
Resolved an issue where the Add Named Instance button appeared enabled in read-only mode.

:white_check_mark: **OPCON-25907: Script Exit Code Setting Update Fixed**
Resolved an issue where exit code settings were not properly updated in MS SQL Script jobs.

:white_check_mark: **OPCON-25913: Studio Copy Cancel Behavior Fixed**
Resolved an issue where canceling a copy operation prevented schedules from loading.

:white_check_mark: **OPCON-25914: Migration Query Timeout Increased**
Increased query timeout values during migrations from OpCon 24.1.

:white_check_mark: **OPCON-25917: Studio Cancel Action Error Fixed**
Resolved an issue where canceling actions in Studio generated errors.

:white_check_mark: **OPCON-25924: Calendar Selection Persistence Fixed**
Resolved an issue where selecting dates in a new year removed selections from previous years.

:white_check_mark: **OPCON-25939: Multi-Instance Job History Display Fixed**
Resolved an issue where execution history appeared empty for multi-instance jobs.

:white_check_mark: **OPCON-25954: Web Services Job Update Stability Improved**
Resolved an issue where updating certain Web Services job details caused errors.

:white_check_mark: **OPCON-25955: Database Field Length Increased**
Increased character limits on certain database fields to support larger values.

:white_check_mark: **OPCON-25979: Tag Manager Job Visibility Fixed**
Resolved an issue where some tagged jobs were not visible to users.

:white_check_mark: **OPCON-26016: Save Daily Job and Push to Master Fixed**
Resolved an issue affecting the Save Daily Job and Push to Master Job function.

:white_check_mark: **OPCON-26026: Notification Group Checkbox State Fixed**
Resolved an issue where checkbox values were incorrect on paginated pages.

:white_check_mark: **OPCON-26049: Category Management Pagination Fixed**
Resolved an issue where only the first 25 groups were displayed.

:white_check_mark: **OPCON-26050: ACS Nested Field Handling Fixed**
Resolved an issue where nested field values were not processed correctly.

:white_check_mark: **OPCON-26072: Agents Page Permission Issue Fixed**
Resolved an issue preventing some users from viewing the Agents page.

:white_check_mark: **OPCON-26075: ACS Agent Details Page Reload Fixed**
Resolved an issue where RJSF did not reload when switching applications.

:white_check_mark: **OPCON-26093: SQL Other DB Master Job Creation Fixed**
Resolved an issue preventing creation of certain SQL master jobs.

:white_check_mark: **OPCON-26103: ACS API Machine Name Handling Fixed**
Resolved an issue where the API did not correctly use the machine NetComName.

### Why This Matters

These fixes improve scheduling reliability, user interface stability, permissions accuracy, and workflow behavior across Solution Manager, reducing errors and making day-to-day administration more predictable and efficient.

## REST API

### What's New

:eight_spoked_asterisk: **OPCON-25859: Machine Endpoint Behavior Updates**
Updated Machine endpoints to require explicit parameters and full group objects, improving clarity and consistency for integrations.

:eight_spoked_asterisk: **OPCON-25012: HSTS Security Headers Added**
API responses now include HSTS headers to enforce HTTPS connections.

:white_check_mark: **OPCON-25738: Delete Daily Job Validation Improvements**
Improved validation for job and schedule names.

:white_check_mark: **OPCON-25740: Update Schedule Status Response Corrected**
Resolved an issue where success messages were returned even when errors occurred.

:white_check_mark: **OPCON-25744: Failed Jobs Endpoint Stability Improved**
Added null reference handling to prevent API errors.

:white_check_mark: **OPCON-26153: MFT Agent Communication Fixed**
Resolved an issue where the MFT agent could stop communicating after install or upgrade.

### Why This Matters

These changes improve integration reliability, strengthen API security, and make automation and third-party integrations more predictable.

## ImpEx2 Web Service

### What's New

:eight_spoked_asterisk: **OPCON-25933: Job Import Improvements**
Enhanced job import behavior to better support split deployments and script metadata handling.

:white_check_mark: **OPCON-25144: Duplicate Role Handling Fixed**
Resolved an issue where duplicate roles could cause deployment failures.

:white_check_mark: **OPCON-25833: Script Role Association Fixed**
Resolved issues assigning roles during script extract and deployment.

:white_check_mark: **OPCON-26097: BIS Job Deployment Fix**
Resolved an issue where BIS RunId values were reset incorrectly during deployment.

:white_check_mark: **OPCON-26137: Schedule Privilege Preservation Fixed**
Resolved an issue where schedule privileges could be lost due to role name casing differences.

### Why This Matters

These updates make deployments more reliable, reduce migration risks, and improve consistency when promoting schedules and scripts between environments.

## Documentation

### What's New

:white_check_mark: **OPCON-25842: Job Tags API Documentation Updated**
Updated API documentation for jobTags endpoints.

:white_check_mark: **OPCON-25843: Script Runner Documentation Corrected**
Fixed documentation for posting new script runners.

### Why This Matters

Clearer documentation helps administrators and developers implement integrations more quickly and with fewer errors.