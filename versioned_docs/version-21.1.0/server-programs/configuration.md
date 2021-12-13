---
sidebar_label: 'Basic Configuration'
---

# Basic OpCon Server Configuration

The basic OpCon Server configuration includes a single machine, a single database, and a StandAlone SMAServMan.

Basic SMA Service Manager Configuration

![Basic SMA Service Manager Configuration](../Resources/Images/Server-Programs/basicservmanconfig.png "Basic SMA Service Manager Configuration")

## Configuration

In the basic configuration for the SAM application server, the StandAlone SMAServMan manages the SAM and all of the supporting services. This configuration scenario employs scripts invoking the SMALogEvent utility for notification. For additional information, refer to [SMALogEvent](../utilities/Command-line-Utilities/SMALogEvent.md) in the **Utilities** online help.

|SMAServMan.ini Setting|Value|
|--- |--- |
|Mode|StandAlone|
|InitializationScript|*Initialization Script*|
|TerminationScript|*Termination Event Script*|

|SMA Connection Configuration Setting|Value|
|--- |--- |
|Server\Instance Name|Name of the Server|
|Database Name|OpConxps|
|Database Login ID|Opconsam|
|Password|OpConxps|

## Process Flows

Based on the above configuration values, the following process flows indicate SMAServMan's expected behavior.

### Good Startup

The next table presents the general steps for the normal initiation of the SAM-SS.

|Step|Description|
|--- |--- |
|1|Primary SMAServMan starts Primary SAM-SS|
|2|Primary SAM-SS connects to Primary Database|
|3|Normal process flow|

### Critical Application Failure during Processing

The next table presents the general steps the SMAServMan takes after a successful startup of the SAM-SS.

|Step|Description|
|--- |--- |
|1|Normal Process Flow on StandAlone SMAServMan|
|2|Critical application fails on StandAlone Machine one time more than the RestartApplicationLimit|
|3|StandAlone SMAServMan shuts down SAM-SS|
|4|StandAlone SMAServMan executes the TerminationScript. In this example, the script writes an event to the Windows Event Log notifying the administrator that the SAM-SS is shutting down.|
|5|StandAlone SMAServMan shuts itself down.|
