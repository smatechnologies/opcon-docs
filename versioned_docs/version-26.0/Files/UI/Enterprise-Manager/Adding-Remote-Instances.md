---
title: Adding Remote Instances
description: "For conceptual information about each field or option, refer to Remote Instances in the Concepts online help."
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

# Adding Remote Instances

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

For conceptual information about each field or option, refer to [Remote Instances](../../../objects/remote-instances.md) in the **Concepts** online help.

To add a remote instance, complete the following steps:

1. Select on **Remote Instances** under the **Administration** topic
2. Select ![Add icon](../../../Resources/Images/EM/EMadd.png "Add icon") **Add** on the **Remote Instances** toolbar
3. Enter the *remote instance name* in the **Name** text box
4. Enter any relevant documentation in the **Documentation** text box
5. In the **Remote OpCon** frame:
   - Enter the *remote server name*
   - Enter the *remote server database*
   - Specify the authentication method:
     - For Windows Authentication, select the **Windows Authentication** option
     - For SQL Authentication, enter a valid *username* and *password*
6. In the **Options** frame:
   - Select the **Mirroring On** option if the remote instance uses mirroring
   - Select the **Transparent IP Network Resolution** method: Auto, Disabled, or Enabled

:::note
Auto resolution is best in most cases for ensuring a successful connection.
:::

7. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Remote Instances** toolbar

## FAQs

**Q: What information is required to add remote instances?**

The required fields include **Name**. Select **Save** on the toolbar to save the new record.

## Glossary

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
