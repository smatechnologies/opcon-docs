---
title: Migrating Data
description: "Users who upgraded from an earlier release of OpCon to OpCon 20.00.00 or higher may need to migrate their data before accessing the system."
product_area: Solution Manager
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

# Migrating Data

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Users who upgraded from an earlier release of OpCon to OpCon 20.00.00 or higher may need to migrate their data before accessing the system.

:::note
Data migration must be performed by users in the ocadm role.
:::

To perform data migration, complete the following steps:

1. Log into the Solution Manager. If the **Migration** page is already displayed, proceed to Step 3
2. Select the **Migration** button in the **Navigation** menu
3. Complete the form with valid input for Service Request Date Patterns, Service Request Regular Expression Patterns, and/or Filter Profiles. You can import the settings as well
4. Select the **Migrate** button to initiate migration. When migration completes, proceed to Step 5
5. Select the **Finish Migration** button

:::note
During migration, you can export migration settings for future use and/or download a full report.
:::

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: How many steps does the Migrating Data procedure involve?**

The Migrating Data procedure involves 5 steps. Complete all steps in order and save your changes.

## Glossary

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**Service Request**: A Solution Manager feature that lets operators trigger predefined automation workflows using a simple form. Service Requests encapsulate schedule builds, job submissions, or events without requiring direct access to schedule definitions.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
