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

  # Dynamically pass Log Analytics Workspace ID
  log_analytics_workspace_id = module.log_analytics.log_analytics_workspace_id
  environment                = var.environment

  # Add explicit dependency on the Log Analytics module
  depends_on = [module.log_analytics]
}