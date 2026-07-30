module "vnet_spoke" {
  source = "../.."

  workload_name       = var.workload_name
  environment         = var.environment
  location            = var.location
  resource_group_name = var.resource_group_name

  address_space = var.address_space

  tags = var.tags
}

output "vnet_id" {
  value = module.vnet_spoke.vnet_id
}

output "vnet_name" {
  value = module.vnet_spoke.vnet_name
}