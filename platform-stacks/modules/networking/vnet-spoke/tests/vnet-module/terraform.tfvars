workload_name       = "payments"
environment         = "dev"
location            = "uksouth"
resource_group_name = "rg-payments-net-dev-uksouth"

address_space = [
  "10.20.0.0/16"
]

tags = {
  environment         = "dev"
  project             = "landing-zone"
  owner               = "platform"
  cost_centre         = "12345"
  data_classification = "standard"
  managed_by          = "Terraform"
  workload            = "payments"
  region              = "uksouth"
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