---
title: Updating the Repository for Update Sites
description: "Use this procedure to update the Repository for Update Sites in the Enterprise Manager."
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

# Updating the Repository for Update Sites

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to update the Repository for Update Sites in the Enterprise Manager.

To update the repository, complete the following steps:

1. Log on to a machine *as a user with access to the EM Update Site(s)*
2. Delete the old repository(s)
3. Browse to the *Enterprise Manager Updates* directory on the OpCon Installation media
4. Select the **repository.zip** file
5. Extract the zip file to the repository location(s), choosing the **Use folder names** option

## When Would You Use It?

- An existing the Repository for Update Sites in Enterprise Manager requires changes
- A process change or system update makes the current the Repository for Update Sites definition outdated

## Why Would You Use It?

- **Keep definitions current**: Updating the Repository for Update Sites in Enterprise Manager ensures changes apply to future builds without disrupting currently running schedules

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: How many steps does the Updating the Repository for Update Sites procedure involve?**

The Updating the Repository for Update Sites procedure involves 5 steps. Complete all steps in order and save your changes.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
