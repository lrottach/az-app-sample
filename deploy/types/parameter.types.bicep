
// Tag Parameter
@export()
type tagParameterObject = {
  CreatedBy: string
  CreatedOn: string
  Environment: 'Production' | 'Development' | 'Integration' | 'Demo' | 'Test'
  CostCenter: string?
  ServiceDescription: string
  ServiceUnit: string
}

// Virtual Network Parameter
@export()
type vnetParameterObject = {
  name: string
  ipRange: string
  subnets: string[]
  subnetRanges: string[]
}

// Azure Application Gatway Parameter
type appGatewayParameterObject = {
  name: string
  subnetId: string
  publicIpId: string
}
