# Task 5 - Extract Geometry

Once the object tree has been retrieved, you can pick objects by their ID, and translate them into the OBJ format. Note that when you translate specific objects, you can only translate to the OBJ format.

## Translate specific objects to OBJ

1. In the Postman sidebar, click **Task 5 - Extract Geometry > Translate Specific Objects to OBJ**. The request loads.

2. Click the **Body** tab and take note of the JSON payload.

   ![Translate specic objects](../images/tutorial_06_task_5_translate_specific_objects_01.png "Translate specic objects")

   Note the use of the Id of the Viewable (the variable `metadata_guid_0`)

2. Click **Send**. You should see a screen like the following image.

   ![Translate job submitted](../images/tutorial_06_task_5_translate_specific_objects_02.png "Translate job submitted")

## Check status of translation job

1. In the Postman sidebar, click **Task 5 - Extract Geometry > Check Status of Job**. The request loads.

   ![list objects](../images/tutorial_06_task_5_check_status_of_job_01.png "list objects")

   Note the similarity of the request that you sent when you orginally translated the file to SVF.

2. Click **Send**. If the request is successful, you should see a screen similar to the following image. 

   ![translation success](../images/tutorial_06_task_5_check_status_of_job_02.png "translation success")

   Note how the newly generated derivatives are appended to the existing list of derivatives in the manifest.

   A script in the **Tests** tab saves the URN of the translated OBJ file to the variable `t6_obj_urn_0`.
   
## Obtain signed cookie

Signed cookies give you the ability to securely download the generated file for a short period of time. To obtain the download URL and signed cookies for the extracted geometry:

1. In the Postman sidebar, click  **Task 5 - Extract Geometry > GET Obtain Signed Cookie to Download Extracted Geometry**. The request loads.

   Note the use of the Postman environment variables `t6_url_safe_urn_of_source` and `t6_obj_urn_0` as URI parameters.

2. Click the **Headers** tab. Notice that the `Authorization` header is already defined.

    ![Obtain Signed Cookie](../images/tutorial06_obtain_signed_cookies_01.png "Obtain Signed Cookie")

3. Click **Send**. You should see a screen similar to the following image.

   Notice how the response body contains the download URL. A script in the **Tests** tab captures the download URL to the `ContentDownloadSignedURL` Postman environment variable.

    ![Obtained Cookie](../images/tutorial06_obtain_signed_cookies_02.png "Obtained Cookie")
    
4. Click on the Response **Headers** tab. Notice how the response contains 3 header parameters named `set-cookie`. A script in the **Tests** saves the values of these parameters to the `set-cookie-header_1`, `set-cookie-header_2` and `set-cookie-header_3` environment variables.

    ![Response Headers](../images/tutorial06_obtain_signed_cookies_03.png "Response Headers")
    
## Download extracted geometry

Now you have obtained the download URL and signed cookie, you can download the extracted geometry. To download the extracted geometry:

1. In the Postman sidebar, click **Task 5 - Extract Geometry > GET Download Extracted Geometry**. The request loads.

   Note the use of the variables `ContentDownloadSignedURL` as the URI.

2. Click the **Headers** tab. Notice that the `Cookie` header is made up of `set-cookie-header_1`, `set-cookie-header_2` and `set-cookie-header_3`

    ![Cookie Headers Download](../images/tutorial06_download_geometry_01.png "Cookie Headers Download")

3. Click **Send**. You should see a screen similar to the following image. In the response area, click Save Response > Save to a file. Save the file as *objects.obj*, when prompted.

    ![Download Result](../images/tutorial06_download_geometry_02.png "Download Result")

Congratulations! You have completed this tutorial.

To display the saved file:

- If you are using an Apple Macintosh, right-click *objects.obj* in Finder and select **Quick Look** from the menu.

- If you are using Windows, right-click *objects.obj* in Windows Explorer and select **Open with > 3D Viewer** from the menu.

[:rewind:](../readme.md "readme.md") [:arrow_backward:](task-4.md "Previous task")
