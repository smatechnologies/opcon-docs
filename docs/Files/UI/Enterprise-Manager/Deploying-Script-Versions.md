---
title: Deploying Script Versions
description: "The Deploy Version feature deploys a specific script version to all or a subset of Master jobs already associated with that script."
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

# Deploying Script Versions

**Theme:** Build  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The Deploy Version feature deploys a specific script version to all or a subset of Master jobs already associated with that script. For example, if "Version 3" is associated with ten jobs across ten schedules, the deployment wizard can replace it with "Version 7" across all those jobs at once.

To deploy a script version, complete the following steps:

1. Select on **Repository** under the **Scripts** topic
2. Select a **script** in the list
3. Select the **Show/Create Versions** button on the toolbar
4. Select the **script version** to deploy
5. Select the **Deploy** button. The **Deploy Version** dialog displays
6. (Optional) Enter a schedule or job name to filter the list of available jobs
7. Select the jobs to redeploy the script version to
8. Select the **Deploy** button in the **Deploy Version** dialog
9. Select **Yes** to confirm the deployment
10. Select **Yes** again to redeploy to additional jobs and repeat Steps 6–8, or select **No** to proceed
11. Select the **Close** button in the **Versions** dialog
12. Select **Close ☒** to close the **Script Repository** screen

## FAQs

**Q: How many steps does the Deploying Script Versions procedure involve?**

The Deploying Script Versions procedure involves 12 steps. Complete all steps in order and save your changes.

## Glossary

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
