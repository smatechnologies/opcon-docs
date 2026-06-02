---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Editing Vision Actions
description: "How to edit an existing Vision Action in Solution Manager."
product_area: Solution Manager
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

# Editing Vision Actions

A Vision Action defines one or more OpCon events that fire when a Vision card trigger condition is met. You can update the action name or its associated events at any time. Changes take effect for any Vision card that references the action the next time the card evaluates its trigger conditions.

:::note
The **Edit** button is available only when exactly one action is selected in the list.
:::

## Required privilege

Your role must have the **Maintain Vision Actions** function privilege and the Vision feature must be licensed on your OpCon environment.

## Edit a Vision Action

To edit an existing Vision Action, complete the following steps:

1. In Solution Manager, go to **Vision Settings**.
2. Select **Actions** to open the Vision Actions page.
3. In the actions list, select the row for the action you want to edit.
4. Select **Edit**.
5. In the **Name** field, update the action name as needed. The name must be unique and cannot exceed 255 characters.
6. In the **Events** list, add, edit, or remove OpCon events as needed.
7. Select **Save**.

**Result:** The Vision Action is updated. Any Vision card that uses this action will apply the changes the next time its trigger conditions are evaluated.
