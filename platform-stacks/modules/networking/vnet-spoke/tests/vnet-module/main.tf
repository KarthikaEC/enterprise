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

subnets = {
  web = {
    cidr = "10.20.1.0/24"
  }

  app = {
    cidr = "10.20.2.0/24"
  }

  data = {
    cidr = "10.20.3.0/24"
  }

  pe = {
    cidr      = "10.20.4.0/24"
    pe_policy = "NetworkSecurityGroupEnabled"
  }
}