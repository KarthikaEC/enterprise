module "resource_groups" {

  source = "../../.."

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