---
title: Licensing
description: "Continuous provides a license file during installation and maintenance to enable SAM."
product_area: Server Programs
audience: System Administrator
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - System Configuration
last_updated: 2026-03-18
doc_type: procedural
---

# Licensing

**Theme:** Configure  
**Who Is It For?** System Administrator

## What Is It?

Continuous provides a license file during installation and maintenance to enable SAM. If the license expires, SAM enters Emergency Mode to allow normal functioning for a short time. For instructions on obtaining a new license file, refer to the [Request a New License File from Continuous](./schedule-activity-monitor.md#Request_a_New_License_File_from_SMA) procedure in the **Schedule Activity Monitor** topic.

The license file contains general information about the license and Product Support:

- The license defines the Customer Name/ID, License Create Date, and Expiration for the software
- Product Support defines the date through which you can receive paid Continuous technical support

License notifications appear in the Enterprise Manager during login and in the Operation Views. The SAM also writes notifications to the SAM log file and/or the Critical log file depending on severity. Notifications occur when:

- The number of machines (agents) exceeds the license limit
- A license is missing
- A license is invalid
- A license approaches its expiration date
- A license expires
- Product Support approaches its renewal date
- Product Support requires renewal
- A license file appears to be corrupt

## When Would You Use It?

- You need to provide a license file during installation and maintenance to enable SAM using Continuous

## Why Would You Use It?

- **Operational value**: Provides a license file during installation and maintenance to enable SAM

## License Types

Continuous provides the following license types:

- **Maximum Number of Machines by Platform**: Determines how many machines of the same OS Type can communicate simultaneously with the SAM. An unlimited number of tasks are allowed
- **Maximum Number of Tasks by Platform**: Determines how many tasks on the same OS Type can run during a month. Customers must send a task report for the previous month on the first day of each month using one of these options:
  - Allow the SAM to automatically send the task report to Continuous at the beginning of each month. Refer to [Change the ocadm Password and Configure SAM Options](../installation/configuration.md#Change_the_ocadm_Password_and_Configure_SAM_Options) in the **OpCon Installation** online help
  - Manually send the SAM log to Continuous at the beginning of each month. The first SAM log file on the first day of each month contains the task report

### Manually Send the Task Report

1. On the first day of each month, find the first SAM.log for that day
2. Open the SAM.log file and confirm this line appears: **Task Report for** *Licence Key Information* **Period =** *Month Name*
3. If the log file does not contain the task report, contact Continuous Support

4. If the log file contains the task report, create a new email:
    1. In the **To** line, enter the license address for your Continuous sales and support office:
        - Continuous Europe: <license-eu@smatechnologies.com>
        - Continuous France: <license-fr@smatechnologies.com>
        - Continuous USA: <license@smatechnologies.com>
    2. In the **Cc** line, copy any addresses in your organization that should receive a copy
    3. Attach the SAM.log file
    4. Send the email

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Maximum Number of Machines by Platform | Determines how many machines of the same OS Type can communicate simultaneously with the SAM. | — | — |
| Maximum Number of Tasks by Platform | Determines how many tasks on the same OS Type can run during a month. | — | — |
## FAQs

**Q: What happens when the OpCon license expires?**

When the license expires, SAM enters Emergency Mode to allow normal functioning for a short time. License expiration notifications appear in the Enterprise Manager during login, in Operation Views, and in the SAM and Critical log files.

**Q: What are the two OpCon license types?**

The two license types are: Maximum Number of Machines by Platform (limits how many machines of the same OS type can communicate simultaneously with SAM) and Maximum Number of Tasks by Platform (limits how many tasks of the same OS type can run per month, requiring a monthly task report).

**Q: How do you submit a monthly task report for a task-based license?**

Either allow SAM to automatically send the task report to Continuous at the start of each month, or manually email the first SAM.log file from the first day of the month to the appropriate Continuous license address.

## Glossary

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
