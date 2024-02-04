import { vnetParameterObject } from '../../types/parameter.types.bicep'

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

// ------------------------------ 
// Parameter Area 
// ------------------------------ 

// Deployment Parameter
param deploymentLocation string

// Virtual Network Parameter
param vnetProperties vnetParameterObject

// ------------------------------ 
// Resource Area 
// ------------------------------ 

// Virtual Network
resource vnet 'Microsoft.Network/virtualNetworks@2023-06-01' = {
  name: vnetProperties.name
  location: deploymentLocation
  properties: {
    addressSpace: {
      addressPrefixes: [
        vnetProperties.ipRange
      ]
    }
  }
}

// Subnets
resource subnets 'Microsoft.Network/virtualNetworks/subnets@2023-06-01' = [for (subnet, index) in vnetProperties.subnets: {
  name: subnet
  parent: vnet
  properties: {
    addressPrefix: vnetProperties.subnetRanges[index]
  }
}]

