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

variable "subnet_id" {
  description = "The ID of the subnet where AKS will be deployed"
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