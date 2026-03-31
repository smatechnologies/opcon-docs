---
title: Using Quick Search
description: "The Quick Search function displays a dialog to search for and edit schedules and/or jobs."
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

# Using Quick Search

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Quick Search** function displays a dialog to search for and edit schedules and/or jobs. The dialog lists schedules and their corresponding jobs, which can be viewed and edited in the **Schedule Master** or **Job Master** screen.

## When Would You Use It?

- The **Quick Search** function displays a dialog to search for and edit schedules and/or jobs

## Why Would You Use It?

- **Using Quick**: The **Quick Search** function displays a dialog to search for and edit schedules and/or jobs

## Searching Schedule/Job Details

To perform a search, complete the following steps:

1. Select on **Quick Search** under the **Administration** topic. The **Find Master Schedule/Job** dialog displays
2. Type the name, first few letters (case insensitive), and/or values for the schedule and/or job in the **Type Filter Text** box. You can also type an \* (asterisk) in front of a word to search mid-string
3. Select on the **Clear** icon (far right of the text box) to re-display all schedules and jobs
4. Close the **Find Master Schedule/Job** dialog

## Editing Schedule Details

To edit the schedule details, complete the following steps:

1. Select on **Quick Search** under the **Administration** topic. The **Find Master Schedule/Job** dialog displays
2. Select on the **schedule** to edit
3. Select on the **Edit Schedule** button. The **Schedule Master** screen displays
4. Enter the *changes* and select ![Green circular with white check mark inside](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Schedule Master** toolbar
5. Select **Close ☒** (to the right of the **Schedule Master** tab) to close the **Schedule Master** screen

## Editing Job Details

To edit the job details, complete the following steps:

1. Select on **Quick Search** under the **Administration** topic. The **Find Master Schedule/Job** dialog displays
2. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png)**arrow** to the left of the schedule that has the job to edit
3. Select on the **job** to be edited and select **Edit Job**. The **Job Master** screen displays
4. Enter the *changes* and select ![Green circular with white check mark inside](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar
5. Select **Close ☒** (to the right of the **Job Master** tab) to close the **Job Master** screen

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What can you do with Quick Search?**

Quick Search allows you to searching schedule/job details, editing schedule details, editing job details.

**Q: Who has access to Quick Search?**

Access to Quick Search is controlled by the privileges assigned to your OpCon role. Contact your system administrator if you need access.

## Glossary

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
