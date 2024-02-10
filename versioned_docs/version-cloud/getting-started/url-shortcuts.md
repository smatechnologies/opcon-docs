# URL Shortcuts

## Self Service Shortcut

To bypass the Home page and go directly to Self Service, you can enter its dedicated URL. Use the following URL syntax: `https://server:port/selfservice`

When you type the URL in the web browser, you will first be prompted to log into SMA Solution Manager (if not already logged in). After login, you will automatically be redirected to the Self Service page.

## Service Request Shortcut

To bypass Self Service and go directly to a Service Request, you can enter a unique URL. Use the following URL syntax: `https://server:port/selfservice/servicerequest/execution/servicerequestname`

:::tip Example

`https://server:port/selfservice/servicerequest/execution/run backup`

Modern web browsers don't need you to use URL encoding even if it's good practice to replace special characters with percent-encoding (e.g., - for space). For example, in the example above, "run backup" may automatically be transformed into the following:

`https://server:port/selfservice/servicerequest/execution/run-backup`

When you type the URL in the web browser, you will first be prompted to log into SMA Solution Manager (if not already logged in). After login, you will automatically be redirected to the Service Request form.

:::
Service Request access via the URL shortcut may be impacted by any Hide/Disable rules applied to the Service Request. For this reason, bear the following in mind:

If a Service Request is Disabled, the URL shortcut will not be honored because the request is disabled.

If a Service Request is Hidden, but not Disabled, then the URL shortcut will be honored. Only users who are provided the shortcut will be able to access the hidden Service Request.
:::
