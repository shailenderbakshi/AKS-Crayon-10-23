module "rg_storage" {
  source = "./modules/rg_storage"

  resource_group_name   = var.resource_group_name
  location              = var.location
  storage_account_name  = var.storage_account_name
  account_tier          = var.account_tier
  replication_type      = var.replication_type
}