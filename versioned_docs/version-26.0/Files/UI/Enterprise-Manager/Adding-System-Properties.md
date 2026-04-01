---
title: Adding User-defined System Properties
description: "Use this procedure to add User-defined System Properties in the Enterprise Manager."
product_area: Enterprise Manager
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

# Adding User-defined System Properties

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to add User-defined System Properties in the Enterprise Manager.

To add a system property, complete the following steps:

1. Select on **Global Properties** under the **Administration** topic. The **Global Properties** screen displays
2. Select ![Add icon](../../../Resources/Images/EM/EMadd.png "Add icon") **Add** on the **Global Properties** toolbar
3. Enter a *system property name followed by user-defined text* (e.g., $NOW spec) in the **Name** text box
4. *(Optional)* Enter any relevant documentation in the **Documentation** text box
5. *(Optional)* Select the **Encrypted** option
6. Enter a *valid date or time format* (e.g., mmddyyyyhhmmss) in the **Value** text box. For more information, refer to [System Properties](../../../objects/properties.md#system) in the **Concepts** online help
7. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Global Properties** toolbar
8. Select **Close ☒** (to the right of the **Global Properties** tab) to close the **Global Properties** screen

## FAQs

**Q: How do you save a new user-defined system properties record?**

After completing the required fields, select the **Save** button on the toolbar to save the user-defined system properties record.

**Q: Is documentation required when adding user-defined system properties?**

No. The Documentation field is optional. You can enter notes about the user-defined system properties to track its purpose, but it is not required to save the record.

## Glossary

**Token (Global Property)**: A named value stored in the OpCon database, referenced in job definitions and events using [[PropertyName]] syntax. Tokens pass dynamic values — such as dates, file paths, or counts — into automation workflows.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.
