# Variables for Resource Group and Storage Account
resource_group_name   = "dev-rg"
location              = "East US"
storage_account_name  = "devstorageacct0102"
account_tier          = "Standard"
replication_type      = "LRS"

# Variables for Virtual Network and Subnet
vnet_name             = "dev-vnet"
vnet_address_space    = ["10.0.0.0/16"]
subnet_name           = "dev-subnet"
subnet_address_prefix = "10.0.1.0/24"

# Variables for AKS Cluster
aks_name                  = "my-aks-cluster"
dns_prefix                = "myaksdns"
default_node_pool_name    = "nodepool"
default_node_pool_count   = 3
default_node_pool_vm_size = "Standard_DS2_v2"
service_cidr              = "10.0.0.0/16"
dns_service_ip            = "10.0.0.10"
docker_bridge_cidr        = "172.17.0.1/16"
admin_group_object_id     = "<YOUR_ADMIN_GROUP_OBJECT_ID>"
log_analytics_workspace_id = "<YOUR_LOG_ANALYTICS_WORKSPACE_ID>"
environment               = "production"