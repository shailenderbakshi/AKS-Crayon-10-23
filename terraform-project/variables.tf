variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "location" {
  type        = string
  description = "Location of the AKS cluster"
}

variable "aks_cluster_name" {
  type        = string
  description = "Name of the AKS cluster"
}

variable "dns_prefix" {
  type        = string
  description = "DNS prefix for the AKS cluster"
}

variable "agent_count" {
  type        = number
  description = "Number of AKS agent nodes"
  default     = 3
}

variable "vm_size" {
  type        = string
  description = "VM size for AKS agent nodes"
  default     = "Standard_DS2_v2"
}

variable "tags" {
  type        = map(string)
  description = "Tags for the resources"
  default     = {
    environment = "dev"
    costcenter  = "12345"
  }
}

# Backend storage details for storing Terraform state
variable "storage_rg_name" {
  type        = string
  description = "Resource group for the storage account"
}

variable "storage_account_name" {
  type        = string
  description = "Name of the storage account"
}

variable "container_name" {
  type        = string
  description = "Name of the container to store the Terraform state"
}
