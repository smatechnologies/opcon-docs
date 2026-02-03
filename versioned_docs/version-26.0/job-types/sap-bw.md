# SAP BW Job Details

The information in this section applies to defining an SAP BW job. For additional information about this platform, refer to [SAP BW Agent Getting started](https://help.smatechnologies.com/opcon/agents/sap-bw/) in the **SAP BW Agent** online help.

## SAP Query

- **Machine**: Defines the SAP BW LSAM Machine name. For information on adding an LSAM machine to OpCon, refer to [Adding Machines](../Files/UI/Enterprise-Manager/Adding-Machines.md) in the **Enterprise Manager** online help.
- **Language**: Defines the two-character language abbreviation (e.g., enter EN for English).

## General Data

- **Process Chain Name**: Defines the name of the Business Warehouse job as defined in the SAP Business Warehouse system.

## Process Chain List

- **Chain**: Defines text matching the name of the desired Process Chain in the SAP Business Warehouse system. If unsure of the whole process chain name, use wildcards (\*) to expand the search.
- **Description**: Defines text matching the description of the desired Process Chain in the SAP Business Warehouse system.
- **Search SAP**: Initiates a request to the SAP BW system to retrieve all Process Chain names matching the search criteria.
