# Viewing SAP BW Job Details

To view an SAP BW job, you must have the required privileges as defined in [Required Privileges](../Accessing-Master-Jobs.md#required-privileges).

## Editing SAP BW Job Details

1. To edit a SAP BW job, go to **Library** > **Master Jobs**.
1. Select a SAP BW job in the list.
1. Select **Edit**.
1. Expand the **Task Details** panel to expose its content.

**In the SAP BW Definition frame:**

- **Process Chain Name**: Defines the name of the Business Warehouse job as defined in the SAP Business Warehouse system.
- Click on the search button to open the SAP Query dialog.

**In the SAP Query dialog:**

- **Machine**: Defines the SAP BW LSAM Machine name.
- **Language**: Defines the two-character language abbreviation (e.g., enter EN for English).
- **Chain**: Defines text matching the name of the desired Process Chain in the SAP Business Warehouse system. If unsure of the whole process chain name, use wildcards (\*) to expand the search.
- **Description**: Defines text matching the description of the desired Process Chain in the SAP Business Warehouse system. If unsure of the whole description, use wildcards (\*) to expand the search.
- Click on the search button to initiates a request to the SAP BW system to retrieve all Process Chain names matching the search criteria.
- Select a process chain from the list and click Ok to assign it to the process chain name in the SAP BW Daily Job Definition.

:::note
Click the **Undo** button if you wish to undo your changes for any reason.
:::
Click the **Save** button to update any changes on this screen.

---

## More Information

For conceptual information, refer to [SAP BW Jobs](../../../../../../../job-types/sap-bw.md) in
the **Concepts** online help.
