import { tagParameterObject, vnetParameterObject } from 'types/parameter.types.bicep'

// ---------------------------------------------------------------------------------- 
// 
//    Type: Main 
//    Author: Lukas Rottach 
//    Version: 0.1 
//    Provider: --- 
//    Description: Deployment of a demo environment containing several Azure App Services and a single Azure Application Gateway 
//    Reference: https://github.com/lrottach/az-app-sample/tree/main
// 
// ---------------------------------------------------------------------------------- 

// Deployment Scope
targetScope = 'subscription'

// ------------------------------ 
// Parameter Area 
// ------------------------------ 

// Deployment Parameter
@allowed([ 'Switzerland North', 'Switzerland West', 'West Europe' ])
param deploymentLocation string

@description('Name of the target Resource Group for all resource deployments')
param rgName string
param tags tagParameterObject

// Virtual Network Parameter
param vnetProperties vnetParameterObject
