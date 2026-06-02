---
title: Setting Preferences for Update Sites
description: "Enterprise Manager can automatically check for updates. Learn how update sites work and what to configure before managing them."
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

# Setting Preferences for Update Sites

Enterprise Manager can automatically check for updates. An OpCon administrator defines the update sites allowed for the environment. Enterprise Manager supports update sites through an HTTP site, an FTP site, or a local network directory.

:::caution
If you use a local directory, do not place the Update directory inside the directory structure of an Enterprise Manager installation that will be updated. Continuous recommends a path such as `C:\EM Updates\` on the SAM server. The repository exists inside this directory after you extract it from the zip file provided by Continuous.
:::

When an administrator receives a new version, they update the repository locations to distribute it to all Enterprise Manager installations. If database updates are also required, update the database before updating the Enterprise Manager repository.

:::note
On some Windows 7 machines and Windows Servers, automatic updates may fail due to insufficient privileges. If this occurs, modify the **EnterpriseManager** folder to grant **Full Control** to **Creator Owner**, **Users**, and **LogonUser**.
:::

## Related topics

- [Updating the Repository for Update Sites](Updating-the-Repository-for-Update-Sites.md)
- [Managing Update Sites](Managing-Update-Sites.md)
