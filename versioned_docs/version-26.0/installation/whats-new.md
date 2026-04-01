---
sidebar_label: 'Whats New'
title: What's New in Installation
description: "The What's New section provides information related to changes with installing or upgrading all of the OpCon components except the agents (also referred to as Agents)."
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

# What's New in Installation

**Theme:** Configure  
**Who Is It For?** System Administrator

## What Is It?

The **What's New** section provides information related to changes with
installing or upgrading all of the OpCon
components except the agents (also referred to as Agents). For
installation information on a specific agent, refer to the corresponding
agent online help. Any changes requiring actions or changed behaviors
will be noted in the [Breaking Changes](./breaking-changes.md) section.

### Self-Contained .NET Core

SAM, the REST API, and supporting applications included in the **SMA
OpCon** install are now self-contained .NET Core assemblies. .NET Core
is no longer required to be installed on the OpCon server. Maintenance
releases will apply patches to the .NET Core version the programs are
packaged with to keep the software up to date.

### Chronoman and SMAHoliday - Included in SMA OpCon

The applications **Chronoman** and **SMAHoliday** are now included in
the SAM folder. Moving forward these applications should be run from the
SAM folder instead of from an installed Windows LSAM. The applications
are distributed with both installers.

### SMA OpCon ImpEx2 - New Installer

SMA OpCon ImpEx2 has been split from the Deploy install, where it was
known as the **Server** component. A new stand-alone installer has been
created for the SMA OpCon ImpEx2 service. Please read the Breaking
Changes for more information. The installer will be included in all
future OpCon releases, including maintenance releases for supported
versions.

### OpCon Web Installer - Download All Agents

**OpCon Web Installer** (OWI) now can download all
agents, including those that do not have a Windows installer.

### OpCon Web Installer

There is a new preferred option for acquiring the OpCon installation
media, **OpCon Web Installer**. This new application works on Windows
machines to download and run installers all OpCon core components, OpCon
Deploy, Agents, and core utilities. Read more about it at the [Github repository](https://github.com/smatechnologies/opcon-web-installer), or
download the OpConWebInstaller.zip file directly
[here](./(<https://github.com/smatechnologies/opcon-web-installer/releases/latest>).

### SMA OpCon Install

Several previous products installers have been consolidated into one.
The new installer combines the *SMA OpCon Database Scripts*, *SMA OpCon
SAM*, and *SMA OpCon Solution Manager* into a single installed program
named **SMA OpCon**.

### Online Help

Beginning with release 20.0, web documentation is now available on
<https://help.smatechnologies.com>! Supported releases for all products
that provide web documentation will be available, allowing you to read
about releases before downloading and installing them.

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What does the What's New section cover?**

The What's New section describes changes related to installing or upgrading OpCon components (excluding agents/Agents). Changes requiring action or introducing new behaviors are also documented in the Breaking Changes section.

**Q: Is .NET Core still required to be installed separately on the OpCon server?**

No. Beginning with the current release, SAM, the REST API, and supporting applications are self-contained .NET Core assemblies. .NET Core no longer needs to be installed separately on the OpCon server.

**Q: Where should Chronoman and SMAHoliday be run from?**

Beginning with the current release, Chronoman and SMAHoliday are included in the SAM folder. They should now be run from the SAM folder rather than from an installed Windows LSAM.

## Glossary

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**LSAM (Local Schedule Activity Monitor)**: An agent installed on a target platform that runs jobs in the native language of that platform and communicates results back to SAM via SMANetCom over TCP/IP.

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
