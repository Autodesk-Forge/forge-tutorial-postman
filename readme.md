# API Documentation Postman Collection Git Repo

This repository contains Postman Collections for the HTTP requests used in some Step-by-Step tutorials published on the [Forge Portal](https://forge.autodesk.com/).  The tutorials on Forge use [cURL](https://curl.haxx.se/) to send HTTP requests to Forge, while the Postman Collections in this repository use the [Postman](https://www.getpostman.com/) User Interface. They differ only by the tool used to send HTTP requests.

Currently, this repository contains Postman Collections for the following tutorials:

- Design Automation:

    | Tutorial <br>(with link to folder containing Postman Collection)   | Link to tutorial on Forge Portal                                            |
    |--------------------------------------------------------------------|-----------------------------------------------------------------------------|
    | [Design Automation API for 3ds Max](DA43dsMax)                     | https://forge.autodesk.com/en/docs/design-automation/v3/tutorials/3dsmax/   |
    | [Design Automation API for AutoCAD](DA4ACAD)                       | http://forge.autodesk.com/en/docs/design-automation/v3/tutorials/autocad/   |
    | [Design Automation API for Inventor](DA4Inventor)                  | https://forge.autodesk.com/en/docs/design-automation/v3/tutorials/inventor/ |
    | [Design Automation API for Revit](DA4Revit)                        | https://forge.autodesk.com/en/docs/design-automation/v3/tutorials/revit/    |

- Model Derivative:

    | Tutorial <br>(with link to folder containing Postman Collection)   | Link to tutorial on Forge Portal                                                                     |
    |--------------------------------------------------------------------|------------------------------------------------------------------------------------------------------|
    | [Translate a Source File](ModelDerivative_01)                      | https://dev.forge.autodesk.com/en/docs/model-derivative/v2/tutorials/translate-to-obj/?sha=8483_40   |

## What's Postman?

Postman is a popular tool that provides an easy-to-use interface to send HTTP requests. Postman is able to parse the responses that Forge sends you and save response parameter values to variables. These parameters can then be reused in subsequent requests through these variables. The Postman collections in this repository use this ability to provide pre-populated HTTP requests to help you follow the tutorial workflow with minimal effort. You can also modify the requests and experiment without having to write a single line of code. 

- You can learn how to install and use Postman from [here](https://learning.getpostman.com/docs/postman/launching_postman/installation_and_updates).

- You can download the Postman installer from [here](https://www.getpostman.com/downloads/).

## What next?

Click a link in the list of tutorials to navigate to the corresponding folder in this repository. The *readme.md* file in the folder provides instructions that tell you how to run the Postman Collection. 
