---
title: Deleting Machines
description: How to safely remove a machine definition from OpCon by reassigning dependent jobs and stopping agent communication before deletion.
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Deleting Machines

Deleting a machine requires three procedures: reassign affected jobs in the Daily tables, reassign affected jobs in the Master tables, and then delete the machine record.

:::note
If SAM is running jobs while a machine is being deleted, Enterprise Manager may become unresponsive and fail to complete the deletion. Delete a machine when SAM is processing few or no jobs.
:::

:::warning
Deleting a machine permanently removes it from OpCon. This action cannot be undone. Enterprise Manager blocks deletion if any Master or Daily jobs still reference the machine; you must reassign those jobs first.
:::

## Remove the Machine from Daily Jobs

To reassign the machine on all affected Daily jobs, complete the following steps:

1. Under the **Administration** topic, select **Daily Maintenance**. The **Daily Maintenance** screen opens.
2. Select the expand arrow next to the date for the schedule.
3. Select the expand arrow next to the schedule.
4. Select the job.
5. In the **Maintenance** frame at the bottom-right of the screen, select **Edit Daily**. The **Job Daily** screen opens.
6. For each affected **Primary** or **Alternate** machine field, select a different machine.
7. On the **Job Daily** toolbar, select **Save**.
8. Repeat steps 4–7 for all jobs assigned to the machine you want to delete.
9. Select **Close** (to the right of the **Job Daily** tab) to close the screen.

**Result:** All Daily jobs are reassigned to a different machine and no longer reference the machine to be deleted.

## Remove the Machine from Master Jobs

To reassign the machine on all affected Master jobs, complete the following steps:

1. Under the **Administration** topic, select **Daily Maintenance**.
2. Select the expand arrow next to the date for the schedule.
3. Select the expand arrow next to the schedule.
4. Select the job.
5. In the **Maintenance** frame at the bottom-right of the screen, select **Edit Master**. The **Job Master** screen opens.
6. For each affected **Primary** or **Alternate** machine field, select a different machine.
7. On the **Job Master** toolbar, select **Save**.
8. Repeat steps 4–7 for all jobs assigned to the machine you want to delete.
9. Select **Close** (to the right of the **Job Master** tab) to close the **Job Master** screen.
10. Select **Close** (to the right of the **Daily Maintenance** tab) to close the **Daily Maintenance** screen.

**Result:** All Master jobs are reassigned to a different machine and no longer reference the machine to be deleted.

## Delete the Machine

To delete the machine record, complete the following steps:

1. Under the **Administration** topic, select **Machines**. The **Machines** screen opens.
2. In the **Select Machine** list, select the machine.
3. Right-click the graphic in the **Communication Status** frame to open the context menu.
4. Select **Stop Communication** to stop communication with the agent.
5. On the **Machines** toolbar, select **Remove**.
6. Select **Yes** to confirm the deletion.
7. Select **Close** (to the right of the **Machines** tab) to close the screen.

**Result:** The machine record is permanently removed from OpCon.
