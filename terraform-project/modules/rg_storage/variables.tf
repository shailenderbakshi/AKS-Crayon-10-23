variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
}

variable "location" {
  type        = string
  description = "The Azure location"
}

variable "storage_account_name" {
  type        = string
  description = "The name of the storage account"
}

variable "account_tier" {
  type        = string
  description = "The account tier of the storage account"
}

variable "replication_type" {
  type        = string
  description = "The replication type of the storage account"
}