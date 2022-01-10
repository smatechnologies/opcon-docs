# Viewing a Job Output File

When OpCon runs a job, the LSAM on the target machine can capture the output from the execution of the job and save it to one or more files. Each platform saves different files based on the standard behavior of the operating system (e.g., UNIX jobs will save standard out and standard error). Graphical interfaces for OpCon can then retrieve those files for viewing using the Job Output Retrieval System (JORS). This feature is accessed using the **View Job Output** menu option from a job in Operations.

:::note
Configuring job scheduling for TLS Security implies that the JORS communications will also be secured by the same digital certificate configuration. Refer to [TLS Security](../server-programs/network-communications.md#tls) in the **Server Programs** online help for details.
:::

The following actions need to take place to View Job Output successfully:

- The following components must be active on the target machine:
  - The LSAM must be running
  - The JORS component must be running
- In the LSAM's configuration file:
  - Enable the LSAM to "Capture Job Output"
  - Set the JORS port number to the same value you will set for that machine in the OpCon database.
- In the **Enterprise Manager**:
  - The **JORS Port number** needs to be set in the *Advanced Machine Properties*. The JORS port number needs to match the one in the LSAM's configuration file. For more information, refer to [Set JORS Port Number for the Machine](../Files/UI/Enterprise-Manager/Configuring-Advanced-Machine-Properties.md#Set_JORS_Port_Number_for_the_Machine) in the **Enterprise Manager** online help.
