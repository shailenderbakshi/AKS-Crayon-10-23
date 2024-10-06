# Resource Group and Storage Account Module
module "rg_storage" {
  source               = "./modules/rg_storage"
  resource_group_name  = var.resource_group_name
  location             = var.location
  storage_account_name = var.storage_account_name
  account_tier         = var.account_tier
  replication_type     = var.replication_type
}

# Virtual Network (VNet) Module
module "vnet" {
  source               = "./modules/vnet"
  vnet_name            = var.vnet_name
  vnet_address_space   = var.vnet_address_space
  location             = var.location
  resource_group_name  = module.rg_storage.resource_group_name  # Reference RG from rg_storage
  subnet_name          = var.subnet_name
  subnet_address_prefix = var.subnet_address_prefix
}

# Log Analytics Module
module "log_analytics" {
  source = "./modules/log_analytics"

  log_analytics_workspace_name = var.log_analytics_workspace_name
  location                     = var.location
  resource_group_name          = module.rg_storage.resource_group_name  # Reference RG from rg_storage
  sku                          = var.log_analytics_sku
  retention_in_days            = var.log_analytics_retention
  tags                         = var.tags
}