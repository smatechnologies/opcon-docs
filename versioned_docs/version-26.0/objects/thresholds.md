---
title: Thresholds
description: "A threshold is a user-defined placeholder consisting of a name and a numeric value."
product_area: Core Concepts
audience: Automation Engineer, Application Owner
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - Automation Engineer
  - Application Owner
  - Getting Started
last_updated: 2026-03-18
doc_type: conceptual
---

# Thresholds

**Theme:** Configure  
**Who Is It For?** Automation Engineer, Application Owner

## What Is It?

A *threshold* is a user-defined placeholder consisting of a name and a numeric value. Thresholds resolve dependencies that cannot be resolved by a job dependency, allowing a job to wait until a specified threshold condition is met. Thresholds also allow external applications and systems to affect schedules.

Threshold fields:

- **Name**: The name for the threshold
- **Documentation**: Descriptions, explanations, and notes for the threshold. For information on inserting hyperlinks, refer to [Entering and Opening Hyperlinks in the Documentation Frame](../Files/UI/Enterprise-Manager/Entering-and-Opening-Hyperlinks.md) in the **Enterprise Manager** online help
- **Threshold Value**: A numeric value for the threshold

:::tip Example
Jamie needs to create an External Application Dependency for an OpCon job named 'Testing' that depends on job processing on a machine without an agent.

- In OpCon Administration, Jamie creates a threshold called **EXTERNALAPP** with the default value **0**
- In Job Master, Jamie creates a threshold dependency for 'Testing', setting the dependent value equal (**EQ**) to **1**
- In Job Master, Jamie creates a threshold update for 'Testing' that sets **EXTERNALAPP** back to **0** when the job status is **Finished OK**, resetting it for the next execution
- Jamie builds the schedule; the 'Testing' job enters a Wait Threshold/Resource Dependency state
- On the external machine, Jamie configures the external job to copy or FTP an ASCII file to the SAM MSGIN directory on completion. The file contains: `$THRESHOLD:SET,EXTERNALAPP,1,username,event_password`

**Result**: When SAM receives the event through MSGIN, EXTERNALAPP is updated to 1 and the 'Testing' job starts (if no other dependencies remain). When the job finishes, EXTERNALAPP resets to 0.
:::

:::tip Example
Jamie has a multi-instance job named **UpdateCreditDatabase** that should run once for every ten credit transactions, each of which writes a unique file to the credit server.

- In OpCon Administration, Jamie creates a threshold called **CreditTransactions** with the default value 0
- In Job Master Maintenance, Jamie creates a threshold dependency for **UpdateCreditDatabase** with the dependent value equal (**EQ**) to **10**
- Jamie configures the SMA Resource Monitor to detect the unique files. When each file arrives, it sends:

  ```shell
  $THRESHOLD:SET,CreditTransactions,+1
  ```

- In Notification Manager, Jamie creates a job event trigger on **UpdateCreditDatabase** so that when the job is **Submitted**, two events are sent to SAM. The first resets the threshold:

  ```shell
  $THRESHOLD:SET,CreditTransactions,0
  ```

- The second adds another copy of the job to the Daily schedule:

  ```shell
  $JOB:ADD,[[$SCHEDULE DATE]],[[$SCHEDULE NAME]],[[$JOB NAME]],[[$FREQUENCY NAME]]
  ```

**Result**: The **UpdateCreditDatabase** job waits in "Wait Threshold Dependency" status. The SMA Resource Monitor increments CreditTransactions for each arriving file. When the value reaches 10, the job runs. On submission, Notification Manager resets the threshold to 0 and adds another job copy to process the next ten records.
:::

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Name | The name for the threshold | value **0** | — |
| Documentation | Descriptions, explanations, and notes for the threshold. | value **0** | — |
| Threshold Value | A numeric value for the threshold | value **0** | — |
| Result | When SAM receives the event through MSGIN, EXTERNALAPP is updated to 1 and the 'Testing' job starts (if no other dependencies remain). | value 0 | — |
## FAQs

**Q: What is a threshold used for?**

Thresholds resolve dependencies that cannot be handled by a standard job dependency, such as waiting for a condition on a machine without an agent. They also allow external applications to influence OpCon schedules by updating threshold values through MSGIN events.

**Q: What is the default value for a new threshold?**

The default threshold value is 0. Administrators set the numeric value based on the condition the dependent job should wait for.

**Q: Can a threshold be incremented or decremented by an external event?**

Yes. External systems can send `$THRESHOLD:SET` events to the SAM MSGIN directory to update threshold values, allowing conditions outside OpCon to trigger or release job dependencies.

## Glossary

**MSGIN**: A directory monitored by an agent for incoming OpCon event files. Placing a properly formatted event file in MSGIN causes the agent to forward it to SAM for processing.

**SMA Resource Monitor (SMARM)**: A Windows service that monitors files, counters, services, and processes on Windows machines. When a monitored condition is met, it sends OpCon events to trigger automation actions.

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**LSAM (Local Schedule Activity Monitor)**: An agent installed on a target platform that runs jobs in the native language of that platform and communicates results back to SAM via SMANetCom over TCP/IP.

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Threshold**: A numeric variable stored in the OpCon database used to control job execution. Jobs can be made dependent on threshold values, and OpCon events can update threshold values at runtime.

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.
