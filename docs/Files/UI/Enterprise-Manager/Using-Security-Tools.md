---
title: Using Security Tools
description: "Reference for the toolbar buttons available in the Enterprise Manager Security editors."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Reference
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: reference
---

# Using Security Tools

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The Security tools are the toolbar buttons available in the Enterprise Manager Security editors, such as the Role, User, and Function Privileges editors. Use these buttons to add, save, copy, and remove security records, review audit history, and control the editor window. The buttons that appear depend on the editor that is currently open.

## Security tools

The following buttons are available, depending on the current editor:

| Button | Shortcut | Description |
| --- | --- | --- |
| **Add** | Ctrl+N | Adds a new record to the editor. |
| **Remove** | Ctrl+D | Deletes the selected record from the editor. |
| **Save** | Ctrl+S | Saves the changes in the editor. |
| **Cancel** | Ctrl+R | Cancels the unsaved changes in the editor. |
| **Cross References** | — | Displays cross reference details for the schedule's dependent master jobs. |
| **Copy** | — | Copies the selected record. |
| **View Audit** | — | Opens the **Audit Management** dialog to view the audit record for the selected user. |
| **Minimize** | — | Minimizes the editor and places an icon in the sidebar. |
| **Maximize** | — | Opens the editor to its maximum size. The **Maximize** button changes to a **Restore** button when the editor is maximized. |
| **Restore** | — | Returns the editor to its original location and size. |

<!-- GAP: Keyboard shortcuts (Ctrl+N, Ctrl+D, Ctrl+S, Ctrl+R) carried over from the prior page; not located in Enterprise Manager source message bundles or command-binding files. Needs SME/source confirmation. -->

## FAQs

**Q: What can you do with the Security tools?**

The Security tools let you manage the records in a Security editor — adding, saving, copying, and removing records — and review the audit history for a selected user.

**Q: Who has access to the Security tools?**

Access to the Security editors is controlled by the privileges assigned to your OpCon role. Contact your system administrator if you need access.

## Glossary

**Audit Record**: An automatically created log entry recording every change made to an OpCon object. Each record captures the timestamp, the user or application that made the change, the item affected, and the original and final values.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.
