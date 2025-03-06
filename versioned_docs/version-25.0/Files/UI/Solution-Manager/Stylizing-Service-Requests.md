# Stylizing Service Request Buttons

You can also stylize the Service Request button using custom HTML.

**To customize the button**:

1. Click the **Edit** button at the top-right corner of the Service Request button. The **Edit Service Request** page displays.
2. Toggle the **Custom Html** switch on. A text field displays for entering the custom HTML code.
3. Enter the following template HTML code:

   ```html
   <div style="background-color: #043A4F;height: 12px;width:200px;border-radius: 3px;border: 2px solid #043A4F;color: white;font-size: 14px;font-weight: bold;padding: 25px">
   <span class="v-icon FontAwesome" style="color: #93D7FA">&#xf0ac</span>
   <span>SERVICE REQUEST NAME</span>
   </div>
   ```

4. Modify the code, as needed. Below are a few recommendations for updating the icon and text on the button.

**To modify the font icon that appears on the button**:

Change the color of the font icon by entering a new HEX color code in the template code, as shown below:

```html
<span class="v-icon FontAwesome" style="color: #93D7FA">&#xf0ac</span> 
```

Change the appearance of the font icon by entering or pasting a new Unicode in the template code, as shown below:

```html
<span class="v-icon FontAwesome" style="color: #93D7FA">&#xf0ac</span>
```

To find the desired Unicode:

1. Go to: <https://fontawesome.com/v4.7.0/icons/>.
2. Select the icon that you wish to include on the button.
3. Copy the Unicode from the icon's details page.

Remove the font icon from the button by commenting out the following line in the template code, as demonstrated below:

```html
<!--<span class="v-icon FontAwesome" style="color: #93D7FA">&#xf0ac</span>-->
```

To modify the text that appears on the button:

Change the `<span>` text in the template code to match the actual Service Request Name, as shown below:

```html
<span>SERVICE REQUEST NAME</span>
```

:::note
If you submit a Service Request using a URL, the URL uses the Service Request Name and not the text displayed by the custom HTML. To avoid confusion, it is recommended that you copy the Service Request Name into the custom HTML `<span>` text area. This way, the actual Service Request Name and the text displayed on the button will match.
:::

The result using the template code:

![Customized Service Request button](../../../Resources/Images/SM/Stylizing-Service-Request_1.png "Customized Service Request button")
