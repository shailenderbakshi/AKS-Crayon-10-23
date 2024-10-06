# Resource Group Variables
variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location where resources will be created"
  type        = string
}

# Log Analytics Variables
variable "log_analytics_workspace_name" {
  description = "The name of the Log Analytics workspace"
  type        = string
}

variable "log_analytics_sku" {
  description = "The SKU for the Log Analytics workspace"
  type        = string
  default     = "PerGB2018"
}

variable "log_analytics_retention" {
  description = "The retention period for logs in days"
  type        = number
  default     = 30
}

# AKS Cluster Variables
variable "aks_name" {
  description = "The name of the AKS cluster"
  type        = string
}

variable "dns_prefix" {
  description = "DNS prefix for the AKS cluster"
  type        = string
}

variable "default_node_pool_name" {
  description = "The name of the default node pool"
  type        = string
  default     = "default"
}

variable "default_node_pool_count" {
  description = "The number of nodes in the default node pool"
  type        = number
  default     = 3
}

variable "default_node_pool_vm_size" {
  description = "The size of the virtual machines in the default node pool"
  type        = string
  default     = "Standard_DS2_v2"
}

variable "service_cidr" {
  description = "The service CIDR for the AKS cluster"
  type        = string
  default     = "10.0.0.0/16"
}

variable "dns_service_ip" {
  description = "The IP address of the DNS service within the AKS cluster"
  type        = string
  default     = "10.0.0.10"
}

variable "docker_bridge_cidr" {
  description = "The Docker bridge CIDR for the AKS cluster"
  type        = string
  default     = "172.17.0.1/16"
}

variable "admin_group_object_id" {
  description = "The object ID of the AAD group with cluster admin permissions"
  type        = string
}

# VNet Variables
variable "vnet_name" {
  description = "The name of the virtual network"
  type        = string
}

variable "vnet_address_space" {
  description = "The address space for the virtual network"
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

# Tags
variable "tags" {
  description = "Tags to be applied to resources"
  type        = map(string)
  default     = {}
}

variable "account_tier" {
  description = "The account tier for the storage account"
  type        = string
  default     = "Standard"
}

variable "replication_type" {
  description = "The replication type for the storage account (LRS, GRS, ZRS)"
  type        = string
  default     = "LRS"
}
