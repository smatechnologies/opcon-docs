---
sidebar_label: "Release Notes"
---

# OpCon Release Notes

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