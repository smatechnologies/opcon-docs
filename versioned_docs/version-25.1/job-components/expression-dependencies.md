# Expression Dependencies

Each OpCon job can depend on the result of an expression. The expression must be defined using the Property Expressions API. For additional information, refer to [Property Expressions API Syntax](../reference/property-expressions-syntax.md).

The *expression dependency* associated with the job will always be included with the job when it runs. The expression dependency associated with the frequencies will only be included with the job when it runs with the associated frequency.

The following information applies to defining expression dependencies:

- **Schedule Name**: Defines the name of the schedule.
- **Job Name**: Defines the name of the job.
- **Frequency Name**: Defines the name of the frequency if the expression dependency is defined for a specific frequency.
- **Job Expression**: Defines the job-related expression that must resolve to "true" when the SAM performs the dependency check for the job.
- **Frequency Expression**: Defines an expression associated with the Frequency Name that must resolve to "true" when the SAM performs the dependency check for the job. This dependency is included with the job only when it runs on the associated frequency.
