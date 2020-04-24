# API Documentation Postman Collection Git Repo

This repository contains Postman Collections for the HTTP requests used in some Step-by-Step tutorials published on the [Forge Portal](https://forge.autodesk.com/).  The tutorials on the Forge Portal use [cURL](https://curl.haxx.se/) to send HTTP requests to Forge, while the Postman Collections in this repository use the [Postman](https://www.getpostman.com/) User Interface. They differ only by the tool used to send HTTP requests.

Currently, this repository contains Postman Collections for the following tutorials:

- Design Automation:

   | Tutorial                             | Postman Collection                   | Tutorial on Forge Portal                                                    |
   |--------------------------------------|--------------------------------------|-----------------------------------------------------------------------------|
   | Design Automation API for 3ds Max    | [DA43dsMax](DA43dsMax)               | https://forge.autodesk.com/en/docs/design-automation/v3/tutorials/3dsmax/   |
   | Design Automation API for AutoCAD    | [DA4ACAD](DA4ACAD)                   | http://forge.autodesk.com/en/docs/design-automation/v3/tutorials/autocad/   |
   | Design Automation API for Inventor   | [DA4Inventor](DA4Inventor)           | https://forge.autodesk.com/en/docs/design-automation/v3/tutorials/inventor/ |
   | Design Automation API for Revit      | [DA4Revit](DA4Revit)                 | https://forge.autodesk.com/en/docs/design-automation/v3/tutorials/revit/    |


- Model Derivative:

   | Tutorial                                                      | Postman Collection                       | Tutorial on Forge Portal                                                                                                |
   |---------------------------------------------------------------|------------------------------------------|-------------------------------------------------------------------------------------------------------------------------|
   | Translate a Source File                                       | [ModelDerivative_01](ModelDerivative_01) | https://dev.forge.autodesk.com/en/docs/model-derivative/v2/tutorials/translate-to-obj/?sha=8948_30                      |
   | Translate a Source File Compressed as a Zip File              | [ModelDerivative_02](ModelDerivative_02) | https://dev.forge.autodesk.com/en/docs/model-derivative/v2/tutorials/translate-zip-to-stl/?sha=8948_30                  |
   | Translate a Source File that Contains References              | [ModelDerivative_03](ModelDerivative_03) | https://dev.forge.autodesk.com/en/docs/model-derivative/v2/tutorials/translate-source-file-containing-xref/?sha=8948_30 |
   | Prepare a File for the Viewer                                 | [ModelDerivative_04](ModelDerivative_04) | https://dev.forge.autodesk.com/en/docs/model-derivative/v2/tutorials/prep-file4viewer/?sha=8948_30                      |
   | Extract Metadata from a Source File                           | [ModelDerivative_05](ModelDerivative_05) | https://dev.forge.autodesk.com/en/docs/model-derivative/v2/tutorials/xtract-metadata/?sha=8948_30                       |
   | Extract Geometry from a Source File                           | [ModelDerivative_06](ModelDerivative_06) | https://dev.forge.autodesk.com/en/docs/model-derivative/v2/tutorials/xtract-geometry-from-source-file/?sha=8948_30      |   
   | Translate a Revit File, Generating Room and Space Information | [ModelDerivative_07](ModelDerivative_07) | https://dev.forge.autodesk.com/en/docs/model-derivative/v2/tutorials/prep-roominfo4viewer/?sha=8948_30                  | 


## What's Postman?

Postman is a popular tool that provides an easy-to-use interface to send HTTP requests. Postman is able to parse the responses that Forge sends you and save response parameter values to variables. These parameters can then be reused in subsequent requests through these variables. The Postman collections in this repository use this ability to provide pre-populated HTTP requests to help you follow the tutorial workflow with minimal effort. You can also modify the requests and experiment without having to write a single line of code.

- You can learn how to install and use Postman from [here](https://learning.getpostman.com/docs/postman/launching_postman/installation_and_updates).

- You can download the Postman installer from [here](https://www.getpostman.com/downloads/).

## What next?

Click a link in the list of tutorials to navigate to the corresponding folder in this repository. The *readme.md* file in the folder provides instructions that tell you how to run the Postman Collection.
