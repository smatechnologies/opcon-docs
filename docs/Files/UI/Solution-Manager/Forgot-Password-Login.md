# Forgot / Reset Password

## Resetting Password

If a user forgot their password, they can reset it by clicking the **Forgot Password** link on the login screen.

:::note
The **Forgot Password** flow requires an active email (SMTP) server configuration. If the email server is not configured, the user will need to contact the OpCon administrator to reset their password.
:::

![Solution Manager Login Screen with Forgot Password Link](../../../Resources/Images/SM/Forgot-Password-Login-Page.png "Solution Manager Login Screen with Forgot Password Link")

## Forgot Password Flow

1. Enter your **Login Name** and **Email Address** associated with your account. Click **Send Recovery Instructions**. This will send a 6 digit code to your email address if your login name and email matches a corresponding record.

:::note
This requires an active email (SMTP) server configuration. If the email server is not configured, the user will not receive an need to contact the OpCon administrator to reset their password. If you do not receive the email, check your spam folder. If you still do not receive the email, contact your OpCon administrator.
:::

![Solution Manager Forgot Password Credentials Page](../../../Resources/Images/SM/Forgot-Password-Credentials-Page.png "Solution Manager Forgot Password Credentials Page")

2. After you receive the email, enter the 6 digit code in the **Verification Code** field and click **Submit**.

![Solution Manager Forgot Password Code Page](../../../Resources/Images/SM/Forgot-Password-Code-Page.png "Solution Manager Forgot Password Code Page")

If you need to resend the email, click **Resend** and it will resend a code to the previously entered email address.

![Solution Manager Forgot Password Resend Code Page](../../../Resources/Images/SM/Forgot-Password-Resend-Code.png "Solution Manager Forgot Password Resend Code Page")

3. After submitting and verifying the code, you will be prompted to enter a new password. Enter and re-confirm your new password and click **Submit**.

![Solution Manager Forgot Password New Password Page](../../../Resources/Images/SM/Forgot-Password-New-Password.png "Solution Manager Forgot Password New Password Page")

Clicking **Submit** will verify your new password and log you into the application.
