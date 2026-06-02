---
sidebar_label: 'Whats New'
title: What's New in Installation
description: "The What's New section provides information related to changes with installing or upgrading all of the OpCon components except the Agents."
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

This section describes changes related to installing or upgrading OpCon components, excluding Agents. For installation information on a specific Agent, refer to the corresponding Agent online help. Changes that require action or introduce new behaviors are documented in the [Breaking Changes](./breaking-changes.md) section.

## Self-Contained .NET Core

SAM, the REST API, and supporting applications included in the **SMA OpCon** installer are now self-contained .NET Core assemblies. .NET Core no longer needs to be installed separately on the OpCon server. Maintenance releases apply patches to the .NET Core version packaged with the programs to keep the software current.

## Chronoman and SMAHoliday Included in SMA OpCon

The applications **Chronoman** and **SMAHoliday** are now included in the SAM folder. Run these applications from the SAM folder instead of from an installed Windows Agent. Both applications are distributed with both installers.

## SMA OpCon ImpEx2 — New Standalone Installer

SMA OpCon ImpEx2 has been separated from the Deploy installer, where it was previously known as the **Server** component. A new standalone installer is now available for the SMA OpCon ImpEx2 service. See the [Breaking Changes](./breaking-changes.md) section for required actions. The installer is included in all future OpCon releases, including maintenance releases for supported versions.

## OpCon Web Installer — Download All Agents

**OpCon Web Installer** (OWI) now supports downloading all Agents, including those that do not have a Windows installer.

## OpCon Web Installer

**OpCon Web Installer** is the preferred option for acquiring OpCon installation media. This application runs on Windows and downloads and runs installers for all OpCon core components, OpCon Deploy, Agents, and core utilities. For more information, see the [GitHub repository](https://github.com/smatechnologies/opcon-web-installer), or download the `OpConWebInstaller.zip` file directly from the [latest release](https://github.com/smatechnologies/opcon-web-installer/releases/latest).

## SMA OpCon Install

Several previous product installers have been consolidated into one. The new installer combines **SMA OpCon Database Scripts**, **SMA OpCon SAM**, and **SMA OpCon Solution Manager** into a single installed program named **SMA OpCon**.

## Online Help

Beginning with release 20.0, web documentation is available at <https://help.smatechnologies.com>. Supported releases for all products that provide web documentation are available, allowing you to review release information before downloading and installing.
