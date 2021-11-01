---
sidebar_label: 'Breaking Changes'
---

# Breaking Changes in Installation

The **Breaking Changes** section provides information on changes
requiring action or new behaviors when installing or upgrading all of
the OpCon components except the LSAMs (also
referred to as Agents). For installation information on a specific LSAM,
refer to the corresponding LSAM online help.

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
OpCon**, and the launch of our online help site,
<https://help.smatechnologies.com>, several product installers have been
retired. The following are no longer distributed as part of OpCon and
should be uninstalled prior to upgrade:

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
