---
sidebar_label: 'Replication Checklist'
---

# Database Replication Checklist

The SQL scripts provided by SMA Technologies for replicating the OpCon database require several scripting variables to execute successfully. The following sections describe these SQL scripting variables as defined within the SMA_SetDBReplicationScriptingVariables.cmd file. Installed with the SAM and supporting services (SAM-SS), the script is in the <Configuration Directory\>\\Utilities\\Database\\ directory. For information on variables, refer to [Replication Tab](../../utilities/Graphical-Utilities/SMA-OpCon-Configuration-Utility.md#Replicat) under the **SMA OpCon Configuration Utility** section in the **Utilities** online help.

:::note
The Configuration Directory location is based on where you installed your programs. For more information, refer to [File Locations](../../file-locations.md) in the **Concepts** online help.
:::

## Replication Information Worksheet

Before configuring mirroring in [Setup for Automatic Microsoft SQL Replication](Setup-for-Automatic-Microsoft-SQL-Replication.md), print the form below and fill in the values.

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
  