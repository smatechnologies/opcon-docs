# Architecture

The OpCon Server components include the database and Schedule Activity Monitor (SAM) and supporting services. On user workstations, desktop clients connect to the database and web-based interfaces connect to web services to manage the data for automation. The agents responsible for executing jobs are called Local Schedule Activity Monitors (LSAMs).

![OpCon Architecture Overview](../Resources/Images/Concepts/opconarchitecture.png "OpCon Architecture Overview")

## OpCon Components

### Solution Manager

The web user interface for OpCon is called Solution Manager. 

:::tip Learn More
See [Accessing the Solution](../getting-started/accessing-the-solution.md) for more information about getting started in Solution Manager.
:::

### OpCon REST API

All functions that are available through the user interface are also exposed via REST API endpoints. All public endpoints are reachable at a base address of `https://{customeridentifier}.opcon.smatechnologies.com/api`. Authentication is managed by an External Token which is generatable from permitted user accounts. Authorization is determined based on the roles the External Token's user has access to. 

:::tip Learn More

:::

:::tip Learn More
Detailed information about the OpCon REST API and its available endpoints are available in the [OpCon REST API Documentation](https://help.smatechnologies.com/opcon/core/api/23-0.html).
:::

### OpCon Agents

Local Schedule Activity Monitors (LSAMs) are agents that reside on the platform where the jobs are executed. LSAMs are written in the native language of their platforms making them efficient agents for executing jobs. The LSAMs communicate with SMANetCom via TCP/IP for job processing information and sending OpCon events. OpCon supports automation with LSAMs for the following job types:

- [BIS](./job-types/bis.md)
- [Container](./job-types/container.md)
- [File Transfer](./job-types/file-transfer.md)
- [IBM i](./job-types/ibm-i.md)
- [MCP](./job-types/mcp.md)
- [Null](./job-types/null.md)
- [OS2200](./job-types/os-2200.md)
- [SAP BW](./job-types/sap-bw.md)
- [SAP R/3 and CRM](./job-types/sap.md)
- [SQL](./job-types/sql.md)
- [Tuxedo ART](./job-types/tuxedo-art.md)
- [UNIX](./job-types/unix.md)
- [Windows](./job-types/windows.md)
- [z/OS](./job-types/zos.md)

### OpCon Relay

## High Availability

## Security