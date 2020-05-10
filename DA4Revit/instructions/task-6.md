# Task 6 - Prepare cloud storage

The DeleteWalls add-in takes a Revit file as an input and produces another Revit file as output. In this task, we prepare the cloud storage to hold these files. While you can use any cloud storage service for this purpose, this tutorial uses the Object Storage Service (OSS) through the Forge Data Management API.

There are three Postman Environment Variables you must specify for this task. They are
- `ossBucketKey` - The Bucket Key for the Bucket that holds your files in the cloud.
- `ossInputFileObjectKey` - The Object Key of the Revit file for use as input.
- `ossOutputFileObjectKey` - The Object Key of the placeholder for the output file that the add-in produces.

## Create a Bucket

1. Click the **Environment quick look** icon on the upper right corner of Postman.

2. In the **CURRENT VALUE** column, in the **ossBucketKey** row, specify a name the Bucket that stores your files.

    **Notes:**  
    - The Bucket name needs to be unique throughout the OSS service. if a Bucket with the name you specified already exists, the system will return a `409` conflict error in step 5. If you recieve this error, change the value of this variable and try again.

    - The Bucket name must consist of only lower case characters, numbers 0-9, and the underscore (_) character.

3. Click the **Environment quick look** icon to hide the variables.

4. On the Postman sidebar, click **Task 6 - Prepare Cloud Storage > POST Create a Bucket**. The request loads.

5. Click **Send**. If the request is successful, you should see a screen similar to the following image.

    ![Successful Bucket Creation](../images/task6-sucessfull_bucket_creation.png "Successful Bucket Creation")

## Upload input file to OSS

1. Download the input file, *DeleteWalls.rvt*  from the [*tutorial_data* folder of this repository](../tutorial_data).

2. Click the **Environment quick look** icon on the upper right corner of Postman.

3. In the **CURRENT VALUE** column, in the **ossInputFileObjectKey** row, specify an Object Key (a name to identify the input file, once it is uploaded to OSS).

4. Click the **Environment quick look** icon to hide the variables.

5. On the Postman sidebar, click **Task 6 - Prepare Cloud Storage > PUT Upload Input File**. The request loads.

6. Click the **Body** tab.

7. Click **Select File** and pick *DeleteWalls.rvt* , the file you downloaded in step 1.

    ![Select file button](../images/task6-select_files_button.png "Select file button")

8. Click **Send**. If your request is successful, you should see a screen similar to the one below:

    ![Successful upload of input file](../images/task6-successful_upload.png "Succesful upload of input file")

## Get temporary download URL

Design Automation needs to download the input file to process it. This request obtains a temporary signed URL that Design Automation can use to download the file, and saves it to a Postman Environment Variable.

1. On the Postman sidebar, click **Task 6 - Prepare Cloud Storage > POST Get Temporary Download URL**. The request loads.

2. Click **Send**. If the request is successful, you should see a screen similar to the following image. Furthermore, the signed URL is saved to the `ossDownloadURL` Postman Environment Variable.

    ![Signed download URL](../images/task6-signed_downloadurl.png "Signed download URL")

## Get temporary upload URL

Design Automation needs a signed URL to upload the output that the DeleteWalls add-in creates. This request obtains a temporary signed URL that Design Automation can use to upload the file, and saves it to a Postman Environment Variable.

1. Click the **Environment quick look** icon on the upper right corner of Postman.

2. In the **CURRENT VALUE** column, in the **ossOutputFileObjectKey** row, specify an Object Key (a name to identify the output file, once it is uploaded to OSS).

3. Click the **Environment quick look** icon to hide the variables.

4. On the Postman sidebar, click **Task 6 - Prepare Cloud Storage > POST Get Temporary Upload URL**. The request loads.

5. Click **Send**. If the request is successful, you should see a screen similar to the following image. Furthermore, the signed URL is saved to the `ossUploadURL` Postman Environment Variable.

    ![Signed upload URL](../images/task6-signed_uploadurl.png "Signed upload URL")

[:rewind:](../readme.md "readme.md") [:arrow_backward:](task-5.md "Previous task") [:arrow_forward:](task-7.md "Next task")
