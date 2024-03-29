---
date : 9/1/2021
author : Daisuke Nakahara <daisuken@microsoft.com>
reviewer : Berry Tsai <betsai@microsoft.com>; Takehiro Hirai <takehiro.hirai@microsoft.com>
Maintainer : 
title : Azure IoT Sample Solution for InnovateFPGA 2021
---

# InnovateFPGA2021 Design Contest

![InnovateFPGA Logo](images/Navbar-Logo.png)

## Requirements

- Microsoft Account  

  <https://account.microsoft.com/account>

- Azure Subscription  

    If you do not have Azure Subscription, please create a new account for free.  

    <https://azure.microsoft.com/free/>  

    If you are a student, you may sign up for Azure for Students.

    <https://azure.microsoft.com/free/students>  

- A PC with Web Browser
- Terasic DE10-Nano Cloud Connectivity Kit

## IoT Solutions for InnovateFPGA design contest

This page describes how to deploy IoT solution in Azure using Azure Resource Manager (ARM) template.  
Microsoft provides Platform as a Service (PaaS) as well as Software as a Service (SaaS).  Depending on your needs, you may choose to deploy one of two or both.  

- [Sign up for Azure Subscription](AzureSignup.md)  
- [Deploy PaaS solution](PaaS-Deploy.md) : IoT Hub based sample IoT solution  
  - [Provision DE10-Nano](PaaS-Provision.md) to the Sample IoT Solution
  - PaaS : [Technical Deep Dive](PaaS-DeepDive.md)

- [Deploy SaaS solution](SaaS-Deploy.md) : Azure IoT Central pre-configured application
  - [Provision DE10-Nano](SaaS-Provision.md) to your IoT Central Application

## Resources

- InnovateFPGA 2021 Homepage : <https://innovatefpga.com>
- Build, Deploy, and Manage your FPGA-Based IoT Edge Applications using Microsoft* Azure : <https://software.intel.com/content/www/us/en/develop/articles/build-and-deploy-iot-edge-applications-using-azure.html>
