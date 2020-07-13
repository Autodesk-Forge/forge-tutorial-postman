# Task 7 - Submit a WorkItem

When you submit a WorkItem to Design Automation, you are instructing Design Automation to execute the Activity specified in the WorkItem.

The relationship between an Activity and a WorkItem can be thought of as a “function definition” and “function call”, respectively.
Named parameters of the Activity have corresponding named arguments of the WorkItem.
Like in function calls, optional parameters of the Activity can be skipped and left unspecified while posting a WorkItem.

For this exercise, you will apply the DeleteWalls Activity on the Revit file you uploaded to OSS in the previous task. The request picks up the Revit file from the signed url stored in the variable 'ossDownloadURL'.

## Create a WorkItem

1. On the Postman sidebar, click **Task 7 - Submit a WorkItem > Create a WorkItem**. The request loads.

2. Click the **Body** tab and observe how the Actvity ID, the input file, and the ouput file are specified.

3. Click **Send**. If the request is successful you should see a screen similar to the following image.

    ![deleteWallsResultUrl](../images/task7-result_url.png "deleteWallsResultUrl")

    The main attributes on the JSON payload are:

    - `activityId` - Specifies what Activity to execute. The id you specify here must be a fully qualified id. A fully qualified id is made up of three parts. They start with the Nickname of the Forge App (or the Client Id of the Forge App. The Nickname is followed by the '.' character, which in turn is followed by the Activity name. This is followed by the '+' character and finally the Activity Alias. For more information on fully qualified ids and unqualified ids, see the [Forge portal documentation on ids](https://forge.autodesk.com/en/docs/design-automation/v3/developers_guide/aliases-and-ids/#ids).

    - `arguments` - Contains all the parameters that need to be passed to the Activity specified by `activityId`. They must match the parameters you specified in Task 5, when you created the Activity.

    - `rvtFile` - Specifies how to obtain the input rvt file file for the Activity. It contains the signed download URL to the rvt file or a zip file that contains the rvt file. This is followed by the HTTP verb that downloads the file.


       **Note:**
       If you uploaded a zip file (instead of a rvt file) in task 6, you must specify an attribute named `pathInZip`, which indicates the path to the Revit file within the zip file.

    - `result` - Specifies the signed URL to the location reserved for the output of the activity, followed by the HTTP verb to use.


## Check Status of a WorkItem

Design Automation WorkItems are queued before they are processed. Processing itself can take time. Once processing is done, you need to know if the WorkItems ran successfully or not. As such it is important for you to check the status of the WorkItem you created.

1. On the Postman sidebar, click **Task 7 - Submit a WorkItem > Check Status of a WorkItem**. The request loads.

2. Click **Send**. You should see a screen similar to the following image.

    ![WorkItem Status check result](../images/task7-check_status.png "WorkItem Status check result")

[:rewind:](../readme.md "readme.md") [:arrow_backward:](task-6.md "Previous task")
