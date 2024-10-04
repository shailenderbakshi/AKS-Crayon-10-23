resource_group_name    = "myResourceGroup"
location               = "EastUS"
aks_cluster_name       = "myAKSCluster"
dns_prefix             = "myAKSCluster"
agent_count            = 2
vm_size                = "Standard_DS2_v2"

# Backend storage details
storage_rg_name        = "myStorageResourceGroup"
storage_account_name   = "nottsterrafrom0102"
container_name         = "tfstate"

# Tags
tags = {
  environment = "dev"
  costcenter  = "12345"
}
