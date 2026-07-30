module "vnet_spoke" {
  source = "../.."

  workload_name       = var.workload_name
  environment         = var.environment
  location            = var.location
  resource_group_name = var.resource_group_name

  address_space = var.address_space
  subnets       = var.subnets

  tags = var.tags
}