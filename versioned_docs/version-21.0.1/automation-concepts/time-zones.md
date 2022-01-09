# Automating Across Time Zones

One of the main design goals for OpCon was to
make it easy to use and easy to understand. One of the core decisions
was to base all date and time related automation information on the date
and time of the OpCon server. This approach
provides a consistent reference date and time for all graphical
interfaces and LSAM machines. In a multi-location environment, the potential exists for a single user to
have to be aware of activities or events occurring in multiple time
zones which could cause other activities to be triggered on machines in
other time zones. Without a consistent central reference for date and
time, attempting to coordinate these events and activities would be
extremely difficult, and as a result, prone to error.

Depending on the automation requirements, the
OpCon administrator may choose to configure
the OpCon server's time zone for Coordinated
Universal Time (UTC). If there are users and
LSAMs distributed across widely varied time zones, SMA Technologies strongly recommends
setting the SAM server to UTC and establishing that common frame of
reference. If only two or three time zones are part of the environment,
the time on the OpCon Server must be known by
all users so the jobs are configured properly for the desired start
times.

To aid with communication across time zones,
OpCon support supports the following:

- The machine definitions can include a Time Zone Name and Offset from
    UTC.
- The SAM maintains a value in the database indicating its Time Zone
    Name and Offset from UTC which is displayed with the Last SAM Pulse
    in Operations Views.
- If the machine definitions contain time zone information, it is used
    in combination with the SAM's time zone information to show an
    LSAM's time offset from the SAM.
