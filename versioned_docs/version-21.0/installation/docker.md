---
sidebar_label: 'OpCon on Docker'
---

# OpCon on Docker Installation

OpCon's server components can now be installed and run in a Docker
container. The image and installation instructions are available on
Docker Hub at SMA Technologies' repository, found here:
[https://hub.docker.com/r/smatechnologies/opcon-server](https://hub.docker.com/r/smatechnologies/opcon-server).

The **opcon-server** Docker image contains the following components:

- SMA OpCon Database Scripts
- SMA OpCon Documentation
- SMA OpCon RestAPI
- SMA OpCon Service Manager
- SMA OpCon Solution Manager

## Known Limitations

- SQL Server must have SQL authentication enabled

- SMA OpCon Solution Manager will not support Windows Authentication

- The following notifications are not supported:
  - Windows Event Log
  - Network Message
  - SNMP Trap
  - SPO Event Report
  - Run Command

- The \[\[$DATE\]\] Global Property uses the "Short Date" to determine its value. The default "Short Date" on Windows resolves
    to mm/dd/yyyy but resolves to a different format on Linux. To avoid
    any potential issues please update the $DATE value to mm/dd/yyyy.

## SMAUtility Schedule

If no SMAUtility schedule is detected in the database, a Linux-based
SMAUtility schedule will be added.

The following Global Properties need to be set for the schedule to run:

- SMADBCredentials
- SQLMaintUser
- SQLMaintPassword
