variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location where resources will be created"
  type        = string
}

variable "log_analytics_workspace_name" {
  description = "The name of the Log Analytics workspace"
  type        = string
}

variable "log_analytics_sku" {
  description = "The SKU for the Log Analytics workspace (e.g., PerGB2018)"
  type        = string
  default     = "PerGB2018"
}

variable "log_analytics_retention" {
  description = "The retention period for logs in days"
  type        = number
  default     = 30
}

variable "tags" {
  description = "Tags to be applied to resources"
  type        = map(string)
  default     = {}
}

variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
}

variable "account_tier" {
  description = "The account tier for the storage account (e.g., Standard or Premium)"
  type        = string
}

variable "replication_type" {
  description = "The replication type for the storage account (e.g., LRS, GRS)"
  type        = string
}

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