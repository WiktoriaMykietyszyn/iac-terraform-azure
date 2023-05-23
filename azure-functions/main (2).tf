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

resource "azurerm_app_service_plan" "NewApp" {
  name                = var.app_service_plan_name
  location            = azurerm_resource_group.NewApp.location
  resource_group_name = azurerm_resource_group.NewApp.name
  sku{
    tier = var.app_service_plan_sku_tier
    size = var.app_service_plan_sku_size
  }
}

resource "azurerm_linux_function_app" "NewApp" {
  name                      = var.function_app_name
  location                  = azurerm_resource_group.NewApp.location
  resource_group_name       = azurerm_resource_group.NewApp.name
  service_plan_id            = azurerm_app_service_plan.NewApp.id

  storage_account_name       = azurerm_storage_account.NewApp.name
  storage_account_access_key = azurerm_storage_account.NewApp.primary_access_key
  
  site_config{
    application_stack{
      python_version = var.python_version
    }
  }
}

resource "azurerm_function_app_function" "NewApp" {
  name            = var.function_name
  function_app_id = azurerm_linux_function_app.NewApp.id
  language        = var.language
  test_data       = jsonencode(var.test_data)
  config_json     = jsonencode(var.config_json)
}
