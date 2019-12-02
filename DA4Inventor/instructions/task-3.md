# Task 3 - Upload an AppBundle to Design Automation

An AppBundle is a package of binaries and supporting files that contains the custom commands you want to run. For this tutorial, you will use the AppBundle named *samplePlugin.bundle*  that is stored in the [*tutorial_data* folder of this repository](../tutorial_data). This AppBundle contains an Inventor plug-in that takes in an Inventor part or assembly file, and resizes it to a size you specify. It also generates an image (BMP file) of the part or assembly. See the corresponding [task in the Step-by-Step tutorial on the Forge Portal](https://dev.forge.autodesk.com/en/docs/design-automation/v3/tutorials/inventor/task6-post-workitem/?sha=7043_7) for more information on AppBundles. 

## Download the AppBundle

- Download *samplePlugin.bundle.zip* from the [*tutorial_data* folder of this repository](../tutorial_data).

## Register the AppBundle

When registering the AppBundle, you provide a name for the AppBundle (the id), and specify that it must run on Inventor 2020. The name can be different to the name of the AppBundle zip file. For sake of this tutorial, use the name `ChangeParamApp`.

1. On the Postman sidebar, click **Task 3 - Upload AppBundle > POST Register the AppBundle**. The request loads.

3. Click the **Body** tab, and verify that the `id`, is set to the `ChangeParamApp` variable and `engine` is set to `Autodesk.Inventor+24` (Inventor 2020).

    ![AppBundle Body](../images/task3-appbundle_body.png "AppBundle Body") 

4. Click **Send**. If the request is successful, you see a screen similar to the following image:

    ![AppBundle Registered](../images/task3-appbundle_registered.png "AppBundle Registered")

    `uploadParameters` shown in the response section of the preceding image contains the information required to upload the AppBundle to Forge. This information is saved to a series of Postman Environment variables, so that it can be reused in the next step.

    ![formData](../images/task3-appbundle_form_data.png "formData")

## Upload the AppBundle

1. On the Postman sidebar, click **Task 3 - Upload AppBundle > POST Upload the AppBundle**. The request loads.

2. Click the **Body** tab, and scroll down such that the **file** row is visible.

3. Click **Select Files**, and pick *samplePlugin.bundle.zip*, which you downloaded earlier.

    ![Pick AppBundle package](../images/task3-appbundle_select_file.png "Pick AppBundle package")

5. Click **Send**. You should see a screen similar to the following. The response has only a header and no body.

    ![AppBundle uploaded](../images/task3-appbundle_uploaded.png "AppBundle uploaded")

## Create an Alias for the AppBundle

When you registered the AppBundle earlier, it was registered as version 1 of the AppBundle. Now, you create an alias named *my_working_version* to reference that version.

1. On the Postman sidebar, click **Task 3 - Upload AppBundle > POST Create an Alias for the AppBundle**. The request loads.

2. Click the **Body** tab and note how `id` is set to`my_working_version`.

    ![Alias](../images/task3-appbundle_alias.png "Alias")

3. Click **Send**. You should see a response similar to the following image.

    ![Alias response](../images/task3-appbundle_alias_set.png "Alias response")

[:rewind:](../readme.md "readme.md") [:arrow_backward:](task-2.md "Previous task") [:arrow_forward:](task-4.md "Next task")
