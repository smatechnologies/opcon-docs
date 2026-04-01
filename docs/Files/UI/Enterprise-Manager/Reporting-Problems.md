---
title: Reporting Problems
description: "You can report Enterprise Manager bugs directly through the Enterprise Manager."
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

# Reporting Problems

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

You can report Enterprise Manager bugs directly through the Enterprise Manager. Activities are recorded in a log file, which is gathered and attached to the report email. These problems refer only to the Enterprise Manager; report SAM or agent problems to Continuous support through the normal process.

To report an EM bug, complete the following steps:

:::note
Before gathering log files, enable tracing and reproduce the bug. Go to the **Enterprise Manager** menu and select **Preferences**. In the Preferences dialog, select **Enterprise Manager**, set the Logging Level to **TRACE**, then select **Apply** and **OK**. Reproduce the bug, then follow the steps below.
:::

1. Select **Report Problem** under the **Support** topic. The **Report Problem** dialog opens with the **Enterprise Manager** radio button selected by default

:::note
You can also access Report Problem from the Enterprise Manager **Help** menu by selecting **About OpCon Enterprise Manager** > **Report Problem**, then proceed with Step 2.
:::

2. Select **Next** to advance to the **Choose Method** screen
3. Proceed with the applicable method below

**If Save logs as an archive on my computer is selected:**

a. Select **Finish** to save. The **Save As** dialog opens.
b. Select the file location and select **Save**.
c. Email **support@smatechnologies.com** and attach the archive log or zip file.

**If Send logs by email with a description of the problem is selected:**

a. Select **Next** to advance to the **Email settings** screen.
b. Enter the server address in the **SMTP server** field.
c. *(Optional)* Enter a *user* and *password* if **Use SMTP Authentication** is selected.
d. Select **Next** to advance to the **Description** screen.
e. Enter email addresses in the **To** and **From** fields.
f. *(Optional)* Add a recipient in the **CC** field.
g. Enter a subject describing the problem.
h. Select the **Message** tab and enter the problem description.
i. *(Optional)* Select the **Attachments** tab. Log files are already attached. Select **Attach File** to add more, locate the file, and select **Open**.
j. Select **Next** to send the email, then select **Finish** to close the dialog.

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: Where is Reporting Problems located in the Enterprise Manager?**

Select **Report Problem** under the **Support** topic in the Enterprise Manager navigation pane.

**Q: How many steps does the Reporting Problems procedure involve?**

The Reporting Problems procedure involves 3 steps. Complete all steps in order and save your changes.

## Glossary

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**LSAM (Local Schedule Activity Monitor)**: An agent installed on a target platform that runs jobs in the native language of that platform and communicates results back to SAM via SMANetCom over TCP/IP.

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
