# Resource Group and Storage Account Module
module "rg_storage" {
  source               = "./modules/rg_storage"
  resource_group_name  = var.resource_group_name
  location             = var.location
  storage_account_name = var.storage_account_name
  account_tier         = var.account_tier
  replication_type     = var.replication_type
}

# Virtual Network and Subnet Module
module "vnet" {
  source               = "./modules/vnet"
  vnet_name            = var.vnet_name
  vnet_address_space   = var.vnet_address_space
  location             = var.location
  resource_group_name  = var.resource_group_name
  subnet_name          = var.subnet_name
  subnet_address_prefix = var.subnet_address_prefix
}

# AKS Cluster Module
module "aks" {
  source = "./modules/aks"

  aks_name                  = var.aks_name
  location                  = var.location
  resource_group_name       = var.resource_group_name
  dns_prefix                = var.dns_prefix
  default_node_pool_name    = var.default_node_pool_name
  default_node_pool_count   = var.default_node_pool_count
  default_node_pool_vm_size = var.default_node_pool_vm_size
  subnet_id                 = module.vnet.subnet_id
  service_cidr              = var.service_cidr
  dns_service_ip            = var.dns_service_ip
  docker_bridge_cidr        = var.docker_bridge_cidr
  admin_group_object_id     = var.admin_group_object_id
  log_analytics_workspace_id = var.log_analytics_workspace_id
  environment               = var.environment
}

module "log_analytics" {
  source = "./modules/log_analytics"

  log_analytics_workspace_name = var.log_analytics_workspace_name
  location                     = var.location
  resource_group_name          = var.resource_group_name
  sku                          = var.log_analytics_sku
  retention_in_days            = var.log_analytics_retention
  tags                         = var.tags
}