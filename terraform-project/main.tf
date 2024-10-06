# Resource Group and Storage Account module
module "rg_storage" {
  source               = "./modules/rg_storage"
  resource_group_name  = var.resource_group_name
  location             = var.location
  storage_account_name = var.storage_account_name
  account_tier         = var.account_tier
  replication_type     = var.replication_type
}

# Virtual Network module
module "vnet" {
  source               = "./modules/vnet"
  vnet_name            = var.vnet_name
  address_space        = var.vnet_address_space
  location             = var.location
  resource_group_name  = var.resource_group_name
  subnet_name          = var.subnet_name
  subnet_address_prefix = var.subnet_address_prefix
}