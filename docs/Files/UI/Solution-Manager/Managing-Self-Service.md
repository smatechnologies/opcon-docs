---
title: Managing Self Service
description: "Self Service is a licensed OpCon module in the Solution Manager web interface that enables front-office staff to trigger OpCon workflows without IT involvement."
product_area: Solution Manager
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

# Managing Self Service

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Self Service is a licensed OpCon module in the Solution Manager web interface that enables front-office staff to trigger OpCon workflows without IT involvement.

## When Would You Use It?

- You need to review or update Self Service settings in Solution Manager
- Self Service needs to be reviewed as part of routine system maintenance or a compliance audit

## Why Would You Use It?

- **Reduce administrative overhead**: Centralizing Self Service management in Solution Manager reduces the time needed to locate and update settings across the environment
- All Self Service changes are captured in the OpCon audit system, supporting change management and compliance processes

## License File Request and Storing

A license is required to access Self Service in Solution Manager. Follow the procedures below to request and save the license file.

To request the license file, complete the following steps:

1. Open Enterprise Manager
2. Go to **Help > About OpCon EnterpriseManager**
3. Select the **License Information** tab
4. Select the **System ID** \[e.g., (SeverName_1234)\] at the end of the first line
5. Right-click and select **Copy**
6. Email <license@continuous.com> to request an updated license file with "Self Service" support, and paste the System ID into the request. Expect a response within an hour during business hours
7. Select **OK** to close the **About** dialog

To save the license file, complete the following steps:

1. Save the received license file to ```<Configuration Directory>\OpConxps\SAM\``` on your OpCon server. SAM picks up the new file automatically within 6 hours
2. _(Optional)_ Restart the **SMA OpCon Service Manager** in the **Windows Services** tool to apply the file immediately


## FAQs

**Q: What does managing self service involve?**

Managing self service includes License File Request and Storing. Access self service through the Enterprise Manager navigation pane.

**Q: Who can manage self service in OpCon?**

Users with the appropriate privileges assigned through their role can manage self service. Contact your OpCon system administrator if you do not have access.

## Glossary

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**OpConxps**: The standard installation directory name for OpCon program files, configuration files, and output data on Windows machines.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
