resource_group_name   = "dev-rg"
location              = "East US"
storage_account_name  = "devstorageacct0102hh"
account_tier          = "Standard"
replication_type      = "LRS"

# VNet variables
vnet_name             = "dev-vnet"
vnet_address_space    = ["10.0.0.0/16"]
subnet_name           = "dev-subnet"
subnet_address_prefix = "10.0.1.0/24"
