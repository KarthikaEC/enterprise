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

resource "azurerm_subnet" "this" {
  for_each = var.subnets

  name                 = "snet-${each.key}"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.this.name
  address_prefixes     = [each.value.cidr]

  private_endpoint_network_policies = each.value.pe_policy

  dynamic "delegation" {
    for_each = each.value.delegation == null ? [] : [each.value.delegation]

    content {
      name = delegation.value.name

      service_delegation {
        name    = delegation.value.service_name
        actions = delegation.value.actions
      }
    }
  }
}