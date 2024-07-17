---
lang: en-us
title: Otto Skill - Update Machine Status
viewport: width=device-width, initial-scale=1.0
---

# Overview

The **Update Machine Status** skill allows you to perform an action to update the status of a machine. The machine status must be one of: `limited`, `up`, `down`.

## Skill Details

- **Skill Name**: `update-machine-status`

### Parameters

The **Update Machine Status** skill requires the following parameters:

- **Action** _(string)_: The action to update machine status - must be one of: `limited`, `up`, `down`.
- **Machine Name** _(string)_: The name of the updated machine.

## Example

`Update machine TestMachine to status "up"`

`Please update the status of machine with the name "TestMachine" to the status "up".`
