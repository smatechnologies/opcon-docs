---
sidebar_label: 'Whats New'
---

# What's New in Installation

The **What's New** section provides information related to changes with
installing or upgrading all of the OpCon
components except the LSAMs (also referred to as Agents). For
installation information on a specific LSAM, refer to the corresponding
LSAM online help. Any changes requiring actions or changed behaviors
will be noted in the [Breaking Changes](./breaking-changes.md) section.

## Release 20.2

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

## Release 20.1

### OpCon Web Installer - Download All Agents

**OpCon Web Installer** (OWI) now has the ability to download all
agents, including those that do not have a Windows installer.

## Release 20.0

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
