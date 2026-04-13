---
title: Using Administration Tools
description: "The Administration tools perform the functions listed below, depending on the specific editor or view in which you are working."
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

# Using Administration Tools

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The Administration tools perform the functions listed below, depending on the specific [editor](Navigation-Editors.md) or [view](Navigation-Views.md) in which you are working.

|||
|--- |--- |
||Find (Ctrl+F): Opens the Quick Search dialog to find a specific record or any node on the Workflow Designer layout.|
||Add (Ctrl+ N): Adds the appropriate editor information.|
||Remove (Ctrl+ D): Deletes the appropriate editor information.|
||Save (Ctrl+ S): Saves the appropriate editor information.|
||Cancel (Ctrl+ R): Cancels the appropriate editor information.|
||Cross References: Opens a dialog to view the schedules, jobs, or frequencies using the selected administrative item.|
||View History: Displays the appropriate editor history details.|
||Merge Schedule: Merges schedules.|
||Copy: Copies the appropriate editor information.|
||Paste: Pastes the appropriate editor information.|
||Edit: Opens a secondary screen to edit the selected item.|
||Up: Moves the priority up one level for the selected item in a table.|
||Down: Moves the priority down one level for the selected item in a table.|
||Edit Jobs: Opens the Job Master screen to edit jobs.|
||Move (Shift+Insert): Moves jobs to different schedules.|
||Edit Master Schedule: Opens the Schedule Master screen to edit schedules.|
||View Audit: Opens the Audit Management dialog to view the specific user audit record.|
||Edit Resource in Use value: Allows editing of the resource value currently in use. The Locked label appears if one or more jobs require "All" of the resource.|
||Reset Job Type (Ctrl+Shift+D): Resets the job type to a Null job. Warning: Once confirmed, all job detail information is lost and cannot be recovered.|
||Show/Hide: Shows or hides the left part of the screen containing the menu and minimap.|
||Create Schedule: In the Workflow Designer, opens a dialog to create a new schedule with default settings.|
||Arrange All: In the Workflow Designer, rearranges all items on the display to the selected layout option without refreshing data from Job Master.|
||Minimize: Minimizes the editor and/or view and places an icon in the sidebar.|
||Maximize: Opens the editor and/or view to its maximum size. The Maximize button changes to a Restore button when maximized.|
||Print: In the Workflow Designer, displays print options for the layout.|
||Restore: Returns the editor view to its original location and size.|
||Show/Hide Thresholds and Resources: In the Workflow Designer, toggles the display of thresholds and resources on the layout.|
||Take Screenshot: In the Workflow Designer, captures and saves an image of the current layout.|
||Zoom: In the Workflow Designer, the zoom percentage list sets the display size of objects.|

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What can you do with Administration Tools?**

Administration Tools allows you to manage and configure related settings.

**Q: Who has access to Administration Tools?**

Access to Administration Tools is controlled by the privileges assigned to your OpCon role. Contact your system administrator if you need access.

## Glossary

**Null Job**: A job type that performs no execution on any platform. Null jobs are used to hold dependencies, trigger OpCon events, and keep schedules open after all other jobs complete.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Audit Record**: An automatically created log entry recording every change made to an OpCon object. Each record captures the timestamp, the user or application that made the change, the item affected, and the original and final values.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
