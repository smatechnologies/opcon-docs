# Licensing

SMA Technologies provides a license file during installation and maintenance to enable SAM; however, if the license expires, the SAM enters Emergency Mode to allow normal functioning for a short time. For instructions on obtaining a new license file, refer to the [Request a New License File from SMA Technologies](./schedule-activity-monitor.md#Request_a_New_License_File_from_SMA) procedure in **Schedule Activity Monitor** topic.

The license file contains general information about the license and Product Support information.

- The license defines the Customer Name/ID, License Create Date, and Expiration for the software.
- Product Support defines the date though which you will be able to receive paid SMA Technologies technical support.

License notifications appear in the Enterprise Manager during login and while using the Operation Views. Additionally, the SAM writes license notifications to the SAM log file and/or the Critical log file depending on the severity of the message. Notifications occur when:

- The number of machines (LSAMs) exceeds the license limit.
- A license is missing.
- A license is invalid.
- A license approaches its expiration date.
- A license expires.
- Product Support approaches its renewal date.
- Product Support requires renewal.
- A license file appears to be corrupt.

## License Types

SMA Technologies provides the following license types:

- **Maximum Number of Machines by Platform**: This license type determines how many machines of the same OS Type can be communicating simultaneously with the SAM. An unlimited number of tasks are allowed in this license.
- **Maximum Number of Tasks by Platform**: This license type determines how many tasks on the same OS Type can be run during a month. Customers using this license type must send a task report for the previous month on the first day of each month. Customers can use one of the following options to send the task report:
  - Allow the SAM to automatically send the task report to SMA Technologies at the beginning of each month. For information on configuring this option, refer to [Change the ocadm Password and Configure SAM Options](../installation/configuration.md#Change_the_ocadm_Password_and_Configure_SAM_Options) in the **OpCon Installation** online help.
  - Manually send the SAM log to SMA Technologies at the beginning of each month. The first log file for SAM on the first day of each month contains the task report. For steps to send the log file, follow the procedure below.

### Manually Send the Task Report

1. On the first day of each month, find the first SAM.log for that day.
2. Open the SAM.log file and confirm that the following line appears in the file: **Task Report for** *Licence Key Information* **Period =** *Month Name*.
3. If the log file does not contain the task report, contact SMA Technologies Support for assistance.
4. If the log file does contain the task report, create a new email:
    1. In the **To**: line, enter the license address for your SMA Technologies sales and support office.
        - For SMA Technologies Europe, use <license-eu@smatechnologies.com>.
        - For SMA Technologies France, use <license-fr@smatechnologies.com>.
        - For SMA Technologies USA, use <license@smatechnologies.com>.
    2. In the **Cc**: line, copy any address in your organization that should receive a copy.
    3. Attach the SAM.log file to the email.
    4. Send the email.
