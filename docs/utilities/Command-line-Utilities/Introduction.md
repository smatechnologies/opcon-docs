---
sidebar_label: 'Introduction'
title: Command-line Utilities Introduction
description: "OpCon includes the following command-line utilities: - Administrative Stored Procedures - Audit History Cleanup - BIRT Report Generator - Check Job Termination - Check Schedule and Job Status -."
product_area: Utilities
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - System Configuration
last_updated: 2026-03-18
doc_type: conceptual
---

# Command-line Utilities Introduction

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

OpCon includes the following command-line utilities:

- [Administrative Stored     Procedures](Adminstrative-Stored-Procedures.md)
- [Audit History Cleanup](Audit-History-Cleanup.md)
- [BIRT Report Generator](BIRT-Report-Generator.md)
- [Check Job Termination](Check-Job-Termination.md)
- [Check Schedule and Job Status](Check-Schedule-and-Job-Status.md)
- [Chronoman](Chronoman.md)
- [DoBatch](DoBatch.md)
- [Job History Cleanup](Job-History-Cleanup.md)
- [Pingman](Pingman.md)
- [Schedule Extract Command-line Interface](Schedule-Extract-Command-line-Interface.md)
- [SMADirectory](SMADirectory.md)
- [SMA Evaluate Expression](SMA-Evaluate-Expression.md)
- [SMAGetServiceStatus](SMAGetServiceStatus.md)
- [SMAHoliday](SMAHoliday.md)
- [SMALogEvent](SMALogEvent.md)
- [SMASetRMFileName](SMASetRMFileName.md)
- [Synch SAP](Synch-SAP.md)

## When Would You Use It?

- OpCon includes the following command-line utilities:

## Why Would You Use It?

- **Command-line Utilities**: OpCon includes the following command-line utilities:

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What types of tasks can command-line utilities perform?**

Command-line utilities perform specific OpCon tasks such as generating reports, cleaning up audit and job history, managing directories, evaluating expressions, and checking job or schedule statuses. They can be automated by calling them from OpCon Windows jobs.

**Q: Where are OpCon command-line utilities installed?**

Most command-line utilities are installed to the `<Target Directory>\OpConxps\Utilities\` directory, though some (such as Chronoman.exe and SMAHoliday.exe) are installed to the `<Target Directory>\OpConxps\MSLSAM\` directory with the Microsoft agent package.

## Glossary

**BIRT (Business Intelligence and Reporting Tools)**: The open-source reporting engine used by OpCon to generate predefined and custom reports. Reports are run using the BIRTRptgen.exe utility.

**LSAM (Local Schedule Activity Monitor)**: An agent installed on a target platform that runs jobs in the native language of that platform and communicates results back to SAM via SMANetCom over TCP/IP.

**OpConxps**: The standard installation directory name for OpCon program files, configuration files, and output data on Windows machines.

**Audit Record**: An automatically created log entry recording every change made to an OpCon object. Each record captures the timestamp, the user or application that made the change, the item affected, and the original and final values.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
