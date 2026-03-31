---
title: User Inputs Overview
description: "User inputs allow Self Service requests to accept values from the end user at runtime."
product_area: Solution Manager
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

**Theme:** Overview | **Who is it for?** Administrators who configure input fields on Self Service requests

## What Is It?

User inputs allow Self Service requests to accept values from the end user at runtime. The input value is passed as a property into the triggered OpCon workflow. Supported input types: text, number, date, choice list, master job selector, master schedule selector, and text collection.

## Configuration Options

## When would you use this section?

- Creating a service request that requires a user-provided date, filename, or other parameter
- Configuring a choice list that limits users to approved values
- Linking a user input to a specific master job or schedule
- Setting up a text collection input for multi-value scenarios

## What is in this section?

| Page | Description |
|------|-------------|
| Set Up User Inputs | How to add input fields to a service request |
| Configure Master Job User Inputs | Link an input to a master job selection |
| Configure Master Schedule User Inputs | Link an input to a master schedule selection |
| Configure Text User Inputs | Free-text input field configuration |
| Configure Number User Inputs | Numeric input with optional min/max constraints |
| Configure Choice User Inputs | list with predefined options |
| Configure Date User Inputs | Date picker input field |
| Configure Text Collection User Inputs | Multi-value text input for lists of entries |
## Glossary

| Term | Definition |
| --- | --- |
| Job | A task or activity defined in OpCon, such as running a program on a remote machine, transferring files, or running a sub-schedule. |
| Master Schedule | The template definition of a schedule stored in OpCon's master tables. Changes to the master affect all future builds but not already-built daily schedules. |
| Property | A name-value pair stored in OpCon. Properties can be referenced in job definitions using token syntax to pass dynamic values at runtime. |
| Role | A named collection of privileges that can be assigned to one or more user accounts. Users in a role inherit all of that role's privileges. |
| Schedule | A named group of jobs in OpCon that represents a business process. Schedules are built each day based on their defined frequencies and calendars. |
| Self Service | A Solution Manager module that allows non-technical users to trigger OpCon jobs and workflows through a simplified, button-based interface. |
| Solution Manager (SM) | The browser-based web interface for OpCon. Provides access to operations, self-service, vision dashboards, and configuration. |

## FAQs

**Q: What does the User Inputs Overview cover?**

User inputs allow Self Service requests to accept values from the end user at runtime. The input value is passed as a property into the triggered OpCon workflow. Supported input types: text, number, date, choice list, master job selector, master schedule selector, and text collection.

**Q: Who manages Solution Manager - Self Service in OpCon?**

Administrators manage Solution Manager - Self Service, including settings, user access, and monitoring.

**Q: Where should I start in the Solution Manager - Self Service section?**

Review the overview pages in the sidebar. If you are new to this area, confirm access and role requirements with your OpCon system administrator before making changes.
