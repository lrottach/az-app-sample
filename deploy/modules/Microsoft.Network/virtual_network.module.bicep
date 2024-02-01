// ---------------------------------------------------------------------------------- 
// 
//    Type: Module 
//    Author: Lukas Rottach 
//    Version: 0.1 
//    Provider: --- 
//    Description: Deployment of an Azure Virtual Network
//    Reference: https://learn.microsoft.com/en-us/azure/templates/microsoft.network/virtualnetworks?pivots=deployment-language-bicep
// 
// ---------------------------------------------------------------------------------- 

// Target Scope
targetScope = 'resourceGroup'

// Deployment Parameter
param deploymentLocation string
