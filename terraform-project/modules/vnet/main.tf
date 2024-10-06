# Virtual Network module
module "vnet" {
  source               = "./modules/vnet"
  vnet_name            = var.vnet_name
  vnet_address_space   = var.vnet_address_space
  location             = var.location
  resource_group_name  = var.resource_group_name
  subnet_name          = var.subnet_name
  subnet_address_prefix = var.subnet_address_prefix
}