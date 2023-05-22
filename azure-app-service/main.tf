resource "azurerm_resource_group" "myapp" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

resource "azurerm_app_service_plan" "myapp" {
  name                = var.app_service_plan_name
  location            = azurerm_resource_group.myapp.location
  resource_group_name = azurerm_resource_group.myapp.name
  sku {
    tier = var.app_service_plan_sku_tier
    size = var.app_service_plan_sku_size
  }
}

resource "azurerm_linux_web_app" "myapp" {
  name                  = var.azurerm_linux_web_app_name
  location              = azurerm_resource_group.myapp.location
  resource_group_name   = azurerm_resource_group.myapp.name
  service_plan_id       = azurerm_app_service_plan.myapp.id
  https_only            = var.https_only
  site_config { 
    minimum_tls_version = var.tls_ver
  }
}

resource "azurerm_app_service_source_control" "myapp" {
  app_id             = azurerm_linux_web_app.myapp.id
  repo_url           = var.webapp_repo_url
  branch             = var.webapp_repo_branch
  use_manual_integration = var.use_manual_int
  use_mercurial      = var.use_mercurial
}
