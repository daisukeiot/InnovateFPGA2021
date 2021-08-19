# InnovateFPGA2021

Early Draft : Work in Progress

## Requirements

- Azure Subscription  
    If you do not have Azure Subscription, please create an account for free (12 months)  
    <https://azure.microsoft.com/free/>  
    You must be an administrator or an owner of the subscription  
- A PC with Web Browser

## IoT Solutions for InnovateFPGA design contest

This page describes how to deploy IoT solution in Azure using Azure Resource Manager (ARM) template.

- [Platform as a Service (PaaS)](#paas-iot-solution) : IoT Hub based sample IoT solution
- Software as a Service (SaaS) : Azure IoT Central pre-configured application

## PaaS IoT Solution

This sample solution is built with 6 Azure IoT Platform services.

- Azure IoT Hub
- Azure Device Provisioning Service
- Azure App Service
- Azure Storage Service
- Azure Functions
- Azure SignalR

Click [here](PaaS.md) to learn more.

With this sample solution, you can perform basic IoT operations:

- Basic Device Management  
  - Provision a device
  - Connects a device to Azure IoT
  - Manage device identity
- Visualize telemetry (messages) from the device in Web UI
- Visualize device events such as device connect and disconnect in Web UI  

## Deploy PaaS IoT Solution

### 1. Click **Deploy to Azure** button below  

> [!TIP]  
> Right click the button below and select **Open link in new tab** or **Open lin in new window**

[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fdaisukeiot%2FInnovateFPGA2021%2Fmain%2Fazuredeploy.json)

> [!TIP]  
> https://portal.azure.com is called **Azure Portal**.  In Azure Portal, you can 

### 2. Configure Details  

![PaaS02](images/PaaS-02.png)

| Setting        | Description                                                                                                                                                                    | Example    |
|----------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------|
| Subscription   | Select your Azure subscription from the list.                                                                                                                                  |            |
| Resource Group | Resource group is a way to organize resources (services).  To learn more visit [here](/azure/azure-resource-manager/management/manage-resource-groups-portal).  Create new resource group by clicking `Create new`.| MyInnovateFPGAGroup           |
| Region         | Select nearest location.  To learn more, visit [here](https://azure.microsoft.com/global-infrastructure/geographies/#overview).                                                                                                                                                       | West US 2 for Pacific Timezone           |
| Unique ID      | Default names given to all resources are InnovateFPGA-&lt;ServiceName&gt;-&lt;Your Unique ID&gt;.  (E.g. InnovateFPGA-IoTHub-&lt;Unique Id&gt;)  Since some services require globally unique names so please make it unique, or accept random string. | YourName01 |
| IoT Hub Sku    | If you plan to send more than 8000 messages per day, please select S1.  S1 will cost you $25/month.  Please see [Azure IoT Hub pricing page](https://azure.microsoft.com/pricing/details/iot-hub/) for more details.                                                                           |            |

### 3. Review and start deployment

Click `Review + create` button for Azure Portal to validate the settings.  Start deployment by clicking `Create` button.

![PaaS03](images/PaaS-03.png)

> [!TIP]  
> You can see the progress of deployment as well as results of operations.
>
> ![PaaS04](images/PaaS-04.png)

### 4. Confirm successful deployment

Deployment should finish in about 10 minutes.  Please wait for the deployment to complete.
Once the deployment is completed, navigate to the sample Web Application to confirm your solution instance is up and running.

![PaaS05](images/PaaS-05.png)

1. Click `Outputs` in the left pane, then copy Web app's URL by clicking the blue button on the right.

    ![PaaS06](images/PaaS-06.png)

1. Open a new browser tab to access your solution

    ![PaaS07](images/PaaS-07.png)

> [!TIP]  
> You can find Web App's URL in `App Service` instance in Azure Portal.
>
> ![PaaS08](images/PaaS-08.png)

## SaaS IoT Solution : Azure IoT Central

IoT Central is an IoT application platform that reduces the burden and cost of developing, managing, and maintaining enterprise-grade IoT solutions.  To learn more about IoT Central, please visit [IoT Central documentation](https://docs.microsoft.com/azure/iot-central/core/overview-iot-central).

Each instance of IoT Central deployment is called `IoT Central Application`.  For your convenience, we prepared a customized IoT Central application, and made it available through [IoT Central Application Template](https://docs.microsoft.com/azure/iot-central/core/concepts-app-templates).

### 1. Click **Deploy to Azure** button below to deploy IoT Central Application.

> [!TIP]  
> Right click the button below and select **Open link in new tab** or **Open lin in new window**

[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fdaisukeiot%2FInnovateFPGA2021%2Fmain%2Fazuredeployiotc.json)

### 2. Configure Details for IoT Central deployment

![SaaS01](images/SaaS-01.png)

| Setting        | Description                                                                                                                                                                    | Example    |
|----------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------|
| Subscription   | Select your Azure subscription from the list.                                                                                                                                  |            |
| Resource Group | Resource group is a way to organize resources (services).  To learn more visit [here](/azure/azure-resource-manager/management/manage-resource-groups-portal).  Create new resource group by clicking `Create new`.| MyInnovateFPGAGroup           |
| Region         | Select nearest location.  To learn more, visit [here](https://azure.microsoft.com/global-infrastructure/geographies/#overview).                                                                                                                                                       | West US 2 for Pacific Timezone           |
| Iot Central Application Nam      | Default name given is with 'InnovateFPGA-` prefix and random strings (E.g. InnovateFPGA-&lt;abx73&gt;).  Accept default name or specify your own unique name.  Since IoT Central uses this name for URL, please make sure you provide unique name without space. | MyInnovateFPGA-IoTC01 |
| IoT Central Location    | Location (region/country) to deploy IoT Central application.  |            |

### 3. Review and start IoT Central deployment

Click `Review + create` button for Azure Portal to validate the settings.  Start deployment by clicking `Create` button.

![SaaS02](images/SaaS-02.png)

### 4. Confirm successful IoT Central deployment

Deployment should finish in 1 minute or so.  Please wait for the deployment to complete.
Once the deployment is completed, navigate to the sample Web Application to confirm your solution instance is up and running.

![SaaS03](images/SaaS-03.png)

1. Click `Outputs` in the left pane, then copy Web app's URL by clicking the blue button on the right.

    ![PaaS04](images/SaaS-04.png)

1. Open a new browser tab to access your solution

    ![SaaS05](images/SaaS-05.png)

> [!TIP]  
> You can navigate to your IoT Central application from <https://azureiotcentral.com>
