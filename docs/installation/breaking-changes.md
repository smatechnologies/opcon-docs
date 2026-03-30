---
sidebar_label: 'Breaking Changes'
title: Breaking Changes in Installation
description: "The Breaking Changes section provides information on changes requiring action or new behaviors when installing or upgrading all of the OpCon components except the agents (also referred to as Agents)."
product_area: Installation
audience: System Administrator
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Installation
last_updated: 2026-03-18
doc_type: conceptual
---

# Breaking Changes in Installation

**Theme:** Configure  
**Who Is It For?** System Administrator

## What Is It?

The **Breaking Changes** section provides information on changes
requiring action or new behaviors when installing or upgrading all of
the OpCon components except the agents (also
referred to as Agents). For installation information on a specific agent,
refer to the corresponding agent online help.

## When Would You Use It?

- Use this feature when installing or upgrading all of the OpCon components except the agents (also referred to as Agents)

## Why Would You Use It?

- **Operational value**: Provides information on changes requiring action or new behaviors when installing or upgr

## Release 20.2

### Deploy and ImpEx2

The ImpEx2 web service has been removed from the Deploy installer and a
stand-alone installer has been created. When upgrading Deploy, the
*Server* component is no longer an option and will be uninstalled where
installed. The **SMA OpCon ImpEx2** installer replaces the *Server*
component and can be found as part of OpCon releases. The version is
required to match the major release version of the OpCon environment it
communicates with.

### SMADataCollector Deprecated

The SMADataCollector application will no longer be distributed with
**SMA OpCon**.

## Release 20.0

### Retired Installers

With the introduction of the new consolidated product installer, **SMA
OpCon**, and the opening of the online help site,
<https://help.smatechnologies.com>, several product installers have been
retired. The following are no longer distributed as part of OpCon and
should be uninstalled before upgrade:

- SMA OpCon Database Scripts
- SMA OpCon Documentation
- SMA OpCon SAM
- SMA OpCon Solution Manager

### Documentation

Documentation is now only distributed in PDF format. Web documentation
is only available at <https://help.smatechnologies.com>.

### OpCon REST API Requires TLS

The OpCon REST API no longer gives an option to run with TLS disabled. A
custom certificate or OpCon generated self-signed certificate will need
to be used.

### Solution Manager Hosted by OpCon REST API

The **SMA OpCon Solution Manager** Windows service no longer exists.
Solution Manager is now hosted by the OpCon REST API and shares its web
server. When installing **SMA OpCon**, the settings **TLS Port Number**
and **Certificate Serial Number** on the *Set RestAPI Options* screen
controls the port and certificate for both Solution Manager and the
OpCon REST API. For upgrades, the port of either Solution Manager or the
OpCon REST API will need to change. The default port is now 443.

### Self Service and Filter Profile Data Migration

Due to the changing of underlying libraries, Regular Expression patterns
and date formats may require manual updates. After upgrading and logging
in as a user in the **Role_ocadm** role, a **Migration** page and menu
item will be available. Refer to [Migrating Data](../Files/UI/Solution-Manager/Migrating-Data.md) in
the **Solution Manager** online help.

### SMAUtility Scripts

The database maintenance scripts called by the SMAUtility schedule are
no longer distributed as files during upgrades, causing existing
schedules to fail. Refer to the [instructions on the Innovation Lab](https://github.com/SMATechnologies/smautility-sql-scripts) for more
details on manually migrating the scripts. The scripts are included as
Embedded Scripts on new database installs.

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What does the Breaking Changes section cover?**

The Breaking Changes section describes changes that require action or introduce new behaviors when installing or upgrading OpCon components (excluding agents/Agents). agent-specific changes are documented in their respective online help.

**Q: What happened to the ImpEx2 web service in Release 20.2?**

ImpEx2 was removed from the Deploy installer and replaced with a standalone SMA OpCon ImpEx2 installer. The version must match the major release version of the OpCon environment it communicates with.

**Q: What happened to database maintenance scripts in upgrades?**

Database maintenance scripts are no longer distributed as files during upgrades. Existing SMAUtility schedules that reference these scripts may fail after upgrading. Scripts are included as Embedded Scripts on new installs. Refer to the Innovation Lab instructions for manual migration guidance.

## Glossary

**TLS (Transport Layer Security)**: An encryption protocol used to secure TCP/IP communications between SMANetCom and agents, ensuring that job start and status data is transmitted safely.

**SMAUtility Schedule**: A pre-built OpCon schedule installed during setup that contains standard maintenance jobs for audit history cleanup, job history cleanup, and BIRT report generation.

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**LSAM (Local Schedule Activity Monitor)**: An agent installed on a target platform that runs jobs in the native language of that platform and communicates results back to SAM via SMANetCom over TCP/IP.

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**Embedded Script**: A script stored and versioned directly within the OpCon database. Embedded scripts can be assigned to Windows jobs and run at runtime without requiring the script file to exist on the target machine.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.
