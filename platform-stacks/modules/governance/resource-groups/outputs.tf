output "resource_groups" {
  description = "Resource Groups created by the module"

  value = {
    for key, rg in azurerm_resource_group.this :
    key => {
      name     = rg.name
      id       = rg.id
      location = rg.location
    }
  }
}