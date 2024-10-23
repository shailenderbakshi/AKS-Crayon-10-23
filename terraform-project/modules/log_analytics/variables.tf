variable "log_analytics_workspace_name" {
  description = "The name of the Log Analytics workspace"
  type        = string
}

variable "location" {
  description = "The location where the Log Analytics workspace will be created"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the Log Analytics workspace"
  type        = string
}

variable "sku" {
  description = "The SKU for the Log Analytics workspace (e.g., PerGB2018)"
  type        = string
  default     = "PerGB2018"
}

variable "retention_in_days" {
  description = "The retention period for logs in days"
  type        = number
  default     = 30
}

variable "tags" {
  description = "Tags to be applied to the Log Analytics workspace"
  type        = map(string)
  default     = {}
}