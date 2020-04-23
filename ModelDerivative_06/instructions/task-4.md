# Task 4 - Extract Metadata

In order to extract geometry, you must identify the Viewable the geometry resides on.  A Viewable is a 3D view or 2D sheet that can be displayed in the Forge Viewer.  

## Retrieve a list of Viewables

In order to obtain a list of Viewables, you will use the URL safe Base64-encoded URN of the source file in the next request. Postman saved this URN to the variable `t6_url_safe_urn_of_source` in the previous task.

1. In the Postman sidebar, click **Task 4 - Retrieve Metadata > Retrieve a List of Viewables**. The request loads.

2. Click **Send**. You should see a screen like the following image.

   ![list viewables](../images/task4_list_model_views_success.png "list viewables")

   Note that the model has only one Viewable. (Inventor and Fusion 360 models have only one Viewable. Revit models can have multiple Viewables.) A script in the **Tests** tab saves the Id of the Viewable to a variable named `metadata_guid_0`.

## Retrieve the Object Tree of Viewable

1. In the Postman sidebar, click **Task 4 - Retrieve Metadata > List Object Tree**. The request loads.

   ![list objects](../images/task4_get_properties.png "list objects")

   Note the use of the variable `metadata_guid_0` as a URI parameter.

2. Click **Send**. If extracting properties takes time, you will see a screen like the following. 

   ![list objects success](../images/task4_get_properties_success_01.png "list objects success")

3. Click **Send** again. You should see a screen like the following. 

   ![list objects success](../images/task4_get_properties_success_02.png "list objects success")

The response body contains the list of object properties.

[:rewind:](../readme.md "readme.md") [:arrow_backward:](task-3.md "Previous task")
