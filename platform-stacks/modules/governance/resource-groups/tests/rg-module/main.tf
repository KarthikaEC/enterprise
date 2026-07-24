module "resource_groups" {

  source = "../../.."

  workload_name        = "payments"
  environment          = "dev"
  location             = "uksouth"

  additional_tags = {
    environment          = "Dev"
    owner                = "Platform"
    cost_centre          = "12345"
    data_classification  = "Internal"
  }
}