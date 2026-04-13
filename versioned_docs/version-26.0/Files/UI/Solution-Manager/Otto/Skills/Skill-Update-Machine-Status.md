---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Update Machine Status
description: "The Update Machine Status skill updates the status of a machine."
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

# Update Machine Status

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Update Machine Status** skill updates the status of a machine. The status must be one of: `limited`, `up`, `down`.

## Skill Details

### Parameters

- **Action**: Must be one of: `limited`, `up`, `down`
- **Machine Name**: The name of the machine to update

## Example

`Update machine TestMachine to status "up"`

`Please update the status of machine with the name "TestMachine" to the status "up".`

## FAQs

**Q: What does Update Machine Status cover?**

This page covers Skill Details, Example.

## Glossary


**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.
