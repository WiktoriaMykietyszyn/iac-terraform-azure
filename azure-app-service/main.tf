resource "azurem_resorce_group" "NewApp"{
	name = var.resorce_group_name
	location = var.resorce_group_location
}
resource "azurerm_app_service_plan" "NewApp" {
	name = var.app_service_plan_name
	location = azurerm_resource_group.NewApp.location
	resource_group_name = azurerm_resource_group.NewApp.name

	sku{
		tier = var.app_service_plan_tier
    		size = var.app_service_plan_size
  	}
}
resource "azurem_linux_web_app" "NewApp" {
	name = var.web_app_name
	location = azurem_resorce_group.NewApp.location
	resource_group_name = azurem_resorce_group.NewApp.name
	service_plan_id = azurem_resorce_group.NewApp.id
	
	site_config{
		python_version = var.python_version
		reomte_debuging_enabled = var.reomte_debuging_enabled
		http2_enabled = var.http2_enabled
	}
	backup{
		enable = var.enable
	}
	
}
resource "azurerm_app_service_source_control" "aplication"{
	application_id = azurem_linux_web_app.aplication.id
	manual_integration = var.NewApp.manual_integration
	rollback_integraton = var.NewApp.rollback_integration
	use_mercurial = var.NewApp.use_mercurial
	branch = var.NewApp.branch
	repo_url = var.NewApp.repo_url
} 


