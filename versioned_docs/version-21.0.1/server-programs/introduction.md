# Introduction

The SAM and supporting services (SAM-SS) are the central components of OpCon.

OpCon SAM and Supporting Services

![SAM and Supporting Services](../Resources/Images/Server-Programs/sam&supportingsrvs.png "SAM and Supporting Services")

The components include:

|Component Name|Description|
|--- |--- |
|SMA Service Manager (SMAServMan)|A service responsible for the startup, shutdown, and failover of the SAM-SS.|
|Schedule Activity Monitor (SAM)|A background process communicating with the database to manage job submissions and process OpCon events.|
|SMA Network Communications Module (SMANetCom)|A background process communicating with the database and with all LSAMs to send and receive job information and other communications.|
|SMA Notify Handler|A background process communicating with the database to send notifications from OpCon Events or from the ENS Manager.|
|SMA Request Router|A background process responsible for routing requests between the OpCon database and the various Request Handlers.|
|SMA Start Time Calculator|A background process responsible for periodically recalculating start times for jobs in the OpCon Daily tables.|
|Optional Components|Additional optional components installed with the SAM that may be configured at any time.|
