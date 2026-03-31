---
title: SMAGetServiceStatus
description: "The SMAGetServiceStatus utility (SMAGetServiceStatus.exe) monitors the status of Windows services."
product_area: Utilities
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - System Configuration
last_updated: 2026-03-18
doc_type: procedural
---

# SMAGetServiceStatus

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The SMAGetServiceStatus utility (SMAGetServiceStatus.exe) monitors the status of Windows services. Use it for notifications and recovery actions.

## When Would You Use It?

- The SMAGetServiceStatus utility (SMAGetServiceStatus.exe) monitors the status of Windows services

## Why Would You Use It?

- **SMAGetServiceStatus**: The SMAGetServiceStatus utility (SMAGetServiceStatus.exe) monitors the status of Windows services

## Syntax

```
SMAGetServiceStatus.exe "<Service Display Name>"
```

Run from: `<Target Directory>\OpConxps\Utilities\`

### Parameters

- **SMAGetServiceStatus.exe**: The command name
- **\<Service Display Name\>**: The Display Name for a service (found in Properties > General tab in the Services window). Refer to [Getting Service Display Names](#Getting_Service_Display_Names)

## Getting Service Display Names

To get Service Display Names, complete the following steps:

1. Go to **Start > Control Panel > Administrative Tools > Services**
2. Select the desired service from the **Service** list
3. Right-click the service and select **Properties**
4. Select the **General** tab
5. Note the **Display name**
6. Repeat steps 2–5 for additional service names
7. Select **Close ☒**

### Example

:::tip Example
Settings for a job monitoring SMA Microsoft Resource Monitor. If SMA Microsoft Resource Monitor is stopped, OpCon notifies the administrator by email.

1. In the Job Details screen, the Command Line is:

   ```shell
    "<Target Directory>\OpConxps\Utilities\SMAGetServiceStatus.exe" "SMA Microsoft Resource Monitor"
   ```

2. In the Job Details screen, the Exit Code is EQ -2
3. In the Events screen:
   - The status is 'Failed'
   - The Event is $NOTIFY:EMAIL,Admin@Company.com, SMA Microsoft Resource Monitor, SMA Microsoft Resource Monitor is Down
4. If desired, create other events for notification actions within ENS manager

:::

## Scheduling

Add a job to the SMAUtility schedule to run SMAGetServiceStatus at regular intervals each day (e.g., once per hour or every 15 minutes). Refer to [SMAUtility Schedule](../../objects/schedules.md#smautility-schedule) in the **Concepts** online help.

### Job Details

- The Command Line is:
- The Working Directory is:

## Exit Values

The SMAGetServiceStatus.exe program uses the following exit values:

|Code|Value|
|--- |--- |
|RUNNING|0|
|NO_SERVICE_SPECIFIED_ON_COMMAND_LINE|-1|
|STOPPED|-2|
|START_PENDING|-3|
|STOP_PENDING|-4|
|CONTINUE_PENDING|-5|
|PAUSE_PENDING|-6|
|SERVICE_PAUSED|-7|
|PATH_NOT_FOUND|3|
|ACCESS_DENIED|5|
|INVALID_HANDLE|6|
|INVALID_PARAMETER|87|
|SERVICE_IS_PAUSED|928|
|DEPENDENT_SERVICES_RUNNING|1051|
|INVALID_SERVICE_CONTROL|1052|
|SERVICE_REQUEST_TIMEOUT|1053|
|NO_THREAD|1054|
|SERVICE_DATABASE_LOCKED|1055|
|SERVICE_ALREADY_RUNNING|1056|
|SERVICE_DISABLED|1058|
|SERVICE_DOES_NOT_EXIST|1060|
|SERVICE_CANNOT_ACCEPT_CTRL|1061|
|SERVICE_NOT_ACTIVE|1062|
|SERVICE_SPECIFIC_ERROR|1066|
|SERVICE_DEPENDENCY_FAIL|1068|
|SERVICE_LOGON_FAILED|1069|
|SERVICE_START_HANG|1070|
|SERVICE_MARKED_FOR_DELETE|1072|
|SERVICE_EXISTS|1073|
|SERVICE_DEPENDENCY_DELETED|1075|
|SERVICE_NEVER_STARTED|1077|
|SERVICE_NOT_IN_EXE|1083|
|SHUTDOWN_IN_PROGRESS|1115|
|SERVICE_NOT_FOUND|1243|

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| SMAGetServiceStatus.exe | The command name | — | — |
| \<Service Display Name\> | The Display Name for a service (found in Properties > General tab in the Services window). | — | — |
## FAQs

**Q: What does SMAGetServiceStatus.exe monitor and what is it used for?**

SMAGetServiceStatus.exe monitors the status of Windows services and returns an exit code reflecting the service state. It is used to trigger notifications and recovery actions when a monitored service stops or enters an unexpected state.

**Q: How do you find the correct Display Name to pass to SMAGetServiceStatus.exe?**

Go to Start > Control Panel > Administrative Tools > Services, right-click the desired service, select Properties, and note the Display Name on the General tab.

**Q: What exit code does SMAGetServiceStatus return when a service is stopped?**

It returns exit code -2 when the monitored service is stopped. You can configure an OpCon job event on this exit code to send notifications or trigger recovery actions.

## Glossary

**SMAUtility Schedule**: A pre-built OpCon schedule installed during setup that contains standard maintenance jobs for audit history cleanup, job history cleanup, and BIRT report generation.

**OpConxps**: The standard installation directory name for OpCon program files, configuration files, and output data on Windows machines.

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
