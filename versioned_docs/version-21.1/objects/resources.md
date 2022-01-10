# Resources

A *resource* is a user-defined value consisting of a name and a numeric limit. Resources are used to manage and limit the number of concurrently running jobs across schedules and machines in OpCon. Maximum job count on an LSAM limits concurrently running jobs on a specific machine. Conflict dependencies can also limit the number of concurrently running jobs, but conflict dependencies can be hard to manage in large numbers. Resources are more flexible because they are platform independent, easy to manage, and can be influenced by external events (refer to [External Events](../events/defining.md#external) in the **OpCon Events** online help).

The following information applies to defining resources:

- **Name**: Defines the name for the resource.
- **Documentation**: Provides an area for descriptions, explanations, and notes that can be updated for the resource.
- **Max Resources**: Defines a numeric maximum number of resources.
- **Resources in Use**: Indicates the number of resources currently in use by OpCon jobs.

:::tip Example
Jamie has thirty jobs requiring the use of tape drives on a mainframe. The mainframe has only 10 physical tape drives for use. The thirty jobs could run at any time based on other job dependencies, but the number of those jobs running concurrently must never exceed the number of physical tape drives.

- Jamie creates a resource called **TapeDrive** in OpCon Administration and sets the Max Resources to **10**.
- For *each* job (Job1 through Job30), Jamie creates a resource requirement to require one TapeDrive resource.

**Result**: For Job1 through Job30, the SAM uses one TapeDrive resource each time a job is submitted. If all 10 resources are in use, the SAM waits until a resource is available before submitting the next job.
:::
