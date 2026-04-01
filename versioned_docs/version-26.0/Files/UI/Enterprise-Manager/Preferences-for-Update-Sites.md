---
title: Setting Preferences for Update Sites
description: "The Enterprise Manager can automatically check for updates."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: conceptual
---

# Setting Preferences for Update Sites

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The Enterprise Manager can automatically check for updates. The OpCon administrator should define the update site(s) allowed for the environment. EM supports update sites through an HTTP site, FTP site, or a local network directory.

:::caution
If using a local directory, do not place the Update directory inside the directory structure of an EM that will be updated. Continuous recommends a path such as **C:\EM Updates\\** on the SAM server. The repository will exist inside this directory after extraction from the zip file provided by Continuous.
:::

When the administrator receives a new version, they can update the repository locations to distribute it to all EM installations. If database updates are also required, update the database before updating the EM repository.

:::note
On some Windows 7 machines and Windows Servers, automatic updates may fail due to insufficient privileges. If this occurs, modify the **EnterpriseManager** folder to grant **Full Control** to **Creator Owner**, **Users**, and **LogonUser**.
:::

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Updating the Repository for Update Sites](Updating-the-Repository-for-Update-Sites.md)
- [Managing Update Sites](Managing-Update-Sites.md)

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What does setting preferences for update sites configure?**

Setting preferences for update sites defines the preferences or options that control how this feature behaves in OpCon.

## Glossary

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
