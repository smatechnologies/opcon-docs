---
sidebar_label: 'Mirroring Checklist'
title: Database Mirroring Checklist
description: "The Continuous SQL scripts for mirroring the OpCon database use scripting variables defined in SMA_SetDBMirroringScriptingVariables.cmd."
product_area: Database Administration
audience: System Administrator
version_introduced: "[see release notes]"
tags:
  - Reference
  - System Administrator
  - System Configuration
last_updated: 2026-03-18
doc_type: reference
---

# Database Mirroring Checklist

**Theme:** Configure  
**Who Is It For?** System Administrator

## What Is It?

The Continuous SQL scripts for mirroring the OpCon database use scripting variables defined in `SMA_SetDBMirroringScriptingVariables.cmd`. Installed with SAM-SS, this script is in `<Configuration Directory>\Utilities\Database\`. For variable details, see [Mirroring Tab](../../utilities/Graphical-Utilities/SMA-OpCon-Configuration-Utility.md#Mirrorin) in the **SMA OpCon Configuration Utility** help.

:::note
The Configuration Directory location depends on your installation path. See [File Locations](../../file-locations.md) in the **Concepts** online help.
:::

## Mirroring Information Worksheet

Before configuring mirroring in [Setup for Automatic Microsoft SQL Mirroring](Setup-for-Automatic-Microsoft-SQL-Mirroring.md), fill in the values below.

|Scripting Variable|Value|
|--- |--- |
|PrincipalServerName||
|PrincipalEndpointPort||
|FullyQualifiedPrincipalComputerName||
|LoginForPrincipalService||
|PrincipalSQLInstance||
|FullBackupShareOnMirror||
|TranLogBackupShareOnMirror||
|MirrorServerName||
|MirrorEndpointPort||
|FullyQualifiedMirrorComputerName||
|LoginForMirrorService||
|MirrorSQLInstance||
|WitnessServerName||
|WitnessEndpointPort||
|FullyQualifiedWitnessComputerName||
|LoginForWitnessService||
|WitnessSQLInstance||
|DatabaseName||
|PathToFullBackupFile||
|PathToTranLogBackupFile||
|FullBackupFilename||
|TranLogBackupFilename||
|DBMirroringScriptsDirectory||
|SQLScriptOutputDirectory||
|DBMirroringMonitorUpdatePeriod||

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What does Database Mirroring Checklist cover?**

This page covers Mirroring Information Worksheet.

## Glossary

**SAM-SS (SAM and Supporting Services)**: The collective term for the OpCon server-side processing programs: SAM, SMANetCom, SMA Notify Handler, SMA Request Router, and SMA Start Time Calculator.

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
