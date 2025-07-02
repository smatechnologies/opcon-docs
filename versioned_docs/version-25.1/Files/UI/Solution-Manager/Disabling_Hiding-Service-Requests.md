# Disabling or Hiding Service Requests

You can define rules (or OpCon expressions) for disabling or hiding
Service Request buttons. A rule can be either of the following:

- A boolean value (true/false)
- A [token](../../../objects/using-properties.md#tokens) whose value resolves to "true" or "false"
- A [complex expression](../../../reference/property-expressions-syntax.md)

:::note
Both the "Disable Rule" and "Hide Rule" are optional. If neither rule is defined, then the Service Request button will be enabled and visible.
:::

## Disabling Service Requests

:::note
The "Disable Rule" evaluation result must resolve to "true" or "false". If the evaluation fails, then the Service Request button will be disabled (by design).
:::

To define a rule for disabling a service request:

1. Click the **Edit** button at the top-right corner of the Service
    Request button. The **Edit Service Request** page displays.
2. Toggle the **Disable Rule** switch on. A text field displays for
    entering the expression.
3. Enter a boolean value, a token, or a complex expression. Use the
    following examples as guides:

## Hiding Service Requests

:::note
The "Hide Rule" evaluation result must resolve to "true" or "false". If the evaluation fails, then the Service Request button will be hidden (by design).
:::

To define a rule for hiding a service request:

1. Click the **Edit** button at the top-right corner of the Service
    Request button. The **Edit Service Request** page displays.
2. Toggle the **Hide Rule** switch on. A text field displays for
    entering the expression.
3. Enter a boolean value, a token, or a complex expression. Use the
    following examples as guides:
