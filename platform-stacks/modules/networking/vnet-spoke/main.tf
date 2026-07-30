resource "azurerm_virtual_network" "this" {
  name                = "vnet-${var.workload_name}-${var.environment}-${var.location}"
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = var.address_space

  tags = var.tags

  lifecycle {
    prevent_destroy = true
  }
}