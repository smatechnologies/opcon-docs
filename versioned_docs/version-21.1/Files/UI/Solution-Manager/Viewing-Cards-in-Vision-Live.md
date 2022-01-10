# Viewing Cards in Vision Live

Cards are displayed on the Vision Live page and you can use the filter
bar to view cards for certain days.

![Vision Live Page](../../../Resources/Images/SM/Vision-Live-Page-User.png "Vision Live Page")

## Card Views

To identify whether a card is a group or tag card, group cards will have
the top-right corner of the card folded while tag cards do not have a
folded corner.

![Vision Group Card](../../../Resources/Images/SM/Vision-Group-Card.png "Vision Group Card")

![Vision Tag Card](../../../Resources/Images/SM/Vision-Tag-Card.png "Vision Tag Card")

Tag cards defined to a remote instance will display the badge icon on
the right-hand side of the card. For more information on the badge icon,
refer to [Vision Card Colors](#Vision) in the **Solution
Manager** online help.

![Vision Remote Instance Tag Card](../../../Resources/Images/SM/Vision-Tag-Card-Remote-Instance.png "Vision Remote Instance Tag Card")

Cards have two views: a summary of time information on the front (shown
in the image on the left below) and a summary of job statuses on the
back (shown in the image on the right below).

![Vision Card Front and Back View](../../../Resources/Images/SM/Vision-Card-Front-and-Back-View.png "Vision Card Front and Back View")

The front of a card displays the following fields:

- The **Start Time** indicates the earliest start time for any jobs
    matching the tag pattern defined for the card (or the child cards).
    When a card has a Frequency SLA defined, a triangular icon will
    appear next to the Start Time. For more information on the SLA icon,
    refer to [Vision Card Colors](#Vision) in the
    **Solution Manager** online help.
- The **Duration** indicates the duration of all jobs matching the tag
    pattern defined for the card (or the child cards).
- The **End Time** indicates the end time for any jobs matching the
    tag pattern defined for the card (or the child cards). When a card
    has a Frequency SLA defined, a triangular icon will appear next to
    the End Time. For more information on the SLA icon, refer to [Vision     Card Colors](#Vision) in the **Solution
    Manager** online help.

The back of a card displays the following fields:

**Waiting** indicates the total number of jobs in the following possible
statuses:

- Job to be Skipped
- Late to Start
- On Hold
- Prerun Failed
- Qualifying
- Released
- Wait Expression Dependency
- Wait Job Conflict
- Wait Job Dependency
- Wait Machine
- Wait Start Time
- Wait Threshold/Resource Dependency
- Wait to Start
- Wait to Start; Forced

**Running** indicates the total number of jobs in the following possible
statuses:

- Attempt to Start
- Job Running
- Job Running; To be Terminated
- Prerun Active
- Start Attempted
- Still Attempting Start

**Finished** indicates the total number of jobs in the following
possible statuses:

- Finished OK
- Fixed
- Marked Finished OK

**Warning** indicates the total number of jobs in the following possible
statuses:

- Cancelled
- Missed Start Time
- Skipped

**Error** indicates the total number of jobs in the following possible
statuses:

- Failed
- Initialization Error
- Marked Failed
- Under Review

:::tip Example
To further explain the back view of a card, each tag card has a count of the jobs in various statuses, and each group card has the sum of the count for each job status for its child cards.

An example scenario:

- **Card1**: 7 Waiting, 11 Running, 8 Finished, 2 Error
- **Card2**: 5 Waiting, 10 Running, 3 Finished, 2 Error
- **Card3**: 2 Waiting, 1 Running, 5 Finished, 0 Failed

Card2 and Card3 are tag cards that have a count of jobs they are tracking. Card1 is a group cards and gets its count by simply adding the counts of its children.

Now, if Card2 has a Pattern of "tag1" and Card3 has a Pattern of "tag2", and if there is a job that has Finished OK and has two tags associated with it ("tag1" and "tag2"), this job will get counted once for Card2 and once for Card3. But, since Card1 has a sum of counts for Card2 and Card3, that same job gets counted twice for Card1.

So, while Card1 shows 8 Finished, there are only 7 jobs that actually Finished.
:::

## Card Hierarchy

On the Vision Live page, clicking on a group card will display the child
card(s) on a new page. You can navigate through the hierarchy of group
cards by clicking the name links in the breadcrumb trail.

![Vision Navigation](../../../Resources/Images/SM/Vision-Navigation.png "Vision Navigation")

:::note
The Edit button will only be visible to users in Admin mode.
:::

Clicking the Edit button next to the breadcrumb trail will display the
card hierarchy and take you to the Vision Settings page.

![Vision Breadcrumb Trail Edit Button](../../../Resources/Images/SM/Vision-Breadcumb-Trail-Edit-Button.png "Vision Breadcrumb Trail Edit Button")

If editing from the current branch in the hierarchy (e.g., Background in
the image above), changes will apply only to that branch.

Clicking on the Edit button from the Vision Home page will provide a
view of the entire card hierarchy. Any edits made at this level will be
made to the entire tree.

![Vision Breadcrumb Trail Home Edit Button](../../../Resources/Images/SM/Vision-Breadcumb-Trail-Home-Edit-Button.png "Vision Breadcrumb Trail Home Edit Button")

:::note
You must have the appropriate privileges to view Vision Settings. For more information, refer to [Working in Admin Mode](Working-in-Admin-Mode_Vision.md) in the **Solution Manager** online help.
:::

![Vision Settings Hierarchy](../../../Resources/Images/SM/Vision-Settings-Hierarchy.png "Vision Settings Hierarchy")

## Card Links

Clicking on a tag card defined to the current instance will display the
Daily Processes page in the Operations module. For more information on
the Daily Processes page, refer to [Managing Daily Processes](Managing-Daily-Processes.md) in the
**Solution Manager** online help.

![Vision Daily Processes Page](../../../Resources/Images/SM/Vision-Daily-Processes.png "Vision Daily Processes Page")

Clicking on a tag card defined to a remote instance will open a separate
Solution Manager page that corresponds to the Solution Manager URL and
additional settings defined for that remote instance. The new Solution
Manager will display the Daily Processes page for the remote instance.
For more information on Vision remote instances, refer to [Managing Vision Remote
Instances](Managing-Vision-Remote-Instances.md) in
the **Solution Manager** online help.

## Vision Card Colors

The Vision module categorizes cards on the Vision Live and sub-pages
using icons and colors that dynamically change based on the status of
the job(s) the card monitors.

Vision cards use the following icon and color combinations:

+----------------------------------+----------------------------------+
| ![Vision Card Finished           | **Finished OK**: A white check   | | OK](../../../Resources/Images    | mark icon on a green background  |
| /SM/Vision-Card-Finished-O | indicates the job(s) have        |
| K.png "Vision Card Finished OK") | completed without error in the   |
|                                  | following possible job statuses: |
|                                  |                                  |
|                                  | -   Finished OK                  |
|                                  | -   Marked Finished OK           |
+----------------------------------+----------------------------------+
| ![Vision Card Finished with      | **Finished with Error(s)**: A    | | Error(s)](../../../Resource      | white X icon on a red background |
| s/Images/SM/Vision-Card-Fini | indicates that the job(s) have   |
| shed-with-Error(s).png "Visi | completed with one or more       |
| on Card Finished with Error(s)") | errors in the following possible |
|                                  | job statuses:                    |
|                                  |                                  |
|                                  | -   Failed                       |
|                                  | -   Initialization Error         |
|                                  | -   Marked Failed                |
+----------------------------------+----------------------------------+
| ![Vision Card Finished with      | **Finished with Warning(s)**: A  | | W                                | white exclamation point icon on  |
| arning(s)](../../../Resources/Im | an orange background indicates   |
| ages/SM/Vision-Card-Finished | that the job(s) have finished    |
| -with-Warning(s).png "Vision | with one or more warnings in the |
|  Card Finished with Warning(s)") | following possible job statuses: |
|                                  |                                  |
|                                  | -   Missed Start Time            |
|                                  | -   Skipped                      |
|                                  | -   Cancelled                    |
+----------------------------------+----------------------------------+
| ![Vision Card In                 | **In Process**: A blue gear icon | | Process](../../../Resources/Imag | on a white background indicates  |
| es/SM/Vision-Card-In-Proce | that the job(s) are running      |
| ss.png "Vision Card In Process") | without error(s) in the          |
|                                  | following possible job statuses: |
|                                  |                                  |
|                                  | -   Attempt to Start             |
|                                  | -   Job Running                  |
|                                  | -   Job Running; To be           |
|                                  |     Terminated                   |
|                                  | -   Prerun Active                |
|                                  | -   Start Attempted              |
|                                  | -   Still Attempting Start       |
+----------------------------------+----------------------------------+
| ![Vision Card In Process with    | **In Process**: A red gear icon  | | E                                | on a white background indicates  |
| rror(s)](../../../Resources/Imag | that one or more underlying jobs |
| es/SM/Vision-Card-In-Proce | is in process and at least one   |
| ss-with-Error(s).png "Vision | job is in a failed category      |
|  Card In Process with Error(s)") | state in the following possible  |
|                                  | job statuses:                    |
|                                  |                                  |
|                                  | -   In Process Category:         |
|                                  |     -   Attempt to Start         |
|                                  |     -   Job Running              |
|                                  |     -   Job Running; To be       |
|                                  |         Terminated               |
|                                  |     -   Prerun Active            |
|                                  |     -   Start Attempted          |
|                                  |     -   Still Attempting Start   |
|                                  | -   Failed Category:             |
|                                  |     -   Failed                   |
|                                  |     -   Initialization Error     |
|                                  |     -   Marked Failed            |
+----------------------------------+----------------------------------+
| ![Vision Card In Process with    | **In Process**: An orange gear   | | Warning                          | icon on a white background       |
| (s)](../../../Resources/Images/S | indicates that one or more       |
| M/Vision-Card-In-Process%2 | underlying jobs is in process    |
| 0with-Warning(s).png "Vision C | and at least one job is in a     |
| ard In Process with Warning(s)") | warning category state in the    |
|                                  | following possible job statuses: |
|                                  |                                  |
|                                  | -   In Process Category:         |
|                                  |     -   Attempt to Start         |
|                                  |     -   Job Running              |
|                                  |     -   Job Running; To be       |
|                                  |         Terminated               |
|                                  |     -   Prerun Active            |
|                                  |     -   Start Attempted          |
|                                  |     -   Still Attempting Start   |
|                                  | -   Warning Category:            |
|                                  |     -   Missed Start Time        |
|                                  |     -   Skipped                  |
|                                  |     -   Cancelled                |
+----------------------------------+----------------------------------+
| ![Vision Card                    | **Waiting**: A gray hourglass    | | Waiting](../../../Resour         | icon on a white background       |
| ces/Images/SM/Vision-Card-Wa | indicates the job(s) are in a    |
| iting.png "Vision Card Waiting") | waiting category state in the    |
|                                  | following possible job statuses: |
|                                  |                                  |
|                                  | -   Job to be Skipped            |
|                                  | -   Late to Start                |
|                                  | -   On Hold                      |
|                                  | -   Prerun Failed                |
|                                  | -   Qualifying                   |
|                                  | -   Released                     |
|                                  | -   Wait Expression Dependency   |
|                                  | -   Wait Job Conflict            |
|                                  | -   Wait Job Dependency          |
|                                  | -   Wait Machine                 |
|                                  | -   Wait Start Time              |
|                                  | -   Wait Threshold/Resource      |
|                                  |     Dependency                   |
|                                  | -   Wait to Start                |
|                                  | -   Wait to Start; Forced        |
+----------------------------------+----------------------------------+
| ![Vision Card                    | **None**: A purple question mark | | None](../../../                  | icon on a white background       |
| Resources/Images/SM/Vision-Car | indicates the job(s) have not    |
| d-None.png "Vision Card None") | been found in OpCon daily for    |
|                                  | the specific day.                |
+----------------------------------+----------------------------------+
| ![Vision Card                    | **Computing**: A spinning purple | | Computing](../../../Resources/   | line icon on a white background  |
| Images/SM/Vision-Card-Comput | indicates the status of the card |
| ing.png "Vision Card Computing") | is being calculated by OpCon.    |
+----------------------------------+----------------------------------+
| ![Vision Card Different Vision   | A white unlocked padlock icon on | | Fr                               | a gray background indicates the  |
| equency](../../../Resources/Imag | card does not match the Vision   |
| es/SM/Vision-Card_Different- | Frequency. This card only        |
| Vision-Frequency.png "Vision C | appears in Admin mode.           |
| ard Different Vision Frequency") |                                  |
+----------------------------------+----------------------------------+
| ![Vision Badge                   | **Badge**: The badge icon        | | Icon](../../../Re                | indicates the card is defined to |
| sources/Images/SM/Vision-Badge | a remote instance. For more      |
| -Icon.png "Vision Badge Icon") | information on the badge field,  |
|                                  | refer to [Managing Vision Remote | |                                  | Instances](Managing-Vision%2   |
|                                  | 0Remote-Instances.md) |
|                                  |  in the **Solution         |
|                                  | Manager** online help.           |
+----------------------------------+----------------------------------+
| ![Vision SLA Icon                | **SLA**: The gray SLA icon       | | Gray](../../../Resources/        | indicates there is a problem     |
| Images/SM/Vision-SLA-Icon- | with a child of the group.       |
| Gray.png "Vision SLA Icon Gray") |                                  |
+----------------------------------+----------------------------------+
| ![Vision SLA Icon                | **SLA**: The orange SLA icon     | | Yellow](../../../Resources/Imag  | indicates there is a problem     |
| es/SM/Vision-SLA-Icon-Yell | with a group (or a tag if on a   |
| ow.png "Vision SLA Icon Yellow") | tag card).                       |
+----------------------------------+----------------------------------+
| ![Vision Edit                    | **Edit**: The blue edit button   | | Button](../../../Reso            | allows you to edit a card.       |
| urces/Images/SM/Vision-Edit- |                                  |
| Button.png "Vision Edit Button") |                                  |
+----------------------------------+----------------------------------+
| ![Vision Delete                  | **Delete**: The red delete       | | Button](../../../Resource        | button allows you to delete a    |
| s/Images/SM/Vision-Delete-Bu | card.                            |
| tton.png "Vision Delete Button") |                                  |
+----------------------------------+----------------------------------+
