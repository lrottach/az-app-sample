using 'main.bicep'

// ---------------------------------------------------------------------------------- 
// 
//    Type: Parameter 
//    Author: Lukas Rottach 
//    Version: 0.1 
//    Provider: --- 
//    Description: Deployment of a demo environment containing several Azure App Services and a single Azure Application Gateway 
//    Environment: Development
//    Reference: https://github.com/lrottach/az-app-sample/tree/main
// 
// ---------------------------------------------------------------------------------- 

// Deployment parameter
param deploymentLocation = 'West Europe'
param rgName = 'rg-demo1-app1-we'

// Tag parameter
param tags = {
  CreatedBy: 'lrottach@darkcontoso.io'
  CreatedOn: '01.02.2024'
  Environment: 'Development'
  ServiceDescription: '.NET service APIs'
  ServiceUnit: 'Backend Development'
  CostCenter: 'DCO-CST-AP00276X'
}

// Virtual Network parameter
param vnetProperties = {
  name: 'vnet1-demo1-app1-we'
  ipRange: '10.113.0.0/16'
  subnets: ['FrontendSubnet', 'ProductionSubnet', 'DevelopmentSubnet']
  subnetRanges: ['10.113.10.0/24', '10.113.11.0/24', '10.113.12.0/24']
}
