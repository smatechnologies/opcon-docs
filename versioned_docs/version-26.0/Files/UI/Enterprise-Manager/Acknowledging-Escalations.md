---
title: Acknowledging Escalations
description: "Escalations can be acknowledged while the Enterprise Manager is loading or after the application opens."
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

# Acknowledging Escalations

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Escalations can be acknowledged while the Enterprise Manager is loading or after the application opens.

## Acknowledging Escalations During Login to Enterprise Manager

To acknowledge an escalation, complete the following steps:

1. Open the Enterprise Manager application. Escalations requiring acknowledgment display in the **Escalation Acknowledgment** pop-up window while the application is loading
2. *(Optional)* Select an escalation to view its notification details. Close the details dialog when done
3. Select the option in the **Date** column next to any escalation you wish to acknowledge
4. Select the **Acknowledge** button. Acknowledging an escalation stops the escalation process and removes the entry from the **Escalation Acknowledgment** screen

:::note
If you select **Close** without acknowledging, escalations remain pending and can be acknowledged later under **Escalation Acknowledgment** in **Operation**.
:::

## Acknowledging Escalations After Enterprise Manager Opens

To acknowledge an escalation, complete the following steps:

1. Select **Escalation Acknowledgment** under the **Operation** topic, or select the **Escalation Acknowledgment** icon on the [information bar](Information-Bar.md). The **Escalation Acknowledgment** screen displays
2. Select the option in the **Date** column next to any escalation you wish to acknowledge
3. Select the **Acknowledge** button
4. Select **Close ☒** (to the right of the **Escalation Acknowledgment** tab) to close the screen

## FAQs

**Q: Where is Acknowledging Escalations located in the Enterprise Manager?**

Select **Escalation Acknowledgment** under the **Operation** topic in the Enterprise Manager navigation pane.

**Q: How many steps does the Acknowledging Escalations procedure involve?**

The Acknowledging Escalations procedure involves 8 steps. Complete all steps in order and save your changes.

**Q: What does Acknowledging Escalations cover?**

This page covers Acknowledging Escalations During Login to Enterprise Manager, Acknowledging Escalations After Enterprise Manager Opens.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.
