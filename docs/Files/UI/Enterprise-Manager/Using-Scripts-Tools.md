---
title: Using Script Tools
description: "Reference for the Scripts toolbar buttons in Enterprise Manager and the actions each one performs."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Reference
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-05-29
doc_type: reference
---

# Using Script Tools

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The Scripts tools are the toolbar buttons that appear in the Scripts views and dialogs in Enterprise Manager, such as the Repository Editor and the Versions dialog. The buttons available depend on the current screen and on the item you have selected. Use these buttons to add, edit, and remove scripts; to manage script versions; and to review where a script is used before you change or delete it.

The following table lists the Scripts toolbar buttons and the action each one performs.

| Button | Action |
|--- |--- |
| **Add** | Opens a dialog to add a new item. In the Repository Editor, opens the **Add Script** dialog. |
| **Edit** | Opens a dialog to edit the selected item. In the Repository Editor, opens the **Edit Script** dialog. |
| **Remove** | Deletes the selected item. In the Repository Editor, prompts you to confirm before deleting the selected script. |
| **Show/Create Versions** | In the Repository Editor, opens the **Versions** dialog, which lists existing versions of the selected script and lets you create, edit, view, remove, and deploy versions. |
| **Cross References** | In the Repository Editor, opens a dialog that lists the cross references (jobs and schedules) that use the selected script. Review cross references before you change or delete a script. |
| **Minimize** | Minimizes the editor or view and places a button in the sidebar. |
| **Maximize** | Opens the editor or view to its maximum size. The **Maximize** button changes to a **Restore** button when the view is maximized. |
| **Restore** | Returns the editor or view to its original location and size. |

## FAQs

**Q: Which buttons appear on the Scripts toolbar?**

The buttons that appear depend on the current screen. In the Repository Editor, the toolbar shows **Add**, **Edit**, and **Remove**, followed by **Show/Create Versions** and **Cross References**. The **Show/Create Versions** and **Cross References** buttons are enabled only when a single script is selected.

**Q: Why should you check Cross References before deleting a script?**

The **Cross References** dialog lists the jobs and schedules that use the selected script. If your role does not have privileges to view every referencing record, a warning notes that not all cross references are listed, and the script cannot be deleted until all cross references are cleared.

**Q: Who has access to Script Tools?**

Access to Script Tools is controlled by the privileges assigned to your OpCon role. Contact your system administrator if you need access.

## Related Topics

## Glossary

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**Cross reference**: A link that records where a script is used. Cross references identify the jobs and schedules that reference a script so that you can review the impact before you change or delete it.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.
