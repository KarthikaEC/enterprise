module "resource_groups" {

  source = "../../modules/governance/resource-groups"

  workload          = "payments"
  environment       = "dev"
  location          = "uksouth"

  tags = {
    Environment    = "Dev"
    Owner          = "Platform"
    CostCentre     = "12345"
    Classification = "Internal"
  }
}