# Task 4 - Download the STL file

Before you download the STL file you must make sure that the translation job is complete. In the previous task a script captured the URN of the STL file in a variable named `dv_urn_0`
    
## Download the OBJ file.

1. In the Postman sidebar, click **Task 4 - Download STL File > GET Download STL File**. The request loads.

    ![Download Request](../images/task4-download_request.png "Download Request")

    Note the use of the variables `t2_url_safe_urn_of_source` and `dv_urn_0` as URI parameters.

2. Click **Send**. You should see a screen similar to the following image.

    ![Download Result](../images/task4-download_result_1.png "Download Result")

3. In the response area, click **Save Response > Save to a file**. Save the file as *tuner.stl*, when prompted.

    ![Download Result](../images/task4-download_result_2.png "Download Result")

Congratulations! You have completed this tutorial.

To display the saved file:

- If you are using an Apple Macintosh, right-click *tuner.stl* in Finder and select **Quick Look** from the menu.

- If you are using Windows, right-click *tuner.stl* in Windows Explorer and select **Open with > 3D Viewer** from the menu.

[:rewind:](../readme.md "readme.md") [:arrow_backward:](task-3.md "Previous task")
