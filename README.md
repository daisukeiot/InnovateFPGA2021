# InnovateFPGA2021

Early Draft : Work in Progress

## A demo IoT solution to connect FCC to Azure IoT

This is a sample IoT application to help contestants to connect and visualize data.  This sample IoT solution covers following scenarios :

- Basic Device Management  
  - Provision a device
  - Connects a device to Azure IoT
  - View and delete device identity
- Visualize telemetry (messages) from the device in Web UI
- Visualize device events such as device connect and disconnect in Web UI  

<< To do : Update diagram >>

![Solution Diagram](images/solution-diagram.png)

## Domains in the solution

This solution is consist of 3 domains.

- IoT Device and Data
- Application
- Device Management

<< To do : Add descriptions/explanations >>

## Requirements

- Azure Subscription  
    If you do not have Azure Subscription, please create an account for free (12 months)  
    <https://azure.microsoft.com/free/>  
    You must be an administrator or an owner of the subscription  
- A PC with Web Browser

## 1. Start Deployment

Click **Deploy to Azure** button below  

> [!TIP]  
> Right click the button below and select **Open link in new tab** or **Open lin in new window**

[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fdaisukeiot%2FInnovateFPGA2021%2Fmain%2Fazuredeploy.json)

## 2. Create a new resource group

<< To do : Update steps & screenshots >>

A resource group is a container that holds related resources for an Azure solution.  Similar to folder and files.

1. Select **Subscription** (if you have more than one)
1. Create a new **Resource Group** by clicking **Create new**  

    e.g. **MySolution**

    ![Deployment 01](media/Deployment-01.png)

1. Select **Region**, then click **Review + create**  

    ![Deployment 02](media/Deployment-02.png)

1. Select **Unique ID**

    Some services require global unique names.  This template will create resource with IoTPnPWS-**\<Unique ID\>**.  
    Rules :
    - Minimum 5 characters
    - Maximum 12 characters
    - Alphanumberic characters only (no special characters)

    > [!TIP]  
    > To avoid duplicate names and naming rules, recommendation is your name and some numbers, without special characters.
    > E.g. Joe123

    ![Deployment 03](media/Deployment-03.png)

1. Click **Review + create**

    ![Deployment 04](media/Deployment-04.png)

1. Review settings and click **Create** to start deployment

    ![Deployment 05](media/Deployment-05.png)

1. Wait for deployment to complete

    Typically the deployment process takes about 15 minutes.

    ![Deployment 06](media/Deployment-06.png)

1. Make sure deployment completed successfully

    ![Deployment 07](media/Deployment-07.png)

