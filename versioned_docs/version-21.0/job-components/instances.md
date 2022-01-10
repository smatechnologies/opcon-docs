# Instance Definition

The *instance definition* for a job is a place to define properties for one or more instances of the job. The following options are provided:

- **Instances**: Defines the predefined properties for each instance of the job. When the job is placed in the Daily tables, these properties will be included as Job Instance Properties. To make use of the Job Instance Properties, use tokens in the job's command line or events to reference the Job Instance Properties (e.g., \[\[JI.PropertyName\]\]).
  - The value of the first property for each instance is appended to the job name when it is added to Operations. A job's name in Operations cannot exceed 128 characters; therefore, the value for the first property should be short and informative.
  - If the job is a multi-instance job, multiple strings of properties may be defined. By default, each string will be used to create an instance of the job. For more information, refer to [Using Properties for Automation](../objects/using-properties.md), [Job Instance Property Name Syntax](../objects/using-properties.md#job), and [Multi-Instance Jobs](../operations/job-names.md#multi-instance-jobs).
  - If only a single instance definition of properties were predefined in the Master, they will be selected for merging with any event-defined properties.
  - If multiple instances of properties are defined in the Master, the first property defined in the event will be matched with the first property in each instance set.
    - If a match is found, that instance set of properties will be selected for merging with the event-defined properties.
    - If no match is found, the properties defined in the event will be used alone as a new instance of the schedule or job.
  - Now, the user only has to define the properties that differ in value from those defined in the Master.
