# Working with Vision

Vision is an SMA Solution Manager module that allows you to define cards that show a summary of the status of all jobs with a matching tag and view the health of cards based on their historical completion.

![Solution Manager Vision Home Page](../Resources/Images/SM/Vision-Home-Page.png "Solution Manager Vision Home Page")

## Vision Live

The Vision Live page allows you to view cards and their statuses. For more information on cards, refer to [Viewing Cards in Vision Live](Viewing-Cards-in-Vision-Live.md) in the **Solution Manager** online help.

### Cards

There are two types of cards, group and tag, which can be organized in a hierarchical structure.

Group cards are parent cards that can be defined at the root level or as a child card of an existing group. The group card definition must contain a name, role, and at least one tag card defined at the lowest group level.

Tag cards can be defined individually at the root level or as child cards of an existing group. The tag card definition must contain a pattern (which matches a tag defined in the Enterprise Manager), job offset, role, and one or more frequencies.

Cards can be assigned frequencies which will determine which days the card is displayed in the Vision module. When a card is displayed, it will show a summary containing the start time, duration, end time, and job statuses for any jobs defined in the Enterprise Manager that match the pattern defined for the card. If a card is blank, there are no jobs defined in the Enterprise Manager that match the pattern for that date.

### Job Status Summary

Clicking the ![Vision Vertical Ellipsis Icon](../Resources/Images/SM/Vision-Vertical-Ellipsis.png "Vision Vertical Ellipsis Icon") (vertical ellipsis) icon on a card flips the card to its back which displays the total number of jobs per job status that match the pattern defined for a tag card or, when viewing a parent group card, the total number of jobs per job status that match the pattern(s) defined for all child cards.

### Filtering

The Filter bar at the top of the page can be used to display cards that have a job defined based on what is stored in the system for the current day, the day before, and the day after.

![Vision Filtering Options](../Resources/Images/SM/Vision-Filtering-Options.png "Vision Filtering Options")

## Vision Health

Vision Health allows you to view a dashboard of the historical data for completed Vision cards. For more information on Vision Health, refer to [Viewing Vision Health](Viewing-Vision-Health.md) in the **Solution Manager** online help.

## Vision Settings

The Vision Settings page allows you to create, edit, and delete cards and provides access to the Vision Frequencies, Vision Actions, and Vision Remote Instances pages for defining and managing those settings.
