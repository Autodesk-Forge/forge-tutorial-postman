# Task 4 - Prepare cloud storage

When Design Automation executes the Activity you created in Task 3, it must access the 3ds Max scene file to process and the MAXScript file to run. Design Automation also needs to upload the output of the Activity. You can use any cloud storage service for this purpose. However, in this task, you will use the Data Management API to access the Forge *Object Storage Service* (*OSS*). You will also generate temporary *signed URLs* (URLs that contain authentication information) to let Design Automation download the input files and upload the output file.

## Create a Bucket

In this tutorial, you will use a Postman environment variable named `ossBucketKey` to hold the Object Key of the Bucket that contains your files in the cloud.

1. Specify a value for the Bucket Key in the Postman Environment Variable named `ossBucketKey`:

    1. Click the **Environment quick look** icon (the eye icon) on the upper right corner of Postman.

    2. In the **CURRENT VALUE** column, in the **ossBucketKey** row, specify a name for the Bucket that stores your files.

        **Notes:**  
        - The Bucket name needs to be unique throughout the OSS service. At the time you create a Bucket, you may need to change the value of this variable if a Bucket with the name you specified already exists.

        - The Bucket name must consist of only lower-case characters, numbers 0-9, and the underscore (_) character.

    3. Click the **Environment quick look** icon to hide the variables.

4. In the Postman sidebar, click **Task 4 - Prepare Cloud Storage > POST Create Bucket**. The request loads.

5. Click the **Body** tab, and verify that the `bucketkey` attribute has been set to the variable `ossBucketKey`.

5. Click **Send**. If the request is successful, you should see a screen similar to the following image.

    ![Successful Bucket Creation](../images/task4-sucessfull_bucket_creation.png "Successful Bucket Creation")

## Upload 3ds Max scene file to OSS

1. Download the zip file containing the 3ds Max scene file *input.zip* from the [*tutorial_data* folder of this repository](../tutorial_data).

2. In the Postman sidebar, click **Task 4 - Prepare Cloud Storage > PUT Upload Input ZIP File TO OSS**. The request loads.

    Note the use of the Postman dynamic variable `guid` as a query-string parameter specifying the Object Key of the zip file. This variable generates a unique ID for the Object Key. A script specified in the **Tests** tab saves the Object Key to a Postman environment variable named `ossZipFileObjectKey`.

    ![guid](../images/task4-guid.png "guid")

3. Click the **Body** tab.

4. Click **Select File** and select the zip file you downloaded in Step 1.

    ![Select file button](../images/task4-select_files_button.png "Select file button")

5. Click **Send**. This sends the request, and updates the Postman environment variable `ossZipFileObjectKey`. If your request is successful, you should see a screen similar to the following image:

    ![Successful upload of input file](../images/task4-successful_upload.png "Successful upload of input file")

## Upload MAXScript file to OSS

1. Download the file *Twistit.ms*, containing the 3ds Max scene file, from the [*tutorial_data* folder of this repository](../tutorial_data).

2. In the Postman sidebar, click **Task 4 - Prepare Cloud Storage > PUT Upload Input MAXScript File to OSS**. The request loads.

3. Click the **Body** tab.

4. Click **Select File** and select the MAXScript file you downloaded in Step 1.

5. Click **Send**. This sends the request and updates the Postman environment variable `ossScriptFileObjectKey`. If the request is successful, the response status should be `200 OK`.

## Get temporary download URL for 3ds Max scene file

Design Automation needs to download the 3ds Max scene file to process it. This request obtains a temporary signed URL that Design Automation can use to download the file. Postman then saves the signed URL to the Postman environment variable `ossZipFileSignedUrl`.

1. In the Postman sidebar, click **Task 4 - Prepare Cloud Storage > POST Get Temporary Download URL for the Input Zip**. The request loads.

2. Click **Send**. If the request is successful, you should see a screen similar to the following image. Furthermore, Postman saves the signed URL to the `ossZipFileSignedUrl` Postman environment variable.

    ![Signed download URL](../images/task4-signed_downloadurl.png "Signed download URL")

## Get temporary download URL for MAXScript file

This request obtains a temporary signed URL that Design Automation can use to download the MAXScript file when it executes the Activity. Postman then saves the signed URL to the Postman environment variable `ossScriptFileSignedUrl`.

1. In the Postman sidebar, click **Task 4 - Prepare Cloud Storage > POST Get Temporary Download URL for the Input Script**. The request loads.

2. Click **Send**. This sends the request and saves the signed URL to the `ossScriptFileSignedUrl` Postman environment variable. If the request is successful, the response status should be `200 OK`.

## Get temporary upload URL

Design Automation needs a signed URL to upload the generated output. This request obtains a temporary signed URL that Design Automation can use to upload the file, and the Postman saves it to a Postman environment variable `ossUploadURL`.

1. Click the **Environment quick look** icon on the upper right corner of Postman.

2. In the **CURRENT VALUE** column, in the **ossOutputFileObjectKey** row, specify an Object Key (a name to identify the output file, once it is uploaded to OSS).

3. Click the **Environment quick look** icon to hide the variables.

4. In the Postman sidebar, click **Task 4 - Prepare Cloud Storage > POST Get Temporary Upload URL for the Output Zip**. The request loads.

5. Click **Send**. If the request is successful, you should see a screen similar to the following image. Furthermore, the signed URL is saved to the `ossUploadURL` Postman environment variable.

    ![Signed upload URL](../images/task4-signed_uploadurl.png "Signed upload URL")

[:rewind:](../readme.md "readme.md") [:arrow_backward:](task-3.md "Previous task") [:arrow_forward:](task-5.md "Next task")
