variable "resource_group_name" {
  description = "Nazwa grupy zasobów"
  type        = string
  default     = "my-group"
}

variable "resource_group_location" {
  description = "Lokalizacja zasobów"
  type        = string
  default     = "West Europe"
}

variable "app_service_plan_name" {
  description = "Nazwa planu usługi aplikacji"
  type        = string
  default     = "my-plan"
}

variable "app_service_plan_sku_tier" {
  description = "SKU Tier"
  type        = string
  default     = "Standard"
}

variable "app_service_plan_sku_size" {
  type    = string
  default = "S1"
}

variable "azurerm_linux_web_app_name" {
  type    = string
  default = "my-app"
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

variable "tls_ver" {
  type = string
  default = "1.2"
}

variable "webapp_repo_url" {
  type = string
  default = "https://github.com/Azure-Samples/nodejs-docs-hello-world"
}

variable "webapp_repo_branch" {
  type = string
  default = "master"
}
