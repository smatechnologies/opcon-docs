---
title: Defining Escalation Groups
description: "Use this procedure to define Escalation Groups in the Enterprise Manager."
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

# Defining Escalation Groups

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to define Escalation Groups in the Enterprise Manager.

:::note
Each user must have an email address defined to receive escalations. Refer to [Adding User Accounts](Adding-User-Accounts.md) for more information.
:::

To define a group, complete the following steps:

1. Select on **Escalation Manager** under the **Management** topic. The **Escalation Manager** screen displays
2. Select ![Add icon](../../../Resources/Images/EM/EMadd.png "Add icon") **Add Group** on the **Groups** toolbar. The **Group Add/Edit** dialog displays
3. Enter a *group name* (e.g., Level One) in the **Group Name** field
4. In the **Users** frame, add assigned users by doing one of the following:
   - Enter a *token* in the text box and select **Add Token User**
   - Select a **user** in the **Available Users** list and select the green arrow to move the user to the **Assigned Users** list
5. Repeat Step 4 until all desired users are added
6. Select **Save**

## When Would You Use It?

- A new Escalation Groups definition needs to be established in Enterprise Manager

## Why Would You Use It?

- **Establish reusable definitions**: Defining Escalation Groups in OpCon creates a reusable reference that schedules, jobs, and events can share

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What is the purpose of defining escalation groups?**

Defining escalation groups establishes the configuration or properties that OpCon uses when processing the related job, schedule, or automation object.

## Glossary

**Token (Global Property)**: A named value stored in the OpCon database, referenced in job definitions and events using [[PropertyName]] syntax. Tokens pass dynamic values — such as dates, file paths, or counts — into automation workflows.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
