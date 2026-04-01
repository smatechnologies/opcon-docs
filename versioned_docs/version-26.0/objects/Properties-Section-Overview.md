---
title: Properties Section Overview
description: "Properties are named variables referenced anywhere a token is accepted in OpCon — job parameters, event strings, file paths, and more."
product_area: Core Concepts
audience: Automation Engineer, Application Owner
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - Automation Engineer
  - Application Owner
  - Getting Started
last_updated: 2026-03-18
doc_type: conceptual
---

**Theme:** Overview | **Who is it for?** Automation engineers who use properties and tokens to build flexible, reusable automation

## What Is It?

Properties are named variables referenced anywhere a token is accepted in OpCon — job parameters, event strings, file paths, and more. System properties are built in and updated automatically. Global properties are user-defined and available system-wide. Instance properties are scoped to a specific schedule or job instance.

## Configuration Options

## When would you use this section?

- Use a date, machine name, or other dynamic value in a job command line
- Define a reusable global property shared across many jobs
- Build multi-instance schedules that pass different values to each instance
- Use property expressions to compute or transform values at runtime

## What is in this section?

| Page | Description |
|------|-------------|
| Properties | Overview of property types — system, global, schedule instance, job instance |
| Using Properties | How to reference properties as tokens in job definitions and events |
| Defining Properties | How to create and manage global and instance properties |
| Property Expressions | Using expressions to compute values from multiple properties |
## Glossary

| Term | Definition |
| --- | --- |
| Event (OpCon Event) | A command string that OpCon runs when a defined condition is met, such as a job finishing, a threshold being updated, or a schedule completing. |
| Global Property | A property defined at the OpCon system level, accessible by any job or schedule. Used to store reusable values such as paths, server names, or credentials. |
| Job | A task or activity defined in OpCon, such as running a program on a remote machine, transferring files, or running a sub-schedule. |
| Machine (Agent) | An execution target for OpCon jobs. Each machine runs an agent that communicates with the OpCon server and runs submitted jobs. |
| Property | A name-value pair stored in OpCon. Properties can be referenced in job definitions using token syntax to pass dynamic values at runtime. |
| Role | A named collection of privileges assigned to one or more user accounts. Users in a role inherit all of that role's privileges. |
| Schedule | A named group of jobs in OpCon representing a business process. Schedules are built each day based on their defined frequencies and calendars. |
| Token | A reference to a property value using the `[[ ]]` syntax. The SAM replaces tokens with their runtime values when processing jobs. |

## FAQs

**Q: What is covered in the Properties section?**

Properties are named variables referenced anywhere a token is accepted — job parameters, event strings, file paths, and more. System properties are built in; global properties are user-defined system-wide; instance properties are scoped to a specific schedule or job.

**Q: Who manages Objects in OpCon?**

Automation engineers and administrators manage Objects, including configuring settings, managing user access, and monitoring related components.

**Q: Where should I start in the Objects section?**

Begin with the overview pages in the sidebar. If you are new to this area, review access and role requirements with your OpCon system administrator before making configuration changes.
