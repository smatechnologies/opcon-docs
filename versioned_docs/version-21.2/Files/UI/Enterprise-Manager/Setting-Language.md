# Setting the Language

The EM will detect your local language. If it is not available, it will default to English. There are two ways to set the required language. This can be done by setting a parameter on the Enterprise Manager executable, or it can be set in the **EnterpriseManager.ini** which is located in the folder where the EM is installed. The parameter to be set would be --nl with the associated Locale ID for the required language.

## Adding a Parameter on the Executable

To set the language:

1. Right-click the **Enterprise Manager** shortcut and select **Properties**.
2. Find the **Target** text box on the **Shortcut** tab.
3. Add the *parameter* after the **EnterpriseManager.exe**. Alternatively, create a bat file and add the *parameter* after the **EnterpriseManager.exe**.

## Updating the Configuration File

To set the language:

1. Browse to the Enterprise Manger directory.
2. Open the **EnterpriseManager.ini** file with WordPad.
3. Insert a **line** before the *--startup* line.
4. Key in the required *language parameter* (refer to the table below for a list of valid language parameters). For example:
5. Save the changes to the **EnterpriseManager.ini** file and close it.
6. Restart the **Enterprise Manager executable**.

|Language|Locale ID|
|--- |--- |
|Chinese (Simplified)|zh|
|Chinese (Traditional)|zh-TW|
|Dutch (Nederland)|nl|
|English|en|
|French|fr|
|German|de|
|Italian|it|
|Japanese|ja|
|Korean|ko|
|Portuguese (Brazil)|pt|
|Spanish|es|
