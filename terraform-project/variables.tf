# Variables for Resource Group and Storage Account
variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location of the resource group"
  type        = string
}

variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
}

variable "account_tier" {
  description = "The account tier of the storage account"
  type        = string
}

variable "replication_type" {
  description = "The replication type of the storage account"
  type        = string
}

# Variables for Virtual Network and Subnet
variable "vnet_name" {
  description = "The name of the virtual network"
  type        = string
}

variable "vnet_address_space" {
  description = "The address space of the virtual network"
  type        = list(string)
}

variable "subnet_name" {
  description = "The name of the subnet"
  type        = string
}

variable "subnet_address_prefix" {
  description = "The address prefix for the subnet"
  type        = string
}

# Variables for AKS Cluster
variable "aks_name" {
  description = "The name of the AKS cluster"
  type        = string
}

variable "dns_prefix" {
  description = "The DNS prefix for the AKS cluster"
  type        = string
}

variable "default_node_pool_name" {
  description = "The default node pool name"
  type        = string
}

variable "default_node_pool_count" {
  description = "The number of nodes in the default pool"
  type        = number
}

variable "default_node_pool_vm_size" {
  description = "The VM size for the default node pool"
  type        = string
}

variable "service_cidr" {
  description = "The service CIDR for the AKS cluster"
  type        = string
}

variable "dns_service_ip" {
  description = "The IP address for the DNS service"
  type        = string
}

variable "docker_bridge_cidr" {
  description = "The CIDR for Docker bridge network"
  type        = string
}

variable "admin_group_object_id" {
  description = "Azure AD group object ID for AKS administrators"
  type        = string
}

variable "log_analytics_workspace_id" {
  description = "The ID of the Log Analytics workspace"
  type        = string
}

variable "environment" {
  description = "The environment tag for the cluster"
  type        = string
}