# Before you begin...

## 1. Import Postman Environment for the tutorial

Postman Environments are named configurations that implement variables to store values you typically use across many HTTP requests. For example, Forge's Base URL is stored in the environment variable `baseUrl`. To import the environment you need for this tutorial:

1. Download the file *DA4Revit-Environment.postman_environment.json* from the [*collections* folder of this repository](../collections).

2. Import *DA4Revit-Environment.postman_environment.json*

    1. In the Postman header bar, click **Import**. A dialog box displays.

    2. Drag the file you downloaded in step 1 to the area marked **Drop files here**.

3. Click the **Environment drop-down** on the upper-right, and select **DA4Revit**. The DA4Revit environment loads.
   ![Postman Environment drop-down](../images/postman_environment_dropdown.png "Postman Environment drop-down")

## 2. Import the Postman Collection for the tutorial.

Postman Collections are groups of prepopulated HTTP requests. To import the requests you need for this tutorial:

1. Download the file *DA4Revit-Collection.postman_collection.json* from the [*collections* folder of this repository](../collections).

2. Import *DA4Revit-Collection.postman_collection.json*

    1. In the Postman header bar, click **Import**. A dialog displays.

    2. Drag the file you downloaded in step 1 to the area marked **Drop files here**.

## 3. Get a Revit Add-in that is Design Automation ready 

- On the Forge portal, follow the instructions in the topic [Convert Revit Add-in Task](https://dev.forge.autodesk.com/en/docs/design-automation/v3/tutorials/revit-edit/step1-convert-addin/?sha=6120_10).

Or

- Download the Design Automation ready add-in, *DeleteWalls.dll* from [here](/en/docs/design-automation/v3/tutorial_data/DeleteWalls-dll.zip)

