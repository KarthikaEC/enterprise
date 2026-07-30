output "vnet_id" {
  description = "Resource ID of the spoke VNet."
  value       = azurerm_virtual_network.this.id
}

output "vnet_name" {
  description = "Name of the spoke VNet."
  value       = azurerm_virtual_network.this.name
}