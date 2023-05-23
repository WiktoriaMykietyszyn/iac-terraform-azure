variable "resource_group_name" {
  description = "ResourceGroupName"
  type        = string
  default     = "ExampleResorce"
}

variable "resource_group_location" {
  description = "ResorecLoc"
  type        = string
  default     = "West Europe"
}

variable "storage_account_name" {
  description = "StorageNameAccount"
  type        = string
  default     = "StorageName"
}

variable "storage_account_tier" {
  description = "TierOfAccount"
  type        = string
  default     = "Standard"
}

variable "storage_account_replication" {
  description = "ReplicationOfAccount"
  type        = string
  default     = "LRS"
}

variable "container_name" {
  type    = string
  default = "NewContainer"
}

variable "container_access_type" {
  type    = string
  default = "public"
}

variable "blob_name" {
  type    = string
  default = "MyNewFile.txt"
}

variable "blob_type" {
  type    = string
  default = "Append"
}

variable "blob_path" {
  type    = string
  default = "/home/Wiktoria/NewApplicationProject/file.txt"
}
variable "blob_acces_tier"{
	type = string
	deafult = "cool"
}

