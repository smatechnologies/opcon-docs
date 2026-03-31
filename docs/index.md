---
slug: "/"
hide_table_of_contents: true
---

# OpCon

OpCon (Operations Console Cross-Platform Scheduler) is an enterprise-wide, heterogeneous workflow automation and orchestration platform.

<div style={{display: 'flex', gap: '0.75rem', alignItems: 'flex-start', flexWrap: 'wrap', marginTop: '1rem'}}>

<div style={{flex: '1', minWidth: '160px', display: 'flex', flexDirection: 'column', gap: '0.6rem'}}>

<div style={{background: 'var(--ifm-card-background-color)', border: '1px solid var(--ifm-color-emphasis-400)', borderRadius: '10px', padding: '0.75rem 1rem'}}>

### Overview

- [What's New](./installation/whats-new.md)
- [Support Lifecycles](https://help.smatechnologies.com)
- [Release Notes](./release-notes.md)

</div>

<div style={{background: 'var(--ifm-card-background-color)', border: '1px solid var(--ifm-color-emphasis-400)', borderRadius: '10px', padding: '0.75rem 1rem'}}>

### Accessing the Solution

- [System Requirements](./installation/system-requirements.md)
- [Authentication](./Files/UI/Solution-Manager/Authentication-Overview.md)
- [Layout](./Files/UI/Solution-Manager/SM-UI-Layout.md)
- [Keyboard Shortcuts](./Files/UI/Solution-Manager/Keyboard-Shortcuts.md)

</div>

<div style={{background: 'var(--ifm-card-background-color)', border: '1px solid var(--ifm-color-emphasis-400)', borderRadius: '10px', padding: '0.75rem 1rem'}}>

### Reference

- [Events](./events/Events-Section-Overview.md)
- Notifications
  - [Triggers](./notifications/Notification-Triggers.md)
  - [Actions](./notifications/Notification-Configuration.md)
- [Reports](./reports/overview.md)

</div>

</div>

<div style={{flex: '1', minWidth: '160px', display: 'flex', flexDirection: 'column', gap: '0.6rem'}}>

<div style={{background: 'var(--ifm-card-background-color)', border: '1px solid var(--ifm-color-emphasis-400)', borderRadius: '10px', padding: '0.75rem 1rem'}}>

### Concepts

- [Schedules](./objects/schedules.md)
- [Jobs](./objects/jobs.md)
  - [Job Types](./job-types/Job-Types-Overview.md)
- [Master and Daily](./automation-concepts/master-vs-daily.md)
  - [Schedule Dates](./operations/schedule-dates.md)
- [Frequencies](./automation-concepts/frequencies.md)
  - [Calendars](./objects/calendars.md)
  - [Build Process](./operations/building-schedules.md)
- [Agents](./objects/Agents-Section-Overview.md)
- Properties
  - [Introduction](./objects/Properties-Section-Overview.md)
  - [Use Cases](./objects/using-properties.md)
  - [Scope](./objects/defining-properties.md)
- Instances
  - [Subschedules](./automation-concepts/Instances-Section-Overview.md)
  - [Names](./automation-concepts/named-schedule-instances.md)
- [Job and Schedule Statuses](./operations/Statuses-Section-Overview.md)
- [Thresholds](./objects/thresholds.md)
- [Resources](./objects/resources.md)

</div>

</div>

<div style={{flex: '1', minWidth: '160px', display: 'flex', flexDirection: 'column', gap: '0.6rem'}}>

<div style={{background: 'var(--ifm-card-background-color)', border: '1px solid var(--ifm-color-emphasis-400)', borderRadius: '10px', padding: '0.75rem 1rem'}}>

### Administration

- [Architecture](./server-programs/Architecture-Overview.md)
- User Security
  - [Authentication](./administration/User-Security-Overview.md)
  - [RBAC](./administration/RBAC-Overview.md)
  - [Departments](./objects/departments.md)
  - [Access Codes](./objects/access-codes.md)
  - [Auditing](./Files/UI/Solution-Manager/Library/Logs/Auditing-Overview.md)
- Running Work
  - [Agents](./Files/UI/Solution-Manager/Agents-Admin-Overview.md)
  - [Batch Users](./Files/UI/Solution-Manager/Library/Batch-Users-Overview.md)
  - [Relay](./server-programs/introduction.md)
- [System Configuration](./administration/System-Configuration-Overview.md)

</div>

<div style={{background: 'var(--ifm-card-background-color)', border: '1px solid var(--ifm-color-emphasis-400)', borderRadius: '10px', padding: '0.75rem 1rem'}}>

### Self Service

- [Self Service](./Files/UI/Solution-Manager/Self-Service-Section-Overview.md)

</div>

<div style={{background: 'var(--ifm-card-background-color)', border: '1px solid var(--ifm-color-emphasis-400)', borderRadius: '10px', padding: '0.75rem 1rem'}}>

### Vision

- [Vision](./Files/UI/Solution-Manager/Vision-Section-Overview.md)

</div>

</div>

<div style={{flex: '1', minWidth: '160px', display: 'flex', flexDirection: 'column', gap: '0.6rem'}}>

<div style={{background: 'var(--ifm-card-background-color)', border: '1px solid var(--ifm-color-emphasis-400)', borderRadius: '10px', padding: '0.75rem 1rem'}}>

### Development

- Creating a Workflow
  - [Define Schedule](./Files/UI/Solution-Manager/Studio/Define-Schedule-Overview.md)
  - [Add Jobs](./Files/UI/Solution-Manager/Library/MasterJobs/Add-Jobs-Overview.md)
- [Property Expression API](./automation-concepts/property-expressions.md)

</div>

<div style={{background: 'var(--ifm-card-background-color)', border: '1px solid var(--ifm-color-emphasis-400)', borderRadius: '10px', padding: '0.75rem 1rem'}}>

### Operations

- [Acknowledging Notifications](./Files/UI/Solution-Manager/Viewing-Notification-Acknowledgement.md)
- Navigating Operations
  - [Navigation](./Files/UI/Solution-Manager/Navigating-Operations-Overview.md)
  - [Filters](./Files/UI/Solution-Manager/Working-with-Operations.md)
  - [Selecting](./Files/UI/Solution-Manager/Working-with-Operations.md)
  - [Custom Columns/Views](./Files/UI/Enterprise-Manager/Changing-MS-Table-Column-Order.md)
- [Date Actions](./Files/UI/Solution-Manager/Performing-Bulk-Job-Status-Updates-Date-Level.md)
- Schedule Actions
  - [Status Changes](./Files/UI/Solution-Manager/Performing-Schedule-Status-Changes.md)
  - [Update](./Files/UI/Solution-Manager/Performing-Schedule-Status-Changes.md)
  - [Delete](./operations/deleting-schedules.md)
  - [Build](./operations/building-schedules.md)
  - [Check](./operations/checking-schedules.md)
- Job Actions
  - [View Job Information](./Files/UI/Solution-Manager/Accessing-Job-Summary.md)
  - [View PERT](./Files/UI/Solution-Manager/Using-PERT-View.md)
  - [View Job Output](./Files/UI/Solution-Manager/Viewing-Job-Output.md)
  - [View Job History](./Files/UI/Solution-Manager/Accessing-Job-Executions-History.md)
  - [Status Changes](./Files/UI/Solution-Manager/Performing-Job-Status-Changes.md)
  - [Update](./Files/UI/Solution-Manager/Performing-Job-Status-Changes.md)
  - [Add](./Files/UI/Solution-Manager/Adding-Jobs-to-Daily-Schedules.md)
  - [Delete](./operations/adding-jobs.md)

</div>


</div>

</div>
