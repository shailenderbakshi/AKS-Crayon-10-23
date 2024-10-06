# Outputs for Resource Group and Storage Account
output "storage_account_id" {
  description = "The ID of the storage account"
  value       = module.rg_storage.storage_account_id
}

output "resource_group_name" {
  description = "The name of the resource group"
  value       = module.rg_storage.resource_group_name
}

# Outputs for Virtual Network
output "vnet_id" {
  description = "The ID of the virtual network"
  value       = module.vnet.vnet_id
}

output "subnet_id" {
  description = "The ID of the subnet"
  value       = module.vnet.subnet_id
}