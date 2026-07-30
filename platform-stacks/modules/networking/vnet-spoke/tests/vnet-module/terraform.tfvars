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