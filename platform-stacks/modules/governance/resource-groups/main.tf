resource "azurerm_resource_group" "this" {

  for_each = local.resource_groups

  name = "rg-${var.workload_name}-${each.value}-${var.environment}-${var.location}"

  location = var.location

  tags = local.tags
}