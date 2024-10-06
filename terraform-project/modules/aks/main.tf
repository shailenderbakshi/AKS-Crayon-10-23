resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.aks_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name       = var.default_node_pool_name
    node_count = var.default_node_pool_count
    vm_size    = var.default_node_pool_vm_size
    vnet_subnet_id = var.subnet_id  # Attach AKS to the existing VNet
  }

  identity {
    type = "SystemAssigned"
  }

  azure_active_directory_role_based_access_control {
    enabled = true
    admin_group_object_ids = [var.admin_group_object_id]
  }

  network_profile {
    network_plugin    = "azure"
    network_policy    = "azure"
    service_cidr      = var.service_cidr
    dns_service_ip    = var.dns_service_ip
    docker_bridge_cidr = var.docker_bridge_cidr
  }

  addon_profile {
    oms_agent {
      enabled                    = true
      log_analytics_workspace_id  = var.log_analytics_workspace_id
    }
  }

  tags = var.tags
}