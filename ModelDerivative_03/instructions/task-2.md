# Task 2 - Upload Source File to OSS

The Object Storage Service (OSS) is a generic Cloud Storage Service that is part of the Forge Data Management API. In this task, you upload an Inventor Assembly file (*scissors.iam*) and also the three Part files (*.ipt files) it references. The following image shows the folder structure that must be maintained between the Assembly file and Part files. 

![Inventor Assembly and Part Files](../images/tutorial_03_scissors_files.png "Inventor Assembly and Part Files")

These files are available in the [*tutorial_data*](../tutorial_data) folder.

## Create a Bucket

In this tutorial, you will use a Postman environment variable named `ossBucketKey` to hold the Object Key of the Bucket that contains your files in the cloud. If you already have a bucket (from a previous tutorial), set the `ossBucketKey` variable to the Object Key of that bucket by following step 1, and ignore the rest of the steps in this section.

1. Specify a value for the Bucket Key in the Postman Environment Variable named `ossBucketKey`:

    1. Click the **Environment quick look** icon (the eye icon) on the upper right corner of Postman.

    2. In the **CURRENT VALUE** column, in the **ossBucketKey** row, specify a name for the Bucket that stores your files.

        **Notes:**  
        - The Bucket name needs to be unique throughout the OSS service. if a Bucket with the name you specified already exists, the system will return a `409` conflict error in step 5. If you receive this error, change the value of this variable and try again.

        - The Bucket name must consist of only lower-case characters, numbers 0-9, and the underscore (_) character.

    3. Click the **Environment quick look** icon to hide the variables.

4. In the Postman sidebar, click **Task 2 - Upload Source File to OSS > POST Create a Bucket**. The request loads.

5. Click the **Body** tab, and verify that the `bucketkey` attribute has been set to the variable `ossBucketKey`.

5. Click **Send**. If the request is successful, you should see a screen similar to the following image.

    ![Successful Bucket Creation](../images/tutorial_03_task_2_create_a_bucket.png "Successful Bucket Creation")
    
## Obtain Signed URL for Assembly File

Before you upload a file to OSS, you must obtain a signed upload URL for the file. To obtain a signed upload URL:

1. In the Postman sidebar, click **Task 2 - Upload Source File to OSS > GET Obtain Signed URL for Assembly File**. The request loads.

   Note the use of `ossBucketkey` and `ossSourceFileObjectKey` as URI parameters.

2. Click the **Environment quick look** button and set the Postman environment variable `ossAssemblyFile_OKey` to `scissors.iam`, which you will use as the Object Key.

   ![Set Object key](../images/tutorial_03_task_02_obtain_signed_url_ossassembly_01.png "Set Object Key")

3. Click **Params** tab, and note the `minutesExpiration` parameter is defined as 5 minutes. 

   ![Minutes expiration](../images/tutorial_03_task_02_obtain_signed_url_ossassembly_02.png "Minutes expiration")

4. Click **Send**. A script in the **Tests** tab updates the following Postman environment variables:

   | Variable Name              | Description                                                                                 |
   |----------------------------|---------------------------------------------------------------------------------------------|
   | UploadKey | The upload key assigned to the file you want to upload.                                                      |
   | ContentUploadSignedURL | The signed upload URL you must use to upload the zip file.                                      |
   
You should see a screen similar to the following image:
   
   ![Signed url](../images/tutorial_03_task_02_obtain_signed_url_ossassembly_03.png "Signed url")
   
## Upload Assembly File

Now that you have obtained a signed upload URL, you can go ahead and upload the zip file to OSS.

1. Download the file *scissors.iam* from the [*tutorial_data* folder of this tutorial](../tutorial_data).

2. In the Postman sidebar, click **Task 2 - Upload Source File to OSS > PUT Upload Assembly File**. The request loads.

   Note the use of `ContentUploadSignedURL` as the URI.

3. Click the **Body** tab.

4. Click **Select File** and select the file *scissors.iam*, which you downloaded in step 1.

   ![Select file button](../images/tutorial_03_task_02_upload_file_ossassembly_01.png "Select file button")
   
5. Click **Send** to upload the file.


## Finalize Upload

Although you uploaded the source file in one go, it is possible to split a file into chunks and upload the file one chunk at a time. Once all the chunks are uploaded you must inform OSS that the upload operation is complete. Even though you uploaded the file in one go, you must finalize the upload by informing OSS that the upload is done. To finalize the upload:

1. In the Postman sidebar, click **Task 2 - Upload Source File to OSS > POST Finalize Upload**. The request loads.

   Note the use of `ossBucketkey` and `ossSourceFileObjectKey` as URI parameters.

2. Click the **Body** tab, and verify that the `uploadKey` attribute has been set to the variable `UploadKey`.

   ![Body attribute](../images/tutorial_03_task_02_finalize_upload_ossassembly_01.png "Body attribute")

3. Click **Headers** tab. Notice the `Authorization` Header is already defined.

   ![Task headers](../images/tutorial_03_task_02_finalize_upload_ossassembly_02.png "Task headers")

4. Click **Send** to finalize the upload. A script in the **Tests** tab updates the following Postman environment variables:

   | Variable Name              | Description                                                                                                  |
   |----------------------------|--------------------------------------------------------------------------------------------------------------|
   | t3_ossSourceFileObjectKey  | Object Key of the source file. Should be `scissors.iam`.                                                     |
   | t3_ossAssemblyFileURN      | Value of the `objectId` attribute in the JSON response. This is the URN of the assembly file *scissors.iam*. |
   | t3_ossEncodedSourceFileURN | The URN of the assembly file, converted to a Base64-encoded URN.                                             |


    You should see a screen similar to the following image:

    ![Finalize upload](../images/tutorial_03_task_02_finalize_upload_ossassembly_03.png "Finalize upload")


## Upload part files to OSS

The [*tutorial_data*](../tutorial_data) folder contains another folder named [*Components*](../tutorial_data/Components). This folder contains three part files, which you must upload to OSS. The instructions in this sections walk you through the process of uploading the first part file, *blade_main.ipt*. Use the same process to upload the other two part files to OSS.

## Obtain Signed URL for First Part File

1. In the Postman sidebar, click **Task 2 - Upload Source File to OSS > GET Obtain Signed URL for First Part File**. The request loads.

   Note the use of `ossBucketkey` and `ossSourceFileObjectKey` as URI parameters.

2. Click the **Environment quick look** button and set the Postman environment variable `ossPart_01_OKey` to `blade_main.ipt`, which you will use as the Object Key.

   ![Set Object key](../images/tutorial_03_task_02_obtain_signed_url_firstpartoss_01.png "Set Object Key")

3. Click **Send**. A script in the **Tests** tab updates the following Postman environment variables:

   | Variable Name              | Description                                                                                 |
   |----------------------------|---------------------------------------------------------------------------------------------|
   | UploadKey | The upload key assigned to the file you want to upload.                                                       |
   | ContentUploadSignedURL | The signed upload URL you must use to upload the zip file                                       |
   
You should see a screen similar to the following image:
   
   ![Signed url](../images/tutorial_03_task_02_obtain_signed_url_firstpartoss_03.png "Signed url")
   
## Upload First Part File

1. Download the file *blade_main.ipt* from the [*tutorial_data* folder of this tutorial](../tutorial_data).

2. In the Postman sidebar, click **Task 2 - Upload Source File to OSS > PUT Upload First Part File**. The request loads.

   Note the use of `ContentUploadSignedURL` as the URI.

3. Click the **Body** tab.

4. Click **Select File** and select the file *blade_main.ipt*, which you downloaded in step 1.

   ![Select file button](../images/tutorial_03_task_02_upload_file_firstpartoss_01.png "Select file button")
   
5. Click **Send** to upload the file.


## Finalize Upload

1. In the Postman sidebar, click **Task 2 - Upload Source File to OSS > POST Finalize Upload**. The request loads.

   Note the use of `ossBucketkey` and `ossSourceFileObjectKey` as URI parameters.

2. Click the **Body** tab, and verify that the `uploadKey` attribute has been set to the variable `UploadKey`.

   ![Body attribute](../images/tutorial_03_task_02_finalize_upload_firstpartoss_01.png "Body attribute")

3. Click **Send** to finalize the upload. A script in the **Tests** tab updates the following Postman environment variables:

   | Variable Name              | Description                                                                                                      |
   |----------------------------|------------------------------------------------------------------------------------------------------------------|
   | t3_ossSourceFileObjectKey  | Object Key of the source file. Should be `blade_main.ipt`.                                                       |
   | t3_ossPart_01_URN          | Value of the `objectId` attribute in the JSON response. This is the URN of the first part file *blade_main.ipt*. |
   | t3_ossEncodedPart_01_URN   | The URN of the first part file, converted to a Base64-encoded URN.                                               |


    You should see a screen similar to the following image:

    ![Finalize upload](../images/tutorial_03_task_02_finalize_upload_firstpartoss_03.png "Finalize upload")
    
    
    ## Obtain Signed URL for Second Part File

1. In the Postman sidebar, click **Task 2 - Upload Source File to OSS > GET Obtain Signed URL for Second Part File**. The request loads.

   Note the use of `ossBucketkey` and `ossSourceFileObjectKey` as URI parameters.

2. Click the **Environment quick look** button and set the Postman environment variable `ossPart_02_OKey` to `blade_top.ipt`, which you will use as the Object Key.

   ![Set Object key](../images/tutorial_03_task_02_obtain_signed_url_secondpartoss_01.png "Set Object Key")

3. Click **Send**. A script in the **Tests** tab updates the following Postman environment variables:

   | Variable Name              | Description                                                                                 |
   |----------------------------|---------------------------------------------------------------------------------------------|
   | UploadKey | The upload key assigned to the file you want to upload.                                                       |
   | ContentUploadSignedURL | The signed upload URL you must use to upload the zip file                                       |
   
You should see a screen similar to the following image:
   
   ![Signed url](../images/tutorial_03_task_02_obtain_signed_url_secondpartoss_03.png "Signed url")
   
## Upload Second Part File

1. Download the file *blade_top.ipt* from the [*tutorial_data* folder of this tutorial](../tutorial_data).

2. In the Postman sidebar, click **Task 2 - Upload Source File to OSS > PUT Upload Second Part File**. The request loads.

   Note the use of `ContentUploadSignedURL` as the URI.

3. Click the **Body** tab.

4. Click **Select File** and select the file *blade_top.ipt*, which you downloaded in step 1.

   ![Select file button](../images/tutorial_03_task_02_upload_file_secondpartoss_01.png "Select file button")
   
5. Click **Send** to upload the file.


## Finalize Upload

1. In the Postman sidebar, click **Task 2 - Upload Source File to OSS > POST Finalize Upload**. The request loads.

   Note the use of `ossBucketkey` and `ossSourceFileObjectKey` as URI parameters.

2. Click the **Body** tab, and verify that the `uploadKey` attribute has been set to the variable `UploadKey`.

   ![Body attribute](../images/tutorial_03_task_02_finalize_upload_secondpartoss_01.png "Body attribute")

3. Click **Send** to finalize the upload. A script in the **Tests** tab updates the following Postman environment variables:

   | Variable Name              | Description                                                                                                      |
   |----------------------------|------------------------------------------------------------------------------------------------------------------|
   | t3_ossSourceFileObjectKey  | Object Key of the source file. Should be `blade_top.ipt`.                                                       |
   | t3_ossPart_02_URN          | Value of the `objectId` attribute in the JSON response. This is the URN of the first part file *blade_top.ipt*. |
   | t3_ossEncodedPart_02_URN   | The URN of the second part file, converted to a Base64-encoded URN.                                               |


    You should see a screen similar to the following image:

    ![Finalize upload](../images/tutorial_03_task_02_finalize_upload_secondpartoss_03.png "Finalize upload")
    
    ## Obtain Signed URL for Third Part File

1. In the Postman sidebar, click **Task 2 - Upload Source File to OSS > GET Obtain Signed URL for Third Part File**. The request loads.

   Note the use of `ossBucketkey` and `ossSourceFileObjectKey` as URI parameters.

2. Click the **Environment quick look** button and set the Postman environment variable `ossPart_03_OKey` to `scissor_spring.ipt`, which you will use as the Object Key.

   ![Set Object key](../images/tutorial_03_task_02_obtain_signed_url_thirdpartoss_01.png "Set Object Key")

3. Click **Send**. A script in the **Tests** tab updates the following Postman environment variables:

   | Variable Name              | Description                                                                                 |
   |----------------------------|---------------------------------------------------------------------------------------------|
   | UploadKey | The upload key assigned to the file you want to upload.                                                      |
   | ContentUploadSignedURL | The signed upload URL you must use to upload the zip file                                       |
   
You should see a screen similar to the following image:
   
   ![Signed url](../images/tutorial_03_task_02_obtain_signed_url_thirdpartoss_03.png "Signed url")
   
## Upload Third Part File

1. Download the file *scissor_spring.ipt* from the [*tutorial_data* folder of this tutorial](../tutorial_data).

2. In the Postman sidebar, click **Task 2 - Upload Source File to OSS > PUT Upload Third Part File**. The request loads.

   Note the use of `ContentUploadSignedURL` as the URI.

3. Click the **Body** tab.

4. Click **Select File** and select the file *scissor_spring.ipt*, which you downloaded in step 1.

   ![Select file button](../images/tutorial_03_task_02_upload_file_thirdpartoss_01.png "Select file button")
   
5. Click **Send** to upload the file.


## Finalize Upload

1. In the Postman sidebar, click **Task 2 - Upload Source File to OSS > POST Finalize Upload**. The request loads.

   Note the use of `ossBucketkey` and `ossSourceFileObjectKey` as URI parameters.

2. Click the **Body** tab, and verify that the `uploadKey` attribute has been set to the variable `UploadKey`.

   ![Body attribute](../images/tutorial_03_task_02_finalize_upload_thirdpartoss_01.png "Body attribute")

3. Click **Send** to finalize the upload. A script in the **Tests** tab updates the following Postman environment variables:

   | Variable Name              | Description                                                                                                      |
   |----------------------------|------------------------------------------------------------------------------------------------------------------|
   | t3_ossSourceFileObjectKey  | Object Key of the source file. Should be `scissor_spring.ipt`.                                                       |
   | t3_ossPart_03_URN          | Value of the `objectId` attribute in the JSON response. This is the URN of the first part file *scissor_spring.ipt*. |
   | t3_ossEncodedPart_03_URN   | The URN of the third part file, converted to a Base64-encoded URN.                                               |


    You should see a screen similar to the following image:

    ![Finalize upload](../images/tutorial_03_task_02_finalize_upload_thirdpartoss_03.png "Finalize upload")
    

    You should see a screen similar to the following, when you click the **Environment quick look** icon. 

    ![Variables with Object Keys for Part Files](../images/tutorial_03_task_02_part_file_object_keys.png "Variables with Object Keys for Part Files")



[:rewind:](../readme.md "readme.md") [:arrow_backward:](task-1.md "Previous task") [:arrow_forward:](task-3.md "Next task")
