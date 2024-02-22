# Self Service

SMA Technologies' flagship product, OpCon, is a comprehensive cross-platform workload automation solution. Self Service is a licensed module for OpCon in SMA Technologies' next-generation web interface. It is an innovative solution that empowers front-office staff to trigger OpCon workflows without having to engage the IT department.

## Working in User Mode

Users not in the «ocadm» role or a role with the «Maintain Service Request» privilege will see a Self Service page that is similar to the example graphic here. These users will only see the Service Request buttons to which they have privileges through their roles.

![User Mode Self Service Screen Display](../Resources/Images/SM/Service-Request-View-User.png "User Mode Self Service Screen Display")

## Viewing Service Request Process Indicators

There are several ways to view the status of an executed status request. Whenever you submit a Service Request (and the form validation succeeds), a page displays to show you the execution status of the submitted request via a progress bar. You can easily exit the page by clicking the **OK** button.

![Service Request Execution Status Waiting](../Resources/Images/SM/Service-Request-Process-Indicators.png "Service Request Execution Status Waiting")

![Service Request Execution Status In Process](../Resources/Images/SM/Service-Request-Process-Indicators_1.png "Service Request Execution Status In Process")

Once a Service Request is executed, an **Execution** indicator will also appear at the top-left corner of the Service Request button.

![Execution Indicator on Service Request Button](../Resources/Images/SM/Service-Request-Indicator.png "Execution Indicator on Service Request Button")

- The **Execution** indicator displayed as ![Execution Indicator Concurrent](../Resources/Images/SM/Service-Request-Indicator_1.png "Execution Indicator Concurrent") indicates the number of concurrent Service Request executions that are still in process.
- The **Execution** indicator displayed as ![Execution Indicator Previous History](../Resources/Images/SM/Service-Request-Indicator_2.png "Execution Indicator Previous History") indicates that the Service Request has a previous execution history record.

You can click on the **Execution** indicator to access the history record of any processing or processed instances of that Service Request. This history is presented in a sortable table that displays:

- The date on which the Service Request was triggered
- The current state and progress of the Service Request
- The user who triggered the Service Request

![Service Request Execution History Record](../Resources/Images/SM/Service-Request-Indicator_3.png "Service Request Execution History Record")

## Running Service Requests

To run the Service Request:

Click on the **Service Request** button.

![Sample Service Request buttons](../Resources/Images/SM/Running-Service-Requests.png "Sample Service Request buttons")

Proceed based upon one of two prompts:

- If a confirmation message was configured with no user inputs, the Service Request will stop and prompt you to click the **Submit** button to continue, or the **Cancel** button to discard run request.

- If any user inputs were configured, the Service Request will stop so that you can configure the User Input field(s) for the Service Request.

## Filtering Service Requests

Use the Filter bar on top to filter Service Requests by «Category», «OpCon Role», and/or «Service Request name».

![Self Service Filtering Options](../Resources/Images/SM/Filtering-Service-Requests_new.png "Self Service Filtering Options")

### Querying with Wildcards

For advanced querying, the Search/Filter bar accepts the wildcard characters, asterisk (\*) and question mark (?).

- The asterisk wildcard can be used to match zero to many characters.
- The question mark wildcard must match a single (one) character.
- By default, the search/filter will perform a CONTAINS operation against the dataset with the given text query.
- If the search/filter query begins with an equal sign (=), the query becomes strict instead of performing a CONTAINS operation.

### Filter Query Examples

Suppose, we have the following dataset: "toto", "atotob", "titi", "tata", "atotobtata", "atotobbtata", "tototiti".

We could then query the dataset using both simple and complex search methods. Take a look at the table below which shows the query result against the dataset using a given text query.

|Text Query|Returns|
|--- |--- |
|toto|"toto", "atotob", "atotobtata", "atotobbtata", "tototiti"|
|toto*tata|"atotobtata", "atotobbtata"|
|toto?tata|"atotobtata"|
|=toto|"toto"|
|=toto*|"tototiti"|
|=*toto|"toto"|
|=*toto*|"toto", "atotob", "atotobtata", "atotobbtata", "tototiti"|
|=*titi|"titi", "tototiti"|
