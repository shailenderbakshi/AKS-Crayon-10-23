# Variables for Resource Group and Location (Shared by AKS and Log Analytics)
resource_group_name   = "dev-rg"
location              = "East US"

# Variables for Storage Account (assuming it's part of the overall infrastructure)
storage_account_name  = "devstorageacct0102"
account_tier          = "Standard"
replication_type      = "LRS"

# Variables for Virtual Network and Subnet (for AKS deployment)
vnet_name             = "dev-vnet"
vnet_address_space    = ["10.0.0.0/16"]
subnet_name           = "dev-subnet"
subnet_address_prefix = "10.0.1.0/24"

# Variables for Log Analytics Workspace
log_analytics_workspace_name = "dev-log-analytics"
log_analytics_sku            = "PerGB2018"
log_analytics_retention      = 30

# Variables for AKS Cluster
aks_name                  = "my-aks-cluster"
dns_prefix                = "myaksdns"
default_node_pool_name    = "nodepool"
default_node_pool_count   = 3
default_node_pool_vm_size = "Standard_DS2_v2"
service_cidr              = "10.0.0.0/16"
dns_service_ip            = "10.0.0.10"
docker_bridge_cidr        = "172.17.0.1/16"

# Replace <YOUR_ADMIN_GROUP_OBJECT_ID> with the actual value
admin_group_object_id     = "<YOUR_ADMIN_GROUP_OBJECT_ID>"

# Log Analytics Workspace ID will be dynamically created
# No need to set this manually; it will be passed from the Log Analytics module to AKS module.
# log_analytics_workspace_id is fetched dynamically from the log_analytics module

# Environment and Tags (for both AKS and Log Analytics)
environment               = "production"
tags = {
  environment = "production"
}