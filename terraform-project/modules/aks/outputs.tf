output "aks_cluster_name" {
  description = "The name of the AKS cluster"
  value       = azurerm_kubernetes_cluster.aks.name
}

output "kube_config" {
  description = "The kubeconfig for the AKS cluster"
  value       = azurerm_kubernetes_cluster.aks.kube_config_raw
}

output "node_resource_group" {
  description = "The resource group where AKS VMs are deployed"
  value       = azurerm_kubernetes_cluster.aks.node_resource_group
}