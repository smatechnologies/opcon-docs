---
sidebar_label: 'Mirroring Checklist'
---

# Database Mirroring Checklist

The SQL scripts provided by SMA Technologies for mirroring the OpCon database require several scripting variables to execute successfully. The following sections describe these SQL scripting variables as defined within the SMA_SetDBMirroringScriptingVariables.cmd file. Installed with the SAM
and supporting services (SAM-SS), the script is in the <Configuration Directory\>\\Utilities\\Database\\ directory. For information on variables, refer to [Mirroring Tab](../../utilities/Graphical-Utilities/SMA-OpCon-Configuration-Utility.md#Mirrorin) under the **SMA OpCon Configuration Utility** section in the **Utilities** online help.

:::note
The Configuration Directory location is based on where you installed your programs. For more information, refer to [File Locations](../../file-locations.md) in the **Concepts** online help.
:::

## Mirroring Information Worksheet

Before configuring mirroring in [Setup for Automatic Microsoft SQL Mirroring](Setup-for-Automatic-Microsoft-SQL-Mirroring.md), print the form below and fill in the values.

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
