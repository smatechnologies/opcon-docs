---
title: Editing Daily Schedule Instance Properties
description: How to edit daily schedule instance properties in Enterprise Manager using the Daily Maintenance view.
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

# Editing Daily Schedule Instance Properties

Daily schedule instance properties control the named property values assigned to a specific date-based instance of a schedule. Edits made here apply only to the current daily instance and do not affect the schedule's master definition.

## Edit daily schedule instance properties

To edit daily schedule instance properties, complete the following steps:

1. Select **Daily Maintenance** under the **Operation** topic.
2. Select the expand arrow next to the specific **date** to expand it.
3. Select the **schedule**.
4. Select **Edit Daily** in the **Maintenance** frame.
5. Select the **Instance Definition** tab.
6. Select the property entry you want to change in the **Available Properties** table.
7. Update the value in the **Define Property** field using the format `PropertyName=PropertyValue`.
8. Select **Update**.
9. Select **Save** on the **Schedule Daily** toolbar.

**Result:** The updated property value is saved to the daily schedule instance.

## Considerations

- Changes saved to daily schedule instance properties apply only to the current daily instance. They do not affect the master schedule definition.
- To add a new property to the instance, enter the value in the **Define Property** field and select **Add**.
- To remove a property from the instance, select it in the **Available Properties** table and select **Remove**.

## Glossary

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for a given date. Changes to daily tables affect only the current instance.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which Agent, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
