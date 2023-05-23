variable "resource_group_name" {
  description = "NameOfResources"
  type        = string
  default     = "my-group"
}

variable "resource_group_location" {
  description = "ResorcesLoc"
  type        = string
  default     = "West Europe"
}

variable "app_service_plan_name" {
  description = "Nazwa planu usługi aplikacji"
  type        = string
  default     = "my-plan"
}

variable "app_service_plan_sku_tier" {
  description = "ServicePlanTier"
  type        = string
  default     = "Standard"
}

variable "app_service_plan_sku_size" {
  descryption = "ServicePlanSize"
  type    = string
  default = "S1"
}

variable "azurerm_linux_web_app_name" {
  type    = string
  default = "my-app"
}

variable "java_version"{
	type = string
	defalut = "11"
}


variable "java_container"{
	type = string
	defalut = "TOMCAT"
}
variable "java_container_version"{
	type = string
	defalut = "9.0"
}
variable "https_only" {
  type = bool
  default = true
}

variable "use_manual_int" {
  type = bool
  default = true
}

variable "use_mercurial" {
  type = bool
  default = false
}



variable "NewApp_repo_url" {
  type = string
  default = "https://github.com/Azure-Samples/java-docs-hello-world"
}

variable "webapp_repo_branch" {

  type = string
  default = "master"
}
