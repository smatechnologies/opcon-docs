# Remote Instances

A *remote instance* is an instance of OpCon that runs and is accessed on
a remote server. Communication between instances is established once the
connection information is defined. When instances of OpCon are
connected, then properties can be accessed and used between those
instances. For instance, tokens defined and used in expression
dependencies in one environment can reference properties in another
environment.

:::note
If there is an expression dependency on a job that uses a remote OpCon instance and the remote OpCon instance database server is not running or there is a network issue (i.e., the remote instance is unavailable), then the job that has the expression dependency will go On Hold.
:::

The following information applies to defining remote instances:

- **Name**: Defines the name for the remote instance.
- **Documentation**: Provides an area for descriptions, explanations,
    and notes that can be updated for the defined remote instance.
     in the **Enterprise Manager** online help.
- **Server**: Defines the name of the server that the database
    resides.
- **Database**: Defines the name of the database to which to connect.
- **User**: Defines the authorized SQL Server username for connecting
    to the database.
- **Password**: Defines the corresponding password for the authorized
    SQL Server user.
- **Windows Authentication**: Specifies to use Windows Authentication
    as the authentication method to connect to the database.
  - If you want to use Windows Authentication, then you must make
        sure that the SMA Service Manager runs as a user that has
        privileges to the OpCon database. For more information, refer to
        [Add the OpConxps Active Directory Group to the SQL Server](../installation/configuration.md#Add_the_OpConxps_Active_Directory_Group_to_the_SQL_Server)
         in the **OpCon Installation** online help.
- **Mirroring On**: Indicates that the instance uses mirroring so that
    the proper connection string is used.
- **Transparent Network IP Resolution**: Specifies how to resolve the
    IP address in cases where there are issues. Available options are:
  - **Auto**: Specifies that the Network IP resolution will be
        automatically detected. This is the default setting.
  - **Disabled**: Specifies that there should not be transparent
        Network IP resolution.
  - **Enabled**: Specifies that there should be transparent Network
        IP resolution.
