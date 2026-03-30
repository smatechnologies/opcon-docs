---
sidebar_label: 'Replication Checklist'
title: Database Replication Checklist
description: "The Continuous SQL scripts for replicating the OpCon database use scripting variables defined in SMA_SetDBReplicationScriptingVariables.cmd."
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

# Database Replication Checklist

**Theme:** Configure  
**Who Is It For?** System Administrator

## What Is It?

The Continuous SQL scripts for replicating the OpCon database use scripting variables defined in `SMA_SetDBReplicationScriptingVariables.cmd`. Installed with SAM-SS, this script is in `<Configuration Directory>\Utilities\Database\`. For variable details, see [Replication Tab](../../utilities/Graphical-Utilities/SMA-OpCon-Configuration-Utility.md#Replicat) in the **SMA OpCon Configuration Utility** help.

:::note
The Configuration Directory location depends on your installation path. See [File Locations](../../file-locations.md) in the **Concepts** online help.
:::

## When Would You Use It?

- The Continuous SQL scripts for replicating the OpCon database use scripting variables defined in `SMA_SetDBReplicationScriptingVariables.cmd`

## Why Would You Use It?

- **Database Replication**: The Continuous SQL scripts for replicating the OpCon database use scripting variables defined in `SMA_SetDBReplicationScriptingVariables.cmd`

## Replication Information Worksheet

Before configuring replication in [Setup for Automatic Microsoft SQL Replication](Setup-for-Automatic-Microsoft-SQL-Replication.md), fill in the values below.

|Scripting Variable|Value|
|--- |--- |
|DistributorServerName||
|DistributorSQLInstance||
|LoginForDistributorService||
|REPLDATAFolder||
|PathToDistributionDataFile||
|PathToDistributionLogFile||
|PublisherServerName||
|PublisherSQLInstance||
|LoginForPublisherService||
|PublicationDatabaseName||
|PublicationName||
|SubscriberServerName||
|SubscriberSQLInstance||
|LoginForSubscriberService||
|SubscriptionDatabaseName||
|OpConxpsServerName||
|DBReplicationScriptsDirectory||
|SQLScriptOutputDirectory||
|RunSnapshotAgentAs||
|RunLogReaderAgentAs||
|RunDistributionAgentAs||
|DomainUser||
|ReplicationProxyKey||
|DistributorKey||
|SubscriptionType||
  
## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What does Database Replication Checklist cover?**

This page covers Replication Information Worksheet.

## Glossary

**SAM-SS (SAM and Supporting Services)**: The collective term for the OpCon server-side processing programs: SAM, SMANetCom, SMA Notify Handler, SMA Request Router, and SMA Start Time Calculator.

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
