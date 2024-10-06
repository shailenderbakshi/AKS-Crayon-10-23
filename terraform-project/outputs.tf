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