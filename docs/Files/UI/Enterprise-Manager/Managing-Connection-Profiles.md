---
title: Managing Connection Profiles
description: "Connection profiles store the database name, authentication credentials, and optional display color that Enterprise Manager uses to connect to an OpCon database."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: conceptual
---

# Managing Connection Profiles

A connection profile stores the information Enterprise Manager needs to connect to an OpCon database: the SQL server name or IP address, the database name, authentication credentials, an optional connection timeout, and an optional background color. You must define at least one profile before Enterprise Manager can connect to OpCon.

You can assign a background color to a profile to visually distinguish between databases — for example, to differentiate a production environment from a test environment.

![Color-coded Navigational Views](../../../Resources/Images/EM/EMprofilepics.png "Color-coded Navigational Views")

Connection profiles are stored locally in Enterprise Manager preferences and are not shared across workstations.

## Profile management tasks

Use the **Connection Profiles** settings page under **EnterpriseManager > Preferences** to manage profiles. The following tasks are available:

- [Setting up New Profiles](Setting-up-New-Profiles.md)
- [Editing Profiles](Editing-Profiles.md)
- [Copying Profiles](Copying-Profiles.md)
- [Deleting Profiles](Deleting-Profiles.md)
