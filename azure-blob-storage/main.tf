resource "azurerm_resource_group" "myapp" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

resource "azurerm_storage_account" "myapp" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.myapp.name
  location                 = azurerm_resource_group.myapp.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication
}

resource "azurerm_storage_container" "myapp" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.myapp.name
  container_access_type = var.container_access_type
}

resource "azurerm_storage_blob" "myapp" {
  name                   = var.blob_name
  storage_account_name   = azurerm_storage_account.myapp.name
  storage_container_name = azurerm_storage_container.myapp.name
  type                   = var.blob_type
  source                 = var.blob_path
}
