---
title: Defining Global Properties
description: "The Global Properties editor defines and maintains the named values, or Global Properties, that OpCon stores in its database and reuses across jobs, schedules, and events."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-05-29
doc_type: conceptual
---

# Defining Global Properties

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Global Properties** editor defines and maintains the named values, called Global Properties, that OpCon stores in its database. A Global Property holds a value once and makes it available to every job, schedule, and event that references it, so you can change the value in one place instead of editing each definition.

You reference a Global Property by its name using the `[[PropertyName]]` syntax. When a job or event runs, OpCon replaces the reference with the property's current value. This lets you pass dynamic values, such as dates, file paths, or counts, into your automation without hard-coding them.

You open the **Global Properties** editor from the **Administration** topic in Enterprise Manager.

## How It Works

Each Global Property has a name and a value, along with optional documentation and an encryption setting. The editor provides a selection field labeled **Select Global Property** that lists the existing properties so you can choose one to view or edit.

The editor exposes the following fields for the selected property:

| Field | Description |
|---|---|
| **Name** | The unique name used to reference the property with the `[[PropertyName]]` syntax. A name can be up to 64 characters. |
| **Documentation** | Optional notes describing the property's purpose. Documentation can be up to 4,000 characters. |
| **Value** | The value OpCon substitutes wherever the property is referenced. A value can be up to 4,000 characters. |
| **Encrypted** | An option that stores the value in encrypted form in the OpCon database. |

When you select the **Encrypted** option, the **Value** field masks the value. Use the **Reveal Value** button to display the value you have entered, and **Hide Value** to mask it again.

## Global Properties Toolbar

The **Global Properties** editor has a toolbar for managing properties. The toolbar provides actions to add a new property, save changes, copy the selected property, and view its audit history.

![Global Properties toolbar](../../../Resources/Images/EM/EMglobalpropertytoolbar.png "Global Properties toolbar")

![White \"person reading\" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Managing Global Properties](Managing-Global-Properties.md)
- [Adding Global Properties](Adding-Global-Properties.md)
- [Editing Global Properties](Editing-Global-Properties.md)
- [Copying Global Properties](Copying-Global-Properties.md)
- [Deleting Global Properties](Deleting-Global-Properties.md)
- [Adding User-defined System Properties](Adding-System-Properties.md)

## FAQs

**Q: What is the purpose of defining Global Properties?**

Defining a Global Property stores a value once in the OpCon database so that jobs, schedules, and events can reference it by name with the `[[PropertyName]]` syntax. When you update the property, every definition that references it uses the new value.

**Q: How do I protect a sensitive value?**

Select the **Encrypted** option when you define the property. OpCon stores the value in encrypted form, and the **Value** field masks it in the editor. Use the **Reveal Value** button to display the value you entered.

## Glossary

**Global Property**: A named value stored in the OpCon database, referenced in job definitions and events using the `[[PropertyName]]` syntax. Global Properties pass dynamic values, such as dates, file paths, or counts, into automation.

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.
