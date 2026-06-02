---
title: Custom Reports
description: "Custom reports in OpCon are built using the BIRT (Business Intelligence and Reporting Tools) framework. You can edit the Continuous-supplied BIRT reports or create entirely new ones to meet specific reporting requirements."
product_area: Reports
audience: Business Analyst, Operations Staff
version_introduced: "[see release notes]"
tags:
  - Procedural
  - Business Analyst
  - Operations Staff
  - Reports
last_updated: 2026-03-18
doc_type: procedural
---

# Custom Reports

Custom reports in OpCon are built using the BIRT (Business Intelligence and Reporting Tools) framework. You can edit the Continuous-supplied BIRT reports or create entirely new ones to meet specific reporting requirements.

Reports are run by `BIRTRptGen.exe`, located in `[[SMAOpConPath]]\Utilities\`. You schedule them as Windows jobs in Enterprise Manager and copy the finished `.rptdesign` files to the SAM BIRT ReportEngine folder.

## Install the BIRT Environment

To set up a standalone environment for designing reports, complete the following steps:

1. Create a directory to hold the BIRT environment (referred to below as the *BIRT directory*). This directory will contain everything needed for report design.

2. Create a `projects` subdirectory inside the *BIRT directory*.

3. Locate the `jtds-1.2.5.jar` file and copy it to the *BIRT directory*.

4. Download BIRT for your environment from the Eclipse BIRT archive:
   [http://archive.eclipse.org/birt/downloads/build.php?build=R-R1-3_7_1-201109131734](http://archive.eclipse.org/birt/downloads/build.php?build=R-R1-3_7_1-201109131734)

5. Move the downloaded file to the *BIRT directory*.

6. Extract the zip file into the *BIRT directory*.

7. Go to the `eclipse` subdirectory and select `eclipse.exe` to start the program.

8. Browse to the `projects` subdirectory you created in step 2.

9. Select the **Use this as the default and do not ask again** option, then select **OK**.

   ![Select a Workspace](../Resources/Images/Reports/Custom-Reports---Select-a-Workspace.png "Select a Workspace")

10. After Eclipse opens, go to **File > New > Project**. The New Project wizard opens.

11. Expand the **Business Intelligence and Reporting Tools** folder.

12. Select **Report Project**, then select **Next**.

    ![Select a Wizard](../Resources/Images/Reports/Custom-Reports---Select-a-Wizard.png "Select a Wizard")

13. Enter `OpCon_Reports` in the **Project name** field. Leave **Use default location** selected.

14. Select **Finish**.

15. When asked if you want to open the **Report Designer perspective**, select **Remember my decision**, then select **Yes**.

16. Select the **x** on the **Welcome** tab to close the Welcome screen if it is displayed.

    The workspace opens in the Report Designer perspective.

    ![Report Design](../Resources/Images/Reports/Custom-Reports---Report-Design.png "Report Design")

**Result:** The BIRT Report Designer environment is ready for use.

## Import the Continuous-Supplied Reports

To import the predefined OpCon reports into your BIRT project, complete the following steps:

1. Go to **File > Import**. The Import wizard opens.

2. Expand the **General** folder.

3. Select **File System**, then select **Next**.

4. Browse to the `reports` subdirectory under the Enterprise Manager directory.

5. Select the `reports` folder to include all of its subdirectories, then select **OK**.

6. Select the **reports** folder option in the left pane.

7. Enter `OpCon_Reports` in the **Into folder** field if it is not already populated.

8. Select **Finish**.

**Result:** The Continuous-supplied reports are available in the `OpCon_Reports` project and you can now edit them or use them as the basis for new reports.

## Create a New Report

To create a new custom report, complete the following steps:

1. Right-click **OpConXPS_Reports** in the Navigator pane.

2. Select **New > Report**.

3. Enter a file name for the report, then select **Finish**.

4. Go to the **OpConXPS_Libraries** folder in the Resource Explorer.

5. Expand `opconxps_library.rptlibrary > data sources`.

   ![Resource Explorer](../Resources/Images/Reports/Custom-Reports---Resource-Explorer.png "Resource Explorer")

6. Right-click **opconxps** and select **Add to Report**.

7. Select the **Data Explorer** tab.

8. Select **opconxps** under **Data Sources**.

9. In the **Driver Class** field, verify the value is `net.sourceforge.jtds.jdbc.Driver`.

   ![Edit Data Source](../Resources/Images/Reports/Custom-Reports---Edit-Data-Source.png "Edit Data Source")

10. Select **Manage Drivers**.

11. Select **Add**, browse to the *BIRT directory*, and select the `jtds-1.2.5.jar` file.

12. Select **OK**.

## Import the Database Connection Parameters

To connect the report to the OpCon database, import the following parameters from the shared library:

- **Data_Source_Connection** (parameter group): holds database connection settings
- **User_Id**: filters privilege access in the report query

To import the database connection parameters, complete the following steps:

1. In the Resource Explorer, go to **Shared Resources > OpConXPS_Libraries > opconxps_library.rptlibrary > Report Parameters**.

2. Expand the **Report Parameters** folder.

   ![Report Parameters](../Resources/Images/Reports/Custom-Reports---Report-Parameters.png "Report Parameters")

3. Right-click **Parameter Group - Data_Source_Connection** and select **Add to report**.

4. Right-click **User_Id** and select **Add to report**.

**Result:** The connection parameters appear in the report's parameter list. Configure each parameter to match your environment:

| Parameter | Description | Example |
|---|---|---|
| **Driver_Class** | JDBC driver class; do not change this value | `net.sourceforge.jtds.jdbc.Driver` |
| **Driver_URL** | Database URL in the format required by the driver | `jdbc:jtds:sqlserver://servername/databasename` |
| **Database** | Name of the OpCon database | `opconxps` |
| **User_Name** | Database login user name | — |
| **User_Password** | Database login password | — |

For a SQL Server named instance, append `;instance=<instance name>` to the **Driver_URL** value.

After you finish editing the report, copy the `.rptdesign` file from the `OpCon_Reports\OpConXPS_Reports` folder (for example, `C:\BIRT\projects\OpCon_Reports\OpConXPS_Reports`) to the reports subdirectory under the Enterprise Manager directory (for example, `C:\Program Files\OpConxps\EnterpriseManager x64\reports\OpConXPS_Reports`).

## Schedule a Custom Report

To schedule a custom report to run automatically, complete the following steps:

1. Copy the `.rptdesign` file to `[[SMAOpConPath]]\SAM\BIRT\ReportEngine\OpConXPS_Reports` on the OpCon server.

2. In Enterprise Manager, open or create a Schedule.

3. Add a **Windows** job. Use the report name as the job name.

4. Select the Windows primary machine for the job.

5. In the **Job Action** field, select **Run Program**.

6. In the **User Id** field, select **Use Service Account**.

7. In the **Command Line** field, enter:
   ```
   [[SMAOpConPath]]\Utilities\BIRTRptGen.exe -rReportName
   ```
   Replace `ReportName` with the name of your report file (without the `.rptdesign` extension).

8. (Optional) Add parameters after the report name using the format `-pParameterName=ParameterValue`.

9. In the **Working Directory** field, enter:
   ```
   [[SMAOpConPath]]\Utilities\
   ```

10. Add a Frequency to the job, then build the job.

**Result:** The report runs on the defined schedule. Output is generated by `BIRTRptGen.exe` and processed by the SAM BIRT processor.
