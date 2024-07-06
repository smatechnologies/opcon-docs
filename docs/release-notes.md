---
sidebar_label: "Release Notes"
---

# OpCon Release Notes

## Spring 24

**NOTE**: Verify/Upgrade these components if applicable: **ServiceNow** Connector – 21.4 or higher, **WebServices** Connector – 21.2 or higher, **Deploy** – 22.4 or higher

2024 July

#### Solution Manager

:white_check_mark: **OPCON-17142**: Fixed an issue in Vision Settings page where selecting a tag from a list did not populate the Pattern field with the selected tag.

:white_check_mark: **OPCON-23812**: Fixed an issue where updating an On Request frequency did not give a warning about affected jobs and schedules.

:white_check_mark: **OPCON-23814**: Fixed an issue where master jobs cross references did not display all cross-referenced jobs.

2024 June

#### Solution Manager

:eight_spoked_asterisk: **OPCON-23392**: OpCon MFT users now have the ability to select an option to “force download” the filtered file or list of files. This ensures that OpCon will always download the specified file(s) at runtime regardless of whether changes have been made to the file or not.

:white_check_mark: **OPCON-17491**: Fixed an issue where permissions to view departments were incorrect.

:white_check_mark: **OPCON-23052**: Fixed an issue in Visions page where clicking the edit button in the bread crumb was redirecting users to page not found. Users will now be redirected to the correct page to edit the group tag.

:white_check_mark: **OPCON-23087**: Fixed issue in Notification Triggers page where removing an email message type also removes all other message types. Users will now be able to remove an email message type without affecting other types.

:white_check_mark: **OPCON-23225**: Fixed an issue in Master Schedule Definition page where the Save button was not enabled after changes were made to instance properties of a named instance schedule.

:white_check_mark: **OPCON-23457**: Fixed an issue where role permissions were inadvertently overwritten by stale data.

:white_check_mark: **OPCON-23519**: Fixed an issue where users and roles were not refreshing.

:white_check_mark: **OPCON-23524**: Fixed an issue where valid regular expressions were considered invalid in Self-Service Requests.

:white_check_mark: **OPCON-23588**: Fixed an issue causing users to timeout when using multiple browser tabs. User activity timeout will now be shared between multiple tabs.

:white_check_mark: **OPCON-23591**: Fixed an issue where an On Request frequency was not able to save with a date of February 29.

#### REST API

:white_check_mark: **OPCON-23540**: Fixed an issue where a user's external event password is corrupted during a migration from OpCon version 19 to 23.

2024 May

#### Installation

:white_check_mark: **OPCON-23104**: Modified SMADB_Backup script from having WITH NOINIT to having WITH INIT and SMADB_TLog_Backup script from having WITH INIT to having WITH NOINIT.

#### Server

:eight_spoked_asterisk: **OPCON-22997**: Added a new API for cloud environments that processes all messages for an on-prem 'relay' that forwards on-prem agent messages from the cloud.

:eight_spoked_asterisk: **OPCON-23208**: Added a new 'Relay' for OpCon Datacenter customers, which may be downloaded from the FTP site to run on an elevated command prompt to walk through installation steps. This component is responsible to communicate with OpCon running in the cloud and relaying the messages for on-prem agents. This makes it possible to run OpCon in the cloud without requiring a VPN connection.

:white_check_mark: **OPCON-22260**: Fixed an issue where the OpConMFT agent was reported as being down when the job id of a job status request was not found.

:white_check_mark: **OPCON-23535**: Fixed an issue with the communications component of OpCon, which rarely locked its log file and job processing halted until the lock was released.

#### Solution Manager

:eight_spoked_asterisk: **OPCON-20079**: Provide better formatting for z/OS Job Output menu items. 

:eight_spoked_asterisk: **OPCON-23078**: Require Email for Users: This feature introduces a requirement for the email field to be populated for user accounts in support of the new password recovery process in addition to a new server option setting that gives admins the ability to allow existing users to enter their recovery email upon next login. 

:eight_spoked_asterisk: **OPCON-23080**: Forgot Password Link: This feature adds a "Forgot Password?" link on the Solution Manager login screen to initiate the password recovery process by confirming their username and email to generate and receive an email with a password recovery code.

:eight_spoked_asterisk: **OPCON-23082**: Password Recovery Validation: This feature allows users to enter and validate the password recovery code received via email and navigates them through the password reset process.

:eight_spoked_asterisk: **OPCON-23230**: Save Daily Job Details to Master: This feature allows users to push changes made to daily jobs to their associated master job from within Solution Manager Operations and Daily Job Details views.

:eight_spoked_asterisk: **OPCON-23234**: Tag Management View Access: This feature adds a new permission for admins to control user access to the tag management view in Solution Manager. All existing roles will automatically be granted this privilege, but admins can now control which users are granted access to this view.

:eight_spoked_asterisk: **OPCON-23244**: Reset Job Types from Studio: This feature adds the capability for users to reset supported job types in Solution Manager from the Studio designer view and no longer requires users to navigate to the Master Job list view to perform this function.

:eight_spoked_asterisk: **OPCON-23245**: Configure a Default Homepage: This feature grants users the ability to define a custom landing page upon logging into Solution Manager by selecting the rocket icon displayed in the top right corner of each page. Any of the following pages can be selected as the homepage, but only one page can be active at a time:
- Self-Service
- Vision
- Operations
- Each page in Library
- Studio

:white_check_mark: **OPCON-22318**: Fixed an issue where the OpConMFT server configuration was set to false even after successful registration.

:white_check_mark: **OPCON-22994**: Fixed an issue where named instance schedules could not be created when Solution Manager was in French.

:white_check_mark: **OPCON-23015**: Fixed an issue where the Save button in daily jobs definition page was enabled without any changes.

:white_check_mark: **OPCON-23065**: Fixed an issue where users with privilege "Modify Jobs in Master Schedules" could not save changes to master jobs.

:white_check_mark: **OPCON-23072**: Fixed an issue where PERT diagram breadcrumbs for sub-schedules were missing.

:white_check_mark: **OPCON-23106**: Fixed an issue where the parameter "Requires XML Escape Sequences" for some Agents was incorrect.

:white_check_mark: **OPCON-23107**: Fixed an issue that blocked tab navigation on the Access Management page when the interface was set to French.

:white_check_mark: **OPCON-23108**: Fixed an issue where Users and Roles were not correctly displayed in a Firefox browser.

:white_check_mark: **OPCON-23207**: Fixed issue where all nodes will have red borders when a schedule is first loaded onto the workflow. This change removes the red border from these nodes and only nodes on position (0, 0) will have red borders.

:white_check_mark: **OPCON-23247**: Fixed an issue that caused a runtime error when saving IBMi Spool File values in Master Jobs.

:white_check_mark: **OPCON-23248**: Fixed an issue where users were unable to remove frequencies from schedules.

:white_check_mark: **OPCON-23251**: Fixed an issue where the resolved value for the date user input in Self-Service was incorrect when the time zone was set to Central European Time.

#### REST API

:white_check_mark: **OPCON-21833**: Fixed an issue which occurred when re-establishing an authenticated connection with an OpConMFT machine. This operation can now be performed successfully.

:white_check_mark: **OPCON-22270**: Fixed an issue where retrieving data in Schedule and Job History report was timing out.

:white_check_mark: **OPCON-23074**: Fixed a character encoding issue which prevented users from using some Unicode characters when configuring jobs.

:white_check_mark: **OPCON-23349**: Fixed an issue where some modifications to a role did not take effect immediately for all logged in users.

#### ImpEx2 Web Service

:white_check_mark: **OPCON-23055**: Fixed a problem during schedule deployment removing schedule named instances if the new version of the schedule no longer has any defined schedule named instances.

:white_check_mark: **OPCON-23091**: Fixed an issue during deployment where global property value was mixed up if there are other property names with a similar pattern.

:white_check_mark: **OPCON-23345**: Fixed a problem where the schedule multi-instance values are not reset correctly during deployment when the schedule definition already exists.

