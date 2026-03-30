---
title: Sending Emails (SMTP)
description: "The Email tab provides the following fields for defining an SMTP email notification: - To (Required): One or more SMTP email addresses separated by semicolons (;)."
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

# Sending Emails (SMTP)

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Email** tab provides the following fields for defining an SMTP email notification:

- **To** (Required): One or more SMTP email addresses separated by semicolons (;). Maximum 3,000 characters
- **Cc** (Optional): Additional SMTP addresses for carbon copies, separated by semicolons (;). Maximum 3,000 characters
- **Bcc** (Optional): Additional SMTP addresses for blind carbon copies, separated by semicolons (;). Maximum 3,000 characters
- **Subject** (Optional): The message subject. Defaults to "OpCon Notification: \<Status Change Event Trigger Name\>"
- **JORS Output**: Select this option to include JORS output files as attachments for job triggers
- **Exclude Prefix Information**: Select this option to exclude prefix information (Schedule Date, Machine Name, Schedule Name, Job Name \[and Internal Job Number\], trigger type, and triggering status change event) from the email
- **Message**: A user-defined message
- **Attachments**: Files to include with the message. Wildcards are not allowed in filenames

### Navigate to the Notification Trigger

To navigate to the notification trigger and enable the email notification, complete the following steps:

1. Select on **Notification Manager** under the **Management** topic. The **Notification Manager** screen displays
2. Select the **Machines**, **Schedules**, or **Jobs** tab in the **Notification Triggers** frame
3. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the **Machines**, **Schedules**, or **Jobs** information
4. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the **Notification Group** containing the appropriate trigger
5. Select the **trigger**
6. Select the **option** to the left of **Send Email (SMTP)**
7. Select the **Email** tab

### Configure Recipients and Message Content

To configure email recipients, subject, and message body, complete the following steps:

1. In the **To:** field, enter one or more SMTP email addresses separated by semicolons (;)
2. In the **CC:** field, enter one or more SMTP email addresses separated by semicolons (;)
3. In the **Bcc:** field, enter one or more SMTP email addresses separated by semicolons (;)
4. In the **Subject:** field, enter the subject for the email
5. *(Optional)* Select the **JORS Output** option to include JORS output for job triggers
6. *(Optional)* Select the **Exclude Prefix Information** option to exclude prefix information from the email
7. Select the **Message** tab and enter the message text

### Manage Attachments

To add, edit, or remove attachments from the email notification, complete the following steps:

1. Select the **Attachments** tab
2. Select the **Attach File** button and enter a path or filename, or select **Browse** to locate an existing file
3. Select **Open** to return to the **Attach File** dialog with the selected path and filename
4. Select the **OK** button to save the attachment
5. To edit an attachment, select the item in **Attachments**, select the **Edit** button, enter changes, then select **OK**
6. To delete an attachment, select the item in **Attachments**, then select the **Remove** button

## When Would You Use It?

- You need to provide the following fields for defining an SMTP email notification: using The **Email** tab

## Why Would You Use It?

- **Operational value**: Provides the following fields for defining an SMTP email notification: - To (Required): O

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| JORS Output | Select this option to include JORS output files as attachments for job triggers | — | — |
| Exclude Prefix Information | Select this option to exclude prefix information (Schedule Date, Machine Name, Schedule Name, Job Name \[and Internal Job Number\], trigger type, and ... | — | — |
| Message | A user-defined message | — | — |
| Attachments | Files to include with the message. | — | — |
## FAQs

**Q: How many steps does the Sending Emails (SMTP) procedure involve?**

The Sending Emails (SMTP) procedure is divided into three phases: navigating to the notification trigger, configuring recipients and message content, and managing attachments. Complete all relevant phases to configure the email notification.

## Glossary

**JORS (Job Output Retrieval System)**: The system used to retrieve and display job output — logs and reports — from agent machines directly within the OpCon graphical interfaces.

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
