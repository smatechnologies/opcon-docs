---
title: Configuring the Installation Directory
description: "If you attempt to access External Tools before configuring the installation directory, you will be prompted to configure it."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Configuring the Installation Directory

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

If you attempt to access **External Tools** before configuring the installation directory, you will be prompted to configure it.

To configure the installation directory, complete the following steps:

1. Select the **Yes** button when prompted: *"OpCon installation directory has not been configured, and it is needed to locate the tools. Do you want to configure it now?"* The **External Tools Preferences** dialog displays
2. Enter the *directory* in the **OpCon installation directory** text box, or use the **Browse** button to locate it
3. Select the **Apply** button
4. Select the **OK** button to save and close the **Preferences** dialog

## When Would You Use It?

- You need to adjust settings for the Installation Directory in Enterprise Manager
- Default the Installation Directory settings no longer meet the operational requirements of your environment

## Why Would You Use It?

- **Centralize control**: Managing the Installation Directory settings through Enterprise Manager keeps all configuration changes in one place and makes them auditable
- Settings validated through Enterprise Manager are checked against business rules before saving, reducing the risk of misconfiguration

## FAQs

**Q: What does configuring the installation directory control?**

Configuring the installation directory defines the settings that determine how OpCon behaves for this feature. Review the available options and set values appropriate for your environment.

**Q: How many steps are required to configure the installation directory?**

The configuration procedure involves 4 steps. Complete all steps in order and select **Save** to apply the changes.

## Glossary


**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.
