module "resource_groups" {
  source = "../.."

  workload_name       = var.workload_name
  environment         = var.environment
  location            = var.location
  project_name        = var.project_name
  owner_email         = var.owner_email
  cost_centre         = var.cost_centre
  data_classification = var.data_classification
  additional_tags     = var.additional_tags
}