provider "azurerm" {
  features {}
  }

terraform {
  backend "azurerm" {
    resource_group_name  = "myStorageResourceGroup"
    storage_account_name = "terracount0203"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
