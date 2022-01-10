# Managing Vision Settings

Vision Settings allows you to create, edit, and delete cards. It also
provides a view of the hierarchy of existing cards.

The following fields apply for setting Vision Settings:

**Parent Card**: This field allows you to select the parent card for the
tag. Group and tag cards can be defined at the root (/) level.

**Type**: This field allows you to define the card as a group card or a
tag card.

- **Group**: This option allows you to create a parent card, and this
    card can be defined at the root level or as the child of an existing
    group.
- **Tag**: This option allows you to create a card for a tag (pattern)
    defined in the Enterprise Manager, and this card can be defined at
    the root level or as a child card of an existing group.

**Name**: This field allows you to define the card name.

**Instance**: This option allows you to select a remote instance the
card will monitor. For more information on Vision remote instances,
refer to [Managing Vision Remote Instances](Managing-Vision-Remote-Instances.md) in
the **Solution Manager** online help.

**Pattern**: This option allows you to select which tag defined in the
Enterprise Manager the card will monitor.

**Job Offset**: This field allows you to specify an offset on the
schedule date on which Vision has to look for jobs, using the following
options:

- **-5 Frequency Days**: This option specifies the frequency offset
    will apply five days before the current day.
- **-4**Frequency Days****: This option specifies the frequency
    offset will apply four days before the current day.
- **-3**Frequency Days****: This option specifies the frequency
    offset will apply three days before the current day.
- **-2**Frequency Days****: This option specifies the frequency
    offset will apply two days before the current day.
- **Previous Frequency Day**: This option specifies the frequency
    offset will apply one day before the current day.
- **Current Frequency Day**: This option specifies the frequency
    offset will apply the current day.
- **Next Frequency Day**: This option specifies the frequency offset
    will apply one day after the current day.
- **+2**Frequency Days****: This option specifies the frequency
    offset will apply two days after the current day.
- **+3**Frequency Days****: This option specifies the frequency
    offset will apply three days after the current day.
- **+4**Frequency Days****: This option specifies the frequency
    offset will apply four days after the current day.
- **+5**Frequency Days****: This option specifies the frequency
    offset will apply five days after the current day.

**Roles**: This frame allows you to assign roles to the tag.

- **All granted**: This switch allows you to select whether all roles
    are granted.
- **Revoked**: This option allows you to define which roles are
    revoked privileges.
- **Granted**: This option allows you to define which roles are
    granted privileges.

**Thresholds**: This frame allows you to define the numerical range for the QoS or SLA success rate.

- **QoS**: Defines a measure of the number of times jobs have
    completed successfully.
  - **Critical**: Defines the value to indicate the critical level.
  - **Tolerable**: Defines the value to indicate the tolerable
        level.
- **SLA**: Defines a measure of the number of times jobs have
    completed within the defined SLAs.
  - **Critical**: Defines the value to indicate the critical level.
  - **Tolerable**: Defines the value to indicate the tolerable
        level.

**Frequency(ies)**: This field allows you to select an existing
frequency or define a new frequency. For more information on
frequencies, refer to [Managing Vision Frequencies](Managing-Vision-Frequencies.md) in the
**Solution Manager** online help.

:::note
This field is optional for Group cards.
:::

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Creating Cards](Creating-Cards.md)
- [Editing Cards](Editing-Cards.md)
- [Deleting Cards](Deleting-Cards.md)
