---
sidebar_label: "Release Notes"
doc_type: conceptual
---

# OpCon Release Notes

## OpCon 26.0.4

**NOTE**: Verify/Upgrade these components if applicable:

* **Enterprise Manager** - 26.0
* **ServiceNow** Connector – 21.4 or higher
* **WebServices** Connector – 21.2 or higher
* **Deploy** – 26.0.0 or higher
* **Relay** - 25.1.1 or higher

2026 April

#### Server

:eight_spoked_asterisk: **OC-6304**: Addressed a potential CRLF injection security vulnerability related to MimeKit 4.15.0.

:white_check_mark: **OC-4988**: Fixed an issue in Notify Handler that could cause logging to stop and delay notification delivery.

:white_check_mark: **OC-6040**: Fixed an issue in the reporting service log where the total number of failures was not correct.

:white_check_mark: **OC-6424**: Fixed an issue that caused timeouts in the reporting service during startup.

:white_check_mark: **OC-6435**: Fixed an issue where the reporting service failed to start with long database passwords.

#### Solution Manager

:white_check_mark: **OC-7**: Fixed an issue on schedule build page with deleting instance properties.

:white_check_mark: **OC-43**: Resolved an accessibility issue where screen readers duplicated grid column names when focusing on column headers and cells.

:white_check_mark: **OC-54**: Fixed an issue where querying SAP jobs did not return any results.

:white_check_mark: **OC-2592**: Fixed an issue with manage groups back navigation with dirty forms.

:white_check_mark: **OC-2700**: Fixed an issue where a job using "on occurrence last Friday of the quarter" frequency was excluded even though it was included in the forecast.

:white_check_mark: **OC-2784**: Added a pop-up message when querying SAP would take more than 30 seconds.

:white_check_mark: **OC-3550**: Fixed a scroll issue on inactive frequency list.

:white_check_mark: **OC-4265**: Fixed an issue where users without an email did not get escalation acknowledgements.

:white_check_mark: **OC-4355**: Fixed an issue where viewing cross references for certain resources was giving an error.

:white_check_mark: **OC-4452**: Fixed an issue in Master Jobs where removing the primary machine would display a blank page.

:white_check_mark: **OC-4540**: Fixed an issue where schedule level frequency change was ignored at the job level.

:white_check_mark: **OC-4550**: Fixed an issue the BIS department number not filling in with zeroes as per the four digit expression.

:white_check_mark: **OC-4605**: Fixed an issue where jobs with "On Interval" frequencies using interval days could not build.

:white_check_mark: **OC-4639**: Fixed an issue where "Requires XML Escape Sequences" property was not set for ACS agents.

:white_check_mark: **OC-5300**: Fixed an issue where a user without machine privileges was not able to view SMAFT daily jobs.

:white_check_mark: **OC-5340**: Fixed an issue with frequency lists when adding and editing on master jobs details page.

:white_check_mark: **OC-5466**: Fixed an issue preventing users from viewing all job histories when multiple histories exist for a daily job.

:white_check_mark: **OC-5559**: Fixed an issue in Schedule and Job History Report where filtering on "Is Archived = any" did not work.

:white_check_mark: **OC-5861**: Fixed an issue that prevented script versions from being deleted.

:white_check_mark: **OC-5864**: Fixed an issue where MFT was unable to authenticate and process jobs.

:white_check_mark: **OC-5959**: Fixed an issue where RPA Scripts failed to deploy.

:white_check_mark: **OC-5988**: Fixed an issue where deleting a user could prevent jobs with associated events from loading.

:white_check_mark: **OC-5996**: Fixed a mis-alignment in the master schedule's schedule instance property section.

:white_check_mark: **OC-6010**: Fixed an issue where viewing active jobs on a particular agent would show active jobs on all agents.

:white_check_mark: **OC-6011**: Fixed sorting on the agents page for Last Update column to sort chronologically.

:white_check_mark: **OC-6026**: Fixed an issue with automatically updating schedules and date grids on processes page when deleting a standalone schedule for any given date.

:white_check_mark: **OC-6062**: Fixed an issue where if a script version was copied and those changes where cancelled, the script would be deselected.

:white_check_mark: **OC-6081**: Fixed an issue where cross-schedule dependencies were not visible in the PERT progressive discovery view.

:white_check_mark: **OC-6086**: Fixed SSO badge contrast issue for users on access management page.

:white_check_mark: **OC-6088**: Fixed a scroll issue in the inactive list on the frequency list.

:white_check_mark: **OC-6103**: Fixed an issue in Vision card configuration where it was unable to establish connection to remote Vision instances.

:white_check_mark: **OC-6113**: Fixed an issue in Studio where newly added nodes stacked on top of each other.

:white_check_mark: **OC-6117**: Fixed an issue in OpConMFT job definition where some fields were editable in locked mode.

:white_check_mark: **OC-6118**: Fixed an issue in OpConMFT job definition where field lengths were inconsistent.

:white_check_mark: **OC-6125**: Fixed an issue in Operations where column layout changes were lost when refreshing the page or navigating away and back.

:white_check_mark: **OC-6133**: Fixed an issue where changing job action of an embedded script job would clear the embedded script configuration.

:white_check_mark: **OC-6136**: Fixed an overflow issue on self service service request execution history page.

:white_check_mark: **OC-6188**: Fixed an issue that would prompt the user to save or discard changes when no changes had been made.

:white_check_mark: **OC-6204**: Fixed an issue that caused the error "Unable to load the Trigger" when editing a master job.

:white_check_mark: **OC-6232**: Fixes an issue with sorting on scripts version grid for version number.

:white_check_mark: **OC-6452**: Fixed an issue with the new property set button in the master jobs instance properties panel.

:white_check_mark: **OC-6634**: Fixed an issue where resources and thresholds could not be deleted despite having no cross‑references.

:white_check_mark: **OC-6662**: Added comprehensive error handling to Studio.

#### REST API

:white_check_mark: **OC-2606**: Fixed an issue that caused intermittent server internal errors with the SNOW connector.

## OpCon 26.0.2

**NOTE**: Verify/Upgrade these components if applicable:

* **Enterprise Manager** - 26.0
* **ServiceNow** Connector – 21.4 or higher
* **WebServices** Connector – 21.2 or higher
* **Deploy** – 26.0.0 or higher
* **Relay** - 25.1.1 or higher

2026 March

#### Server

:white_check_mark: **OC-5055**: Truncated SQL query in SAM and Critical logs to avoid overflow.

:white_check_mark: **OC-6340**: Fixed an issue where the Reporting Service could crash on DST spring‑forward transition days for environments using a US (or similar) timezone with the default schedule time of 02:00.

#### REST API

:white_check_mark: **OC-6104**: Added support for a MaxPoolSize configuration key in the API, allowing administrators to specify the maximum connection pool size via SMAODBCConfiguration.DAT.

## OpCon 26.0.1

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
