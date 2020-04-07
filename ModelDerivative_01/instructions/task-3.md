# Task 3 - Create an Activity

An *Activity* is an action that can be executed using the Design Automation API. In this task, you will create and post an Activity to run a MAXScript.

## Create a New Activity

1. In the Postman sidebar, click **Task 3 -Create an Activity > POST Create a New Activity**. The request loads.

2. Click the **Body** tab. Observe the body parameters.

    ![Body tab of Create Activity](../images/task3-create_activity.png "Body tab of Create Activity")

**Notes**
 - `id` is the name given to the new Activity. 
 
 - `commandLine` is the command run by this Activity. The variables used on the command line are replaced with actual values before executing the Activity. This mechanism lets you replace the file path(s) you used while testing the command line locally, with file paths that are applicable to Design Automation. For more information see the [Forge portal documentation on Command lines](https://forge.autodesk.com/en/docs/design-automation/v3/developers_guide/field-guide/#command-lines).

    The variables used on the command line are:

    - `$(engine.path)` - The full path to the folder containing *3dsmaxbatch.exe*. The variable ``$(engine.path)`` will be replaced by the path to where the engine is installed. The engine is defined in the JSON payload as `"engine": "Autodesk.3dsMax+2020"`. **Do not edit or alter this commandLine in the request body of Activity posts.** 

    - ` $(args[InputMaxScene].path)` - Will be replaced by the path to a file specified by a parameter named `InputMaxScene`.

    -  `$(args[MaxscriptToExecute].path)` - Will be replaced by the path to a file specified by a parameter named `MaxscriptToExecute`.

- `engine` is the Design Automation engine that the Activity must run on (3ds Max 2020 in this case).

3. Click **Send**. If the request is successful, you should see a screen similar to the following image.

    ![Successful creation of an Activity](../images/task3-activity_create_success.png "Successful creation of an Activity")

## Create an Alias to the Activity

Design Automation does not let you reference an Activity by its `id`. You must always reference an Activity by an *Alias*. Note that an Alias points to a specific version of an Activity and not the Activity itself.

To create an Alias named `tutorial`, which refers to version `1` of the `ExecuteMaxscript` Activity:

1. In the Postman sidebar, click **Task 3 -Create an Activity > POST Create an Alias to the Activity**. The request loads.

2. Click **Send**. If the request is successful, you should see a screen similar to the following image.

    ![Successful creation of Alias](../images/task3-activity_alias_create_success.png "Successful creation of Alias")

[:rewind:](../readme.md "readme.md") [:arrow_backward:](task-2.md "Previous task") [:arrow_forward:](task-4.md "Next task")
