# Introduction

Events are strings that execute commands within OpCon. Events can be defined to execute upon Schedule Completion, Job Statuses, String Match on LSAM Feedback for Jobs, Job Exit Description, Event Triggers from the Notification Manager, and external events. These events cause the SAM to take a number of different actions.

Any number of events may be defined for each job. Events can be defined at the job or at the frequency level. All events can be passed to the SAM externally through [MSGIN](./defining.md#MSGIN).
