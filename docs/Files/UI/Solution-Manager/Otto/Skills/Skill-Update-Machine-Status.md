---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Update Machine Status
description: "The Update Machine Status skill is an Otto chat skill that sets the communication status of an Agent to up, down, or limited."
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

The **Update Machine Status** skill is an Otto chat skill that sets the communication status of a Machine. You request the change in natural language, and Otto identifies the Machine and applies the specified status.

The status must be one of the following values:

- `up` — Enables full communication with the Machine.
- `limited` — Enables limited communication with the Machine.
- `down` — Disables communication with the Machine.

## Required Privileges

To use the Update Machine Status skill, your role must have the **Maintain Machines** privilege.

If the named Machine does not exist or you do not have permission to act on it, Otto returns an error and no change is made.

## Skill Details

### Parameters

Both parameters are required.

| Parameter | Description |
|---|---|
| **Machine Name** | The name of the Machine to update. |
| **Action** | The target status. Must be one of: `up`, `limited`, `down`. |

## Example

```
Update machine TestMachine to status "up"
```

```
Please update the status of machine with the name "TestMachine" to the status "up".
```

## FAQs

**Q: What are the valid status values?**

The valid values are `up`, `limited`, and `down`. Any other value returns an error.

**Q: What happens if the Machine cannot be found?**

If the Machine does not exist or you do not have the Maintain Machines privilege for it, Otto returns an error and no change is made.

## Glossary

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.
