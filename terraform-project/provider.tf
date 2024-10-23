provider "azurerm" {
  features {}
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id
}

terraform {
  backend "azurerm" {
    resource_group_name  = "myStorageResourceGroup"
    storage_account_name = "terracount0203"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
