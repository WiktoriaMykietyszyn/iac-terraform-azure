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

variable "container_name" {
  type    = string
  default = "my-container"
}

variable "container_access_type" {
  type    = string
  default = "private"
}

variable "blob_name" {
  type    = string
  default = "my-blob"
}

variable "blob_type" {
  type    = string
  default = "Block"
}

variable "blob_path" {
  type    = string
  default = "/home/viktoriia/terraform-proj/file0.txt"
}
