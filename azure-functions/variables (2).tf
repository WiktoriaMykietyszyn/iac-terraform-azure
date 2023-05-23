variable "resource_group_name" {
  description = "ResorceGroupName"
  type        = string
  default     = "my-group"
}

variable "resource_group_location" {
  description = "localization"
  type        = string
  default     = "West Europe"
}

variable "storage_account_name" {
  description = "NameOfStorageAccount"
  type        = string
  default     = "my-account"
}

variable "storage_account_tier" {
  description = "AccountTier"
  type        = string
  default     = "Standard"
}

variable "storage_account_replication" {
  description = "ReplicationAccount"
  type        = string
  default     = "LRS"
}

variable "app_service_plan_name" {
  description = "AplicatonPlan"
  type        = string
  default     = "Plan"
}

variable "app_service_plan_sku_tier" {
  description = "ServicePlanTier"
  type        = string
  default     = "Standard"
}

variable "app_service_plan_sku_size" {
  type    = string
  default = "S1"
}

variable "function_app_name" {
  description = "NameOfFunction"
  type        = string
  default     = "my-app-function"
}



variable "python_version" {
    description = "PythonVer"
    type        = string
    default     = "3.10"
}

variable "function_name" {
  type    = string
  default = "AppFunction"
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
