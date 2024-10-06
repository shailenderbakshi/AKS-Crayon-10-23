resource "azurerm_virtual_network" "main" {
  name                = var.vnet_name
  address_space       = var.vnet_address_space
  location            = var.location
  resource_group_name = var.resource_group_name

  subnet {
    name           = var.subnet_name
    address_prefixes = [var.subnet_address_prefix]
  }
}