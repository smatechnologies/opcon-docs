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
  - Self Service
last_updated: 2026-03-18
doc_type: conceptual
---
# User Inputs Overview


## Overview

User inputs allow Self Service requests to accept values from the end user at runtime. When a variable is defined within an OpCon Event definition, it becomes available as a user input. When a user selects the service request button, any configured user input fields display so the user can supply a value. The system inserts that value into the event before SAM receives it.

By default, a new variable is set to the **Text** type with no validation, allowing users to enter any value.

OpCon supports the following user input types:

| Input type | Description |
|---|---|
| **Text** | Free-text field with optional minimum/maximum character limits, invalid character rules, padding, secret masking, and regular expression validation. |
| **Number** | Numeric field with optional minimum and maximum value constraints. |
| **Date** | Date picker with optional start date, end date, and format pattern. |
| **Choice** | Predefined list of caption-and-value pairs; the user selects one option. |
| **Master Job** | List of Master Jobs to which the logged-in user has privileges. |
| **Master Schedule** | List of Master Schedules to which the logged-in user has privileges. |
| **Text Collection** | Multi-value text field with a configurable delimiter, optional duplicate restriction, and character validation. |

You can reorder user inputs using the up and down arrows in the **User Inputs** list. The order shown is the order the fields display to users when they run the service request.

## In this section

| Page | Description |
|---|---|
| [Setting up User Inputs](Setting-up-User-Inputs.md) | Add user input fields to a service request and reorder them. |
| [Configuring Text User Inputs](Configuring-Text-User-Inputs.md) | Configure a free-text input field with validation rules. |
| [Configuring Number User Inputs](Configuring-Number-User-Inputs.md) | Configure a numeric input with optional minimum and maximum constraints. |
| [Configuring Date User Inputs](Configuring-Date-User-Inputs.md) | Configure a date picker input with optional date range and format. |
| [Configuring Choice User Inputs](Configuring-Choice-User-Inputs.md) | Configure a predefined list of selectable options. |
| [Configuring Master Job User Inputs](Configuring-Master-Job-User-Inputs.md) | Link an input to a list of Master Jobs the user has privileges to select. |
| [Configuring Master Schedule User Inputs](Configuring-Master-Schedule-User-Inputs.md) | Link an input to a list of Master Schedules the user has privileges to select. |
| [Configuring Text Collection User Inputs](Configuring-Text-Collection-User-Inputs.md) | Configure a multi-value text input with delimiter and duplication settings. |

## Glossary

| Term | Definition |
|---|---|
| **OpCon Event** | A command sent to OpCon that triggers an automated action, such as adding a job to a schedule, updating a property value, or changing a job or schedule status. |
| **Property** | A name-value pair stored in OpCon. Properties can be referenced in job definitions using token syntax to pass dynamic values at runtime. |
| **SAM (Schedule Activity Monitor)** | The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands, and processes OpCon events. |
| **Self Service** | A Solution Manager module that allows non-technical users to trigger OpCon automation workflows through a simplified, button-based interface. |
| **Service Request** | A Self Service button that encapsulates one or more OpCon events. Administrators define the events; end users run the request without needing direct access to schedule definitions. |
