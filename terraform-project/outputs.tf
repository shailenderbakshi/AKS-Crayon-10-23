# Outputs for Resource Group and Storage Account
output "resource_group_name" {
  description = "The name of the resource group"
  value       = module.rg_storage.resource_group_name
}

output "storage_account_id" {
  description = "The ID of the storage account"
  value       = module.rg_storage.storage_account_id
}

# Outputs for Virtual Network and Subnet
output "vnet_id" {
  description = "The ID of the virtual network"
  value       = module.vnet.vnet_id
}

output "subnet_id" {
  description = "The ID of the subnet"
  value       = module.vnet.subnet_id
}

# Outputs for Log Analytics
output "log_analytics_workspace_id" {
  description = "The ID of the Log Analytics workspace"
  value       = module.log_analytics.log_analytics_workspace_id
}

# Outputs for AKS Cluster
output "aks_cluster_name" {
  description = "The name of the AKS cluster"
  value       = module.aks.aks_cluster_name
}

output "kube_config" {
  description = "The kubeconfig for the AKS cluster"
  value       = module.aks.kube_config
}

output "node_resource_group" {
  description = "The resource group where AKS nodes (VMs) are deployed"
  value       = module.aks.node_resource_group
}

# Root module outputs

# Mark kubeconfig as sensitive to prevent accidental exposure
output "kube_config" {
  description = "The kubeconfig for the AKS cluster"
  value       = module.aks.kube_config  # Refers to the kubeconfig from the AKS module
  sensitive   = true                    # Mark as sensitive to avoid exposure
}