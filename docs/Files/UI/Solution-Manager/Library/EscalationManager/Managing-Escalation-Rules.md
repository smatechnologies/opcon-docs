---
title: Managing Escalation Rules
description: "Use Escalation Manager to add, edit, delete, and check cross-references for escalation rules."
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

# Managing Escalation Rules

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use **Escalation Manager** to add, edit, delete, and check cross-references for escalation rules.

### Creating an Escalation Rule

:::note
At least one Escalation Group must exist before creating a new Escalation Rule.
:::

To create an escalation rule, complete the following steps:

1. Select the **Add** button above the list and fill out the Escalation Rule form.

   ![A screen showing add escalation rule form](../../../../../Resources/Images/SM/Library/EscalationManager/Escalation-Rule-Add-1.png "Add Escalation Rule Form")

2. Select the **Add Sequence** button inside the **Rule Sequences** section and fill out the Sequence form.

   ![A screen showing add escalation rule sequence form](../../../../../Resources/Images/SM/Library/EscalationManager/Escalation-Rule-Add-2.png "Add Escalation Rule Sequence Form")

   :::note
   Repeat this step to add more than one sequence.
   :::

**Result:** The new escalation rule is saved and appears in the Escalation Rules list.

### Editing an Escalation Rule

To edit an escalation rule, complete the following steps:

1. Select an Escalation Rule in the list.
2. Select the **Edit** button above the list and fill out the Escalation Rule form.

   ![A screen showing edit escalation rule form](../../../../../Resources/Images/SM/Library/EscalationManager/Escalation-Rule-Edit.png "Edit Escalation Manager Form")

**Result:** The escalation rule is updated with the new values.

### Deleting an Escalation Rule

:::note
Delete is not allowed if the Escalation Rule has any cross-references.
:::

To delete an escalation rule, complete the following steps:

1. Select an Escalation Rule in the list.
2. Select the **Delete** button above the list.

   ![A screen asking for confirmation to delete escalation rule](../../../../../Resources/Images/SM/Library/EscalationManager/Escalation-Rule-Delete.png "Delete Escalation Rule")

3. Confirm the deletion when prompted.

**Result:** The escalation rule is permanently removed from OpCon.

### Checking Cross-References

To check cross-references for an escalation rule, complete the following steps:

1. Select an Escalation Rule in the list.
2. Select the **Cross References** button above the list.

   ![A screen showing cross references for an escalation rule](../../../../../Resources/Images/SM/Library/EscalationManager/Escalation-Rule-Cross-References.png "Escalation Rule Cross References")

**Result:** The cross-references panel displays all notification triggers that use the selected escalation rule.

![White "person reading" icon on blue circular background](../../../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Managing Escalation Groups](Managing-Escalation-Groups.md)

## FAQs

**Q: What is required before I can create an Escalation Rule?**

At least one Escalation Group must exist before you can create an Escalation Rule.

**Q: Why is the Delete button disabled for an Escalation Rule?**

Deletion is blocked if the rule has cross-references — that is, if it is referenced by one or more notification triggers. Remove those references first, then delete the rule.

**Q: Who can manage escalation rules in OpCon?**

Users with the appropriate privileges assigned through their role can manage escalation rules. Contact your OpCon system administrator if you do not have access.

## Glossary

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.
