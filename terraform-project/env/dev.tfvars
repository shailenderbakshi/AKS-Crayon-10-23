# AKS Cluster Variables
aks_name                  = "my-aks-cluster"
dns_prefix                = "myaks"
default_node_pool_name    = "default"
default_node_pool_count   = 3
default_node_pool_vm_size = "Standard_D4s_v3"
service_cidr              = "10.1.0.0/16"
dns_service_ip            = "10.1.0.10"
docker_bridge_cidr        = "172.17.0.1/16"
admin_group_object_id     = "411c37d2-f168-4870-8900-acf689bfcfd5"

# Resource Group and Location
resource_group_name = "my-resource-group"
location            = "East US"

# Log Analytics Variables
log_analytics_workspace_name = "my-log-analytics"
log_analytics_sku            = "PerGB2018"
log_analytics_retention      = 30

# Storage Variables
storage_account_name = "snottaccount01020304"
account_tier         = "Standard"
replication_type     = "LRS"

# VNet Variables
vnet_name             = "my-vnet"
vnet_address_space    = ["10.0.0.0/16"]
subnet_name           = "my-subnet"
subnet_address_prefix = "10.0.1.0/24"

# Tags
tags = {
  environment = "dev"
}