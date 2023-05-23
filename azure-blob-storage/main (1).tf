resource "azurerm_resource_group" "NewApp" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

resource "azurerm_storage_account" "NewApp" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.NewApp.name
  location                 = azurerm_resource_group.NewApp.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication
}

resource "azurerm_storage_container" "NewApp" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.NewApp.name
  container_access_type = var.container_access_type
}

resource "azurerm_storage_blob" "NewApp" {
  name                   = var.blob_name
  storage_account_name   = azurerm_storage_account.NewApp.name
  storage_container_name = azurerm_storage_container.NewApp.name
  type                   = var.blob_type
  source                 = var.blob_path
  access_tier            = var.blob_acces_tier
}
