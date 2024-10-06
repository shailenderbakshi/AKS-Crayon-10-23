# Output the AKS cluster name
output "aks_cluster_name" {
  description = "The name of the AKS cluster"
  value       = azurerm_kubernetes_cluster.aks.name
}

# Output the kubeconfig for the AKS cluster
output "kube_config" {
  description = "The kubeconfig for the AKS cluster"
  value       = azurerm_kubernetes_cluster.aks.kube_config_raw
  sensitive   = true
}

# Output the node resource group where AKS nodes are deployed
output "node_resource_group" {
  description = "The resource group where the AKS nodes are deployed"
  value       = azurerm_kubernetes_cluster.aks.node_resource_group
}