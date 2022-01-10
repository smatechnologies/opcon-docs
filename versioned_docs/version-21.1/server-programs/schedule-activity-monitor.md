---
sidebar_label: 'SAM'
---

# Schedule Activity Monitor (SAM)

The Schedule Activity Monitor (SAM) component determines when jobs in the Daily tables qualify for submission to an LSAM and also processes OpCon events. The SAM places messages for the LSAMs in the database and monitors the database for responses. When the responses are received, the SAM updates job statuses and re-qualifies jobs for processing. The SAM also processes events in the database and events received from external sources. For information on events, refer to the [OpCon Events](../events/introduction.md) online help.

![Schedule Activity Monitor](../Resources/Images/Server-Programs/samconfig.png "Schedule Activity Monitor")

## Job Qualification Process

The SAM analyzes information from the database to determine when to submit jobs.

### Factors of Analysis

The SAM's analysis includes:

- Start time
- Job dependencies and current job statuses
- Threshold/resource dependencies and current threshold/resource values
- Machine availability

### Order of Analysis

The SAM checks a job for processing in the following order:

1. Job Qualifications for Start
2. Latest Allowable Start Time
3. Start Time
4. Job Dependencies
5. Threshold/Resources
6. Expression Dependencies
7. Machine Availability

## SAM Processing Options

The processing options for the Schedule Activity Monitor (SAM) are configured through the Enterprise Manager (EM). For information on configuring SAM processing options, refer to [OpCon Server Options](../administration/server-options.md) in the **Concepts** online help.

## SMA Connection Configuration Tool

The SMA Connection Configuration program contains connection information to the SQL Server database. Changing the SQL connection configuration is possible only from the SAM application server. Additionally, the SAM-SS must be stopped and restarted to detect new SQL connection configuration information.

## Request a New License File from SMA Technologies

After maintenance has been paid to SMA Technologies and it is time to request a new license file, complete the following procedure.

1. Log in to the **Enterprise Manager**.
2. Use menu path: **Help \> About OpCon Enterprise Manager**.
3. Click the **License Information** tab.

    :::note
    Only users with granted privileges can view the **License Information** tab.
    :::

4. At the end of the first line, select the System ID (e.g., SMAServer_1234).
5. Right-click and select **Copy**.
6. Send an email to <license@smatechnologies.com> with the subject line "License File Request". Include the following information in the message:

    - Environment for the SAM and database (e.g., Production)
    - The System ID copied from the Help tab (press Ctrl + V to paste the value from the clipboard)
    - Your company's name

### Place the License File in the SAM Directory

After SMA Technologies responds to the license request, save the license file to the SAM directory.

:::caution
If the license file is encrypted after being received from SMA Technologies (e.g., saved to a Windows folder set with the "Encrypt contents to secure data" option), SAM will not be able to read the license file.
:::

1. Open your email program to get the license file from SMA Technologies.
2. Open the **email message** containing the license file.
3. Right-click the **license file** and select **Save As**.
4. Browse to the SAM Installation directory.
    :::tip Example
    C:\Program Files\OpConxps\SAM\
    :::
5. Click the **Save** button.
