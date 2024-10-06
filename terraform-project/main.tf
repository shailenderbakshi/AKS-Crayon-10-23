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

  aks_name                  = "my-aks-cluster"
  location                  = var.location
  resource_group_name       = var.resource_group_name
  dns_prefix                = "myaksdns"
  default_node_pool_name    = "nodepool"
  default_node_pool_count   = 3
  default_node_pool_vm_size = "Standard_DS2_v2"
  subnet_id                 = module.vnet.subnet_id
  service_cidr              = "10.0.0.0/16"
  dns_service_ip            = "10.0.0.10"
  docker_bridge_cidr        = "172.17.0.1/16"
  admin_group_object_id     = var.admin_group_object_id
  log_analytics_workspace_id = var.log_analytics_workspace_id
  environment               = "production"
}
