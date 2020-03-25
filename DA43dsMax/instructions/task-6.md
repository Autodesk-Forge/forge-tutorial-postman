# Task 6 - Download the results

Before you download the results from from your WorkItem, it must must complete execution. You can periodically check the status of the WorkItem and download the results once execution is complete. Alternatively, you can get Design Automation to send a POST request to a callback URL you specify, once execution is done. 

In this tutorial, you will periodically check the status of the WorkItem. 

For information on how to specify a callback URL instead, see the [Forge Portal](https://forge.autodesk.com/en/docs/design-automation/v3/developers_guide/callbacks/#oncomplete-callback).

## Check Status of a WorkItem

Design Automation queues WorkItems before processing them. Processing itself can take time. As such, it is important for you to check the status of the WorkItem you created, to know when the WorkItem completes, and whether the WorkItem ran successfully or not. 

1. In the Postman sidebar, click **Task 6 - Download the Result > GET Check Status of the WorkItem**. The request loads.

2. Click **Send**. If the WorkItem from Task 5 is still executing, you should see a screen similar to the following, where status reads `inprogress`.

    ![WorkItem Status check result](../images/task6-check_status.png "WorkItem Status check result")

3. Repeat Step 2, until you see a screen similar to the following, where the status reads `success`.

    ![WorkItem Status check result](../images/task6-final_status.png "WorkItem Status check result")

## Download the output from OSS

1. In the Postman sidebar, click **Task 6 - Download the Result > GET Download Output from OSS**. The request loads.

2. Click **Send**. You should see a screen similar to the following image.

    ![Download Result](../images/task6-download_step_1.png "Download Result")

3. In the response area, click **Save Response > Save to a file**. The output file downloads. Save the file as a *.zip* file, when prompted.

    ![Download Result](../images/task6-download_step_2.png "Download Result")

[:rewind:](../readme.md "readme.md") [:arrow_backward:](task-5.md "Previous task")
