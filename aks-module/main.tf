# Define the provider for Azure
provider "azurerm" {
  features {}  # This enables all the capabilities for the Azure provider
  version = "~> 3.0"  # Specify the version of the Azure provider you're using
}

# Configure the Terraform backend to store the state in an Azure Storage account
terraform {
  backend "azurerm" {
    resource_group_name   = var.storage_rg_name  # Resource group where the storage account is located
    storage_account_name  = var.storage_account_name  # Storage account for storing the state
    container_name        = var.container_name  # Container in the storage account to store the state file
    key                   = "aks-cluster/terraform.tfstate"  # Path to store the state file in the container
  }
}

# Create a resource group for the AKS cluster
resource "azurerm_resource_group" "aks_rg" {
  name     = var.resource_group_name  # Name of the resource group for AKS
  location = var.location  # Azure region
}

# Create the Azure Kubernetes Service (AKS) cluster
resource "azurerm_kubernetes_cluster" "aks_cluster" {
  name                = var.aks_cluster_name  # Name of the AKS cluster
  location            = azurerm_resource_group.aks_rg.location  # Location of the AKS cluster (same as resource group)
  resource_group_name = azurerm_resource_group.aks_rg.name  # Resource group where the AKS cluster will reside
  dns_prefix          = var.dns_prefix  # DNS prefix for the AKS cluster

  default_node_pool {
    name       = "agentpool"  # Name of the node pool
    node_count = var.agent_count  # Number of nodes in the node pool
    vm_size    = var.vm_size  # Size of the VMs in the node pool
  }

  identity {
    type = "SystemAssigned"  # System-assigned identity for the AKS cluster
  }

  addon_profile {
    oms_agent {
      enabled                    = true
      log_analytics_workspace_id = azurerm_log_analytics_workspace.law.id  # Link to Log Analytics workspace
    }
  }

  network_profile {
    network_plugin = "azure"  # Azure CNI plugin
    network_policy = "azure"  # Azure network policy
  }

  tags = var.tags  # Apply tags
}

# Create Log Analytics Workspace for AKS monitoring
resource "azurerm_log_analytics_workspace" "law" {
  name                = "${var.aks_cluster_name}-log-analytics"  # Name of the Log Analytics workspace
  location            = azurerm_resource_group.aks_rg.location  # Same location as the resource group
  resource_group_name = azurerm_resource_group.aks_rg.name  # Same resource group as the AKS cluster
  sku                 = "PerGB2018"  # Pricing tier
}
