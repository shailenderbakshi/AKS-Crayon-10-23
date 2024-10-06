# AKS Cluster Variables
aks_name                  = "my-aks-cluster"
dns_prefix                = "myaks"
default_node_pool_name    = "default"
default_node_pool_count   = 3
default_node_pool_vm_size = "Standard_DS2_v2"
service_cidr              = "10.0.0.0/16"
dns_service_ip            = "10.0.0.10"
docker_bridge_cidr        = "172.17.0.1/16"
admin_group_object_id     = "411c37d2-f168-4870-8900-acf689bfcfd5"

# Other variables for VNet, Storage, and Log Analytics should already be present.