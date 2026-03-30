---
title: Using Management Tools
description: "The Management tools perform the functions listed below, depending on the active editor or view."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Using Management Tools

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The Management tools perform the functions listed below, depending on the active [editor](Navigation-Editors.md) or [view](Navigation-Views.md).

|||
|--- |--- |
||Minimize: Minimizes the editor and/or view and places an icon for it in the sidebar.|
||Maximize: Opens the editor and/or view to its maximum size. The Maximize button changes to a Restore button when maximized.|
||Restore: Returns the editor view to its original location and size.|
||View Audit: Opens the Audit Management dialog to view the specific user audit record.|
||Lookup: Enter a Notification ID to look up the source information for the notification or directory information for the Schedule Extract.|
||Add (Ctrl+ N): Adds the appropriate editor information.|
||Remove (Ctrl+ D): Deletes the appropriate editor information.|
||Save (Ctrl+ S): Saves the appropriate editor information.|
||Cancel (Ctrl+ R): Cancels the appropriate editor information.|
||Edit a Frequency Definition: Modifies the frequency definition rules.|
||Rename a Frequency or Edit Rule/Group or Associate Additional Jobs: In Frequency Manager, renames the selected frequency. In Escalation Manager, edits an escalation rule or user group. In Tag Manager, associates a tag to a schedule or job.|
||Forecast: Opens the Forecast dialog for the selected frequency.|
||Compare Frequencies: Compares the frequency definition rules for two frequencies side by side.|
||Edit Selected Job or Schedule: Edits the selected job or schedule in its perspective editor.|

## When Would You Use It?

- The Management tools perform the functions listed below, depending on the active [editor](Navigation-Editors.md) or [view](Navigation-Views.md)

## Why Would You Use It?

- **Using Management**: The Management tools perform the functions listed below, depending on the active [editor](Navigation-Editors.md) or [view](Navigation-Views.md)

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What can you do with Management Tools?**

Management Tools allows you to manage and configure related settings.

**Q: Who has access to Management Tools?**

Access to Management Tools is controlled by the privileges assigned to your OpCon role. Contact your system administrator if you need access.

## Glossary

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.

**Audit Record**: An automatically created log entry recording every change made to an OpCon object. Each record captures the timestamp, the user or application that made the change, the item affected, and the original and final values.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
