# Task 4 - Create an Activity

An Activity is an action that can be executed in Design Automation. 

## Create a New Activity

1. On the Postman sidebar, click **Task 4 - Publish an Activity > POST Create a New Activity**. The request loads.

2. Click the **Body** tab. Observe the body parameters.

    ![Body tab of Create Activity](../images/task4-create_activity.png "Body tab of Create Activity")

**Notes:**
 - `id` is the name given to the new Activity. The id is picked up from the Postman Environment Variable `dasActivityName`. 
 - `commandLine` is the command run by this Activity. It consists of several variables. These variables are replaced by actual values at the time the Activity is executed. This mechanism provides the ability to test the command line locally with file paths that are applicable to Design Automation. For more information, see the [Forge portal documentation on command lines](https://forge.autodesk.com/en/docs/design-automation/v3/developers_guide/field-guide/#command-lines).

    - `$(engine.path)\\InventorCoreConsole.exe` - The full path to the Inventor engine. The version of Inventor to be used is defined in the request body as `“engine”: “Autodesk.Inventor+24"` (Inventor 2020).  

    - `$(args[InventorDoc].path)` - The full path to the folder that the file identified by the parameter InventorDoc is downloaded to.. 

    - `$(appbundles[ChangeParamApp].path)` - The full path to where the AppBundle specified under `appbundles` is unzipped to.

    - `$(args[InventorParams].path)` - The full path to where the JSON file carrying the height and width parameters is saved to.

- `parameters` defines the inputs and outputs that need to be provided when the Activity is executed. Input parameters are identified by the attribute `"verb":"get"`. Output parameters are identified by the attribute `"verb":"put"`. 

 - `engine` is the Design Automation engine that the Activity (Inventor 2020 in this case) runs on.

 - `appbundles` is the fully qualified id of the AppBundle referred to in `commandLine`. Although this is specified as an array, Design Automation for Inventor supports only one AppBundle per activity (Design Automation for AutoCAD supports multiple AppBundles).

 - `settings` specifies the command script to be run by the activity. In this case, it is empty as no script is being called. 

3. Note how the name (Id) of the Activity is set to `ChangeParamActivity`.

4. Click **Send**. If the request is successful, you should see a screen similar to the following image.

    ![Successful creation of an Activity](../images/task4-activity_create_success.png "Successful creation of an Activity")

## Create an Alias to the Activity

When you created an Activity earlier, you created version 1 of the Activity. You can create new versions of the Activity and make improvements with time.  The `id` of an Activity alone is not sufficient to define which version of an Activity Design Automation must execute. You use an Alias for this purpose.  You can think of an Alias as a tag that points to a particular version of an Activity. The version that an Alias points to can be changed as you develop more versions of a given Activity.

To create an alias named `my_current_version`, which refers to version `1` of the `ListLayersActivity`:

1. On the Postman sidebar, click **Task 4 - Create an Activity > POST Create an Alias to the Activity**. The request loads. 

2. Click the **Body** tab, and observe how the alias id has been set to `my_current_version`. 

3. Click **Send**. If the request is successful, you should see a screen similar to the following image.

    ![Successful creation of Alias](../images/task4-activity_alias_create_success.png "Successful creation of Alias")


[:rewind:](../readme.md "readme.md") [:arrow_backward:](task-3.md "Previous task") [:arrow_forward:](task-5.md "Next task")
