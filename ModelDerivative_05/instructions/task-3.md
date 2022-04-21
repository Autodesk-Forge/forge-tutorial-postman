# Task 3 – Translate Source File

To get the server to extract metadata from a model, you must first translate the model to a viewer-friendly format. While this tutorial translates the model to SVF, you can just as well translate to SVF2.  The procedure to extract metadata is identical for both formats.

## Start a translation job

For this task, you use the Base64-encoded URN of the source file. In the previous task, Postman saved this URN to the variable `t5_ossEncodedSourceFileURN`. You use this variable to reference the model in the next request.

1. In the Postman sidebar, click **Translate to SVF > Start a Translation Job**. The request loads.

2. Click the **Body** tab and take note of the JSON payload.

    ![Create Translation Job JSON Payload](../images/tutorial_05_task_3_start_a_translation_01.png "Create Translation Job JSON Payload")

3. Click **Send**. If the request is successful, you should see a screen similar to the following image.

    ![Successful Submission of Translation Job](../images/tutorial_05_task_3_start_a_translation_02.png "Successful Submission of Translation Job")

    Note the `urn` attribute in the JSON response. The value of this parameter is the URL-safe Base64 encoded URN of the source file. A script in the **Tests** tab, saves this value to a variable named `t5_url_safe_urn_of_source`.

## Check status of translation job

When you kick off a translation job, it takes time to complete. There are two ways to check if the translation job is done:

- Periodically check the status of the translation job.

- Set up a webhook to notify you when the job is done.

This tutorial checks the status of the translation job periodically. For information using the webhooks method, see the [documentation on Model Derivative webhook events](https://forge.autodesk.com/en/docs/webhooks/v1/reference/events/model_derivative_events)

1. In the Postman sidebar, click **Translate to SVF > Check Status of Job**. The request loads.

   ![Check Status of Job](../images/tutorial_05_task_3_check_status_job_01.png "Check Status of Job")

   Note how the URL-safe Base64-encoded URN of the source file is used as a URI parameter, in the form of a variable (`t5_url_safe_urn_of_source`).

2. Click **Send**. A screen similar to the following image is displayed.

   ![Inprogress Job](../images/tutorial_05_task_3_check_status_job_02.png "Inprogress Job")

3. Repeat step 2 until the value of the `progress` parameter becomes `complete`, as shown in the following image.

    ![Successful Job](../images/tutorial_05_task_3_check_status_job_03.png "Successful Job")



[:rewind:](../readme.md "readme.md") [:arrow_backward:](task-2.md "Previous task") [:arrow_forward:](task-4.md "Next task")
