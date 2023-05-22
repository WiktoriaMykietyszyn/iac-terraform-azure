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

variable "storage_account_name" {
  description = "Nazwa konta magazynu"
  type        = string
  default     = "my-account"
}

variable "storage_account_tier" {
  description = "Tier konta"
  type        = string
  default     = "Standard"
}

variable "storage_account_replication" {
  description = "Replication konta magazynu"
  type        = string
  default     = "GRS"
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

variable "function_app_name" {
  description = "Nazwa aplikacji funkcji"
  type        = string
  default     = "my-app-function"
}

# ============================

variable "python_version" {
    description = "Wersja pythona"
    type        = string
    default     = "3.10"
}

variable "function_name" {
  type    = string
  default = "my-function"
}

variable "language" {
  type    = string
  default = "Python"
}

variable "test_data" {
  type    = map(any)
  default = {
    "name" = "Azure"
  }
}

variable "config_json" {
  type    = map(any)
  default = {
    "bindings" = [
      {
        "authLevel" = "function"
        "direction" = "in"
        "methods"   = ["get", "post"]
        "name"      = "req"
        "type"      = "httpTrigger"
      },
      {
        "direction" = "out"
        "name"      = "$return"
        "type"      = "http"
      }
    ]
  }
}
