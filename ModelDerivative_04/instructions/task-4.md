# Task 4 - Display the Model in the Viewer

There are two ways by which you can display the model in the Viewer.

## Option 1: Embed the source file URN in an HTML page you create

1. Insert an instance of the Viewer in an HTML page, and initialize it as per the instructions provided in the following Viewer documentation topics on the Forge portal:

    a. [Add Viewer to an HTML Page](https://forge.autodesk.com/en/docs/viewer/v7/developers_guide/viewer_basics/starting-html/)

    b. [Intialize Viewer](https://forge.autodesk.com/en/docs/viewer/v7/developers_guide/viewer_basics/initialization/)

2. Embed the URL safe Base64-encoded URN of the source file, which you obtained in the previous task, as described in the topic [Load a Model](https://forge.autodesk.com/en/docs/viewer/v7/developers_guide/viewer_basics/load-a-model/)

Note: You must prepend ``urn:`` to the URL safe Base64-encoded URN, when you embed it in the JavaScript code, as shown in the following image.

![URN in Viewer](../images/tutorial_4_urn_in_viewer.png "URN in Viewer")

## Option 2: Provide source file URN as an input to an existing HTML page

We have created a web page based on the instructions provided in Option 1. You can use this web page to verify the SVF file you just created. Click [this link](../../docs/display_svf.html) to see the source of this web page. 

1. Open the webpage at https://jayanathp.github.io/forge-tutorial-postman/display_svf.html, which is published as a Github page of this repository.  (To be changed to AutodeskForge github page later)

    This HTML page was created using the instructions provided under Option 1, and a section added to list and display viewables.

    ![Show in Web page](../images/tutorial_4_urn_in_html_page.png "Show in Web page")

2. In the **Access Token** box, specify the access token you obtained in task 1 of this tutorial.

3. In the **Source File URN (encoded)** box, specify the URL safe Base64-encoded URN of the source file, which you obtained in task 3.

4. Click **Submit**.

   You should see a screen similar to the following image.

   ![Default Viewable](../images/task4_default_viewable.png "Default Viewable")

[:rewind:](../readme.md "readme.md") [:arrow_backward:](task-3.md "Previous task")
